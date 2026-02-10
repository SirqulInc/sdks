package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.AssetShortResponse;
import org.openapitools.model.BillableEntityShortResponse;
import org.openapitools.model.CategoryResponse;
import org.openapitools.model.NameStringValueResponse;
import org.openapitools.model.PlatformResponse;
import org.openapitools.model.TrilatAppSettings;

@Canonical
class ApplicationResponse {
    
    Boolean valid
    
    String message
    
    Double version
    
    Boolean serializeNulls
    
    Long startTimeLog
    
    String errorCode
    
    List<NameStringValueResponse> request = new ArrayList<>()
    
    Long applicationId
    
    String appKey
    
    String title
    
    String currentBuildVersion
    
    String currentApiVersion
    
    AssetShortResponse appIcon
    
    AssetShortResponse appLogo
    
    Boolean active
    
    String about
    
    String landingPageUrl
    
    String landingPageFullUrl
    
    String defaultImageFullUrl
    
    String activityDescription
    
    List<PlatformResponse> platforms = new ArrayList<>()
    
    List<CategoryResponse> categories = new ArrayList<>()
    
    Integer placementCount
    
    BillableEntityShortResponse billable
    
    Boolean hasAds
    
    Boolean publicNotifications
    
    String urlScheme
    
    Boolean global
    
    String downloadUrls
    
    Boolean localAdsEnabled
    
    TrilatAppSettings trilatSettings
    
    String appType
    
    String appName
    
    String bundleId

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
    
    Integer hintCost
    
    Integer maxScore
    
    Float ticketsPerPoint
    
    Boolean hasGameData
    
    Boolean globalTickets
    
    String eulaVersion
    
    Long eulaDateUpdated
    
    String modules
    
    String billableEntityName
    
    Boolean showInActivities
    
    String cssClass
    
    String inviteWelcomeText
    
    String invitePageUrl
    
    String apnsCertificateFileName
    
    String facebookAppId
    
    String facebookAppSecret
    
    String appToken
    
    String googleApiKey
    
    String appRestKey
    
    Boolean publicContentApproval
    
    Boolean productionMode
    
    Integer minimumSessionLength
    
    Integer sessionGapLength
    
    String sqootApiKey
    
    Boolean amqpEnabled
    
    Integer authorizedCount
    
    String authorizedServers
    
    String returning
}
