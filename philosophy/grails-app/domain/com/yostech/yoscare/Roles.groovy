package com.yostech.yoscare

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='authority')
@ToString(includes='authority', includeNames=true, includePackage=false)
class Roles implements Serializable {

	private static final long serialVersionUID = 1
	String roleName
	String roleDescription
	String authority
	Date dateCreated
	Date lastUpdated
	String lastUpdatedBy
	String createdBy
	Boolean isDeleted=false
	Boolean isEnabled=false

 	static constraints = {
		authority nullable: false, blank: false, unique: true
		roleName blank: true, nullable: true, maxSize: 100
		roleDescription blank: true, nullable: true
		createdBy blank: true, nullable: true
		lastUpdatedBy blank: true, nullable: true
		lastUpdated blank: true, nullable: true
		dateCreated blank: true, nullable: true
		isDeleted blank: true, nullable: true
		isEnabled blank: true, nullable: true
	}

	static mapping = {
		cache true
		createdBy index: 'roles_createdBy_idx'
		lastUpdated index: 'roles_lastUpdated_idx'
		dateCreated index: 'roles_dateCreated_idx'
		organisation index: 'roles_organisation_idx'
		roleName index: 'roles_roleName_idx'
		authority index: 'roles_authority_idx'
	}
}
