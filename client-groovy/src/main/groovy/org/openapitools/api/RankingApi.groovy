package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.RankFullResponse
import org.openapitools.model.SirqulResponse

class RankingApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getHistoricalRankings ( String appKey, String rankType, Long startDate, Long endDate, String deviceId, Long accountId, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ranking/historical/search"

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
        if (rankType == null) {
            throw new RuntimeException("missing required params rankType")
        }
        // verify required params are set
        if (startDate == null) {
            throw new RuntimeException("missing required params startDate")
        }
        // verify required params are set
        if (endDate == null) {
            throw new RuntimeException("missing required params endDate")
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
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
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
                    RankFullResponse.class )

    }

    def getRankings ( String deviceId, Long accountId, String gameType, String appKey, String q, String keyword, String rankType, String leaderboardMode, String withinAccountIds, Boolean returnUserRank, Long albumId, Long audienceId, String sortField, Boolean descending, Integer i, Integer start, Integer l, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ranking/search"

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
        if (gameType != null) {
            queryParams.put("gameType", gameType)
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
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (leaderboardMode != null) {
            queryParams.put("leaderboardMode", leaderboardMode)
        }
        if (withinAccountIds != null) {
            queryParams.put("withinAccountIds", withinAccountIds)
        }
        if (returnUserRank != null) {
            queryParams.put("returnUserRank", returnUserRank)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RankFullResponse.class )

    }

    def getUserRank ( String deviceId, Long accountId, String appKey, String rankType, Boolean returnUserRank, String leaderboardMode, String sortField, String keyword, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ranking/personal/ranks"

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
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (returnUserRank != null) {
            queryParams.put("returnUserRank", returnUserRank)
        }
        if (leaderboardMode != null) {
            queryParams.put("leaderboardMode", leaderboardMode)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
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
                    "POST", "",
                    Object.class )

    }

    def overrideUserRank ( Long accountId, Long ownerAccountId, String appKey, String rankType, Long totalScore, Long totalCount, Long totalTime, Long dailyScore, Long dailyCount, Long dailyTime, Long weeklyScore, Long weeklyCount, Long weeklyTime, Long monthlyScore, Long monthlyCount, Long monthlyTime, Long topScore, Long lowestScore, Long streakCount, Long streakBestCount, Long startDate, Long endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ranking/override"

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
        if (ownerAccountId == null) {
            throw new RuntimeException("missing required params ownerAccountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (rankType == null) {
            throw new RuntimeException("missing required params rankType")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (ownerAccountId != null) {
            queryParams.put("ownerAccountId", ownerAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (totalScore != null) {
            queryParams.put("totalScore", totalScore)
        }
        if (totalCount != null) {
            queryParams.put("totalCount", totalCount)
        }
        if (totalTime != null) {
            queryParams.put("totalTime", totalTime)
        }
        if (dailyScore != null) {
            queryParams.put("dailyScore", dailyScore)
        }
        if (dailyCount != null) {
            queryParams.put("dailyCount", dailyCount)
        }
        if (dailyTime != null) {
            queryParams.put("dailyTime", dailyTime)
        }
        if (weeklyScore != null) {
            queryParams.put("weeklyScore", weeklyScore)
        }
        if (weeklyCount != null) {
            queryParams.put("weeklyCount", weeklyCount)
        }
        if (weeklyTime != null) {
            queryParams.put("weeklyTime", weeklyTime)
        }
        if (monthlyScore != null) {
            queryParams.put("monthlyScore", monthlyScore)
        }
        if (monthlyCount != null) {
            queryParams.put("monthlyCount", monthlyCount)
        }
        if (monthlyTime != null) {
            queryParams.put("monthlyTime", monthlyTime)
        }
        if (topScore != null) {
            queryParams.put("topScore", topScore)
        }
        if (lowestScore != null) {
            queryParams.put("lowestScore", lowestScore)
        }
        if (streakCount != null) {
            queryParams.put("streakCount", streakCount)
        }
        if (streakBestCount != null) {
            queryParams.put("streakBestCount", streakBestCount)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateRankings ( Long accountId, String appKey, String rankType, Long increment, Long timeIncrement, String tag, Long startDate, Long endDate, Boolean updateGlobal, Boolean createLeaderboard, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ranking/update"

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
        if (rankType == null) {
            throw new RuntimeException("missing required params rankType")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (increment != null) {
            queryParams.put("increment", increment)
        }
        if (timeIncrement != null) {
            queryParams.put("timeIncrement", timeIncrement)
        }
        if (tag != null) {
            queryParams.put("tag", tag)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (updateGlobal != null) {
            queryParams.put("updateGlobal", updateGlobal)
        }
        if (createLeaderboard != null) {
            queryParams.put("createLeaderboard", createLeaderboard)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
