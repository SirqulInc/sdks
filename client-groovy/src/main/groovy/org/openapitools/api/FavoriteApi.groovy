package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountResponse
import org.openapitools.model.SearchResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.WrappedResponse

class FavoriteApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addFavorite ( Long favoritableId, String favoritableType, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/favorite/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (favoritableId == null) {
            throw new RuntimeException("missing required params favoritableId")
        }
        // verify required params are set
        if (favoritableType == null) {
            throw new RuntimeException("missing required params favoritableType")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (favoritableId != null) {
            queryParams.put("favoritableId", favoritableId)
        }
        if (favoritableType != null) {
            queryParams.put("favoritableType", favoritableType)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    WrappedResponse.class )

    }

    def deleteFavorite ( String deviceId, Long accountId, Long favoriteId, Long favoritableId, String favoritableType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/favorite/delete"

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
        if (favoriteId != null) {
            queryParams.put("favoriteId", favoriteId)
        }
        if (favoritableId != null) {
            queryParams.put("favoritableId", favoritableId)
        }
        if (favoritableType != null) {
            queryParams.put("favoritableType", favoritableType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getFavorite ( Long favoriteId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/favorite/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (favoriteId == null) {
            throw new RuntimeException("missing required params favoriteId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (favoriteId != null) {
            queryParams.put("favoriteId", favoriteId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    WrappedResponse.class )

    }

    def searchFavorites ( String favoritableType, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Boolean returnFullResponse, String deviceId, Long accountId, Long connectionAccountId, String secondaryType, String keyword, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/favorite/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (favoritableType == null) {
            throw new RuntimeException("missing required params favoritableType")
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
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }
        // verify required params are set
        if (returnFullResponse == null) {
            throw new RuntimeException("missing required params returnFullResponse")
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
        if (favoritableType != null) {
            queryParams.put("favoritableType", favoritableType)
        }
        if (secondaryType != null) {
            queryParams.put("secondaryType", secondaryType)
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
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (returnFullResponse != null) {
            queryParams.put("returnFullResponse", returnFullResponse)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SearchResponse.class )

    }

    def whoHasFavorited ( Long favoritableId, String favoritableType, Integer start, Integer limit, String deviceId, Long accountId, Double latitude, Double longitude, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/favorite/whois"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (favoritableId == null) {
            throw new RuntimeException("missing required params favoritableId")
        }
        // verify required params are set
        if (favoritableType == null) {
            throw new RuntimeException("missing required params favoritableType")
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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (favoritableId != null) {
            queryParams.put("favoritableId", favoritableId)
        }
        if (favoritableType != null) {
            queryParams.put("favoritableType", favoritableType)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AccountResponse.class )

    }

}
