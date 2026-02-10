package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AccountShortResponse;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.GameObjectListResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.NoteResponse;
import org.openapitools.model.OfferShortResponse;
import org.openapitools.model.ScoreListResponse;
import org.openapitools.model.TicketListResponse;
import org.openapitools.model.TutorialResponse;
import org.openapitools.model.UserPermissionsListResponse;

@Canonical
class GameLevelResponse {

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
    
    Long gameLevelId
    
    String gameType
    
    Boolean active
    
    String name
    
    String description
    
    String difficulty
    
    String appVersion
    
    Long likesCount
    
    Long dislikesCount
    
    Long commentsCount
    
    Long downloadCount
    
    List<NoteResponse> comments = new ArrayList<>()
    
    Boolean locked
    
    Boolean completed
    
    Long ticketsEarned
    
    GameObjectListResponse gameObjects
    
    Boolean hasLiked
    
    AssetShortResponse image
    
    String gameData
    
    String gameDataSuffix
    
    ScoreListResponse scores
    
    AccountShortResponse owner
    
    UserPermissionsListResponse userPermissionsList
    
    List<NameStringValueResponse> results = new ArrayList<>()
    
    Boolean randomizeGameObjects
    
    TicketListResponse tickets
    
    Boolean assignMission
    
    AssetShortResponse icon
    
    String authorOverride
    
    Long updatedDate
    
    Long startDate
    
    Long endDate
    
    String splashTitle
    
    String splashMessage
    
    Boolean hasFlagged
    
    Boolean allocateTickets
    
    String ticketType
    
    Long ticketCount
    
    Long points
    
    String winnerMessage
    
    TutorialResponse tutorial
    
    String appKey
    
    String appName

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
    
    String tutorialTitle
    
    String tutorialMessage
    
    String tutorialAlignment
    
    AssetShortResponse tutorialImage
    
    Long nextLevelId
    
    OfferShortResponse offer
}
