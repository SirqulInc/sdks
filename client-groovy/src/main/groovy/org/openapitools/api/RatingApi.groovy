package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.RatingIndexResponse
import org.openapitools.model.RatingResponse
import org.openapitools.model.SirqulResponse

class RatingApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createRating ( BigDecimal version, String ratableType, Long ratableId, Integer ratingValue, String deviceId, Long accountId, Long categoryId, String display, String description, String locationDescription, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/rating/create"

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
        if (ratableType == null) {
            throw new RuntimeException("missing required params ratableType")
        }
        // verify required params are set
        if (ratableId == null) {
            throw new RuntimeException("missing required params ratableId")
        }
        // verify required params are set
        if (ratingValue == null) {
            throw new RuntimeException("missing required params ratingValue")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (ratableType != null) {
            queryParams.put("ratableType", ratableType)
        }
        if (ratableId != null) {
            queryParams.put("ratableId", ratableId)
        }
        if (ratingValue != null) {
            queryParams.put("ratingValue", ratingValue)
        }
        if (categoryId != null) {
            queryParams.put("categoryId", categoryId)
        }
        if (display != null) {
            queryParams.put("display", display)
        }
        if (description != null) {
            queryParams.put("description", description)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RatingResponse.class )

    }

    def deleteRating ( BigDecimal version, Long ratingId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/rating/delete"

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
        if (ratingId == null) {
            throw new RuntimeException("missing required params ratingId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (ratingId != null) {
            queryParams.put("ratingId", ratingId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchLocationRatingIndexes ( BigDecimal version, String categoryIds, String keyword, String locationType, String sortField, Boolean descending, Integer start, Integer limit, Double searchRange, Double latitude, Double longitude, Boolean returnOverallRating, String distanceUnit, Boolean returnRetailer, Boolean returnAssets, Boolean returnOffers, Boolean returnCategories, Boolean returnFilters, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/location/rating/index/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
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
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (searchRange != null) {
            queryParams.put("searchRange", searchRange)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (returnOverallRating != null) {
            queryParams.put("returnOverallRating", returnOverallRating)
        }
        if (distanceUnit != null) {
            queryParams.put("distanceUnit", distanceUnit)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RatingIndexResponse.class )

    }

    def searchRatingIndexes ( BigDecimal version, String ratableType, String ratableIds, String categoryIds, String secondaryType, String keyword, String sortField, Boolean descending, Integer start, Integer limit, Double latitude, Double longitude, Boolean returnRatable, Boolean returnOverallRating, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/rating/index/search"

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
        if (ratableType == null) {
            throw new RuntimeException("missing required params ratableType")
        }

        if (ratableType != null) {
            queryParams.put("ratableType", ratableType)
        }
        if (ratableIds != null) {
            queryParams.put("ratableIds", ratableIds)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (returnRatable != null) {
            queryParams.put("returnRatable", returnRatable)
        }
        if (returnOverallRating != null) {
            queryParams.put("returnOverallRating", returnOverallRating)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RatingIndexResponse.class )

    }

    def searchRatings ( BigDecimal version, String deviceId, Long accountId, Long filterAccountId, String ratableType, Long ratableId, String categoryIds, String keyword, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/rating/search"

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
        if (filterAccountId != null) {
            queryParams.put("filterAccountId", filterAccountId)
        }
        if (ratableType != null) {
            queryParams.put("ratableType", ratableType)
        }
        if (ratableId != null) {
            queryParams.put("ratableId", ratableId)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    RatingResponse.class )

    }

    def updateRating ( BigDecimal version, Long ratingId, String deviceId, Long accountId, Integer ratingValue, Long categoryId, String display, String description, String locationDescription, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/rating/update"

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
        if (ratingId == null) {
            throw new RuntimeException("missing required params ratingId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (ratingId != null) {
            queryParams.put("ratingId", ratingId)
        }
        if (ratingValue != null) {
            queryParams.put("ratingValue", ratingValue)
        }
        if (categoryId != null) {
            queryParams.put("categoryId", categoryId)
        }
        if (display != null) {
            queryParams.put("display", display)
        }
        if (description != null) {
            queryParams.put("description", description)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RatingResponse.class )

    }

}
