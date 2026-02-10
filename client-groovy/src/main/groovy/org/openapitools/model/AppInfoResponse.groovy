package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AchievementProgressResponse;
import org.openapitools.model.PurchaseItemListResponse;
import org.openapitools.model.TicketCountResponse;

@Canonical
class AppInfoResponse {
    
    Long points
    
    Long ticketsAvailable
    
    Long ticketsEarned
    
    Long ticketsPurchased
    
    Long ticketsUsed
    
    String rank
    
    Long maxPoints
    
    Long maxTickets
    
    Float pointToTicketModifier

    enum ScoringTypeEnum {
    
        GAME_LEVEL("GAME_LEVEL"),
        
        GAME_OBJECT("GAME_OBJECT")
    
        private final String value
    
        ScoringTypeEnum(String value) {
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

    
    ScoringTypeEnum scoringType
    
    PurchaseItemListResponse purchaseItemListResponse
    
    Long termsAcceptedDate
    
    Boolean requiresTermsAcceptance
    
    List<AchievementProgressResponse> completedAchievements = new ArrayList<>()
    
    List<AchievementProgressResponse> wipAchievements = new ArrayList<>()
    
    String appBlob
    
    Boolean enablePush
    
    Boolean enableSMS
    
    Boolean enableEmail
    
    List<TicketCountResponse> ticketCounts = new ArrayList<>()
}
