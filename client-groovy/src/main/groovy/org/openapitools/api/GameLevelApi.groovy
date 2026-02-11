package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.GameLevelListResponse
import org.openapitools.model.GameLevelResponse
import org.openapitools.model.QuestionResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.WordzWordResponse

class GameLevelApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createGameLevel ( Long accountId, String name, String gameData, String gameDataSuffix, String appKey, String description, String difficulty, String appVersion, Long assetImageId, Long assetIconId, String visibility, Boolean friendGroup, String connectionIds, String connectionGroupIds, Double balance, Boolean active, Boolean allocateTickets, Long ticketCount, String ticketType, Long points, String tutorialTitle, String tutorialMessage, String tutorialAlignment, Long tutorialImageAssetId, Long offerId, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (gameData == null) {
            throw new RuntimeException("missing required params gameData")
        }
        // verify required params are set
        if (gameDataSuffix == null) {
            throw new RuntimeException("missing required params gameDataSuffix")
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
        if (difficulty != null) {
            queryParams.put("difficulty", difficulty)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (assetImageId != null) {
            queryParams.put("assetImageId", assetImageId)
        }
        if (assetIconId != null) {
            queryParams.put("assetIconId", assetIconId)
        }
        if (gameData != null) {
            queryParams.put("gameData", gameData)
        }
        if (gameDataSuffix != null) {
            queryParams.put("gameDataSuffix", gameDataSuffix)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (friendGroup != null) {
            queryParams.put("friendGroup", friendGroup)
        }
        if (connectionIds != null) {
            queryParams.put("connectionIds", connectionIds)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
        }
        if (balance != null) {
            queryParams.put("balance", balance)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketCount != null) {
            queryParams.put("ticketCount", ticketCount)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }
        if (tutorialTitle != null) {
            queryParams.put("tutorialTitle", tutorialTitle)
        }
        if (tutorialMessage != null) {
            queryParams.put("tutorialMessage", tutorialMessage)
        }
        if (tutorialAlignment != null) {
            queryParams.put("tutorialAlignment", tutorialAlignment)
        }
        if (tutorialImageAssetId != null) {
            queryParams.put("tutorialImageAssetId", tutorialImageAssetId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    GameLevelResponse.class )

    }

    def deleteGameLevel ( Long accountId, Long levelId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/delete"

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
        if (levelId == null) {
            throw new RuntimeException("missing required params levelId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (levelId != null) {
            queryParams.put("levelId", levelId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getGameLevel ( Long accountId, Long levelId, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/get"

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
        if (levelId == null) {
            throw new RuntimeException("missing required params levelId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (levelId != null) {
            queryParams.put("levelId", levelId)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GameLevelResponse.class )

    }

    def getGameLevelsByApplication ( Long accountId, String appKey, String keyword, String sortField, Boolean descending, Integer start, Integer limit, String appVersion, Boolean includeGameData, String filters, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
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
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (filters != null) {
            queryParams.put("filters", filters)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GameLevelListResponse.class )

    }

    def getGameLevelsByBillableEntity ( Long accountId, String appKey, String keyword, String sortField, Boolean descending, Boolean activeOnly, Long start, Long limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/searchByBillableEntity"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
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
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GameLevelResponse.class )

    }

    def getQuestionsInLevel ( Long levelId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/questions/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (levelId == null) {
            throw new RuntimeException("missing required params levelId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (levelId != null) {
            queryParams.put("levelId", levelId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    QuestionResponse.class )

    }

    def getWordsInLevel ( Long levelId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/words/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (levelId == null) {
            throw new RuntimeException("missing required params levelId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (levelId != null) {
            queryParams.put("levelId", levelId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    WordzWordResponse.class )

    }

    def updateGameLevel ( Long accountId, Long levelId, String appKey, String name, String description, String difficulty, String appVersion, Long assetImageId, Long assetIconId, String gameData, String gameDataSuffix, String visibility, Boolean friendGroup, String connectionIds, String connectionGroupIds, Double balance, Boolean active, Boolean allocateTickets, Long ticketCount, String ticketType, Long points, String tutorialTitle, String tutorialMessage, String tutorialAlignment, Long tutorialImageAssetId, Long offerId, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/update"

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
        if (levelId == null) {
            throw new RuntimeException("missing required params levelId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (levelId != null) {
            queryParams.put("levelId", levelId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (difficulty != null) {
            queryParams.put("difficulty", difficulty)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (assetImageId != null) {
            queryParams.put("assetImageId", assetImageId)
        }
        if (assetIconId != null) {
            queryParams.put("assetIconId", assetIconId)
        }
        if (gameData != null) {
            queryParams.put("gameData", gameData)
        }
        if (gameDataSuffix != null) {
            queryParams.put("gameDataSuffix", gameDataSuffix)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (friendGroup != null) {
            queryParams.put("friendGroup", friendGroup)
        }
        if (connectionIds != null) {
            queryParams.put("connectionIds", connectionIds)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
        }
        if (balance != null) {
            queryParams.put("balance", balance)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketCount != null) {
            queryParams.put("ticketCount", ticketCount)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }
        if (tutorialTitle != null) {
            queryParams.put("tutorialTitle", tutorialTitle)
        }
        if (tutorialMessage != null) {
            queryParams.put("tutorialMessage", tutorialMessage)
        }
        if (tutorialAlignment != null) {
            queryParams.put("tutorialAlignment", tutorialAlignment)
        }
        if (tutorialImageAssetId != null) {
            queryParams.put("tutorialImageAssetId", tutorialImageAssetId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    GameLevelResponse.class )

    }

    def updateQuestionsInLevel ( Long levelId, Long accountId, String questionIds, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/questions/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (levelId == null) {
            throw new RuntimeException("missing required params levelId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (questionIds == null) {
            throw new RuntimeException("missing required params questionIds")
        }

        if (levelId != null) {
            queryParams.put("levelId", levelId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (questionIds != null) {
            queryParams.put("questionIds", questionIds)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateWordsInLevel ( Long levelId, Long accountId, String wordIds, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/level/words/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (levelId == null) {
            throw new RuntimeException("missing required params levelId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (wordIds == null) {
            throw new RuntimeException("missing required params wordIds")
        }

        if (levelId != null) {
            queryParams.put("levelId", levelId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (wordIds != null) {
            queryParams.put("wordIds", wordIds)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
