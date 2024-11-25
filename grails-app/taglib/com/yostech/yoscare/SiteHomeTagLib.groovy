package com.yostech.yoscare

import grails.config.Config
import grails.core.GrailsApplication

class SiteHomeTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    GrailsApplication grailsApplication
    def homepageDashBoard= {attrs, body ->
        Config config = grailsApplication.config
        def mdrURL =  config.getProperty('mdr.host.ipaddress')
        println " mdrURL "+mdrURL
       /*
        def resp = client.get("${mdrURL}/MDR/externalSearch.action") {
            accept("application/json")
            contentType("application/x-www-form-urlencoded")
            body(form)
        }
        println "resp   "+"sdasdsadasdsdsfdsf "+resp*/
        out << ""
    }
}
