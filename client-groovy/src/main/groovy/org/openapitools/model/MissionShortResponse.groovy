package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AssetShortResponse;

@Canonical
class MissionShortResponse {

    enum ActionEnum {
    
        DATA("DATA"),
        
        SAVE("SAVE"),
        
        DELETE("DELETE"),
        
        GET("GET")
    
        private final String value
    
        ActionEnum(String value) {
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

    
    ActionEnum action
    
    String highestAppVersion
    
    Long missionId
    
    Long ticketsEarned
    
    Integer costToPlay
    
    String costToPlayType
    
    AccountShortResponse owner
    
    String title
    
    String description
    
    String authorOverride
    
    AssetShortResponse icon
    
    AssetShortResponse image
    
    String sequenceType
    
    Long updatedDate
    
    Long startDate
    
    Long endDate
    
    String missionType
    
    Boolean active
    
    Double balance
    
    Integer availableLimit
    
    Integer inviteCount
    
    Integer acceptedCount
    
    Long childCount
    
    Boolean enableBuyBack
    
    Integer minimumToPlay
    
    Boolean rewarded
    
    Boolean refunded
    
    String joinCode
}
