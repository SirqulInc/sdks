package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.ListingFullResponse
import org.openapitools.model.ListingGroupResponse
import org.openapitools.model.ListingResponse
import org.openapitools.model.SirqulResponse

class ListingApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createListing ( BigDecimal version, Long accountId, String name, String filterIds, String description, Long start, Long end, String locationName, String locationDescription, Boolean isPrivate, String externalId, String externalId2, String externalGroupId, Boolean active, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/listing/create"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (end != null) {
            queryParams.put("end", end)
        }
        if (locationName != null) {
            queryParams.put("locationName", locationName)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (isPrivate != null) {
            queryParams.put("isPrivate", isPrivate)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (externalId2 != null) {
            queryParams.put("externalId2", externalId2)
        }
        if (externalGroupId != null) {
            queryParams.put("externalGroupId", externalGroupId)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ListingFullResponse.class )

    }

    def deleteListing ( BigDecimal version, Long accountId, Long listingId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/listing/delete"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (listingId == null) {
            throw new RuntimeException("missing required params listingId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getListing ( BigDecimal version, Long listingId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/listing/get"

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
        if (listingId == null) {
            throw new RuntimeException("missing required params listingId")
        }

        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ListingFullResponse.class )

    }

    def searchListing ( BigDecimal version, Long accountId, String keyword, Integer start, Integer limit, Boolean activeOnly, Double latitude, Double longitude, Long startDate, Long endDate, String categoryIds, String filterIds, Boolean useListingOrderIds, String externalId, String externalId2, String externalGroupId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/listing/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
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
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (useListingOrderIds != null) {
            queryParams.put("useListingOrderIds", useListingOrderIds)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (externalId2 != null) {
            queryParams.put("externalId2", externalId2)
        }
        if (externalGroupId != null) {
            queryParams.put("externalGroupId", externalGroupId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ListingResponse.class )

    }

    def summaryListing ( BigDecimal version, Long accountId, Long startDate, String categoryIds, Integer daysToInclude, Boolean useListingOrderIds, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/listing/summary"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (daysToInclude != null) {
            queryParams.put("daysToInclude", daysToInclude)
        }
        if (useListingOrderIds != null) {
            queryParams.put("useListingOrderIds", useListingOrderIds)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ListingGroupResponse.class )

    }

    def updateListing ( BigDecimal version, Long accountId, Long listingId, String filterIds, String name, String description, Long start, Long end, String locationName, String locationDescription, Boolean isPrivate, String externalId, String externalId2, String externalGroupId, Boolean active, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/listing/update"

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
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (listingId == null) {
            throw new RuntimeException("missing required params listingId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (end != null) {
            queryParams.put("end", end)
        }
        if (locationName != null) {
            queryParams.put("locationName", locationName)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (isPrivate != null) {
            queryParams.put("isPrivate", isPrivate)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (externalId2 != null) {
            queryParams.put("externalId2", externalId2)
        }
        if (externalGroupId != null) {
            queryParams.put("externalGroupId", externalGroupId)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ListingFullResponse.class )

    }

}
