package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.ApplicationShortResponse;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.GameLevelListResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.ScoreListResponse;
import org.openapitools.model.TicketListResponse;
import org.openapitools.model.UserPermissionsListResponse;

@Canonical
class PackResponse {

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
    
    String gameType
    
    Long packId
    
    String name
    
    String description
    
    Boolean active
    
    Boolean downloaded
    
    Boolean completed
    
    AssetShortResponse icon
    
    AssetShortResponse background
    
    Long ticketsEarned
    
    GameLevelListResponse levels
    
    String sequenceType
    
    ScoreListResponse scores
    
    AccountShortResponse owner
    
    Long costToRedeem
    
    Long price
    
    String priceType
    
    UserPermissionsListResponse userPermissionsList
    
    List<NameStringValueResponse> results = new ArrayList<>()
    
    TicketListResponse tickets
    
    String authorOverride
    
    Long updatedDate
    
    Long startDate
    
    Long endDate

    enum PackTypeEnum {
    
        TUTORIAL("TUTORIAL"),
        
        BUILTIN("BUILTIN"),
        
        DOWNLOAD("DOWNLOAD"),
        
        THRESHOLD("THRESHOLD"),
        
        THEME("THEME"),
        
        TOURNAMENT("TOURNAMENT")
    
        private final String value
    
        PackTypeEnum(String value) {
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

    
    PackTypeEnum packType
    
    Long packOrder
    
    String appKey
    
    ApplicationShortResponse application
    
    Boolean inGame
    
    Boolean highest
    
    Boolean allocateTickets
    
    String ticketType
    
    Long ticketCount
    
    Long points
}
