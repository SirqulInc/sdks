package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.PurchaseItemListResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.ThemeDescriptorResponse

class ThemeDescriptorApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addOrUpdateThemeDescriptor ( Boolean publicRead, Boolean publicWrite, Boolean publicDelete, Boolean publicAdd, String visibility, Boolean includeFriendGroup, Boolean completeWithDefaultValues, String deviceId, Long accountId, String gameType, Long themeDescriptorId, String title, String description, String connectionIdsToAdd, String connectionGroupIdsToAdd, String appVersion, String colorValueJson, String stringReplacerJson, String customJsonObjects, File iconImage, File sceneAtlasImage, File bgImage, File bgSound, String musicSelection, String locationDescription, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/theme"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (publicRead == null) {
            throw new RuntimeException("missing required params publicRead")
        }
        // verify required params are set
        if (publicWrite == null) {
            throw new RuntimeException("missing required params publicWrite")
        }
        // verify required params are set
        if (publicDelete == null) {
            throw new RuntimeException("missing required params publicDelete")
        }
        // verify required params are set
        if (publicAdd == null) {
            throw new RuntimeException("missing required params publicAdd")
        }
        // verify required params are set
        if (visibility == null) {
            throw new RuntimeException("missing required params visibility")
        }
        // verify required params are set
        if (includeFriendGroup == null) {
            throw new RuntimeException("missing required params includeFriendGroup")
        }
        // verify required params are set
        if (completeWithDefaultValues == null) {
            throw new RuntimeException("missing required params completeWithDefaultValues")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (themeDescriptorId != null) {
            queryParams.put("themeDescriptorId", themeDescriptorId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (publicRead != null) {
            queryParams.put("publicRead", publicRead)
        }
        if (publicWrite != null) {
            queryParams.put("publicWrite", publicWrite)
        }
        if (publicDelete != null) {
            queryParams.put("publicDelete", publicDelete)
        }
        if (publicAdd != null) {
            queryParams.put("publicAdd", publicAdd)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (connectionIdsToAdd != null) {
            queryParams.put("connectionIdsToAdd", connectionIdsToAdd)
        }
        if (connectionGroupIdsToAdd != null) {
            queryParams.put("connectionGroupIdsToAdd", connectionGroupIdsToAdd)
        }
        if (includeFriendGroup != null) {
            queryParams.put("includeFriendGroup", includeFriendGroup)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (colorValueJson != null) {
            queryParams.put("colorValueJson", colorValueJson)
        }
        if (stringReplacerJson != null) {
            queryParams.put("stringReplacerJson", stringReplacerJson)
        }
        if (customJsonObjects != null) {
            queryParams.put("customJsonObjects", customJsonObjects)
        }
        if (iconImage != null) {
            queryParams.put("iconImage", iconImage)
        }
        if (sceneAtlasImage != null) {
            queryParams.put("sceneAtlasImage", sceneAtlasImage)
        }
        if (bgImage != null) {
            queryParams.put("bgImage", bgImage)
        }
        if (bgSound != null) {
            queryParams.put("bgSound", bgSound)
        }
        if (musicSelection != null) {
            queryParams.put("musicSelection", musicSelection)
        }
        if (completeWithDefaultValues != null) {
            queryParams.put("completeWithDefaultValues", completeWithDefaultValues)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ThemeDescriptorResponse.class )

    }

    def getThemeDescriptor ( Long themeDescriptorId, String deviceId, Long accountId, String gameType, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/theme/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (themeDescriptorId == null) {
            throw new RuntimeException("missing required params themeDescriptorId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (themeDescriptorId != null) {
            queryParams.put("themeDescriptorId", themeDescriptorId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PurchaseItemListResponse.class )

    }

    def getThemeDescriptors ( String filter, String sortField, Boolean descending, Integer start, Integer limit, String deviceId, Long accountId, String gameType, String contestType, Long ownerId, String q, String keyword, Integer i, Integer l, Long dateCreated, String appVersion, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/theme/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (filter == null) {
            throw new RuntimeException("missing required params filter")
        }
        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
        }
        // verify required params are set
        if (descending == null) {
            throw new RuntimeException("missing required params descending")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (contestType != null) {
            queryParams.put("contestType", contestType)
        }
        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (filter != null) {
            queryParams.put("filter", filter)
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
        if (dateCreated != null) {
            queryParams.put("dateCreated", dateCreated)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PurchaseItemListResponse.class )

    }

    def removeThemeDescriptor ( Long themeDescriptorId, String deviceId, Long accountId, String gameType, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/theme/remove"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (themeDescriptorId == null) {
            throw new RuntimeException("missing required params themeDescriptorId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (themeDescriptorId != null) {
            queryParams.put("themeDescriptorId", themeDescriptorId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
