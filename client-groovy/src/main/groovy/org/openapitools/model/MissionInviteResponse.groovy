package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;

@Canonical
class MissionInviteResponse {
    
    Long id

    enum StatusEnum {
    
        AVAILABLE("AVAILABLE"),
        
        PENDING("PENDING"),
        
        UPDATED("UPDATED"),
        
        ACCEPTED("ACCEPTED"),
        
        ACTIVE("ACTIVE"),
        
        BUY_BACK("BUY_BACK"),
        
        FAILED("FAILED"),
        
        QUIT("QUIT"),
        
        COMPLETED("COMPLETED"),
        
        PENDING_REVIEW("PENDING_REVIEW"),
        
        REJECTED("REJECTED")
    
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
    
    String title
    
    String description
    
    AccountShortResponse owner
    
    Long permissionableId
    
    String permissionableType
    
    Boolean ranked
    
    Boolean rewarded
    
    Long startDate
    
    Long endDate
    
    Long updated
    
    Boolean buyBackAvailable

    enum InviteStatusEnum {
    
        AVAILABLE("AVAILABLE"),
        
        PENDING("PENDING"),
        
        UPDATED("UPDATED"),
        
        ACCEPTED("ACCEPTED"),
        
        ACTIVE("ACTIVE"),
        
        BUY_BACK("BUY_BACK"),
        
        FAILED("FAILED"),
        
        QUIT("QUIT"),
        
        COMPLETED("COMPLETED"),
        
        PENDING_REVIEW("PENDING_REVIEW"),
        
        REJECTED("REJECTED")
    
        private final String value
    
        InviteStatusEnum(String value) {
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

    
    InviteStatusEnum inviteStatus
}
