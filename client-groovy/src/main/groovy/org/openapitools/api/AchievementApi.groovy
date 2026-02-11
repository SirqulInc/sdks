package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AchievementProgressResponse
import org.openapitools.model.AchievementResponse
import org.openapitools.model.AchievementShortResponse
import org.openapitools.model.AchievementTierResponse
import org.openapitools.model.SirqulResponse

class AchievementApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def achievementTierSearchPost ( String deviceId, Long accountId, String appKey, String keyword, Long achievementType, String rankType, String sortField, Boolean descending, Boolean descendingGoal, Long start, Long limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/tier/search"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (achievementType != null) {
            queryParams.put("achievementType", achievementType)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (descendingGoal != null) {
            queryParams.put("descendingGoal", descendingGoal)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AchievementTierResponse.class )

    }

    def createAchievement ( String appKey, String title, String deviceId, Long accountId, String analyticsTag, String description, String rankType, Integer rankIncrement, Integer minIncrement, Integer maxIncrement, Boolean validate, Boolean active, String triggerDefinition, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
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
        if (analyticsTag != null) {
            queryParams.put("analyticsTag", analyticsTag)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (rankIncrement != null) {
            queryParams.put("rankIncrement", rankIncrement)
        }
        if (minIncrement != null) {
            queryParams.put("minIncrement", minIncrement)
        }
        if (maxIncrement != null) {
            queryParams.put("maxIncrement", maxIncrement)
        }
        if (validate != null) {
            queryParams.put("validate", validate)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (triggerDefinition != null) {
            queryParams.put("triggerDefinition", triggerDefinition)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AchievementResponse.class )

    }

    def createAchievementTier ( Long achievementId, Boolean scoreAllInstances, String deviceId, Long accountId, File icon, Long iconAssetId, String title, String description, Long goalCount, Long missionId, Long gameId, Long packId, Long gameLevelId, Integer gameObjectId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/tier/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (achievementId == null) {
            throw new RuntimeException("missing required params achievementId")
        }
        // verify required params are set
        if (scoreAllInstances == null) {
            throw new RuntimeException("missing required params scoreAllInstances")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (achievementId != null) {
            queryParams.put("achievementId", achievementId)
        }
        if (icon != null) {
            queryParams.put("icon", icon)
        }
        if (iconAssetId != null) {
            queryParams.put("iconAssetId", iconAssetId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (goalCount != null) {
            queryParams.put("goalCount", goalCount)
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
        if (scoreAllInstances != null) {
            queryParams.put("scoreAllInstances", scoreAllInstances)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AchievementTierResponse.class )

    }

    def deleteAchievement ( Long achievementId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (achievementId == null) {
            throw new RuntimeException("missing required params achievementId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (achievementId != null) {
            queryParams.put("achievementId", achievementId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def deleteAchievementTier ( Long achievementTierId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/tier/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (achievementTierId == null) {
            throw new RuntimeException("missing required params achievementTierId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (achievementTierId != null) {
            queryParams.put("achievementTierId", achievementTierId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getAchievement ( Long achievementId, String deviceId, Long accountId, String achievementType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (achievementId == null) {
            throw new RuntimeException("missing required params achievementId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (achievementId != null) {
            queryParams.put("achievementId", achievementId)
        }
        if (achievementType != null) {
            queryParams.put("achievementType", achievementType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AchievementTierResponse.class )

    }

    def getAchievementTier ( Long accountId, Long achievementTierId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/tier/get"

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
        if (achievementTierId == null) {
            throw new RuntimeException("missing required params achievementTierId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (achievementTierId != null) {
            queryParams.put("achievementTierId", achievementTierId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AchievementTierResponse.class )

    }

    def getUserAchievements ( Boolean returnNulls, String appKey, Boolean includeUndiscovered, String deviceId, Long accountId, String connectionAccountEmail, Long connectionAccountId, String rankType, String achievementType, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/progress/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (includeUndiscovered == null) {
            throw new RuntimeException("missing required params includeUndiscovered")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountEmail != null) {
            queryParams.put("connectionAccountEmail", connectionAccountEmail)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (achievementType != null) {
            queryParams.put("achievementType", achievementType)
        }
        if (includeUndiscovered != null) {
            queryParams.put("includeUndiscovered", includeUndiscovered)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AchievementProgressResponse.class )

    }

    def listAchievementTags ( String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/tag/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def listAchievements ( String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, String deviceId, Long accountId, String appKey, String keyword, String achievementType, String rankType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/list"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

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
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
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
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (achievementType != null) {
            queryParams.put("achievementType", achievementType)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
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
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AchievementShortResponse.class )

    }

    def searchAchievements ( String appKey, String sortField, Boolean descending, Boolean includeTiers, Boolean includeInactiveTiers, Integer start, Integer limit, String deviceId, Long accountId, String keyword, String achievementType, String rankType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
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
        if (includeTiers == null) {
            throw new RuntimeException("missing required params includeTiers")
        }
        // verify required params are set
        if (includeInactiveTiers == null) {
            throw new RuntimeException("missing required params includeInactiveTiers")
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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (achievementType != null) {
            queryParams.put("achievementType", achievementType)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (includeTiers != null) {
            queryParams.put("includeTiers", includeTiers)
        }
        if (includeInactiveTiers != null) {
            queryParams.put("includeInactiveTiers", includeInactiveTiers)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AchievementShortResponse.class )

    }

    def updateAchievement ( String deviceId, Long accountId, Long achievementId, String analyticsTag, String title, String description, String rankType, Integer rankIncrement, Integer minIncrement, Boolean nullMinIncrement, Integer maxIncrement, Boolean nullMaxIncrement, Boolean validate, Boolean active, String triggerDefinition, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/update"

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
        if (achievementId != null) {
            queryParams.put("achievementId", achievementId)
        }
        if (analyticsTag != null) {
            queryParams.put("analyticsTag", analyticsTag)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (rankIncrement != null) {
            queryParams.put("rankIncrement", rankIncrement)
        }
        if (minIncrement != null) {
            queryParams.put("minIncrement", minIncrement)
        }
        if (nullMinIncrement != null) {
            queryParams.put("nullMinIncrement", nullMinIncrement)
        }
        if (maxIncrement != null) {
            queryParams.put("maxIncrement", maxIncrement)
        }
        if (nullMaxIncrement != null) {
            queryParams.put("nullMaxIncrement", nullMaxIncrement)
        }
        if (validate != null) {
            queryParams.put("validate", validate)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (triggerDefinition != null) {
            queryParams.put("triggerDefinition", triggerDefinition)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AchievementResponse.class )

    }

    def updateAchievementTier ( Long achievementTierId, String deviceId, Long accountId, File icon, Long iconAssetId, String title, String description, Long goalCount, Long missionId, Long gameId, Long packId, Long gameLevelId, Long gameObjectId, Boolean scoreAllInstances, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/tier/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (achievementTierId == null) {
            throw new RuntimeException("missing required params achievementTierId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (achievementTierId != null) {
            queryParams.put("achievementTierId", achievementTierId)
        }
        if (icon != null) {
            queryParams.put("icon", icon)
        }
        if (iconAssetId != null) {
            queryParams.put("iconAssetId", iconAssetId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (goalCount != null) {
            queryParams.put("goalCount", goalCount)
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
        if (scoreAllInstances != null) {
            queryParams.put("scoreAllInstances", scoreAllInstances)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AchievementTierResponse.class )

    }

    def updateUserAchievement ( Long accountId, Long achievementId, String tag, Long customId, Long increment, Long startDate, Long endDate, Boolean returnProgress, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/achievement/progress/update"

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
        if (achievementId != null) {
            queryParams.put("achievementId", achievementId)
        }
        if (tag != null) {
            queryParams.put("tag", tag)
        }
        if (customId != null) {
            queryParams.put("customId", customId)
        }
        if (increment != null) {
            queryParams.put("increment", increment)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (returnProgress != null) {
            queryParams.put("returnProgress", returnProgress)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
