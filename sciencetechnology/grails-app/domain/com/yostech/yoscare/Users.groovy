package com.yostech.yoscare

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class Users implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    String firstName
    String lastName
    String emailAddress
    String phoneNumber
    String address
    String mobileNumber

    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Long prevLoginDate
    Date dateCreated
    Date lastUpdated
    String lastUpdatedBy
    String createdBy

    Set<Roles> getAuthorities() {
        (UsersRoles.findAllByUsers(this) as List<UsersRoles>)*.roles as Set<Roles>
    }

    static constraints = {
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
        prevLoginDate blank: true, nullable: true
        dateCreated nullable: true, blank: true
        lastUpdated nullable: true, blank: true
        lastUpdatedBy nullable: true, blank: true
        createdBy nullable: true, blank: true
        firstName nullable: true, blank: true
        lastName nullable: true, blank: true
        emailAddress nullable: true, blank: true
        phoneNumber nullable: true, blank: true
        address nullable: true, blank: true
        mobileNumber nullable: true, blank: true
    }

    static mapping = {
	    password column: '`password`'
    }
}
