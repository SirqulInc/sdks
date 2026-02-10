package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Account;
import org.openapitools.model.AppVersion;
import org.openapitools.model.Application;
import org.openapitools.model.Asset;
import org.openapitools.model.Flag;
import org.openapitools.model.FlagThreshold;
import org.openapitools.model.Note;
import org.openapitools.model.Offer;
import org.openapitools.model.Permissions;
import org.openapitools.model.Tutorial;
import org.openapitools.model.UserPermissions;
import org.openapitools.model.YayOrNay;

@Canonical
class GameLevel {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    Long newOwnerId

    enum GameDifficultyEnum {
    
        VERY_EASY("VERY_EASY"),
        
        EASY("EASY"),
        
        MEDIUM("MEDIUM"),
        
        HARD("HARD"),
        
        VERY_HARD("VERY_HARD")
    
        private final String value
    
        GameDifficultyEnum(String value) {
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

    
    GameDifficultyEnum gameDifficulty
    
    String name
    
    Asset image
    
    Asset icon
    
    String description
    
    Date startDate
    
    Date endDate
    
    Boolean randomizeGameObjects
    
    Account owner
    
    AppVersion version
    
    List<Note> notes = new ArrayList<>()
    
    Long noteCount
    
    List<YayOrNay> likes = new ArrayList<>()
    
    Long likeCount
    
    Long dislikeCount
    
    Long playCount
    
    Long downloadCount
    
    Integer gameObjectCount
    
    Permissions publicPermissions

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
    
    List<UserPermissions> userPermissions = new ArrayList<>()
    
    List<Flag> flags = new ArrayList<>()
    
    Long flagCount
    
    FlagThreshold flagThreshold
    
    Application application
    
    Boolean assignMission
    
    String authorOverride
    
    String splashTitle
    
    String splashMessage
    
    String winnerMessage
    
    Tutorial tutorial

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
    
    GameLevel nextLevel
    
    Offer offer
    
    Double balance
    
    Integer levelNumber
    
    Long points
    
    String ticketType
    
    Long ticketCount
    
    Boolean allocateTickets
    
    String applicationTitle
    
    String ownerUsername
    
    List<Map<String, Object>> likableNotificationModels = new ArrayList<>()
    
    List<Map<String, Object>> notableNotificationModels = new ArrayList<>()
    
    Boolean published
    
    String contentName
    
    Long defaultThreshold
    
    Asset contentAsset
    
    String contentType
}
