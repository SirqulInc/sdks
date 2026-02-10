package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.Asset;
import org.openapitools.model.Audience;
import org.openapitools.model.BillableEntity;
import org.openapitools.model.Game;
import org.openapitools.model.GameLevel;
import org.openapitools.model.MissionTask;
import org.openapitools.model.Offer;
import org.openapitools.model.Pack;

@Canonical
class Mission {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Account owner

    enum MissionTypeEnum {
    
        PUBLIC("PUBLIC"),
        
        SHARED("SHARED"),
        
        TOURNAMENT("TOURNAMENT"),
        
        POOLPLAY("POOLPLAY")
    
        private final String value
    
        MissionTypeEnum(String value) {
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

    
    MissionTypeEnum missionType
    
    String title
    
    String description
    
    Integer costToPlay
    
    String costToPlayType
    
    List<Game> games = new ArrayList<>()
    
    List<Audience> audiences = new ArrayList<>()
    
    Date startDate
    
    Date endDate

    enum SequenceTypeEnum {
    
        FIRST_AVAILABLE("FIRST_AVAILABLE"),
        
        ALL_AVAILABLE("ALL_AVAILABLE")
    
        private final String value
    
        SequenceTypeEnum(String value) {
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

    
    SequenceTypeEnum sequenceType
    
    String authorOverride
    
    Asset icon
    
    Asset image
    
    List<Offer> offers = new ArrayList<>()

    enum VisibilityEnum {
    
        PUBLIC("PUBLIC"),
        
        LISTABLE("LISTABLE"),
        
        REWARDABLE("REWARDABLE"),
        
        TRIGGERABLE("TRIGGERABLE"),
        
        PRIVATE("PRIVATE")
    
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
    
    MissionTask task
    
    Long points
    
    String ticketType
    
    Long ticketCount
    
    Boolean allocateTickets
    
    BillableEntity billableEntity
    
    Double balance
    
    Integer startingLimit
    
    Integer availableLimit
    
    Integer inviteCount
    
    Integer acceptedCount

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
    
    Long childCount
    
    Integer secondsBetweenLevels
    
    Integer secondsBetweenPacks
    
    Integer maximumLevelLength
    
    Boolean enableBuyBack
    
    Pack activePack
    
    Integer minimumToPlay
    
    Boolean fixedReward
    
    Boolean refunded
    
    Boolean notificationsCreated
    
    Boolean rewarded
    
    Long externalId
    
    Boolean advancedReporting

    enum SplitRewardEnum {
    
        EVEN("EVEN"),
        
        ALL("ALL"),
        
        FIRST("FIRST"),
        
        RANDOM("RANDOM")
    
        private final String value
    
        SplitRewardEnum(String value) {
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

    
    SplitRewardEnum splitReward
    
    String joinCode
    
    Pack firstPack
    
    List<GameLevel> allGameLevels = new ArrayList<>()
    
    List<Pack> allPacks = new ArrayList<>()
}
