package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountLoginResponse
import java.math.BigDecimal
import org.openapitools.model.RetailerFullResponse
import org.openapitools.model.RetailerResponse
import org.openapitools.model.SirqulResponse

class RetailerApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createRetailer ( BigDecimal version, String name, String deviceId, Long accountId, String streetAddress, String streetAddress2, String city, String state, String postalCode, String country, String businessPhone, String businessPhoneExt, String website, String email, String facebookUrl, String twitterUrl, File logo, Long logoAssetId, File picture1, Long picture1AssetId, File picture2, Long picture2AssetId, String categoryIds, String categoryIdsToAdd, String categoryIdsToRemove, String filterIds, Double latitude, Double longitude, String metaData, String searchTags, String retailerType, String visibility, Boolean createDefaultLocation, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
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
        if (country != null) {
            queryParams.put("country", country)
        }
        if (businessPhone != null) {
            queryParams.put("businessPhone", businessPhone)
        }
        if (businessPhoneExt != null) {
            queryParams.put("businessPhoneExt", businessPhoneExt)
        }
        if (website != null) {
            queryParams.put("website", website)
        }
        if (email != null) {
            queryParams.put("email", email)
        }
        if (facebookUrl != null) {
            queryParams.put("facebookUrl", facebookUrl)
        }
        if (twitterUrl != null) {
            queryParams.put("twitterUrl", twitterUrl)
        }
        if (logo != null) {
            queryParams.put("logo", logo)
        }
        if (logoAssetId != null) {
            queryParams.put("logoAssetId", logoAssetId)
        }
        if (picture1 != null) {
            queryParams.put("picture1", picture1)
        }
        if (picture1AssetId != null) {
            queryParams.put("picture1AssetId", picture1AssetId)
        }
        if (picture2 != null) {
            queryParams.put("picture2", picture2)
        }
        if (picture2AssetId != null) {
            queryParams.put("picture2AssetId", picture2AssetId)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (categoryIdsToAdd != null) {
            queryParams.put("categoryIdsToAdd", categoryIdsToAdd)
        }
        if (categoryIdsToRemove != null) {
            queryParams.put("categoryIdsToRemove", categoryIdsToRemove)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
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
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (retailerType != null) {
            queryParams.put("retailerType", retailerType)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (createDefaultLocation != null) {
            queryParams.put("createDefaultLocation", createDefaultLocation)
        }
        if (responseFormat != null) {
            queryParams.put("responseFormat", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RetailerFullResponse.class )

    }

    def deleteRetailer ( BigDecimal version, String deviceId, Long accountId, Long retailerId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getRetailer ( BigDecimal version, Long retailerId, String deviceId, Long accountId, Boolean includeCounts, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/get"

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
        if (retailerId == null) {
            throw new RuntimeException("missing required params retailerId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (includeCounts != null) {
            queryParams.put("includeCounts", includeCounts)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RetailerFullResponse.class )

    }

    def getRetailers ( BigDecimal version, String visibility, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, String deviceId, Long accountId, String q, String keyword, String categoryIds, String filterIds, Integer i, Integer l, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/search"

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
        if (visibility == null) {
            throw new RuntimeException("missing required params visibility")
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

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
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
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RetailerResponse.class )

    }

    def retailerLoginCheck ( BigDecimal version, String username, String password, String deviceId, Double latitude, Double longitude, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/login"

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
        if (username == null) {
            throw new RuntimeException("missing required params username")
        }
        // verify required params are set
        if (password == null) {
            throw new RuntimeException("missing required params password")
        }

        if (username != null) {
            queryParams.put("username", username)
        }
        if (password != null) {
            queryParams.put("password", password)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
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
                    AccountLoginResponse.class )

    }

    def updateRetailer ( BigDecimal version, Long retailerId, String deviceId, Long accountId, String name, String streetAddress, String streetAddress2, String city, String state, String postalCode, String country, String businessPhone, String businessPhoneExt, String website, String email, String facebookUrl, String twitterUrl, File logo, Long logoAssetId, File picture1, Long picture1AssetId, File picture2, Long picture2AssetId, String categoryIds, String filterIds, Double latitude, Double longitude, String metaData, String searchTags, String retailerType, String visibility, Boolean active, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/retailer/update"

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
        if (retailerId == null) {
            throw new RuntimeException("missing required params retailerId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (name != null) {
            queryParams.put("name", name)
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
        if (country != null) {
            queryParams.put("country", country)
        }
        if (businessPhone != null) {
            queryParams.put("businessPhone", businessPhone)
        }
        if (businessPhoneExt != null) {
            queryParams.put("businessPhoneExt", businessPhoneExt)
        }
        if (website != null) {
            queryParams.put("website", website)
        }
        if (email != null) {
            queryParams.put("email", email)
        }
        if (facebookUrl != null) {
            queryParams.put("facebookUrl", facebookUrl)
        }
        if (twitterUrl != null) {
            queryParams.put("twitterUrl", twitterUrl)
        }
        if (logo != null) {
            queryParams.put("logo", logo)
        }
        if (logoAssetId != null) {
            queryParams.put("logoAssetId", logoAssetId)
        }
        if (picture1 != null) {
            queryParams.put("picture1", picture1)
        }
        if (picture1AssetId != null) {
            queryParams.put("picture1AssetId", picture1AssetId)
        }
        if (picture2 != null) {
            queryParams.put("picture2", picture2)
        }
        if (picture2AssetId != null) {
            queryParams.put("picture2AssetId", picture2AssetId)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
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
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (retailerType != null) {
            queryParams.put("retailerType", retailerType)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (responseFormat != null) {
            queryParams.put("responseFormat", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RetailerFullResponse.class )

    }

}
