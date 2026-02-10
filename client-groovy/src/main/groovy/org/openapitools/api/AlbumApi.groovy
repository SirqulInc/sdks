package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AlbumFullResponse
import org.openapitools.model.AlbumResponse
import java.math.BigDecimal
import org.openapitools.model.SearchResponse
import org.openapitools.model.SirqulResponse

class AlbumApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addAlbumCollection ( BigDecimal version, String title, Boolean coverAssetNullable, Boolean includeCoverInAssetList, Boolean publicRead, Boolean publicWrite, Boolean publicDelete, Boolean publicAdd, Boolean anonymous, String deviceId, Long accountId, String assetsToAdd, File media, String mediaURL, Long assetId, File attachedMedia, String attachedMediaURL, Long startDate, Long endDate, String tags, String description, String albumType, Long albumTypeId, String subType, Double latitude, Double longitude, String locationDescription, String visibility, String gameType, String appKey, String cellPhone, String streetAddress, String streetAddress2, String city, String state, String postalCode, String fullAddress, String metaData, String categoryIds, String categoryFilterIds, String audienceIds, Boolean includeAllAppUsersAsMembers, Boolean includeAudiencesAsMembers, String audienceOperator, String approvalStatus, String linkedObjectType, Long linkedObjectId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/create"

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
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (coverAssetNullable == null) {
            throw new RuntimeException("missing required params coverAssetNullable")
        }
        // verify required params are set
        if (includeCoverInAssetList == null) {
            throw new RuntimeException("missing required params includeCoverInAssetList")
        }
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
        if (anonymous == null) {
            throw new RuntimeException("missing required params anonymous")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (assetsToAdd != null) {
            queryParams.put("assetsToAdd", assetsToAdd)
        }
        if (media != null) {
            queryParams.put("media", media)
        }
        if (mediaURL != null) {
            queryParams.put("mediaURL", mediaURL)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (attachedMedia != null) {
            queryParams.put("attachedMedia", attachedMedia)
        }
        if (attachedMediaURL != null) {
            queryParams.put("attachedMediaURL", attachedMediaURL)
        }
        if (coverAssetNullable != null) {
            queryParams.put("coverAssetNullable", coverAssetNullable)
        }
        if (includeCoverInAssetList != null) {
            queryParams.put("includeCoverInAssetList", includeCoverInAssetList)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (albumType != null) {
            queryParams.put("albumType", albumType)
        }
        if (albumTypeId != null) {
            queryParams.put("albumTypeId", albumTypeId)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (cellPhone != null) {
            queryParams.put("cellPhone", cellPhone)
        }
        if (streetAddress != null) {
            queryParams.put("streetAddress", streetAddress)
        }
        if (streetAddress2 != null) {
            queryParams.put("streetAddress2", streetAddress2)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (state != null) {
            queryParams.put("state", state)
        }
        if (postalCode != null) {
            queryParams.put("postalCode", postalCode)
        }
        if (fullAddress != null) {
            queryParams.put("fullAddress", fullAddress)
        }
        if (anonymous != null) {
            queryParams.put("anonymous", anonymous)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (categoryFilterIds != null) {
            queryParams.put("categoryFilterIds", categoryFilterIds)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (includeAllAppUsersAsMembers != null) {
            queryParams.put("includeAllAppUsersAsMembers", includeAllAppUsersAsMembers)
        }
        if (includeAudiencesAsMembers != null) {
            queryParams.put("includeAudiencesAsMembers", includeAudiencesAsMembers)
        }
        if (audienceOperator != null) {
            queryParams.put("audienceOperator", audienceOperator)
        }
        if (approvalStatus != null) {
            queryParams.put("approvalStatus", approvalStatus)
        }
        if (linkedObjectType != null) {
            queryParams.put("linkedObjectType", linkedObjectType)
        }
        if (linkedObjectId != null) {
            queryParams.put("linkedObjectId", linkedObjectId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SearchResponse.class )

    }

    def addAlbumUsers ( BigDecimal version, Long albumId, Boolean includeFriendGroup, String deviceId, Long accountId, Boolean read, Boolean write, Boolean delete, Boolean add, String connections, String connectionGroups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/user/add"

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
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
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
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (read != null) {
            queryParams.put("read", read)
        }
        if (write != null) {
            queryParams.put("write", write)
        }
        if (delete != null) {
            queryParams.put("delete", delete)
        }
        if (add != null) {
            queryParams.put("add", add)
        }
        if (connections != null) {
            queryParams.put("connections", connections)
        }
        if (connectionGroups != null) {
            queryParams.put("connectionGroups", connectionGroups)
        }
        if (includeFriendGroup != null) {
            queryParams.put("includeFriendGroup", includeFriendGroup)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def approveAlbum ( BigDecimal version, Long albumId, String deviceId, Long accountId, String approvalStatus, Boolean verified, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/approve"

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
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (approvalStatus != null) {
            queryParams.put("approvalStatus", approvalStatus)
        }
        if (verified != null) {
            queryParams.put("verified", verified)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getAlbumCollection ( BigDecimal version, Boolean returnNulls, Long albumId, String deviceId, Long accountId, Integer likePreviewSize, Integer assetPreviewSize, Integer notePreviewSize, Integer connectionPreviewSize, Integer audiencePreviewSize, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/get"

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
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
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
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (likePreviewSize != null) {
            queryParams.put("likePreviewSize", likePreviewSize)
        }
        if (assetPreviewSize != null) {
            queryParams.put("assetPreviewSize", assetPreviewSize)
        }
        if (notePreviewSize != null) {
            queryParams.put("notePreviewSize", notePreviewSize)
        }
        if (connectionPreviewSize != null) {
            queryParams.put("connectionPreviewSize", connectionPreviewSize)
        }
        if (audiencePreviewSize != null) {
            queryParams.put("audiencePreviewSize", audiencePreviewSize)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AlbumFullResponse.class )

    }

    def leaveAlbum ( BigDecimal version, Long albumId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/user/leave"

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
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def removeAlbum ( BigDecimal version, Long albumId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/delete"

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
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def removeAlbumUsers ( BigDecimal version, Long albumId, Boolean removeFriendGroup, String deviceId, Long accountId, String connections, String connectionGroups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/user/delete"

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
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
        }
        // verify required params are set
        if (removeFriendGroup == null) {
            throw new RuntimeException("missing required params removeFriendGroup")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (connections != null) {
            queryParams.put("connections", connections)
        }
        if (connectionGroups != null) {
            queryParams.put("connectionGroups", connectionGroups)
        }
        if (removeFriendGroup != null) {
            queryParams.put("removeFriendGroup", removeFriendGroup)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchAlbums ( BigDecimal version, String filter, Long albumTypeId, String subType, Boolean includeInactive, String sortField, Boolean descending, Integer start, Integer limit, Double range, Boolean includeLiked, Boolean includeFavorited, Boolean includePermissions, Integer likePreviewSize, Integer assetPreviewSize, Integer notePreviewSize, Integer connectionPreviewSize, Integer audiencePreviewSize, String deviceId, Long accountId, Long connectionAccountId, Long ownerId, String albumIds, String excludeAlbumIds, Long mediaId, String keyword, String albumType, Integer limitPerAlbumType, Long dateCreated, Long updatedSince, Long updatedBefore, Long createdSince, Long createdBefore, Long startedSince, Long startedBefore, Long endedSince, Long endedBefore, Double latitude, Double longitude, String appKey, String categoryIds, String categoryFilterIds, String audienceIds, String excludeAudienceIds, Boolean includeCompletable, Boolean includeRating, String searchMode, Boolean stackSearch, Integer stackWindowSize, Integer minStackPerPage, String stackPaginationIdentifier, Boolean stackDetails, Long flagCountMinimum, Boolean removeFlaggedContent, Boolean verifiedFilter, String linkedObjectType, Long linkedObjectId, Long orderAudienceId, Boolean ignoreDefaultAppFilter, String searchExpression, Boolean generateAlbums, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/search"

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
        if (filter == null) {
            throw new RuntimeException("missing required params filter")
        }
        // verify required params are set
        if (albumTypeId == null) {
            throw new RuntimeException("missing required params albumTypeId")
        }
        // verify required params are set
        if (subType == null) {
            throw new RuntimeException("missing required params subType")
        }
        // verify required params are set
        if (includeInactive == null) {
            throw new RuntimeException("missing required params includeInactive")
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
        // verify required params are set
        if (range == null) {
            throw new RuntimeException("missing required params range")
        }
        // verify required params are set
        if (includeLiked == null) {
            throw new RuntimeException("missing required params includeLiked")
        }
        // verify required params are set
        if (includeFavorited == null) {
            throw new RuntimeException("missing required params includeFavorited")
        }
        // verify required params are set
        if (includePermissions == null) {
            throw new RuntimeException("missing required params includePermissions")
        }
        // verify required params are set
        if (likePreviewSize == null) {
            throw new RuntimeException("missing required params likePreviewSize")
        }
        // verify required params are set
        if (assetPreviewSize == null) {
            throw new RuntimeException("missing required params assetPreviewSize")
        }
        // verify required params are set
        if (notePreviewSize == null) {
            throw new RuntimeException("missing required params notePreviewSize")
        }
        // verify required params are set
        if (connectionPreviewSize == null) {
            throw new RuntimeException("missing required params connectionPreviewSize")
        }
        // verify required params are set
        if (audiencePreviewSize == null) {
            throw new RuntimeException("missing required params audiencePreviewSize")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (albumIds != null) {
            queryParams.put("albumIds", albumIds)
        }
        if (excludeAlbumIds != null) {
            queryParams.put("excludeAlbumIds", excludeAlbumIds)
        }
        if (mediaId != null) {
            queryParams.put("mediaId", mediaId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (filter != null) {
            queryParams.put("filter", filter)
        }
        if (albumType != null) {
            queryParams.put("albumType", albumType)
        }
        if (albumTypeId != null) {
            queryParams.put("albumTypeId", albumTypeId)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
        }
        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
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
        if (limitPerAlbumType != null) {
            queryParams.put("limitPerAlbumType", limitPerAlbumType)
        }
        if (dateCreated != null) {
            queryParams.put("dateCreated", dateCreated)
        }
        if (updatedSince != null) {
            queryParams.put("updatedSince", updatedSince)
        }
        if (updatedBefore != null) {
            queryParams.put("updatedBefore", updatedBefore)
        }
        if (createdSince != null) {
            queryParams.put("createdSince", createdSince)
        }
        if (createdBefore != null) {
            queryParams.put("createdBefore", createdBefore)
        }
        if (startedSince != null) {
            queryParams.put("startedSince", startedSince)
        }
        if (startedBefore != null) {
            queryParams.put("startedBefore", startedBefore)
        }
        if (endedSince != null) {
            queryParams.put("endedSince", endedSince)
        }
        if (endedBefore != null) {
            queryParams.put("endedBefore", endedBefore)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (range != null) {
            queryParams.put("range", range)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (categoryFilterIds != null) {
            queryParams.put("categoryFilterIds", categoryFilterIds)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (excludeAudienceIds != null) {
            queryParams.put("excludeAudienceIds", excludeAudienceIds)
        }
        if (includeLiked != null) {
            queryParams.put("includeLiked", includeLiked)
        }
        if (includeFavorited != null) {
            queryParams.put("includeFavorited", includeFavorited)
        }
        if (includePermissions != null) {
            queryParams.put("includePermissions", includePermissions)
        }
        if (includeCompletable != null) {
            queryParams.put("includeCompletable", includeCompletable)
        }
        if (includeRating != null) {
            queryParams.put("includeRating", includeRating)
        }
        if (likePreviewSize != null) {
            queryParams.put("likePreviewSize", likePreviewSize)
        }
        if (assetPreviewSize != null) {
            queryParams.put("assetPreviewSize", assetPreviewSize)
        }
        if (notePreviewSize != null) {
            queryParams.put("notePreviewSize", notePreviewSize)
        }
        if (connectionPreviewSize != null) {
            queryParams.put("connectionPreviewSize", connectionPreviewSize)
        }
        if (audiencePreviewSize != null) {
            queryParams.put("audiencePreviewSize", audiencePreviewSize)
        }
        if (searchMode != null) {
            queryParams.put("searchMode", searchMode)
        }
        if (stackSearch != null) {
            queryParams.put("stackSearch", stackSearch)
        }
        if (stackWindowSize != null) {
            queryParams.put("stackWindowSize", stackWindowSize)
        }
        if (minStackPerPage != null) {
            queryParams.put("minStackPerPage", minStackPerPage)
        }
        if (stackPaginationIdentifier != null) {
            queryParams.put("stackPaginationIdentifier", stackPaginationIdentifier)
        }
        if (stackDetails != null) {
            queryParams.put("stackDetails", stackDetails)
        }
        if (flagCountMinimum != null) {
            queryParams.put("flagCountMinimum", flagCountMinimum)
        }
        if (removeFlaggedContent != null) {
            queryParams.put("removeFlaggedContent", removeFlaggedContent)
        }
        if (verifiedFilter != null) {
            queryParams.put("verifiedFilter", verifiedFilter)
        }
        if (linkedObjectType != null) {
            queryParams.put("linkedObjectType", linkedObjectType)
        }
        if (linkedObjectId != null) {
            queryParams.put("linkedObjectId", linkedObjectId)
        }
        if (orderAudienceId != null) {
            queryParams.put("orderAudienceId", orderAudienceId)
        }
        if (ignoreDefaultAppFilter != null) {
            queryParams.put("ignoreDefaultAppFilter", ignoreDefaultAppFilter)
        }
        if (searchExpression != null) {
            queryParams.put("searchExpression", searchExpression)
        }
        if (generateAlbums != null) {
            queryParams.put("generateAlbums", generateAlbums)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AlbumFullResponse.class )

    }

    def updateAlbumCollection ( BigDecimal version, Long albumId, String deviceId, Long accountId, String assetsToAdd, String assetsToRemove, Long assetId, File media, String mediaURL, Boolean active, String title, Long startDate, Long endDate, String tags, String description, String albumType, Long albumTypeId, String subType, Boolean publicRead, Boolean publicWrite, Boolean publicDelete, Boolean publicAdd, Double latitude, Double longitude, String locationDescription, String visibility, String cellPhone, String streetAddress, String streetAddress2, String city, String state, String postalCode, String fullAddress, Boolean anonymous, String metaData, String categoryIds, String categoryFilterIds, String audienceIds, String audienceIdsToAdd, String audienceIdsToRemove, Boolean includeAllAppUsersAsMembers, Boolean includeAudiencesAsMembers, String audienceOperator, String linkedObjectType, Long linkedObjectId, Boolean indexNow, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/album/update"

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
        if (albumId == null) {
            throw new RuntimeException("missing required params albumId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (assetsToAdd != null) {
            queryParams.put("assetsToAdd", assetsToAdd)
        }
        if (assetsToRemove != null) {
            queryParams.put("assetsToRemove", assetsToRemove)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (media != null) {
            queryParams.put("media", media)
        }
        if (mediaURL != null) {
            queryParams.put("mediaURL", mediaURL)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (albumType != null) {
            queryParams.put("albumType", albumType)
        }
        if (albumTypeId != null) {
            queryParams.put("albumTypeId", albumTypeId)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (cellPhone != null) {
            queryParams.put("cellPhone", cellPhone)
        }
        if (streetAddress != null) {
            queryParams.put("streetAddress", streetAddress)
        }
        if (streetAddress2 != null) {
            queryParams.put("streetAddress2", streetAddress2)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (state != null) {
            queryParams.put("state", state)
        }
        if (postalCode != null) {
            queryParams.put("postalCode", postalCode)
        }
        if (fullAddress != null) {
            queryParams.put("fullAddress", fullAddress)
        }
        if (anonymous != null) {
            queryParams.put("anonymous", anonymous)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (categoryFilterIds != null) {
            queryParams.put("categoryFilterIds", categoryFilterIds)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (audienceIdsToAdd != null) {
            queryParams.put("audienceIdsToAdd", audienceIdsToAdd)
        }
        if (audienceIdsToRemove != null) {
            queryParams.put("audienceIdsToRemove", audienceIdsToRemove)
        }
        if (includeAllAppUsersAsMembers != null) {
            queryParams.put("includeAllAppUsersAsMembers", includeAllAppUsersAsMembers)
        }
        if (includeAudiencesAsMembers != null) {
            queryParams.put("includeAudiencesAsMembers", includeAudiencesAsMembers)
        }
        if (audienceOperator != null) {
            queryParams.put("audienceOperator", audienceOperator)
        }
        if (linkedObjectType != null) {
            queryParams.put("linkedObjectType", linkedObjectType)
        }
        if (linkedObjectId != null) {
            queryParams.put("linkedObjectId", linkedObjectId)
        }
        if (indexNow != null) {
            queryParams.put("indexNow", indexNow)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AlbumResponse.class )

    }

}
