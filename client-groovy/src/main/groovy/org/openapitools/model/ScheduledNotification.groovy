package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Set;
import org.openapitools.model.Account;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;
import org.openapitools.model.Audience;
import org.openapitools.model.BillableEntity;
import org.openapitools.model.ConnectionGroup;
import org.openapitools.model.Permissions;
import org.openapitools.model.ReportDefinition;
import org.openapitools.model.UserPermissions;

@Canonical
class ScheduledNotification {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner
    
    BillableEntity billableEntity

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
    
    String name
    
    String errorMessage
    
    String message
    
    String payload
    
    String contentName
    
    Long contentId
    
    String contentType
    
    Long parentId
    
    String parentType
    
    Application application
    
    List<ConnectionGroup> connectionGroups = new ArrayList<>()
    
    Set<Long> accountIds = new LinkedHashSet<>()
    
    List<Audience> audiences = new ArrayList<>()
    
    ReportDefinition report
    
    String reportParams
    
    String endpointURL
    
    Date lastActionDate
    
    Date scheduledDate
    
    Date startDate
    
    Date endDate
    
    String cronExpression
    
    Long deliverEstimate
    
    Long deliverCount
    
    Long deliverFailed
    
    Long deliverTotal
    
    Long deliverStart
    
    Long deliverLimit
    
    Long processingTime
    
    Long sendingTime
    
    String groupingId
    
    String conditionalInput
    
    String conditionalCode
    
    Permissions publicPermissions
    
    List<UserPermissions> userPermissions = new ArrayList<>()

    enum VisibilityEnum {
    
        PUBLIC("PUBLIC"),
        
        PRIVATE("PRIVATE"),
        
        FRIENDS("FRIENDS")
    
        private final String value
    
        VisibilityEnum(String value) {
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

    
    VisibilityEnum visibility

    enum ApprovalStatusEnum {
    
        PENDING("PENDING"),
        
        REJECTED("REJECTED"),
        
        APPROVED("APPROVED"),
        
        FEATURED("FEATURED")
    
        private final String value
    
        ApprovalStatusEnum(String value) {
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

    
    ApprovalStatusEnum approvalStatus
    
    Asset contentAsset
}
