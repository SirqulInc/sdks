package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ScheduledNotificationShortResponse;

@Canonical
class AssignmentStatusResponse {
    
    Long assignmentStatusId
    
    Boolean active

    enum ToDoEnum {
    
        SITE_VISIT("SITE_VISIT"),
        
        PHONE("PHONE"),
        
        RECONTACT("RECONTACT"),
        
        RENEWAL("RENEWAL"),
        
        CREDIT("CREDIT")
    
        private final String value
    
        ToDoEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    ToDoEnum toDo

    enum ConnectionEnum {
    
        INITIAL("INITIAL"),
        
        FOLLOW_UP("FOLLOW_UP"),
        
        DECLINED("DECLINED")
    
        private final String value
    
        ConnectionEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    ConnectionEnum connection

    enum MethodEnum {
    
        PHONE("PHONE"),
        
        SITE_VISIT("SITE_VISIT"),
        
        EMAIL("EMAIL")
    
        private final String value
    
        MethodEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    MethodEnum method

    enum StatusEnum {
    
        ARCHIVED("ARCHIVED"),
        
        SUBSCRIBED("SUBSCRIBED"),
        
        UNSUBSCRIBED("UNSUBSCRIBED"),
        
        CONTACTED("CONTACTED"),
        
        DECLINED("DECLINED"),
        
        NOT_CONTACTED("NOT_CONTACTED")
    
        private final String value
    
        StatusEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    StatusEnum status

    enum ClosureEnum {
    
        PHONE("PHONE"),
        
        SITE_VISIT("SITE_VISIT"),
        
        PHONE_SITE("PHONE_SITE"),
        
        WEB("WEB")
    
        private final String value
    
        ClosureEnum(String value) {
            this.value = value
        }
    
        String getValue() {
            value
        }
    
        @Override
        String toString() {
            String.valueOf(value)
        }
    }

    
    ClosureEnum closure
    
    String message
    
    Long followUp
    
    Long created
    
    Long updated
    
    ScheduledNotificationShortResponse notification
}
