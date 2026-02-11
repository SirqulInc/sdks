package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.GameResponse
import org.openapitools.model.SirqulResponse

class GameApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createGame ( Long accountId, String appKey, String title, String description, String metaData, String packIds, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (packIds != null) {
            queryParams.put("packIds", packIds)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    GameResponse.class )

    }

    def deleteGame ( Long accountId, Long gameId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (gameId == null) {
            throw new RuntimeException("missing required params gameId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameId != null) {
            queryParams.put("gameId", gameId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getGame ( Long accountId, Long gameId, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (gameId == null) {
            throw new RuntimeException("missing required params gameId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameId != null) {
            queryParams.put("gameId", gameId)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GameResponse.class )

    }

    def searchGames ( Long accountId, String appKey, Integer start, Integer limit, String keyword, String appVersion, Boolean includeGameData, Boolean includeInactive, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GameResponse.class )

    }

    def updateGame ( Long accountId, Long gameId, String appKey, String title, String description, String metaData, String packIds, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/game/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameId != null) {
            queryParams.put("gameId", gameId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (packIds != null) {
            queryParams.put("packIds", packIds)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    GameResponse.class )

    }

}
