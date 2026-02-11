package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.NoteResponse
import org.openapitools.model.SirqulResponse

class NoteApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def batchOperation ( Long notableId, String notableType, String deviceId, Long accountId, String batchOperation, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/note/batch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (notableId == null) {
            throw new RuntimeException("missing required params notableId")
        }
        // verify required params are set
        if (notableType == null) {
            throw new RuntimeException("missing required params notableType")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (notableId != null) {
            queryParams.put("notableId", notableId)
        }
        if (notableType != null) {
            queryParams.put("notableType", notableType)
        }
        if (batchOperation != null) {
            queryParams.put("batchOperation", batchOperation)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def createNote ( String comment, String deviceId, Long accountId, String notableType, Long notableId, String noteType, String assetIds, String tags, String permissionableType, Long permissionableId, String appKey, String locationDescription, Double latitude, Double longitude, String metaData, String receiverAccountIds, Boolean returnFullResponse, Boolean initializeAsset, Boolean assetReturnNulls, Long assetAlbumId, Long assetCollectionId, String assetAddToDefaultAlbum, Boolean assetAddToMediaLibrary, Integer assetVersionCode, String assetVersionName, String assetMetaData, String assetCaption, File assetMedia, String assetMediaUrl, String assetMediaString, String assetMediaStringFileName, String assetMediaStringContentType, File assetAttachedMedia, String assetAttachedMediaUrl, String assetAttachedMediaString, String assetAttachedMediaStringFileName, String assetAttachedMediaStringContentType, String assetLocationDescription, String assetApp, String assetSearchTags, Double assetLatitude, BigDecimal assetLongitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/note/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (comment == null) {
            throw new RuntimeException("missing required params comment")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (notableType != null) {
            queryParams.put("notableType", notableType)
        }
        if (notableId != null) {
            queryParams.put("notableId", notableId)
        }
        if (comment != null) {
            queryParams.put("comment", comment)
        }
        if (noteType != null) {
            queryParams.put("noteType", noteType)
        }
        if (assetIds != null) {
            queryParams.put("assetIds", assetIds)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (receiverAccountIds != null) {
            queryParams.put("receiverAccountIds", receiverAccountIds)
        }
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
        }
        if (initializeAsset != null) {
            queryParams.put("initializeAsset", initializeAsset)
        }
        if (assetReturnNulls != null) {
            queryParams.put("assetReturnNulls", assetReturnNulls)
        }
        if (assetAlbumId != null) {
            queryParams.put("assetAlbumId", assetAlbumId)
        }
        if (assetCollectionId != null) {
            queryParams.put("assetCollectionId", assetCollectionId)
        }
        if (assetAddToDefaultAlbum != null) {
            queryParams.put("assetAddToDefaultAlbum", assetAddToDefaultAlbum)
        }
        if (assetAddToMediaLibrary != null) {
            queryParams.put("assetAddToMediaLibrary", assetAddToMediaLibrary)
        }
        if (assetVersionCode != null) {
            queryParams.put("assetVersionCode", assetVersionCode)
        }
        if (assetVersionName != null) {
            queryParams.put("assetVersionName", assetVersionName)
        }
        if (assetMetaData != null) {
            queryParams.put("assetMetaData", assetMetaData)
        }
        if (assetCaption != null) {
            queryParams.put("assetCaption", assetCaption)
        }
        if (assetMedia != null) {
            queryParams.put("assetMedia", assetMedia)
        }
        if (assetMediaUrl != null) {
            queryParams.put("assetMediaUrl", assetMediaUrl)
        }
        if (assetMediaString != null) {
            queryParams.put("assetMediaString", assetMediaString)
        }
        if (assetMediaStringFileName != null) {
            queryParams.put("assetMediaStringFileName", assetMediaStringFileName)
        }
        if (assetMediaStringContentType != null) {
            queryParams.put("assetMediaStringContentType", assetMediaStringContentType)
        }
        if (assetAttachedMedia != null) {
            queryParams.put("assetAttachedMedia", assetAttachedMedia)
        }
        if (assetAttachedMediaUrl != null) {
            queryParams.put("assetAttachedMediaUrl", assetAttachedMediaUrl)
        }
        if (assetAttachedMediaString != null) {
            queryParams.put("assetAttachedMediaString", assetAttachedMediaString)
        }
        if (assetAttachedMediaStringFileName != null) {
            queryParams.put("assetAttachedMediaStringFileName", assetAttachedMediaStringFileName)
        }
        if (assetAttachedMediaStringContentType != null) {
            queryParams.put("assetAttachedMediaStringContentType", assetAttachedMediaStringContentType)
        }
        if (assetLocationDescription != null) {
            queryParams.put("assetLocationDescription", assetLocationDescription)
        }
        if (assetApp != null) {
            queryParams.put("assetApp", assetApp)
        }
        if (assetSearchTags != null) {
            queryParams.put("assetSearchTags", assetSearchTags)
        }
        if (assetLatitude != null) {
            queryParams.put("assetLatitude", assetLatitude)
        }
        if (assetLongitude != null) {
            queryParams.put("assetLongitude", assetLongitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    NoteResponse.class )

    }

    def deleteNote ( Long noteId, String deviceId, Long accountId, Double latitude, Double longitude, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/note/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (noteId == null) {
            throw new RuntimeException("missing required params noteId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (noteId != null) {
            queryParams.put("noteId", noteId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getNote ( Long noteId, String deviceId, Long accountId, Boolean returnFullResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/note/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (noteId == null) {
            throw new RuntimeException("missing required params noteId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
        }
        if (noteId != null) {
            queryParams.put("noteId", noteId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchNotes ( String deviceId, Long accountId, String notableType, Long notableId, String noteTypes, String appKey, String keyword, Long flagCountMinimum, Boolean flagsExceedThreshold, Boolean includeInactive, String sortField, Boolean descending, Boolean returnFullResponse, Long updatedSince, Long updatedBefore, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/note/search"

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
        if (notableType != null) {
            queryParams.put("notableType", notableType)
        }
        if (notableId != null) {
            queryParams.put("notableId", notableId)
        }
        if (noteTypes != null) {
            queryParams.put("noteTypes", noteTypes)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (flagCountMinimum != null) {
            queryParams.put("flagCountMinimum", flagCountMinimum)
        }
        if (flagsExceedThreshold != null) {
            queryParams.put("flagsExceedThreshold", flagsExceedThreshold)
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
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
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
                    "POST", "array",
                    NoteResponse.class )

    }

    def updateNote ( Long noteId, String deviceId, Long accountId, String comment, String noteType, String assetIds, String tags, String permissionableType, Long permissionableId, String appKey, String locationDescription, Double latitude, Double longitude, String metaData, Boolean returnFullResponse, Boolean active, Boolean updateAsset, Boolean assetReturnNulls, Long assetAlbumId, Long assetCollectionId, String assetAddToDefaultAlbum, Boolean assetAddToMediaLibrary, Integer assetVersionCode, String assetVersionName, String assetMetaData, String assetCaption, File assetMedia, String assetMediaUrl, String assetMediaString, String assetMediaStringFileName, String assetMediaStringContentType, File assetAttachedMedia, String assetAttachedMediaUrl, String assetAttachedMediaString, String assetAttachedMediaStringFileName, String assetAttachedMediaStringContentType, String assetLocationDescription, String assetApp, String assetSearchTags, Double assetLatitude, Double assetLongitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/note/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (noteId == null) {
            throw new RuntimeException("missing required params noteId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (noteId != null) {
            queryParams.put("noteId", noteId)
        }
        if (comment != null) {
            queryParams.put("comment", comment)
        }
        if (noteType != null) {
            queryParams.put("noteType", noteType)
        }
        if (assetIds != null) {
            queryParams.put("assetIds", assetIds)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (updateAsset != null) {
            queryParams.put("updateAsset", updateAsset)
        }
        if (assetReturnNulls != null) {
            queryParams.put("assetReturnNulls", assetReturnNulls)
        }
        if (assetAlbumId != null) {
            queryParams.put("assetAlbumId", assetAlbumId)
        }
        if (assetCollectionId != null) {
            queryParams.put("assetCollectionId", assetCollectionId)
        }
        if (assetAddToDefaultAlbum != null) {
            queryParams.put("assetAddToDefaultAlbum", assetAddToDefaultAlbum)
        }
        if (assetAddToMediaLibrary != null) {
            queryParams.put("assetAddToMediaLibrary", assetAddToMediaLibrary)
        }
        if (assetVersionCode != null) {
            queryParams.put("assetVersionCode", assetVersionCode)
        }
        if (assetVersionName != null) {
            queryParams.put("assetVersionName", assetVersionName)
        }
        if (assetMetaData != null) {
            queryParams.put("assetMetaData", assetMetaData)
        }
        if (assetCaption != null) {
            queryParams.put("assetCaption", assetCaption)
        }
        if (assetMedia != null) {
            queryParams.put("assetMedia", assetMedia)
        }
        if (assetMediaUrl != null) {
            queryParams.put("assetMediaUrl", assetMediaUrl)
        }
        if (assetMediaString != null) {
            queryParams.put("assetMediaString", assetMediaString)
        }
        if (assetMediaStringFileName != null) {
            queryParams.put("assetMediaStringFileName", assetMediaStringFileName)
        }
        if (assetMediaStringContentType != null) {
            queryParams.put("assetMediaStringContentType", assetMediaStringContentType)
        }
        if (assetAttachedMedia != null) {
            queryParams.put("assetAttachedMedia", assetAttachedMedia)
        }
        if (assetAttachedMediaUrl != null) {
            queryParams.put("assetAttachedMediaUrl", assetAttachedMediaUrl)
        }
        if (assetAttachedMediaString != null) {
            queryParams.put("assetAttachedMediaString", assetAttachedMediaString)
        }
        if (assetAttachedMediaStringFileName != null) {
            queryParams.put("assetAttachedMediaStringFileName", assetAttachedMediaStringFileName)
        }
        if (assetAttachedMediaStringContentType != null) {
            queryParams.put("assetAttachedMediaStringContentType", assetAttachedMediaStringContentType)
        }
        if (assetLocationDescription != null) {
            queryParams.put("assetLocationDescription", assetLocationDescription)
        }
        if (assetApp != null) {
            queryParams.put("assetApp", assetApp)
        }
        if (assetSearchTags != null) {
            queryParams.put("assetSearchTags", assetSearchTags)
        }
        if (assetLatitude != null) {
            queryParams.put("assetLatitude", assetLatitude)
        }
        if (assetLongitude != null) {
            queryParams.put("assetLongitude", assetLongitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    NoteResponse.class )

    }

}
