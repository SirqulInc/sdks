package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.ScoreResponse

class ScoreApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createScore ( BigDecimal version, Long accountId, String appKey, Integer points, Long missionId, Long gameId, Long packId, Long gameLevelId, Long gameObjectId, Integer timeTaken, Boolean highest, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/score/create"

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
        if (points == null) {
            throw new RuntimeException("missing required params points")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (gameId != null) {
            queryParams.put("gameId", gameId)
        }
        if (packId != null) {
            queryParams.put("packId", packId)
        }
        if (gameLevelId != null) {
            queryParams.put("gameLevelId", gameLevelId)
        }
        if (gameObjectId != null) {
            queryParams.put("gameObjectId", gameObjectId)
        }
        if (points != null) {
            queryParams.put("points", points)
        }
        if (timeTaken != null) {
            queryParams.put("timeTaken", timeTaken)
        }
        if (highest != null) {
            queryParams.put("highest", highest)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ScoreResponse.class )

    }

    def getScore ( BigDecimal version, Long accountId, String appKey, Long missionId, Long gameId, Long packId, Long gameLevelId, Long gameObjectId, String scoreObjectType, String scoreStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/score/get"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (gameId != null) {
            queryParams.put("gameId", gameId)
        }
        if (packId != null) {
            queryParams.put("packId", packId)
        }
        if (gameLevelId != null) {
            queryParams.put("gameLevelId", gameLevelId)
        }
        if (gameObjectId != null) {
            queryParams.put("gameObjectId", gameObjectId)
        }
        if (scoreObjectType != null) {
            queryParams.put("scoreObjectType", scoreObjectType)
        }
        if (scoreStatus != null) {
            queryParams.put("scoreStatus", scoreStatus)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ScoreResponse.class )

    }

    def searchScores ( BigDecimal version, Long accountId, String appKey, Long missionId, Long gameId, Long packId, Long gameLevelId, Long gameObjectId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/score/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (gameId != null) {
            queryParams.put("gameId", gameId)
        }
        if (packId != null) {
            queryParams.put("packId", packId)
        }
        if (gameLevelId != null) {
            queryParams.put("gameLevelId", gameLevelId)
        }
        if (gameObjectId != null) {
            queryParams.put("gameObjectId", gameObjectId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ScoreResponse.class )

    }

}
