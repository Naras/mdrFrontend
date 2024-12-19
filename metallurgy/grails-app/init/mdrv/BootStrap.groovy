package mdrv

import com.yostech.yoscare.Roles
import com.yostech.yoscare.Users
import com.yostech.yoscare.UsersRoles
import com.yostech.yoscare.listener.GormEventListener
import grails.core.GrailsApplication
import org.springframework.context.event.AbstractApplicationEventMulticaster
import org.springframework.context.support.AbstractApplicationContext

class BootStrap {

    def init = { servletContext ->

        //licenseValid()
        def adminRole =Roles.findByAuthority('ROLE_ADMIN')
        if (adminRole==null) {
            adminRole = new Roles(authority: 'ROLE_ADMIN')
            adminRole.roleName = "yossuperadmin"
            adminRole.save flush: true, failOnError: true
        }

        def rolesMap = ['ROLE_SUPERUSER':'yossuperuser','ROLE_READER':'reader']
        rolesMap.each {key,value->
            def userrole = Roles.findByAuthority(key)

            if (userrole == null) {
                def userRole = new Roles(authority: key)
                userRole.roleName = value
                userRole.save flush: true, failOnError: true
            }
        }

        def superUser = Users.findByUsername('yossuperuser')
        if (superUser==null) {
            def testUser = new Users(username: 'yossuperuser', password: 'yossuperuser',firstName:"yossuperuser")
            testUser.save(flush: true,validate:false)
            //  def testUser = new Users(username: 'admin', password: 'admin')
            //testUser.firstName = "admin"
            //testUser.save flush: true, failOnError: true
            UsersRoles.create(testUser, adminRole, true)
        }
        addGormListener(springSecurityService)
    }

    def springSecurityService
    GrailsApplication grailsApplication


    void addGormListener(springSecurityService) {
        AbstractApplicationContext context = grailsApplication.mainContext
        AbstractApplicationEventMulticaster multicaster = context.applicationEventMulticaster
        List listeners = multicaster.applicationListeners
        multicaster.removeAllListeners()
        /* Placing our listener at first */
        multicaster.addApplicationListener(new GormEventListener(springSecurityService))
        listeners.each {
            multicaster.addApplicationListener(it)
        }
    }
    def destroy = {
    }
}
