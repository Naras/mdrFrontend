package com.yostech.yoscare.listener

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.ui.RegistrationCode
import grails.util.Holders
import org.apache.commons.lang.ArrayUtils
import org.grails.datastore.mapping.core.Datastore

//import org.codehaus.groovy.grails.orm.hibernate.EventTriggeringInterceptor
//import org.codehaus.groovy.grails.orm.hibernate.HibernateDatastore
import org.grails.datastore.mapping.engine.event.AbstractPersistenceEvent
import org.grails.datastore.mapping.engine.event.EventType
import org.grails.datastore.mapping.engine.event.ValidationEvent
import org.grails.orm.hibernate.HibernateDatastore
import org.grails.orm.hibernate.event.listener.HibernateEventListener
import org.hibernate.HibernateException
import org.hibernate.event.spi.*
import org.hibernate.persister.entity.EntityPersister

/**
 * Created by pritom on 18/10/2017.
 */
class GormEventListener extends HibernateEventListener {
    def springSecurityService

    GormEventListener() {
        this((HibernateDatastore) Holders.applicationContext.getBean(Datastore))
    }

    GormEventListener(HibernateDatastore datastore) {
        super(datastore)
    }

    GormEventListener(HibernateDatastore datastore, def springSecurityService) {
        super(datastore)
        this.springSecurityService = springSecurityService
    }

    GormEventListener(def springSecurityService) {
        this((HibernateDatastore) Holders.applicationContext.getBean(Datastore))
        this.springSecurityService = springSecurityService
    }

    protected void onPersistenceEvent(AbstractPersistenceEvent event) {
        stamp(event.nativeEvent, event.eventType)
        super.onPersistenceEvent(event)
    }

    private void updateState(AbstractPreDatabaseOperationEvent event) {
        Object[] newState = event.persister.getPropertyValuesToInsert(event.entity, null, event.session)
        Object[] oldState = event.state
        newState.eachWithIndex { m, i ->
            oldState[i] = m
        }
    }

    boolean onPreInsert(PreInsertEvent event) {
        updateState(event)
        return false
    }

    void onPostInsert(PostInsertEvent event) {
        //println("onPostInsert::${event.entity}")
    }

    boolean onPreUpdate(PreUpdateEvent event) {
        updateState(event)
        return false
    }

    void onPostUpdate(PostUpdateEvent event) {
       // println("onPostUpdate::${event.entity}")
    }

    boolean onPreDelete(PreDeleteEvent event) {
        return false
    }

    void onPostDelete(PostDeleteEvent event) {
        //println("onPostDelete::${event.entity}")
    }

    void onPreLoad(PreLoadEvent event) {

    }

    void onPostLoad(PostLoadEvent event) {
        //println("onPostLoad::${event.entity}")
    }

    void onSaveOrUpdate(SaveOrUpdateEvent event) throws HibernateException {
        //println("onSaveOrUpdate::${event.entity}")
    }

    void onValidate(ValidationEvent event) {

    }

    private String getActor() {
        def request = grails.plugin.springsecurity.web.SecurityRequestHolder.getRequest()
        if ( springSecurityService.principal instanceof String){
            return  springSecurityService.principal
        }
        def username =  springSecurityService.principal?.username
        if (SpringSecurityUtils.isSwitched()){
            username = SpringSecurityUtils.switchedUserOriginalUsername+" AS "+username
        }
        if (username=='__grails.anonymous.user__') {
            username='SYS'
        }

        String actor = username //fetch the user who is currently logged in
        return actor
    }

    private void stampCreatedBy(entity, EntityPersister persister, Object[] state) {
        if (entity.getProperty(stampCreatedBy) == null) {
            String currentUser = getActor()

            String[] propertyNames = persister.entityMetamodel.propertyNames

            // inserts
            entity.setProperty(stampCreatedBy, currentUser)
            setValue(state, propertyNames, stampCreatedBy, currentUser, entity)
        }
    }

    private void stampLastUpdatedBy(entity, EntityPersister persister, Object[] state) {
        String currentUser = getActor()
        String[] propertyNames = persister.entityMetamodel.propertyNames

        // inserts
        setValue(state, propertyNames, stampCreatedBy, entity.getProperty(stampCreatedBy), entity)

        // updates
        entity.setProperty(stampLastUpdatedBy, currentUser)
        setValue(state, propertyNames, stampLastUpdatedBy, currentUser, entity)
    }

    private stamp(Serializable event, EventType eventType) {

        if (EventType.PreInsert == eventType) {
            org.hibernate.event.spi.PreInsertEvent preInsertEvent = event as org.hibernate.event.spi.PreInsertEvent
            if (!preInsertEvent.entity.getClass().equals(RegistrationCode) ) {
                stampCreatedBy(preInsertEvent.entity, preInsertEvent.persister, preInsertEvent.state)
                stampLastUpdatedBy(preInsertEvent.entity, preInsertEvent.persister, preInsertEvent.state)
            }

        } else if (EventType.PreUpdate == eventType) {
            //On update we need to update lastUpdatedBy field only
            org.hibernate.event.spi.PreUpdateEvent preUpdateEvent = event as org.hibernate.event.spi.PreUpdateEvent
            if (!preUpdateEvent.entity.getClass().equals(RegistrationCode) ) {
                stampLastUpdatedBy(preUpdateEvent.entity, preUpdateEvent.persister, preUpdateEvent.state)
            }
        }
    }

    private void setValue(Object[] state, String[] properties, String propertyToSet, Object value, Object entity) {
        int index = ArrayUtils.indexOf(properties, propertyToSet)
        if (index >= 0) {
            state[index] = value
        } else {
            log.error("Field '" + propertyToSet + "' not found on entity '" + entity.getClass().getName() + "'.")
        }
    }

    String stampCreatedBy = "createdBy"
    String stampLastUpdatedBy = "lastUpdatedBy"
}