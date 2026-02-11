package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.RetailerLocationResponse
import org.openapitools.model.SirqulResponse

class RetailerLocationApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createRetailerLocationConsumer ( String appKey, String name, String deviceId, Long accountId, String streetAddress, String streetAddress2, String city, String state, String postalCode, String country, String businessPhone, String businessPhoneExt, String website, String email, String detailsHeader, String detailsBody, String hours, String tags, Long logoAssetId, Long picture1AssetId, Long picture2AssetId, String categoryIds, String filterIds, String metaData, Boolean publicLocation, Boolean active, String locationType, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/location/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
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
        if (detailsHeader != null) {
            queryParams.put("detailsHeader", detailsHeader)
        }
        if (detailsBody != null) {
            queryParams.put("detailsBody", detailsBody)
        }
        if (hours != null) {
            queryParams.put("hours", hours)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (logoAssetId != null) {
            queryParams.put("logoAssetId", logoAssetId)
        }
        if (picture1AssetId != null) {
            queryParams.put("picture1AssetId", picture1AssetId)
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
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (publicLocation != null) {
            queryParams.put("publicLocation", publicLocation)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (locationType != null) {
            queryParams.put("locationType", locationType)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RetailerLocationResponse.class )

    }

    def createRetailerLocations ( Long retailerId, String name, String streetAddress, String city, String state, String postalCode, String deviceId, Long accountId, String streetAddress2, String country, String businessPhone, String businessPhoneExt, String website, String email, String internalId, String detailsHeader, String detailsBody, String hours, File logo, Long logoAssetId, File picture1, Long picture1AssetId, File picture2, Long picture2AssetId, String categoryIds, String filterIds, Double latitude, Double longitude, String building, String googlePlaceId, String yelpId, Boolean active, Boolean publicLocation, String locationType, String audienceIds, String audienceIdsToAdd, String audienceIdsToRemove, String responseFormat, String responseIncludes, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retailer/location/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (retailerId == null) {
            throw new RuntimeException("missing required params retailerId")
        }
        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (streetAddress == null) {
            throw new RuntimeException("missing required params streetAddress")
        }
        // verify required params are set
        if (city == null) {
            throw new RuntimeException("missing required params city")
        }
        // verify required params are set
        if (state == null) {
            throw new RuntimeException("missing required params state")
        }
        // verify required params are set
        if (postalCode == null) {
            throw new RuntimeException("missing required params postalCode")
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
        if (internalId != null) {
            queryParams.put("internalId", internalId)
        }
        if (detailsHeader != null) {
            queryParams.put("detailsHeader", detailsHeader)
        }
        if (detailsBody != null) {
            queryParams.put("detailsBody", detailsBody)
        }
        if (hours != null) {
            queryParams.put("hours", hours)
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
        if (building != null) {
            queryParams.put("building", building)
        }
        if (googlePlaceId != null) {
            queryParams.put("googlePlaceId", googlePlaceId)
        }
        if (yelpId != null) {
            queryParams.put("yelpId", yelpId)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (publicLocation != null) {
            queryParams.put("publicLocation", publicLocation)
        }
        if (locationType != null) {
            queryParams.put("locationType", locationType)
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
        if (responseFormat != null) {
            queryParams.put("responseFormat", responseFormat)
        }
        if (responseIncludes != null) {
            queryParams.put("responseIncludes", responseIncludes)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RetailerLocationResponse.class )

    }

    def deleteRetailerLocation ( String deviceId, Long accountId, Long retailerLocationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retailer/location/delete"

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
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getRetailerLocation ( Long retailerLocationId, String deviceId, Long accountId, String retailerLocationToken, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retailer/location/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (retailerLocationId == null) {
            throw new RuntimeException("missing required params retailerLocationId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (retailerLocationToken != null) {
            queryParams.put("retailerLocationToken", retailerLocationToken)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RetailerLocationResponse.class )

    }

    def getRetailerLocationConsumer ( Long retailerLocationId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/location/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (retailerLocationId == null) {
            throw new RuntimeException("missing required params retailerLocationId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RetailerLocationResponse.class )

    }

    def indexedRetailerLocationDistanceSearch ( Double latitude, Double longitude, Double searchRange, Integer start, Integer limit, Long accountId, String address, Boolean hasOffers, String categories, String filters, String audiences, String retailerIds, String retailerLocationIds, String tags, String locationType, String sortField, Boolean descending, String q, String keyword, String keywordOperator, String searchExpression, String distanceUnit, Boolean returnFavorited, Boolean returnRetailer, Boolean returnAssets, Boolean returnOffers, Boolean returnCategories, Boolean returnFilters, Boolean returnAudiences, Boolean returnQrCode, Boolean returnExternalCategoryData, Boolean includeFavorite, Boolean includeLiked, Boolean includeRating, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retailer/location/idistancesearch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (latitude == null) {
            throw new RuntimeException("missing required params latitude")
        }
        // verify required params are set
        if (longitude == null) {
            throw new RuntimeException("missing required params longitude")
        }
        // verify required params are set
        if (searchRange == null) {
            throw new RuntimeException("missing required params searchRange")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (address != null) {
            queryParams.put("address", address)
        }
        if (searchRange != null) {
            queryParams.put("searchRange", searchRange)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (hasOffers != null) {
            queryParams.put("hasOffers", hasOffers)
        }
        if (categories != null) {
            queryParams.put("categories", categories)
        }
        if (filters != null) {
            queryParams.put("filters", filters)
        }
        if (audiences != null) {
            queryParams.put("audiences", audiences)
        }
        if (retailerIds != null) {
            queryParams.put("retailerIds", retailerIds)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (locationType != null) {
            queryParams.put("locationType", locationType)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (keywordOperator != null) {
            queryParams.put("keywordOperator", keywordOperator)
        }
        if (searchExpression != null) {
            queryParams.put("searchExpression", searchExpression)
        }
        if (distanceUnit != null) {
            queryParams.put("distanceUnit", distanceUnit)
        }
        if (returnFavorited != null) {
            queryParams.put("returnFavorited", returnFavorited)
        }
        if (returnRetailer != null) {
            queryParams.put("returnRetailer", returnRetailer)
        }
        if (returnAssets != null) {
            queryParams.put("returnAssets", returnAssets)
        }
        if (returnOffers != null) {
            queryParams.put("returnOffers", returnOffers)
        }
        if (returnCategories != null) {
            queryParams.put("returnCategories", returnCategories)
        }
        if (returnFilters != null) {
            queryParams.put("returnFilters", returnFilters)
        }
        if (returnAudiences != null) {
            queryParams.put("returnAudiences", returnAudiences)
        }
        if (returnQrCode != null) {
            queryParams.put("returnQrCode", returnQrCode)
        }
        if (returnExternalCategoryData != null) {
            queryParams.put("returnExternalCategoryData", returnExternalCategoryData)
        }
        if (includeFavorite != null) {
            queryParams.put("includeFavorite", includeFavorite)
        }
        if (includeLiked != null) {
            queryParams.put("includeLiked", includeLiked)
        }
        if (includeRating != null) {
            queryParams.put("includeRating", includeRating)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RetailerLocationResponse.class )

    }

    def indexedRetailerLocationSearch ( Long accountId, Integer start, Integer limit, Boolean hasOffers, String categories, String filters, String audiences, String retailerIds, String retailerLocationIds, String tags, String locationType, String sortField, Boolean descending, String q, String keyword, String keywordOperator, String searchExpression, Boolean returnRetailer, Boolean returnAssets, Boolean returnOffers, Boolean returnCategories, Boolean returnFilters, Boolean returnAudiences, Boolean returnQrCode, Boolean returnExternalCategoryData, Boolean includeFavorite, Boolean includeLiked, Boolean includeRating, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retailer/location/isearch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (hasOffers != null) {
            queryParams.put("hasOffers", hasOffers)
        }
        if (categories != null) {
            queryParams.put("categories", categories)
        }
        if (filters != null) {
            queryParams.put("filters", filters)
        }
        if (audiences != null) {
            queryParams.put("audiences", audiences)
        }
        if (retailerIds != null) {
            queryParams.put("retailerIds", retailerIds)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (locationType != null) {
            queryParams.put("locationType", locationType)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (keywordOperator != null) {
            queryParams.put("keywordOperator", keywordOperator)
        }
        if (searchExpression != null) {
            queryParams.put("searchExpression", searchExpression)
        }
        if (returnRetailer != null) {
            queryParams.put("returnRetailer", returnRetailer)
        }
        if (returnAssets != null) {
            queryParams.put("returnAssets", returnAssets)
        }
        if (returnOffers != null) {
            queryParams.put("returnOffers", returnOffers)
        }
        if (returnCategories != null) {
            queryParams.put("returnCategories", returnCategories)
        }
        if (returnFilters != null) {
            queryParams.put("returnFilters", returnFilters)
        }
        if (returnAudiences != null) {
            queryParams.put("returnAudiences", returnAudiences)
        }
        if (returnQrCode != null) {
            queryParams.put("returnQrCode", returnQrCode)
        }
        if (returnExternalCategoryData != null) {
            queryParams.put("returnExternalCategoryData", returnExternalCategoryData)
        }
        if (includeFavorite != null) {
            queryParams.put("includeFavorite", includeFavorite)
        }
        if (includeLiked != null) {
            queryParams.put("includeLiked", includeLiked)
        }
        if (includeRating != null) {
            queryParams.put("includeRating", includeRating)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RetailerLocationResponse.class )

    }

    def searchRetailerLocations ( String deviceId, Long accountId, String q, String keyword, String retailerIds, String retailerLocationIds, String locationType, String sortField, Boolean descending, Integer i, Integer start, Integer l, Integer limit, Boolean showPublicLocations, Boolean activeOnly, Boolean returnRetailer, Boolean returnAssets, Boolean returnOffers, Boolean returnCategories, Boolean returnFilters, Boolean returnAudiences, Boolean returnQrCode, Boolean includeFavorite, Boolean includeLiked, Boolean includeRating, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retailer/location/search"

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
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (retailerIds != null) {
            queryParams.put("retailerIds", retailerIds)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (locationType != null) {
            queryParams.put("locationType", locationType)
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
        if (showPublicLocations != null) {
            queryParams.put("showPublicLocations", showPublicLocations)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (returnRetailer != null) {
            queryParams.put("returnRetailer", returnRetailer)
        }
        if (returnAssets != null) {
            queryParams.put("returnAssets", returnAssets)
        }
        if (returnOffers != null) {
            queryParams.put("returnOffers", returnOffers)
        }
        if (returnCategories != null) {
            queryParams.put("returnCategories", returnCategories)
        }
        if (returnFilters != null) {
            queryParams.put("returnFilters", returnFilters)
        }
        if (returnAudiences != null) {
            queryParams.put("returnAudiences", returnAudiences)
        }
        if (returnQrCode != null) {
            queryParams.put("returnQrCode", returnQrCode)
        }
        if (includeFavorite != null) {
            queryParams.put("includeFavorite", includeFavorite)
        }
        if (includeLiked != null) {
            queryParams.put("includeLiked", includeLiked)
        }
        if (includeRating != null) {
            queryParams.put("includeRating", includeRating)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RetailerLocationResponse.class )

    }

    def updateRetailerLocations ( Long retailerLocationId, String deviceId, Long accountId, String name, String streetAddress, String streetAddress2, String city, String state, String postalCode, String country, String businessPhone, String businessPhoneExt, String website, String email, String internalId, String detailsHeader, String detailsBody, String hours, File logo, Long logoAssetId, File picture1, Long picture1AssetId, File picture2, Long picture2AssetId, String categoryIds, String filterIds, Double latitude, Double longitude, String building, String googlePlaceId, String yelpId, String metaData, String paymentProvider, Boolean active, Boolean publicLocation, String locationType, String audienceIds, String audienceIdsToAdd, String audienceIdsToRemove, String responseFormat, String tags, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/retailer/location/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (retailerLocationId == null) {
            throw new RuntimeException("missing required params retailerLocationId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
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
        if (internalId != null) {
            queryParams.put("internalId", internalId)
        }
        if (detailsHeader != null) {
            queryParams.put("detailsHeader", detailsHeader)
        }
        if (detailsBody != null) {
            queryParams.put("detailsBody", detailsBody)
        }
        if (hours != null) {
            queryParams.put("hours", hours)
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
        if (building != null) {
            queryParams.put("building", building)
        }
        if (googlePlaceId != null) {
            queryParams.put("googlePlaceId", googlePlaceId)
        }
        if (yelpId != null) {
            queryParams.put("yelpId", yelpId)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (paymentProvider != null) {
            queryParams.put("paymentProvider", paymentProvider)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (publicLocation != null) {
            queryParams.put("publicLocation", publicLocation)
        }
        if (locationType != null) {
            queryParams.put("locationType", locationType)
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
        if (responseFormat != null) {
            queryParams.put("responseFormat", responseFormat)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RetailerLocationResponse.class )

    }

}
