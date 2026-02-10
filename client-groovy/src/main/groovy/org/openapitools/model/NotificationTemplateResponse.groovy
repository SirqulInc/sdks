package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ApplicationMiniResponse;

@Canonical
class NotificationTemplateResponse {
    
    Long notificationTemplateId
    
    String event

    enum ConduitEnum {
    
        HTTP("HTTP"),
        
        SAVE("SAVE"),
        
        EMAIL("EMAIL"),
        
        SMS("SMS"),
        
        APNS("APNS"),
        
        GCM("GCM"),
        
        PUSH("PUSH"),
        
        MOBILE_NOTIFICATION("MOBILE_NOTIFICATION")
    
        private final String value
    
        ConduitEnum(String value) {
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

    
    ConduitEnum conduit
    
    String title
    
    String body
    
    String publicBody
    
    ApplicationMiniResponse application
    
    Long updated
    
    Long created
    
    String tags
}
