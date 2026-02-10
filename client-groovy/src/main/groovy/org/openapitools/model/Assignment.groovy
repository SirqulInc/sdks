package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;
import org.openapitools.model.AssignmentStatus;
import org.openapitools.model.Note;
import org.openapitools.model.Permissions;
import org.openapitools.model.RetailerLocation;
import org.openapitools.model.UserPermissions;

@Canonical
class Assignment {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String name
    
    String description
    
    Account assignee
    
    RetailerLocation retailerLocation
    
    Account creator
    
    Account lastUpdatedBy
    
    AssignmentStatus currentStatus

    enum CurrentStatusTypeEnum {
    
        NEW("NEW"),
        
        IN_PROGRESS("IN_PROGRESS"),
        
        SUBSCRIBED("SUBSCRIBED"),
        
        ARCHIVED("ARCHIVED")
    
        private final String value
    
        CurrentStatusTypeEnum(String value) {
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

    
    CurrentStatusTypeEnum currentStatusType
    
    List<Asset> assets = new ArrayList<>()
    
    List<Note> notes = new ArrayList<>()
    
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
    
    List<AssignmentStatus> statuses = new ArrayList<>()
    
    Application application

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
    
    String contentName
    
    Asset contentAsset
    
    Account owner
    
    Long noteCount
}
