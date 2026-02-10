package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.PackListResponse;
import org.openapitools.model.RuleListResponse;
import org.openapitools.model.ScoreListResponse;
import org.openapitools.model.UserPermissionsListResponse;

@Canonical
class GameResponse {

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
    
    Long gameId
    
    String gameType
    
    PackListResponse packs
    
    ScoreListResponse scores
    
    AccountShortResponse owner
    
    UserPermissionsListResponse userPermissionsList
    
    RuleListResponse rules
    
    List<NameStringValueResponse> results = new ArrayList<>()
    
    Long ticketsEarned
    
    String title
    
    String description
    
    String authorOverride
    
    AssetShortResponse icon
    
    AssetShortResponse image
    
    String sequenceType
    
    Long updatedDate
    
    Long startDate
    
    Long endDate
    
    String appKey
}
