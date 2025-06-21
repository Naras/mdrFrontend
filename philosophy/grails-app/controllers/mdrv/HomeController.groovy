package mdrv

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.security.access.vote.AuthenticatedVoter

@Secured(['IS_AUTHENTICATED_FULLY'])
class HomeController {

    def sessionFactory
    def searchService
    def index() {
        def authorsResults = searchService.searchResultsForQuery("select name,trim(name) from omds_person where name not like '%test%' and name not like '%102%' group by  name order by trim(name)")

        def authors = authorsResults.collectEntries{resultRow ->

            [(resultRow[0]):resultRow[1]]
        }
        [authors:authors]
    }
}
