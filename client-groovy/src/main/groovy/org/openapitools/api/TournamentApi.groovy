package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.MissionShortResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.TournamentResponse

class TournamentApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createTournament ( BigDecimal version, Long accountId, String appKey, String title, Integer costToPlay, Long startDate, String subType, Long imageAssetId, Integer secondsBetweenLevels, Integer secondsForTieBreaker, Integer secondsBetweenPacks, Integer maximumLevelLength, String costToPlayType, Integer minimumToPlay, Integer startingLimit, Integer availableLimit, String description, String metaData, String audienceIds, Boolean active, Boolean enableBuyBack, String offerIds, Long offerAssetId, Boolean fixedReward, String splitReward, Boolean allocateTickets, String tournamentData, String missionType, String visibility, Integer preliminaryGroups, String preliminaryGroupAdvancements, Boolean enableMultipleEntries, Boolean enableMultipleVotes, Boolean featured, String winnerTag, String tieTag, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/create"

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
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (costToPlay == null) {
            throw new RuntimeException("missing required params costToPlay")
        }
        // verify required params are set
        if (startDate == null) {
            throw new RuntimeException("missing required params startDate")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
        }
        if (imageAssetId != null) {
            queryParams.put("imageAssetId", imageAssetId)
        }
        if (secondsBetweenLevels != null) {
            queryParams.put("secondsBetweenLevels", secondsBetweenLevels)
        }
        if (secondsForTieBreaker != null) {
            queryParams.put("secondsForTieBreaker", secondsForTieBreaker)
        }
        if (secondsBetweenPacks != null) {
            queryParams.put("secondsBetweenPacks", secondsBetweenPacks)
        }
        if (maximumLevelLength != null) {
            queryParams.put("maximumLevelLength", maximumLevelLength)
        }
        if (costToPlay != null) {
            queryParams.put("costToPlay", costToPlay)
        }
        if (costToPlayType != null) {
            queryParams.put("costToPlayType", costToPlayType)
        }
        if (minimumToPlay != null) {
            queryParams.put("minimumToPlay", minimumToPlay)
        }
        if (startingLimit != null) {
            queryParams.put("startingLimit", startingLimit)
        }
        if (availableLimit != null) {
            queryParams.put("availableLimit", availableLimit)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (enableBuyBack != null) {
            queryParams.put("enableBuyBack", enableBuyBack)
        }
        if (offerIds != null) {
            queryParams.put("offerIds", offerIds)
        }
        if (offerAssetId != null) {
            queryParams.put("offerAssetId", offerAssetId)
        }
        if (fixedReward != null) {
            queryParams.put("fixedReward", fixedReward)
        }
        if (splitReward != null) {
            queryParams.put("splitReward", splitReward)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (tournamentData != null) {
            queryParams.put("tournamentData", tournamentData)
        }
        if (missionType != null) {
            queryParams.put("missionType", missionType)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (preliminaryGroups != null) {
            queryParams.put("preliminaryGroups", preliminaryGroups)
        }
        if (preliminaryGroupAdvancements != null) {
            queryParams.put("preliminaryGroupAdvancements", preliminaryGroupAdvancements)
        }
        if (enableMultipleEntries != null) {
            queryParams.put("enableMultipleEntries", enableMultipleEntries)
        }
        if (enableMultipleVotes != null) {
            queryParams.put("enableMultipleVotes", enableMultipleVotes)
        }
        if (featured != null) {
            queryParams.put("featured", featured)
        }
        if (winnerTag != null) {
            queryParams.put("winnerTag", winnerTag)
        }
        if (tieTag != null) {
            queryParams.put("tieTag", tieTag)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    TournamentResponse.class )

    }

    def deleteTournament ( BigDecimal version, Long accountId, Long missionId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/delete"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getTournament ( BigDecimal version, Long accountId, Long missionId, String joinCode, String includeScores, Integer objectPreviewSize, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/get"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (joinCode != null) {
            queryParams.put("joinCode", joinCode)
        }
        if (includeScores != null) {
            queryParams.put("includeScores", includeScores)
        }
        if (objectPreviewSize != null) {
            queryParams.put("objectPreviewSize", objectPreviewSize)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    TournamentResponse.class )

    }

    def searchObjects ( BigDecimal version, Long accountId, Long gameLevelId, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/object/search"

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
        if (gameLevelId == null) {
            throw new RuntimeException("missing required params gameLevelId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (gameLevelId != null) {
            queryParams.put("gameLevelId", gameLevelId)
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
                    SirqulResponse.class )

    }

    def searchRounds ( BigDecimal version, Long accountId, String appKey, String status, String missionType, Boolean currentOnly, String visibilities, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/round/search"

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
        if (status != null) {
            queryParams.put("status", status)
        }
        if (missionType != null) {
            queryParams.put("missionType", missionType)
        }
        if (currentOnly != null) {
            queryParams.put("currentOnly", currentOnly)
        }
        if (visibilities != null) {
            queryParams.put("visibilities", visibilities)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def searchTournaments ( BigDecimal version, Long accountId, String appKey, String keyword, String subType, Boolean includeInactive, String missionTypes, String filter, String sortField, Boolean descending, String visibility, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/search"

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
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
        }
        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
        }
        if (missionTypes != null) {
            queryParams.put("missionTypes", missionTypes)
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
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    MissionShortResponse.class )

    }

    def submitTournamentScore ( BigDecimal version, Long accountId, String appKey, Long missionId, Long gameId, Long packId, String scores, Long gameLevelId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/score"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }
        // verify required params are set
        if (gameId == null) {
            throw new RuntimeException("missing required params gameId")
        }
        // verify required params are set
        if (packId == null) {
            throw new RuntimeException("missing required params packId")
        }
        // verify required params are set
        if (scores == null) {
            throw new RuntimeException("missing required params scores")
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
        if (scores != null) {
            queryParams.put("scores", scores)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def submitTournamentVote ( BigDecimal version, Long accountId, String appKey, Long missionId, Long gameObjectId, String deviceId, Boolean checkIfDeviceAlreadyVoted, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/vote"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }
        // verify required params are set
        if (gameObjectId == null) {
            throw new RuntimeException("missing required params gameObjectId")
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
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (gameObjectId != null) {
            queryParams.put("gameObjectId", gameObjectId)
        }
        if (checkIfDeviceAlreadyVoted != null) {
            queryParams.put("checkIfDeviceAlreadyVoted", checkIfDeviceAlreadyVoted)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def substituteTournamentPlayer ( BigDecimal version, Long accountId, Long missionId, Long packId, Long gameLevelId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/substitute"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }
        // verify required params are set
        if (packId == null) {
            throw new RuntimeException("missing required params packId")
        }
        // verify required params are set
        if (gameLevelId == null) {
            throw new RuntimeException("missing required params gameLevelId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (packId != null) {
            queryParams.put("packId", packId)
        }
        if (gameLevelId != null) {
            queryParams.put("gameLevelId", gameLevelId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateTournament ( BigDecimal version, Long accountId, Long missionId, String title, String subType, Long imageAssetId, Integer secondsBetweenLevels, Integer secondsForTieBreaker, Integer secondsBetweenPacks, Integer maximumLevelLength, Integer costToPlay, String costToPlayType, Integer minimumToPlay, Integer startingLimit, Integer availableLimit, String description, String metaData, Long startDate, String audienceIds, Boolean active, Boolean enableBuyBack, String offerIds, Long offerAssetId, Boolean fixedReward, String splitReward, Boolean allocateTickets, String tournamentData, String visibility, Integer preliminaryGroups, String preliminaryGroupAdvancements, Boolean enableMultipleEntries, Boolean enableMultipleVotes, Boolean featured, String winnerTag, String tieTag, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/tournament/update"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
        }
        if (imageAssetId != null) {
            queryParams.put("imageAssetId", imageAssetId)
        }
        if (secondsBetweenLevels != null) {
            queryParams.put("secondsBetweenLevels", secondsBetweenLevels)
        }
        if (secondsForTieBreaker != null) {
            queryParams.put("secondsForTieBreaker", secondsForTieBreaker)
        }
        if (secondsBetweenPacks != null) {
            queryParams.put("secondsBetweenPacks", secondsBetweenPacks)
        }
        if (maximumLevelLength != null) {
            queryParams.put("maximumLevelLength", maximumLevelLength)
        }
        if (costToPlay != null) {
            queryParams.put("costToPlay", costToPlay)
        }
        if (costToPlayType != null) {
            queryParams.put("costToPlayType", costToPlayType)
        }
        if (minimumToPlay != null) {
            queryParams.put("minimumToPlay", minimumToPlay)
        }
        if (startingLimit != null) {
            queryParams.put("startingLimit", startingLimit)
        }
        if (availableLimit != null) {
            queryParams.put("availableLimit", availableLimit)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (enableBuyBack != null) {
            queryParams.put("enableBuyBack", enableBuyBack)
        }
        if (offerIds != null) {
            queryParams.put("offerIds", offerIds)
        }
        if (offerAssetId != null) {
            queryParams.put("offerAssetId", offerAssetId)
        }
        if (fixedReward != null) {
            queryParams.put("fixedReward", fixedReward)
        }
        if (splitReward != null) {
            queryParams.put("splitReward", splitReward)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (tournamentData != null) {
            queryParams.put("tournamentData", tournamentData)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (preliminaryGroups != null) {
            queryParams.put("preliminaryGroups", preliminaryGroups)
        }
        if (preliminaryGroupAdvancements != null) {
            queryParams.put("preliminaryGroupAdvancements", preliminaryGroupAdvancements)
        }
        if (enableMultipleEntries != null) {
            queryParams.put("enableMultipleEntries", enableMultipleEntries)
        }
        if (enableMultipleVotes != null) {
            queryParams.put("enableMultipleVotes", enableMultipleVotes)
        }
        if (featured != null) {
            queryParams.put("featured", featured)
        }
        if (winnerTag != null) {
            queryParams.put("winnerTag", winnerTag)
        }
        if (tieTag != null) {
            queryParams.put("tieTag", tieTag)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    TournamentResponse.class )

    }

}
