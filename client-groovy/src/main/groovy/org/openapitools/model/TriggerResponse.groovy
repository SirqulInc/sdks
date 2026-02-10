package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.ApplicationMiniResponse;
import org.openapitools.model.BillableEntityShortResponse;

@Canonical
class TriggerResponse {
    
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
    
    AccountShortResponse owner
    
    BillableEntityShortResponse billableEntity
    
    Long contentId
    
    String contentName
    
    String contentType
    
    Long parentId
    
    String parentType
    
    ApplicationMiniResponse application
    
    Long targetId
    
    String targetName
    
    String targetType
    
    String targetParams
    
    Long deliverEstimate
    
    Long deliverCount
    
    Long deliverTotal
    
    Long deliverFailed
    
    Long processingTime
    
    Long sendingTime
    
    Long updated
    
    Long created
    
    String cronExpression
    
    String endpointURL
    
    String payload
    
    String conditionalInput
    
    List<Long> connectionAccountIds = new ArrayList<>()

    enum TemplateTypeEnum {
    
        REPORTING("REPORTING"),
        
        ACHIEVEMENT_OWNER("ACHIEVEMENT_OWNER"),
        
        ACHIEVEMENT_TRIGGER("ACHIEVEMENT_TRIGGER"),
        
        GEOFENCE_OWNER("GEOFENCE_OWNER"),
        
        GEOFENCE_TARGET("GEOFENCE_TARGET"),
        
        GEOFENCE_TRIGGER("GEOFENCE_TRIGGER"),
        
        GEOFENCE_HTTP_CALL("GEOFENCE_HTTP_CALL")
    
        private final String value
    
        TemplateTypeEnum(String value) {
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

    
    TemplateTypeEnum templateType

    enum GroupedTypesEnum {
    
        HTTP("HTTP"),
        
        SAVE("SAVE"),
        
        EMAIL("EMAIL"),
        
        SMS("SMS"),
        
        APNS("APNS"),
        
        GCM("GCM"),
        
        PUSH("PUSH"),
        
        MOBILE_NOTIFICATION("MOBILE_NOTIFICATION")
    
        private final String value
    
        GroupedTypesEnum(String value) {
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

    
    List<GroupedTypesEnum> groupedTypes = new ArrayList<>()
    
    Long triggerId
}
