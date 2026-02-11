package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AssetFullResponse
import org.openapitools.model.AssetResponse
import org.openapitools.model.AssetShortResponse
import org.openapitools.model.SirqulResponse

class AssetApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def assetDownload ( String filename, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/download/${filename}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (filename == null) {
            throw new RuntimeException("missing required params filename")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def assetMorph ( Long offerId, String adSize, Long creativeId, Integer width, Integer height, String backgroundSize, String template, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/morph"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (offerId == null) {
            throw new RuntimeException("missing required params offerId")
        }
        // verify required params are set
        if (adSize == null) {
            throw new RuntimeException("missing required params adSize")
        }

        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (creativeId != null) {
            queryParams.put("creativeId", creativeId)
        }
        if (adSize != null) {
            queryParams.put("adSize", adSize)
        }
        if (width != null) {
            queryParams.put("width", width)
        }
        if (height != null) {
            queryParams.put("height", height)
        }
        if (backgroundSize != null) {
            queryParams.put("backgroundSize", backgroundSize)
        }
        if (template != null) {
            queryParams.put("template", template)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AssetShortResponse.class )

    }

    def createAsset ( Boolean returnNulls, String deviceId, Long accountId, Long albumId, Long collectionId, String addToDefaultAlbum, Boolean addToMediaLibrary, Integer versionCode, String versionName, String metaData, String caption, String assetType, String approvalStatus, Long assignedAccountId, File media, String mediaUrl, String mediaString, String mediaStringFileName, String mediaStringContentType, Integer mediaHeight, Integer mediaWidth, File attachedMedia, String attachedMediaUrl, String attachedMediaString, String attachedMediaStringFileName, String attachedMediaStringContentType, Integer attachedMediaHeight, Integer attachedMediaWidth, String locationDescription, String app, String appKey, String searchTags, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
        if (collectionId != null) {
            queryParams.put("collectionId", collectionId)
        }
        if (addToDefaultAlbum != null) {
            queryParams.put("addToDefaultAlbum", addToDefaultAlbum)
        }
        if (addToMediaLibrary != null) {
            queryParams.put("addToMediaLibrary", addToMediaLibrary)
        }
        if (versionCode != null) {
            queryParams.put("versionCode", versionCode)
        }
        if (versionName != null) {
            queryParams.put("versionName", versionName)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (caption != null) {
            queryParams.put("caption", caption)
        }
        if (assetType != null) {
            queryParams.put("assetType", assetType)
        }
        if (approvalStatus != null) {
            queryParams.put("approvalStatus", approvalStatus)
        }
        if (assignedAccountId != null) {
            queryParams.put("assignedAccountId", assignedAccountId)
        }
        if (media != null) {
            queryParams.put("media", media)
        }
        if (mediaUrl != null) {
            queryParams.put("mediaUrl", mediaUrl)
        }
        if (mediaString != null) {
            queryParams.put("mediaString", mediaString)
        }
        if (mediaStringFileName != null) {
            queryParams.put("mediaStringFileName", mediaStringFileName)
        }
        if (mediaStringContentType != null) {
            queryParams.put("mediaStringContentType", mediaStringContentType)
        }
        if (mediaHeight != null) {
            queryParams.put("mediaHeight", mediaHeight)
        }
        if (mediaWidth != null) {
            queryParams.put("mediaWidth", mediaWidth)
        }
        if (attachedMedia != null) {
            queryParams.put("attachedMedia", attachedMedia)
        }
        if (attachedMediaUrl != null) {
            queryParams.put("attachedMediaUrl", attachedMediaUrl)
        }
        if (attachedMediaString != null) {
            queryParams.put("attachedMediaString", attachedMediaString)
        }
        if (attachedMediaStringFileName != null) {
            queryParams.put("attachedMediaStringFileName", attachedMediaStringFileName)
        }
        if (attachedMediaStringContentType != null) {
            queryParams.put("attachedMediaStringContentType", attachedMediaStringContentType)
        }
        if (attachedMediaHeight != null) {
            queryParams.put("attachedMediaHeight", attachedMediaHeight)
        }
        if (attachedMediaWidth != null) {
            queryParams.put("attachedMediaWidth", attachedMediaWidth)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (app != null) {
            queryParams.put("app", app)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AssetResponse.class )

    }

    def deleteAsset ( String assetId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
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

    def getAsset ( Long assetId, String deviceId, Long accountId, Boolean noteDescending, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (noteDescending != null) {
            queryParams.put("noteDescending", noteDescending)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AssetFullResponse.class )

    }

    def removeAsset ( String assetId, String deviceId, Long accountId, Long albumId, Long collectionId, Boolean removeFromDefaultAlbums, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/remove"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
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
        if (collectionId != null) {
            queryParams.put("collectionId", collectionId)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (removeFromDefaultAlbums != null) {
            queryParams.put("removeFromDefaultAlbums", removeFromDefaultAlbums)
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

    def searchAssets ( String deviceId, Long accountId, String albumIds, String assetIds, String appKey, String mediaType, String mimeType, String keyword, Integer versionCode, String versionName, Long updatedSince, Long updatedBefore, String sortField, Boolean descending, Boolean searchMediaLibrary, Boolean filterByBillable, Boolean activeOnly, Boolean returnApp, Integer start, Integer limit, String searchMode, String assetType, String approvalStatus, Long assignedAccountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/search"

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
        if (albumIds != null) {
            queryParams.put("albumIds", albumIds)
        }
        if (assetIds != null) {
            queryParams.put("assetIds", assetIds)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (mediaType != null) {
            queryParams.put("mediaType", mediaType)
        }
        if (mimeType != null) {
            queryParams.put("mimeType", mimeType)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (versionCode != null) {
            queryParams.put("versionCode", versionCode)
        }
        if (versionName != null) {
            queryParams.put("versionName", versionName)
        }
        if (updatedSince != null) {
            queryParams.put("updatedSince", updatedSince)
        }
        if (updatedBefore != null) {
            queryParams.put("updatedBefore", updatedBefore)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (searchMediaLibrary != null) {
            queryParams.put("searchMediaLibrary", searchMediaLibrary)
        }
        if (filterByBillable != null) {
            queryParams.put("filterByBillable", filterByBillable)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (returnApp != null) {
            queryParams.put("returnApp", returnApp)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (searchMode != null) {
            queryParams.put("searchMode", searchMode)
        }
        if (assetType != null) {
            queryParams.put("assetType", assetType)
        }
        if (approvalStatus != null) {
            queryParams.put("approvalStatus", approvalStatus)
        }
        if (assignedAccountId != null) {
            queryParams.put("assignedAccountId", assignedAccountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AssetResponse.class )

    }

    def updateAsset ( Long assetId, String deviceId, Long accountId, Long albumId, Long attachedAssetId, Integer versionCode, String versionName, String metaData, String caption, String assetType, String approvalStatus, Long assignedAccountId, File media, String mediaUrl, String mediaString, String mediaStringFileName, String mediaStringContentType, Integer mediaHeight, Integer mediaWidth, File attachedMedia, String attachedMediaUrl, String attachedMediaString, String attachedMediaStringFileName, String attachedMediaStringContentType, Integer attachedMediaHeight, Integer attachedMediaWidth, String locationDescription, String searchTags, String appKey, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/asset/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (albumId != null) {
            queryParams.put("albumId", albumId)
        }
        if (attachedAssetId != null) {
            queryParams.put("attachedAssetId", attachedAssetId)
        }
        if (versionCode != null) {
            queryParams.put("versionCode", versionCode)
        }
        if (versionName != null) {
            queryParams.put("versionName", versionName)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (caption != null) {
            queryParams.put("caption", caption)
        }
        if (assetType != null) {
            queryParams.put("assetType", assetType)
        }
        if (approvalStatus != null) {
            queryParams.put("approvalStatus", approvalStatus)
        }
        if (assignedAccountId != null) {
            queryParams.put("assignedAccountId", assignedAccountId)
        }
        if (media != null) {
            queryParams.put("media", media)
        }
        if (mediaUrl != null) {
            queryParams.put("mediaUrl", mediaUrl)
        }
        if (mediaString != null) {
            queryParams.put("mediaString", mediaString)
        }
        if (mediaStringFileName != null) {
            queryParams.put("mediaStringFileName", mediaStringFileName)
        }
        if (mediaStringContentType != null) {
            queryParams.put("mediaStringContentType", mediaStringContentType)
        }
        if (mediaHeight != null) {
            queryParams.put("mediaHeight", mediaHeight)
        }
        if (mediaWidth != null) {
            queryParams.put("mediaWidth", mediaWidth)
        }
        if (attachedMedia != null) {
            queryParams.put("attachedMedia", attachedMedia)
        }
        if (attachedMediaUrl != null) {
            queryParams.put("attachedMediaUrl", attachedMediaUrl)
        }
        if (attachedMediaString != null) {
            queryParams.put("attachedMediaString", attachedMediaString)
        }
        if (attachedMediaStringFileName != null) {
            queryParams.put("attachedMediaStringFileName", attachedMediaStringFileName)
        }
        if (attachedMediaStringContentType != null) {
            queryParams.put("attachedMediaStringContentType", attachedMediaStringContentType)
        }
        if (attachedMediaHeight != null) {
            queryParams.put("attachedMediaHeight", attachedMediaHeight)
        }
        if (attachedMediaWidth != null) {
            queryParams.put("attachedMediaWidth", attachedMediaWidth)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
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

}
