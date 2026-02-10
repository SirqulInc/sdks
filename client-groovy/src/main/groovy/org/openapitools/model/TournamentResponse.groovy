package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.AudienceResponse;
import org.openapitools.model.CreativeResponse;
import org.openapitools.model.GameListResponse;
import org.openapitools.model.MissionInviteResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.RewardResponse;
import org.openapitools.model.ScoreListResponse;
import org.openapitools.model.UserPermissionsListResponse;

@Canonical
class TournamentResponse {

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
    
    List<RewardResponse> rewards = new ArrayList<>()
    
    GameListResponse games
    
    ScoreListResponse scores
    
    UserPermissionsListResponse userPermissionsList
    
    List<NameStringValueResponse> results = new ArrayList<>()

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
    
    List<AudienceResponse> audiences = new ArrayList<>()
    
    Long missionInviteId
    
    MissionInviteResponse missionInvite
    
    AccountShortResponse invitee
    
    String formatType
    
    List<CreativeResponse> creatives = new ArrayList<>()
    
    Boolean fixedReward
    
    Boolean allocateTickets
    
    String ticketType
    
    Long ticketCount
    
    Long points
    
    String splitReward
    
    Integer secondsBetweenLevels
    
    Integer secondsBetweenPacks
    
    Boolean advancedReporting
    
    String tournamentData
}
