package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.LikableResponse
import org.openapitools.model.SearchResponse

class LikeApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def registerLike ( String likableType, Long likableId, String deviceId, Long accountId, String permissionableType, Long permissionableId, Boolean like, String app, String gameType, String appKey, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/like"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (likableType == null) {
            throw new RuntimeException("missing required params likableType")
        }
        // verify required params are set
        if (likableId == null) {
            throw new RuntimeException("missing required params likableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (likableType != null) {
            queryParams.put("likableType", likableType)
        }
        if (likableId != null) {
            queryParams.put("likableId", likableId)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (like != null) {
            queryParams.put("like", like)
        }
        if (app != null) {
            queryParams.put("app", app)
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
                    LikableResponse.class )

    }

    def removeLike ( String likableType, Long likableId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/like/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (likableType == null) {
            throw new RuntimeException("missing required params likableType")
        }
        // verify required params are set
        if (likableId == null) {
            throw new RuntimeException("missing required params likableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (likableType != null) {
            queryParams.put("likableType", likableType)
        }
        if (likableId != null) {
            queryParams.put("likableId", likableId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    LikableResponse.class )

    }

    def searchLikes ( String likableType, Long likableId, String deviceId, Long accountId, String connectionAccountIds, String sortField, Boolean descending, Long updatedSince, Long updatedBefore, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/like/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (likableType == null) {
            throw new RuntimeException("missing required params likableType")
        }
        // verify required params are set
        if (likableId == null) {
            throw new RuntimeException("missing required params likableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (likableType != null) {
            queryParams.put("likableType", likableType)
        }
        if (likableId != null) {
            queryParams.put("likableId", likableId)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (updatedSince != null) {
            queryParams.put("updatedSince", updatedSince)
        }
        if (updatedBefore != null) {
            queryParams.put("updatedBefore", updatedBefore)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchResponse.class )

    }

}
