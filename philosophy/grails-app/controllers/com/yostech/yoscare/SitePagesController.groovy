package com.yostech.yoscare

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])

class SitePagesController {
    private Map getMdrConfig() {
        def mdrHost = grailsApplication.config.mdr.host.ipaddress ?: "http://127.0.0.1:8080/"
        def mdrAppName = grailsApplication.config.mdr.mdrapp.name ?: "MDR"
        return [mdrHost: mdrHost, mdrAppName: mdrAppName]
    }

    def index() {
        render(view: "index")
    }

    def philosophy() {
        render(view: "philosophy/index", model: getMdrConfig())
    }

    def orthodoxSystems() {
        render(view: "philosophy/orthodox-systems/index", model: getMdrConfig())
    }

    def heterodoxSystems() {
        render(view: "philosophy/heterodox-systems/index", model: getMdrConfig())
    }

    // Actions for subpages under orthodox systems
    def nyaya() {
        render(view: "philosophy/orthodox-systems/nyaya/index", model: getMdrConfig())
    }

    def vaisesika() {
        render(view: "philosophy/orthodox-systems/vaisesika/index", model: getMdrConfig())
    }

    def sankhya() {
        render(view: "philosophy/orthodox-systems/sankhya/index", model: getMdrConfig())
    }

    def yoga() {
        render(view: "philosophy/orthodox-systems/yoga/index", model: getMdrConfig())
    }

    def purvamimamsa() {
        render(view: "philosophy/orthodox-systems/purvamimamsa/index", model: getMdrConfig())
    }
    
    def uttaramimamsa() {
        render(view: "philosophy/orthodox-systems/uttaramimamsa/index", model: getMdrConfig())
    }
    
    // Actions for subpages under heterodox systems
    def bauddha() {
        render(view: "philosophy/heterodox-systems/bauddha/index", model: getMdrConfig())
    }
    def jaina() {
        render(view: "philosophy/heterodox-systems/jaina/index", model: getMdrConfig())
    }
    def carvaka() {
        render(view: "philosophy/heterodox-systems/carvaka/index", model: getMdrConfig())
    }
}

