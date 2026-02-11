package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.SirqulResponse
import org.openapitools.model.TokenResponse

class FacebookApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getToken ( String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/facebook/getfbtoken"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    TokenResponse.class )

    }

    def graphInterface ( String event, String deviceId, Long accountId, String permissionableType, Long permissionableId, Long assetId, String gameType, String appKey, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/facebook/graph"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (event == null) {
            throw new RuntimeException("missing required params event")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (event != null) {
            queryParams.put("event", event)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
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
