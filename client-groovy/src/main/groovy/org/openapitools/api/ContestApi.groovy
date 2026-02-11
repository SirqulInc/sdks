package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AlbumContestListResponse
import org.openapitools.model.AlbumContestResponse
import org.openapitools.model.SirqulResponse

class ContestApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addOrUpdateAlbumContest ( Boolean publicRead, Boolean publicWrite, Boolean publicDelete, Boolean publicAdd, String visibility, Boolean includeFriendGroup, String deviceId, Long accountId, String gameType, String appKey, String contestType, Long albumContestId, String title, String description, Long albumId1, Boolean removeAlbum1, Long albumId2, Boolean removeAlbum2, Long startDate, Long endDate, String locationDescription, String connectionIdsToAdd, String connectionGroupIdsToAdd, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/album/contest"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (publicRead == null) {
            throw new RuntimeException("missing required params publicRead")
        }
        // verify required params are set
        if (publicWrite == null) {
            throw new RuntimeException("missing required params publicWrite")
        }
        // verify required params are set
        if (publicDelete == null) {
            throw new RuntimeException("missing required params publicDelete")
        }
        // verify required params are set
        if (publicAdd == null) {
            throw new RuntimeException("missing required params publicAdd")
        }
        // verify required params are set
        if (visibility == null) {
            throw new RuntimeException("missing required params visibility")
        }
        // verify required params are set
        if (includeFriendGroup == null) {
            throw new RuntimeException("missing required params includeFriendGroup")
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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (contestType != null) {
            queryParams.put("contestType", contestType)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (albumId1 != null) {
            queryParams.put("albumId1", albumId1)
        }
        if (removeAlbum1 != null) {
            queryParams.put("removeAlbum1", removeAlbum1)
        }
        if (albumId2 != null) {
            queryParams.put("albumId2", albumId2)
        }
        if (removeAlbum2 != null) {
            queryParams.put("removeAlbum2", removeAlbum2)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (publicRead != null) {
            queryParams.put("publicRead", publicRead)
        }
        if (publicWrite != null) {
            queryParams.put("publicWrite", publicWrite)
        }
        if (publicDelete != null) {
            queryParams.put("publicDelete", publicDelete)
        }
        if (publicAdd != null) {
            queryParams.put("publicAdd", publicAdd)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (connectionIdsToAdd != null) {
            queryParams.put("connectionIdsToAdd", connectionIdsToAdd)
        }
        if (connectionGroupIdsToAdd != null) {
            queryParams.put("connectionGroupIdsToAdd", connectionGroupIdsToAdd)
        }
        if (includeFriendGroup != null) {
            queryParams.put("includeFriendGroup", includeFriendGroup)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AlbumContestResponse.class )

    }

    def approveAlbumContest ( Long albumContestId, String approvalStatus, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/album/contest/approve"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (albumContestId == null) {
            throw new RuntimeException("missing required params albumContestId")
        }
        // verify required params are set
        if (approvalStatus == null) {
            throw new RuntimeException("missing required params approvalStatus")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
        }
        if (approvalStatus != null) {
            queryParams.put("approvalStatus", approvalStatus)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def deleteContest ( Long albumContestId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/album/contest/remove"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (albumContestId == null) {
            throw new RuntimeException("missing required params albumContestId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
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

    def getAlbumContest ( Long albumContestId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/album/contest/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (albumContestId == null) {
            throw new RuntimeException("missing required params albumContestId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AlbumContestResponse.class )

    }

    def getAlbumContests ( String filter, String sortField, Boolean descending, Integer start, Integer limit, String deviceId, Long accountId, String gameType, String appKey, String appType, String contestType, Long ownerId, String q, String keyword, Integer i, Integer l, Long dateCreated, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/album/contest/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (filter == null) {
            throw new RuntimeException("missing required params filter")
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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (appType != null) {
            queryParams.put("appType", appType)
        }
        if (contestType != null) {
            queryParams.put("contestType", contestType)
        }
        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
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
        if (dateCreated != null) {
            queryParams.put("dateCreated", dateCreated)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AlbumContestListResponse.class )

    }

    def voteOnAlbumContest ( Long albumContestId, Long albumId, String deviceId, Long accountId, String contestType, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/album/contest/vote"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (albumContestId == null) {
            throw new RuntimeException("missing required params albumContestId")
        }
        // verify required params are set
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumContestId != null) {
            queryParams.put("albumContestId", albumContestId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (contestType != null) {
            queryParams.put("contestType", contestType)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AlbumContestResponse.class )

    }

}
