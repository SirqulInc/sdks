package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Asset;
import org.openapitools.model.BillableEntity;
import org.openapitools.model.BlobFile;
import org.openapitools.model.Category;
import org.openapitools.model.Placement;
import org.openapitools.model.Platform;
import org.openapitools.model.Retailer;
import org.openapitools.model.TrilatAppSettings;

@Canonical
class Application {
    
    Long id
    
    Boolean active
    
    Boolean valid
    
    String title
    
    String about
    
    String certificateUrl
    
    String certificateName
    
    BlobFile certificate
    
    Date certificateLastUpdated
    
    String appDescription
    
    Boolean showInActivities
    
    String cssClass
    
    String inviteWelcomeText
    
    String bundleId
    
    String appType

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
    
    String appKey
    
    String appRestKey
    
    String appTokenKey
    
    Integer hintCost
    
    Date eulaDate
    
    String eulaVersion
    
    String landingPageUrl
    
    String invitePageUrl
    
    String downloadUrls
    
    String appName
    
    Asset appIcon
    
    Asset appLogo
    
    BillableEntity billableEntity
    
    String facebookAppId
    
    String facebookAppSecret
    
    String twitterAppId
    
    String twitterAppSecret
    
    String twitterCallbackURL
    
    String defaultImage
    
    String modules
    
    String authorizedServers
    
    Integer authorizedCount
    
    String activeServers
    
    Date licensePeriod
    
    Boolean hasGameData
    
    String currentBuildVersion
    
    String currentApiVersion
    
    Boolean globalTickets
    
    Float ticketsPerPoint
    
    Integer maxPointsPerScore
    
    Boolean useAppCache
    
    String uniqueUserTag
    
    Boolean useMatchingAlgorithm
    
    List<Platform> platforms = new ArrayList<>()
    
    List<Category> categories = new ArrayList<>()
    
    List<Placement> placements = new ArrayList<>()
    
    Boolean hasAdvertisements
    
    String appleAppId
    
    String googleAppId
    
    String googleApiKey
    
    String googleOAuthClientId
    
    String googleOAuthSecret
    
    String googleOAuthAccessToken
    
    String googleOAuthRefreshToken
    
    String baiduApiKey
    
    String baiduSecretKey
    
    String jpushAppKey
    
    String jpushMasterSecret
    
    String xgPushSecretKey
    
    Boolean publicNotifications
    
    String urlScheme
    
    Retailer retailer
    
    String objectStoreSession
    
    Boolean publicContentApproval
    
    Boolean productionMode
    
    String griplyBaseUrl
    
    Integer minimumSessionLength
    
    Integer sessionGapLength
    
    Boolean processSessionData
    
    Boolean localAdsEnabled
    
    Boolean includeInReport
    
    String sqootApiKey
    
    Boolean amqpEnabled
    
    TrilatAppSettings trilatSettings
}
