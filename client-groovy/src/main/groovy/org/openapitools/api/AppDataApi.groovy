package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AppResponse
import java.math.BigDecimal
import org.openapitools.model.SirqulResponse

class AppDataApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getAppData ( BigDecimal version, Integer start, Integer limit, String deviceId, Long accountId, String gameType, Boolean includeGameData, String q, String keyword, String sortField, Boolean descending, Integer i, Integer l, Boolean gameObjectCount, String filter, Long dateCreated, Long ownerId, String missionIds, String gameIds, String packIds, String gameLevelIds, String appVersion, Boolean includeHigherVersionPacks, Boolean includeHigherVersionLevels, String responseGroups, String purchaseType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/app/get"

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
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (q != null) {
            queryParams.put("q", q)
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
        if (gameObjectCount != null) {
            queryParams.put("gameObjectCount", gameObjectCount)
        }
        if (filter != null) {
            queryParams.put("filter", filter)
        }
        if (dateCreated != null) {
            queryParams.put("dateCreated", dateCreated)
        }
        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (missionIds != null) {
            queryParams.put("missionIds", missionIds)
        }
        if (gameIds != null) {
            queryParams.put("gameIds", gameIds)
        }
        if (packIds != null) {
            queryParams.put("packIds", packIds)
        }
        if (gameLevelIds != null) {
            queryParams.put("gameLevelIds", gameLevelIds)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (includeHigherVersionPacks != null) {
            queryParams.put("includeHigherVersionPacks", includeHigherVersionPacks)
        }
        if (includeHigherVersionLevels != null) {
            queryParams.put("includeHigherVersionLevels", includeHigherVersionLevels)
        }
        if (responseGroups != null) {
            queryParams.put("responseGroups", responseGroups)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AppResponse.class )

    }

    def postAppData ( BigDecimal version, String gameType, Integer start, Integer limit, String data, String deviceId, Long accountId, Boolean includeGameData, String q, String keyword, String sortField, Boolean descending, Integer i, Integer l, Boolean gameObjectCount, String filter, Long dateCreated, Long ownerId, String missionIds, String gameIds, String packIds, String gameLevelIds, String appVersion, Boolean includeHigherVersionPacks, Boolean includeHigherVersionLevels, String responseGroups, String purchaseType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/app/post"

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
        if (gameType == null) {
            throw new RuntimeException("missing required params gameType")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
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
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (q != null) {
            queryParams.put("q", q)
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
        if (gameObjectCount != null) {
            queryParams.put("gameObjectCount", gameObjectCount)
        }
        if (filter != null) {
            queryParams.put("filter", filter)
        }
        if (dateCreated != null) {
            queryParams.put("dateCreated", dateCreated)
        }
        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (missionIds != null) {
            queryParams.put("missionIds", missionIds)
        }
        if (gameIds != null) {
            queryParams.put("gameIds", gameIds)
        }
        if (packIds != null) {
            queryParams.put("packIds", packIds)
        }
        if (gameLevelIds != null) {
            queryParams.put("gameLevelIds", gameLevelIds)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (includeHigherVersionPacks != null) {
            queryParams.put("includeHigherVersionPacks", includeHigherVersionPacks)
        }
        if (includeHigherVersionLevels != null) {
            queryParams.put("includeHigherVersionLevels", includeHigherVersionLevels)
        }
        if (responseGroups != null) {
            queryParams.put("responseGroups", responseGroups)
        }
        if (purchaseType != null) {
            queryParams.put("purchaseType", purchaseType)
        }
        if (data != null) {
            queryParams.put("data", data)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AppResponse.class )

    }

    def regenAppData ( BigDecimal version, Long accountId, String appKey, String buildVersion, String apiVersion, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/app/regen"

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
        if (buildVersion != null) {
            queryParams.put("buildVersion", buildVersion)
        }
        if (apiVersion != null) {
            queryParams.put("apiVersion", apiVersion)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
