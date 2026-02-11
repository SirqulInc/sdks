package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.LeaderboardResponse
import org.openapitools.model.SirqulResponse

class LeaderboardApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createLeaderboard ( Long accountId, String appKey, String rankType, String leaderboardMode, File iconMedia, Long iconAssetId, File bannerMedia, Long bannerAssetId, Integer limitation, String sortField, String title, String description, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/leaderboard/create"

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
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (leaderboardMode != null) {
            queryParams.put("leaderboardMode", leaderboardMode)
        }
        if (iconMedia != null) {
            queryParams.put("iconMedia", iconMedia)
        }
        if (iconAssetId != null) {
            queryParams.put("iconAssetId", iconAssetId)
        }
        if (bannerMedia != null) {
            queryParams.put("bannerMedia", bannerMedia)
        }
        if (bannerAssetId != null) {
            queryParams.put("bannerAssetId", bannerAssetId)
        }
        if (limitation != null) {
            queryParams.put("limitation", limitation)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    LeaderboardResponse.class )

    }

    def deleteLeaderboard ( Long leaderboardId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/leaderboard/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (leaderboardId == null) {
            throw new RuntimeException("missing required params leaderboardId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (leaderboardId != null) {
            queryParams.put("leaderboardId", leaderboardId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getLeaderboard ( Long leaderboardId, Long accountId, Boolean includeFullRankingList, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/leaderboard/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (leaderboardId == null) {
            throw new RuntimeException("missing required params leaderboardId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (leaderboardId != null) {
            queryParams.put("leaderboardId", leaderboardId)
        }
        if (includeFullRankingList != null) {
            queryParams.put("includeFullRankingList", includeFullRankingList)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    LeaderboardResponse.class )

    }

    def searchLeaderboards ( Long accountId, String appKey, Boolean globalOnly, String keyword, String leaderboardIds, String rankTypes, String sortField, Boolean descending, Boolean includeInactive, Boolean includeAppResponse, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/leaderboard/search"

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
        if (globalOnly != null) {
            queryParams.put("globalOnly", globalOnly)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (leaderboardIds != null) {
            queryParams.put("leaderboardIds", leaderboardIds)
        }
        if (rankTypes != null) {
            queryParams.put("rankTypes", rankTypes)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
        }
        if (includeAppResponse != null) {
            queryParams.put("includeAppResponse", includeAppResponse)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    LeaderboardResponse.class )

    }

    def updateLeaderboard ( Long leaderboardId, Long accountId, String appKey, String rankType, String leaderboardMode, String sortField, File iconMedia, Long iconAssetId, File bannerMedia, Long bannerAssetId, Integer limitation, Boolean active, String title, String description, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/leaderboard/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (leaderboardId == null) {
            throw new RuntimeException("missing required params leaderboardId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (leaderboardId != null) {
            queryParams.put("leaderboardId", leaderboardId)
        }
        if (rankType != null) {
            queryParams.put("rankType", rankType)
        }
        if (leaderboardMode != null) {
            queryParams.put("leaderboardMode", leaderboardMode)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (iconMedia != null) {
            queryParams.put("iconMedia", iconMedia)
        }
        if (iconAssetId != null) {
            queryParams.put("iconAssetId", iconAssetId)
        }
        if (bannerMedia != null) {
            queryParams.put("bannerMedia", bannerMedia)
        }
        if (bannerAssetId != null) {
            queryParams.put("bannerAssetId", bannerAssetId)
        }
        if (limitation != null) {
            queryParams.put("limitation", limitation)
        }
        if (active != null) {
            queryParams.put("active", active)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    LeaderboardResponse.class )

    }

}
