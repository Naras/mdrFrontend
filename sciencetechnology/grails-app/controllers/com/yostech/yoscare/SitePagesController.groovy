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

    def branchesOfScience() {
        render(view: "branches-of-science/index")
    }

    def appliedSciences() {
        render(view: "branches-of-science/applied-sciences/index")
    }

    def formalSciences() {
        render(view: "branches-of-science/formal-sciences/index")
    }

    def medicalSciences() {
        render(view: "branches-of-science/medical-sciences/index")
    }

    def naturalSciences() {
        render(view: "branches-of-science/natural-sciences/index")
    }
    
    def socialSciences() {
        render(view: "branches-of-science/social-sciences/index")
    }

    // Actions for subpages under natural sciences
    def astronomy() {
        render(view: "branches-of-science/natural-sciences/astronomy/index", model: getMdrConfig())
    }

    def botany() {
        render(view: "branches-of-science/natural-sciences/botany/index", model: getMdrConfig())
    }

    def chemistry() {
        render(view: "branches-of-science/natural-sciences/chemistry/index", model: getMdrConfig())
    }

    def ecology() {
        render(view: "branches-of-science/natural-sciences/ecology/index", model: getMdrConfig())
    }

    def earthsciences() {
        render(view: "branches-of-science/natural-sciences/earth-sciences/index", model: getMdrConfig())
    }
    
    def physics() {
        render(view: "branches-of-science/natural-sciences/physics/index", model: getMdrConfig())
    }

    def searchSubjectDocType() {
        render(view: "_search_form_django.gsp", model: [categoryFkId: 9, documentType: 2])
    }
}

