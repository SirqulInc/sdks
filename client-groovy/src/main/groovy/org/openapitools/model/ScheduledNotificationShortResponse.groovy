package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ScheduledNotificationShortResponse {
    
    Long scheduledNotificationId
    
    Boolean active

    enum StatusEnum {
    
        NEW("NEW"),
        
        ERROR("ERROR"),
        
        COMPLETE("COMPLETE"),
        
        PROCESSING("PROCESSING"),
        
        TEMPLATE("TEMPLATE")
    
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

    enum TypeEnum {
    
        HTTP("HTTP"),
        
        SAVE("SAVE"),
        
        EMAIL("EMAIL"),
        
        SMS("SMS"),
        
        APNS("APNS"),
        
        GCM("GCM"),
        
        PUSH("PUSH"),
        
        MOBILE_NOTIFICATION("MOBILE_NOTIFICATION")
    
        private final String value
    
        TypeEnum(String value) {
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

    
    TypeEnum type
    
    String name
    
    String message
    
    String groupingId
    
    Long scheduledDate
    
    Long startDate
    
    Long endDate
}
