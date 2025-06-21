package com.yostech.yoscare

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class SiteHomeController {

    def index() { }
}
