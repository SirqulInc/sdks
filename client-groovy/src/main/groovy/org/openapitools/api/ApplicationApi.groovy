package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountListResponse
import org.openapitools.model.ApplicationResponse
import org.openapitools.model.ApplicationSettingsResponse
import org.openapitools.model.ApplicationShortResponse
import java.math.BigDecimal
import org.openapitools.model.PlacementResponse
import org.openapitools.model.SirqulResponse

class ApplicationApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createApplication ( BigDecimal version, String appName, String deviceId, Long accountId, String about, String bundleId, Long appIconAssetId, Long appLogoAssetId, String facebookAppId, String facebookAppSecret, String googleApiKey, Boolean updateEULADate, String eulaVersion, String landingPageUrl, Boolean showInActivities, String activityDescription, String inviteWelcomeText, String invitePageUrl, String urlScheme, String platforms, String downloadUrls, String categoryIds, String scoringType, Integer hintCost, Integer maxScore, Float ticketsPerPoint, Boolean hasGameData, Boolean publicNotifications, Boolean useMatchingAlgorithm, Boolean globalTickets, Float buildVersion, Float apiVersion, String placementName, String placementDescription, String placementSize, Integer placementHeight, Integer placementWidth, Integer placementRefreshInterval, Boolean createObjectStore, Boolean publicContentApproval, Boolean productionMode, Integer minimumSessionLength, Integer sessionGapLength, Boolean localAdsEnabled, String sqootApiKey, String trilatProcessingType, Integer maxSampleSize, Double minRSSI, String modules, Integer authorizedCount, String authorizedServers, String defaultTimezone, String smtpPass, String metaData, String placementMetaData, Boolean ipsFloor, Boolean enableAPNSBadge, Boolean includeInReport, Long defaultAppFilterId, Boolean enableWelcomeEmail, String appleAppId, String appleTeamId, String appleAuthKeyId, File appleAuthKey, String appleIssuerId, String appStoreKeyId, File appStoreKey, File googlePrivateKeyFile, String authorizeNetApiKey, String authorizeNetTransactionKey, String emailSender, String smtpUser, String smtpHost, String vatomBusinessId, String vatomRestClientId, String vatomRestSecretKey, String twilioAccountSID, String twilioAuthToken, String twilioSenderPhoneNumber, String openAISecretKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (appName == null) {
            throw new RuntimeException("missing required params appName")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appName != null) {
            queryParams.put("appName", appName)
        }
        if (about != null) {
            queryParams.put("about", about)
        }
        if (bundleId != null) {
            queryParams.put("bundleId", bundleId)
        }
        if (appIconAssetId != null) {
            queryParams.put("appIconAssetId", appIconAssetId)
        }
        if (appLogoAssetId != null) {
            queryParams.put("appLogoAssetId", appLogoAssetId)
        }
        if (facebookAppId != null) {
            queryParams.put("facebookAppId", facebookAppId)
        }
        if (facebookAppSecret != null) {
            queryParams.put("facebookAppSecret", facebookAppSecret)
        }
        if (googleApiKey != null) {
            queryParams.put("googleApiKey", googleApiKey)
        }
        if (updateEULADate != null) {
            queryParams.put("updateEULADate", updateEULADate)
        }
        if (eulaVersion != null) {
            queryParams.put("eulaVersion", eulaVersion)
        }
        if (landingPageUrl != null) {
            queryParams.put("landingPageUrl", landingPageUrl)
        }
        if (showInActivities != null) {
            queryParams.put("showInActivities", showInActivities)
        }
        if (activityDescription != null) {
            queryParams.put("activityDescription", activityDescription)
        }
        if (inviteWelcomeText != null) {
            queryParams.put("inviteWelcomeText", inviteWelcomeText)
        }
        if (invitePageUrl != null) {
            queryParams.put("invitePageUrl", invitePageUrl)
        }
        if (urlScheme != null) {
            queryParams.put("urlScheme", urlScheme)
        }
        if (platforms != null) {
            queryParams.put("platforms", platforms)
        }
        if (downloadUrls != null) {
            queryParams.put("downloadUrls", downloadUrls)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (scoringType != null) {
            queryParams.put("scoringType", scoringType)
        }
        if (hintCost != null) {
            queryParams.put("hintCost", hintCost)
        }
        if (maxScore != null) {
            queryParams.put("maxScore", maxScore)
        }
        if (ticketsPerPoint != null) {
            queryParams.put("ticketsPerPoint", ticketsPerPoint)
        }
        if (hasGameData != null) {
            queryParams.put("hasGameData", hasGameData)
        }
        if (publicNotifications != null) {
            queryParams.put("publicNotifications", publicNotifications)
        }
        if (useMatchingAlgorithm != null) {
            queryParams.put("useMatchingAlgorithm", useMatchingAlgorithm)
        }
        if (globalTickets != null) {
            queryParams.put("globalTickets", globalTickets)
        }
        if (buildVersion != null) {
            queryParams.put("buildVersion", buildVersion)
        }
        if (apiVersion != null) {
            queryParams.put("apiVersion", apiVersion)
        }
        if (placementName != null) {
            queryParams.put("placementName", placementName)
        }
        if (placementDescription != null) {
            queryParams.put("placementDescription", placementDescription)
        }
        if (placementSize != null) {
            queryParams.put("placementSize", placementSize)
        }
        if (placementHeight != null) {
            queryParams.put("placementHeight", placementHeight)
        }
        if (placementWidth != null) {
            queryParams.put("placementWidth", placementWidth)
        }
        if (placementRefreshInterval != null) {
            queryParams.put("placementRefreshInterval", placementRefreshInterval)
        }
        if (createObjectStore != null) {
            queryParams.put("createObjectStore", createObjectStore)
        }
        if (publicContentApproval != null) {
            queryParams.put("publicContentApproval", publicContentApproval)
        }
        if (productionMode != null) {
            queryParams.put("productionMode", productionMode)
        }
        if (minimumSessionLength != null) {
            queryParams.put("minimumSessionLength", minimumSessionLength)
        }
        if (sessionGapLength != null) {
            queryParams.put("sessionGapLength", sessionGapLength)
        }
        if (localAdsEnabled != null) {
            queryParams.put("localAdsEnabled", localAdsEnabled)
        }
        if (sqootApiKey != null) {
            queryParams.put("sqootApiKey", sqootApiKey)
        }
        if (trilatProcessingType != null) {
            queryParams.put("trilatProcessingType", trilatProcessingType)
        }
        if (maxSampleSize != null) {
            queryParams.put("maxSampleSize", maxSampleSize)
        }
        if (minRSSI != null) {
            queryParams.put("minRSSI", minRSSI)
        }
        if (modules != null) {
            queryParams.put("modules", modules)
        }
        if (authorizedCount != null) {
            queryParams.put("authorizedCount", authorizedCount)
        }
        if (authorizedServers != null) {
            queryParams.put("authorizedServers", authorizedServers)
        }
        if (defaultTimezone != null) {
            queryParams.put("defaultTimezone", defaultTimezone)
        }
        if (smtpPass != null) {
            queryParams.put("smtpPass", smtpPass)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (placementMetaData != null) {
            queryParams.put("placementMetaData", placementMetaData)
        }
        if (ipsFloor != null) {
            queryParams.put("ipsFloor", ipsFloor)
        }
        if (enableAPNSBadge != null) {
            queryParams.put("enableAPNSBadge", enableAPNSBadge)
        }
        if (includeInReport != null) {
            queryParams.put("includeInReport", includeInReport)
        }
        if (defaultAppFilterId != null) {
            queryParams.put("defaultAppFilterId", defaultAppFilterId)
        }
        if (enableWelcomeEmail != null) {
            queryParams.put("enableWelcomeEmail", enableWelcomeEmail)
        }
        if (appleAppId != null) {
            queryParams.put("appleAppId", appleAppId)
        }
        if (appleTeamId != null) {
            queryParams.put("appleTeamId", appleTeamId)
        }
        if (appleAuthKeyId != null) {
            queryParams.put("appleAuthKeyId", appleAuthKeyId)
        }
        if (appleAuthKey != null) {
            queryParams.put("appleAuthKey", appleAuthKey)
        }
        if (appleIssuerId != null) {
            queryParams.put("appleIssuerId", appleIssuerId)
        }
        if (appStoreKeyId != null) {
            queryParams.put("appStoreKeyId", appStoreKeyId)
        }
        if (appStoreKey != null) {
            queryParams.put("appStoreKey", appStoreKey)
        }
        if (googlePrivateKeyFile != null) {
            queryParams.put("googlePrivateKeyFile", googlePrivateKeyFile)
        }
        if (authorizeNetApiKey != null) {
            queryParams.put("authorizeNetApiKey", authorizeNetApiKey)
        }
        if (authorizeNetTransactionKey != null) {
            queryParams.put("authorizeNetTransactionKey", authorizeNetTransactionKey)
        }
        if (emailSender != null) {
            queryParams.put("emailSender", emailSender)
        }
        if (smtpUser != null) {
            queryParams.put("smtpUser", smtpUser)
        }
        if (smtpHost != null) {
            queryParams.put("smtpHost", smtpHost)
        }
        if (vatomBusinessId != null) {
            queryParams.put("vatomBusinessId", vatomBusinessId)
        }
        if (vatomRestClientId != null) {
            queryParams.put("vatomRestClientId", vatomRestClientId)
        }
        if (vatomRestSecretKey != null) {
            queryParams.put("vatomRestSecretKey", vatomRestSecretKey)
        }
        if (twilioAccountSID != null) {
            queryParams.put("twilioAccountSID", twilioAccountSID)
        }
        if (twilioAuthToken != null) {
            queryParams.put("twilioAuthToken", twilioAuthToken)
        }
        if (twilioSenderPhoneNumber != null) {
            queryParams.put("twilioSenderPhoneNumber", twilioSenderPhoneNumber)
        }
        if (openAISecretKey != null) {
            queryParams.put("openAISecretKey", openAISecretKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ApplicationResponse.class )

    }

    def createApplicationPlacement ( BigDecimal version, String appKey, String size, String deviceId, Long accountId, String name, String description, Integer height, Integer width, Integer refreshInterval, Long defaultImageId, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/placement/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (size == null) {
            throw new RuntimeException("missing required params size")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (size != null) {
            queryParams.put("size", size)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (width != null) {
            queryParams.put("width", width)
        }
        if (refreshInterval != null) {
            queryParams.put("refreshInterval", refreshInterval)
        }
        if (defaultImageId != null) {
            queryParams.put("defaultImageId", defaultImageId)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PlacementResponse.class )

    }

    def deleteApplication ( BigDecimal version, Long accountId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def deleteApplicationPlacement ( BigDecimal version, Long placementId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/placement/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (placementId == null) {
            throw new RuntimeException("missing required params placementId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (placementId != null) {
            queryParams.put("placementId", placementId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PlacementResponse.class )

    }

    def getApplication ( BigDecimal version, String appKey, Long applicationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (applicationId != null) {
            queryParams.put("applicationId", applicationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ApplicationResponse.class )

    }

    def getApplicationPlacement ( BigDecimal version, Long placementId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/placement/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (placementId == null) {
            throw new RuntimeException("missing required params placementId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (placementId != null) {
            queryParams.put("placementId", placementId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PlacementResponse.class )

    }

    def getApplicationVersions ( BigDecimal version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/versions"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def getUniqueUsersByApp ( BigDecimal version, String appKey, String q, String keyword, Long since, Integer i, Integer start, Integer l, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/users"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (since != null) {
            queryParams.put("since", since)
        }
        if (i != null) {
            queryParams.put("_i", i)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AccountListResponse.class )

    }

    def listApplications ( BigDecimal version, Long accountId, String q, String keyword, String platforms, String deviceIds, String deviceVersions, String categoryIds, String sortField, Boolean hasAds, Boolean publicNotifications, Boolean filterBillable, Boolean filterContentAdmin, Boolean descending, Integer i, Integer start, Integer l, Integer limit, String applicationIds, Boolean hasObjectStore, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (platforms != null) {
            queryParams.put("platforms", platforms)
        }
        if (deviceIds != null) {
            queryParams.put("deviceIds", deviceIds)
        }
        if (deviceVersions != null) {
            queryParams.put("deviceVersions", deviceVersions)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (hasAds != null) {
            queryParams.put("hasAds", hasAds)
        }
        if (publicNotifications != null) {
            queryParams.put("publicNotifications", publicNotifications)
        }
        if (filterBillable != null) {
            queryParams.put("filterBillable", filterBillable)
        }
        if (filterContentAdmin != null) {
            queryParams.put("filterContentAdmin", filterContentAdmin)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (i != null) {
            queryParams.put("_i", i)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (applicationIds != null) {
            queryParams.put("applicationIds", applicationIds)
        }
        if (hasObjectStore != null) {
            queryParams.put("hasObjectStore", hasObjectStore)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ApplicationShortResponse.class )

    }

    def searchApplicationPlacement ( BigDecimal version, String appKey, String deviceId, Long accountId, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/placement/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PlacementResponse.class )

    }

    def searchApplicationSettings ( BigDecimal version, String deviceId, Long accountId, Long connectionAccountId, String keyword, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/settings/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ApplicationSettingsResponse.class )

    }

    def searchApplications ( BigDecimal version, String deviceId, Long accountId, Double latitude, Double longitude, String q, String keyword, String qSearchFields, String sortField, Boolean descending, Integer i, Integer start, Integer l, Integer limit, Boolean hasAds, Boolean publicNotifications, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (qSearchFields != null) {
            queryParams.put("qSearchFields", qSearchFields)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (i != null) {
            queryParams.put("_i", i)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (hasAds != null) {
            queryParams.put("hasAds", hasAds)
        }
        if (publicNotifications != null) {
            queryParams.put("publicNotifications", publicNotifications)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ApplicationResponse.class )

    }

    def updateApplication ( BigDecimal version, String appKey, String appName, String deviceId, Long accountId, String about, String bundleId, Long appIconAssetId, Long appLogoAssetId, String facebookAppId, String facebookAppSecret, String googleApiKey, Boolean updateEULADate, String eulaVersion, String landingPageUrl, Boolean showInActivities, String activityDescription, String inviteWelcomeText, String invitePageUrl, String urlScheme, String platforms, String downloadUrls, String categoryIds, String scoringType, Integer hintCost, Integer maxScore, Float ticketsPerPoint, Boolean hasGameData, Boolean publicNotifications, Boolean useMatchingAlgorithm, Boolean globalTickets, Float buildVersion, Float apiVersion, String placementName, String placementDescription, String placementSize, Integer placementHeight, Integer placementWidth, Integer placementRefreshInterval, Boolean createObjectStore, Boolean publicContentApproval, Boolean productionMode, Integer minimumSessionLength, Integer sessionGapLength, Boolean localAdsEnabled, String sqootApiKey, String trilatProcessingType, Integer maxSampleSize, Double minRSSI, String modules, Integer authorizedCount, String authorizedServers, String defaultTimezone, String smtpPass, String metaData, String placementMetaData, Boolean ipsFloor, Boolean enableAPNSBadge, Boolean includeInReport, Long defaultAppFilterId, Boolean enableWelcomeEmail, String appleAppId, String appleTeamId, String appleAuthKeyId, File appleAuthKey, String appleIssuerId, String appStoreKeyId, File appStoreKey, File googlePrivateKeyFile, String authorizeNetApiKey, String authorizeNetTransactionKey, String emailSender, String smtpUser, String smtpHost, String vatomBusinessId, String vatomRestClientId, String vatomRestSecretKey, String twilioAccountSID, String twilioAuthToken, String twilioSenderPhoneNumber, String openAISecretKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (appName == null) {
            throw new RuntimeException("missing required params appName")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (appName != null) {
            queryParams.put("appName", appName)
        }
        if (about != null) {
            queryParams.put("about", about)
        }
        if (bundleId != null) {
            queryParams.put("bundleId", bundleId)
        }
        if (appIconAssetId != null) {
            queryParams.put("appIconAssetId", appIconAssetId)
        }
        if (appLogoAssetId != null) {
            queryParams.put("appLogoAssetId", appLogoAssetId)
        }
        if (facebookAppId != null) {
            queryParams.put("facebookAppId", facebookAppId)
        }
        if (facebookAppSecret != null) {
            queryParams.put("facebookAppSecret", facebookAppSecret)
        }
        if (googleApiKey != null) {
            queryParams.put("googleApiKey", googleApiKey)
        }
        if (updateEULADate != null) {
            queryParams.put("updateEULADate", updateEULADate)
        }
        if (eulaVersion != null) {
            queryParams.put("eulaVersion", eulaVersion)
        }
        if (landingPageUrl != null) {
            queryParams.put("landingPageUrl", landingPageUrl)
        }
        if (showInActivities != null) {
            queryParams.put("showInActivities", showInActivities)
        }
        if (activityDescription != null) {
            queryParams.put("activityDescription", activityDescription)
        }
        if (inviteWelcomeText != null) {
            queryParams.put("inviteWelcomeText", inviteWelcomeText)
        }
        if (invitePageUrl != null) {
            queryParams.put("invitePageUrl", invitePageUrl)
        }
        if (urlScheme != null) {
            queryParams.put("urlScheme", urlScheme)
        }
        if (platforms != null) {
            queryParams.put("platforms", platforms)
        }
        if (downloadUrls != null) {
            queryParams.put("downloadUrls", downloadUrls)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (scoringType != null) {
            queryParams.put("scoringType", scoringType)
        }
        if (hintCost != null) {
            queryParams.put("hintCost", hintCost)
        }
        if (maxScore != null) {
            queryParams.put("maxScore", maxScore)
        }
        if (ticketsPerPoint != null) {
            queryParams.put("ticketsPerPoint", ticketsPerPoint)
        }
        if (hasGameData != null) {
            queryParams.put("hasGameData", hasGameData)
        }
        if (publicNotifications != null) {
            queryParams.put("publicNotifications", publicNotifications)
        }
        if (useMatchingAlgorithm != null) {
            queryParams.put("useMatchingAlgorithm", useMatchingAlgorithm)
        }
        if (globalTickets != null) {
            queryParams.put("globalTickets", globalTickets)
        }
        if (buildVersion != null) {
            queryParams.put("buildVersion", buildVersion)
        }
        if (apiVersion != null) {
            queryParams.put("apiVersion", apiVersion)
        }
        if (placementName != null) {
            queryParams.put("placementName", placementName)
        }
        if (placementDescription != null) {
            queryParams.put("placementDescription", placementDescription)
        }
        if (placementSize != null) {
            queryParams.put("placementSize", placementSize)
        }
        if (placementHeight != null) {
            queryParams.put("placementHeight", placementHeight)
        }
        if (placementWidth != null) {
            queryParams.put("placementWidth", placementWidth)
        }
        if (placementRefreshInterval != null) {
            queryParams.put("placementRefreshInterval", placementRefreshInterval)
        }
        if (createObjectStore != null) {
            queryParams.put("createObjectStore", createObjectStore)
        }
        if (publicContentApproval != null) {
            queryParams.put("publicContentApproval", publicContentApproval)
        }
        if (productionMode != null) {
            queryParams.put("productionMode", productionMode)
        }
        if (minimumSessionLength != null) {
            queryParams.put("minimumSessionLength", minimumSessionLength)
        }
        if (sessionGapLength != null) {
            queryParams.put("sessionGapLength", sessionGapLength)
        }
        if (localAdsEnabled != null) {
            queryParams.put("localAdsEnabled", localAdsEnabled)
        }
        if (sqootApiKey != null) {
            queryParams.put("sqootApiKey", sqootApiKey)
        }
        if (trilatProcessingType != null) {
            queryParams.put("trilatProcessingType", trilatProcessingType)
        }
        if (maxSampleSize != null) {
            queryParams.put("maxSampleSize", maxSampleSize)
        }
        if (minRSSI != null) {
            queryParams.put("minRSSI", minRSSI)
        }
        if (modules != null) {
            queryParams.put("modules", modules)
        }
        if (authorizedCount != null) {
            queryParams.put("authorizedCount", authorizedCount)
        }
        if (authorizedServers != null) {
            queryParams.put("authorizedServers", authorizedServers)
        }
        if (defaultTimezone != null) {
            queryParams.put("defaultTimezone", defaultTimezone)
        }
        if (smtpPass != null) {
            queryParams.put("smtpPass", smtpPass)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (placementMetaData != null) {
            queryParams.put("placementMetaData", placementMetaData)
        }
        if (ipsFloor != null) {
            queryParams.put("ipsFloor", ipsFloor)
        }
        if (enableAPNSBadge != null) {
            queryParams.put("enableAPNSBadge", enableAPNSBadge)
        }
        if (includeInReport != null) {
            queryParams.put("includeInReport", includeInReport)
        }
        if (defaultAppFilterId != null) {
            queryParams.put("defaultAppFilterId", defaultAppFilterId)
        }
        if (enableWelcomeEmail != null) {
            queryParams.put("enableWelcomeEmail", enableWelcomeEmail)
        }
        if (appleAppId != null) {
            queryParams.put("appleAppId", appleAppId)
        }
        if (appleTeamId != null) {
            queryParams.put("appleTeamId", appleTeamId)
        }
        if (appleAuthKeyId != null) {
            queryParams.put("appleAuthKeyId", appleAuthKeyId)
        }
        if (appleAuthKey != null) {
            queryParams.put("appleAuthKey", appleAuthKey)
        }
        if (appleIssuerId != null) {
            queryParams.put("appleIssuerId", appleIssuerId)
        }
        if (appStoreKeyId != null) {
            queryParams.put("appStoreKeyId", appStoreKeyId)
        }
        if (appStoreKey != null) {
            queryParams.put("appStoreKey", appStoreKey)
        }
        if (googlePrivateKeyFile != null) {
            queryParams.put("googlePrivateKeyFile", googlePrivateKeyFile)
        }
        if (authorizeNetApiKey != null) {
            queryParams.put("authorizeNetApiKey", authorizeNetApiKey)
        }
        if (authorizeNetTransactionKey != null) {
            queryParams.put("authorizeNetTransactionKey", authorizeNetTransactionKey)
        }
        if (emailSender != null) {
            queryParams.put("emailSender", emailSender)
        }
        if (smtpUser != null) {
            queryParams.put("smtpUser", smtpUser)
        }
        if (smtpHost != null) {
            queryParams.put("smtpHost", smtpHost)
        }
        if (vatomBusinessId != null) {
            queryParams.put("vatomBusinessId", vatomBusinessId)
        }
        if (vatomRestClientId != null) {
            queryParams.put("vatomRestClientId", vatomRestClientId)
        }
        if (vatomRestSecretKey != null) {
            queryParams.put("vatomRestSecretKey", vatomRestSecretKey)
        }
        if (twilioAccountSID != null) {
            queryParams.put("twilioAccountSID", twilioAccountSID)
        }
        if (twilioAuthToken != null) {
            queryParams.put("twilioAuthToken", twilioAuthToken)
        }
        if (twilioSenderPhoneNumber != null) {
            queryParams.put("twilioSenderPhoneNumber", twilioSenderPhoneNumber)
        }
        if (openAISecretKey != null) {
            queryParams.put("openAISecretKey", openAISecretKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ApplicationResponse.class )

    }

    def updateApplicationActive ( BigDecimal version, Long accountId, String appKey, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/active"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (active == null) {
            throw new RuntimeException("missing required params active")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateApplicationPlacement ( BigDecimal version, Long placementId, String deviceId, Long accountId, String name, String description, String size, Integer height, Integer width, Integer refreshInterval, Long defaultImageId, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/placement/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (placementId == null) {
            throw new RuntimeException("missing required params placementId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (placementId != null) {
            queryParams.put("placementId", placementId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (size != null) {
            queryParams.put("size", size)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (width != null) {
            queryParams.put("width", width)
        }
        if (refreshInterval != null) {
            queryParams.put("refreshInterval", refreshInterval)
        }
        if (defaultImageId != null) {
            queryParams.put("defaultImageId", defaultImageId)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PlacementResponse.class )

    }

    def uploadApplicationCertificate ( BigDecimal version, String appKey, String deviceId, Long accountId, File certificate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/application/certificate/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (certificate != null) {
            queryParams.put("certificate", certificate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
