package com.yostech.yoscare

import grails.plugin.springsecurity.annotation.Secured
import grails.web.servlet.mvc.GrailsParameterMap
import org.apache.commons.lang3.StringUtils
import org.springframework.util.LinkedMultiValueMap
import org.springframework.util.MultiValueMap

@Secured(['IS_AUTHENTICATED_FULLY'])
class SearchController {

    def index() {

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
        def resp = client.post("http://localhost:8680/MDR/externalSearch.action") {
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


        def resp = client.post("http://localhost:8680/MDR/externalSearch.action") {
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
        println "params "+params
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
}
