package com.yostech.yoscare

import grails.plugin.springsecurity.annotation.Secured
import grails.web.servlet.mvc.GrailsParameterMap
import org.apache.commons.lang3.StringUtils
import org.springframework.util.LinkedMultiValueMap
import org.springframework.util.MultiValueMap
import grails.config.Config

@Secured(['IS_AUTHENTICATED_FULLY'])
class SearchController {

    def index() {

    }

    //def grailsApplication
    def mdrUrl() {
        Config config = grailsApplication.config
        def mdrURL = config.getProperty('mdr.host.ipaddress', 'http://127.0.0.1:8080/')
        mdrURL
    }

    def mdrapp(){
        Config config = grailsApplication.config
        def mdrApp = config.getProperty('mdr.mdrapp.name', 'MDR')
        mdrApp
     }
    def mdrfilePathPrefix(){
        Config config = grailsApplication.config
        def mdrfilePathPrefix = config.getProperty('mdr.folder.filepath', '/home/intel/root-mdr-media/philosophy/img')
        mdrfilePathPrefix
     }

    def searchService
    def searchresults(){
        println " in params "+params
        def client = new grails.plugins.rest.client.RestBuilder()

        MultiValueMap<String, String> form = new LinkedMultiValueMap<String, String>()
        params.each {key,value->
             //println "value "+value?.getClass()
            if (value?.getClass() !=grails.web.servlet.mvc.GrailsParameterMap) {
                form.add(key, value)
            }
        }
        println " form" +form
        //def resp = client.post("http://localhost:8080/MDR/externalSearch.action") {
        def resp = client.post("${mdrUrl()}/${mdrapp()}/externalSearch.action") {
            accept("application/json")
            contentType("application/x-www-form-urlencoded")
            body(form)
        }

        String query = resp.body

        //String countQuery = query
        //countQuery.replace(query.substring(query.indexOf("SELECT")+6,query.indexOf("FROM")), "count(dm.id)")

        def queryResults = searchService.searchResultsForQuery(resp.body)
        //println queryResults
        final results = queryResults.collect { resultRow ->
            [documentId: resultRow[0],documentName:resultRow[1],regionalName:resultRow[2],diacriticalName:resultRow[3],author:resultRow[41],authorRegionalName:resultRow[42],documentType:resultRow[44]]
        }
        println results

        def authorsResults = searchService.searchResultsForQuery("select name,trim(name) from omds_person where name not like '%test%' and name not like '%102%' group by  name order by trim(name)")
        def authors = authorsResults.collectEntries{resultRow ->

            [(resultRow[0]):resultRow[1]]
        }
        println " params "
        [results:results,authors:authors,params:params]
    }

    def viewManuScript(){
        def client = new grails.plugins.rest.client.RestBuilder()

        MultiValueMap<String, String> form = new LinkedMultiValueMap<String, String>()
        form.add("digitalManuscriptVO.id", params?.id)


        //def resp = client.post("http://localhost:8080/MDR/externalSearch.action") {
        def resp = client.post("${mdrUrl()}/${mdrapp()}/externalSearch.action") {
            accept("application/json")
            contentType("application/x-www-form-urlencoded")
            body(form)
        }

        String query = resp.body
        def queryResults = searchService.searchResultsForQueryTransform(resp.body)
        println queryResults

        def imageResults = searchService.searchResultsForQueryTransform("select id,digitalManuscriptFkId,filePath,islast,frame_order from omds_digital_manuscript_frame where digitalManuscriptFkId='${params?.id}' order by frame_order")
        println queryResults

        println "imageResults "+imageResults

        [document:queryResults[0],imageResults:imageResults]
    }

    def displayImage() {
        println " SearchController displayImage: params " + params
        def imageResults = searchService.searchResultsForQueryTransform("select id,digitalManuscriptFkId,filePath,islast,frame_order from omds_digital_manuscript_frame where  id='${params?.id}' order by frame_order")
        if (imageResults.size()>0 && imageResults[0].filePath!=null) {
            println imageResults[0].filePath
            println imageResults

            byte[] imageInByte = searchService.customImageSizeInBytes(params?.isThumbnail,imageResults[0].filePath,params?.width,params?.height)
            response.outputStream << imageInByte
            response.outputStream.flush()
	}
        //render "OK"
    }
    
	def displayImageOrPath() {
    // Query for the image results
    def imageResults = searchService.searchResultsForQueryTransform("select id,digitalManuscriptFkId,filePath,islast,frame_order from omds_digital_manuscript_frame where id='${params?.id}' order by frame_order")

    if (imageResults.size() > 0 && imageResults[0].filePath != null) {
        def filePath = imageResults[0].filePath
        def isThumbnail = params?.isThumbnail?.toBoolean()

        println filePath
        println imageResults

        //if (!isThumbnail && filePath.endsWith(".pdf")) {
        if (filePath.endsWith(".pdf")) {
            // Handle PDF file
            File pdfFile = new File(filePath)
            if (pdfFile.exists()) {
                response.contentType = "application/pdf" // Set the Content-Type for PDF
                response.outputStream << pdfFile.bytes // Stream the PDF file
                response.outputStream.flush()
            } else {
                response.status = 404
                response.writer << "PDF file not found."
            }
        } else {
            // Handle image file
            byte[] imageInByte = searchService.customImageSizeInBytes(isThumbnail, filePath, params?.width, params?.height)
            response.contentType = "image/jpeg" // Set the Content-Type for images
            response.outputStream << imageInByte
            response.outputStream.flush()
        }
    } else {
        response.status = 404
        response.writer << "Image or PDF not found."
    }
}

	def displayPdf() {
	    println "SearchController displayPdf: params " + params 
    // Query for the image results
       def pdfResults = searchService.searchResultsForQueryTransform("select id,digitalManuscriptFkId,filePath,islast,frame_order from omds_digital_manuscript_frame where id='${params?.id}' order by frame_order")

       if (pdfResults.size() > 0 && pdfResults[0].filePath != null) {
        //def filePath = "/home/intel/root-mdr-media/sciencetechnology/img/"+pdfResults[0].filePath
        def filePath = mdrfilePathPrefix()+"/"+pdfResults[0].filePath
        def isThumbnail = params?.isThumbnail?.toBoolean()

        println "filePath:"+filePath
        println "results:"+pdfResults
            // Handle PDF file
            File pdfFile = new File(filePath)
            if (pdfFile.exists()) {
                response.contentType = "application/pdf" // Set the Content-Type for PDF
		response.setHeader("Content-Disposition", "inline; filename=\"${pdfFile.name}\"")
                response.outputStream << pdfFile.bytes // Stream the PDF file
                response.outputStream.flush()
                response.outputStream.close()
            } else {
                response.status = 404
                response.writer << "PDF file not found."
            }}}
}
