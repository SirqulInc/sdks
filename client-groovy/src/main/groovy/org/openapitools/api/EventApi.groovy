package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.EventAttendanceResponse
import org.openapitools.model.OfferResponse
import org.openapitools.model.OfferShortResponse
import org.openapitools.model.SirqulResponse

class EventApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def attendEvent ( String deviceId, Long accountId, String appKey, Long listingId, Long retailerLocationId, Long offerLocationId, Long transactionId, Integer status, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/event/attend"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (transactionId != null) {
            queryParams.put("transactionId", transactionId)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OfferResponse.class )

    }

    def createEvent ( Long accountId, String title, String retailerLocationIds, String subTitle, String details, String categoryIds, String filterIds, Boolean active, Long imageAssetId, Long redeemableStart, Long redeemableEnd, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/event/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (subTitle != null) {
            queryParams.put("subTitle", subTitle)
        }
        if (details != null) {
            queryParams.put("details", details)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (imageAssetId != null) {
            queryParams.put("imageAssetId", imageAssetId)
        }
        if (redeemableStart != null) {
            queryParams.put("redeemableStart", redeemableStart)
        }
        if (redeemableEnd != null) {
            queryParams.put("redeemableEnd", redeemableEnd)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OfferResponse.class )

    }

    def deleteEvent ( Long accountId, Long eventId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/event/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (eventId == null) {
            throw new RuntimeException("missing required params eventId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (eventId != null) {
            queryParams.put("eventId", eventId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getEvent ( Long accountId, Long eventId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/event/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (eventId == null) {
            throw new RuntimeException("missing required params eventId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (eventId != null) {
            queryParams.put("eventId", eventId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferResponse.class )

    }

    def searchEventTransactions ( String deviceId, Long accountId, String appKey, String keyword, Long retailerId, Long retailerLocationId, Long excludeRetailerLocationId, Long listingId, Long offerId, Long offerLocationId, String customerAccountIds, String affiliatedCategoryIds, Long startDate, Long endDate, String statuses, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/event/attendance/search"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (excludeRetailerLocationId != null) {
            queryParams.put("excludeRetailerLocationId", excludeRetailerLocationId)
        }
        if (listingId != null) {
            queryParams.put("listingId", listingId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (customerAccountIds != null) {
            queryParams.put("customerAccountIds", customerAccountIds)
        }
        if (affiliatedCategoryIds != null) {
            queryParams.put("affiliatedCategoryIds", affiliatedCategoryIds)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (statuses != null) {
            queryParams.put("statuses", statuses)
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
                    EventAttendanceResponse.class )

    }

    def searchEvents ( Long accountId, String keyword, Boolean activeOnly, String categoryIds, String filterIds, String offerAudienceIds, String transactionAudienceIds, String sortField, Boolean descending, Long startDate, Long endDate, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/event/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (offerAudienceIds != null) {
            queryParams.put("offerAudienceIds", offerAudienceIds)
        }
        if (transactionAudienceIds != null) {
            queryParams.put("transactionAudienceIds", transactionAudienceIds)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    OfferShortResponse.class )

    }

    def updateEvent ( Long accountId, Long eventId, String retailerLocationIds, String title, String subTitle, String details, String categoryIds, String filterIds, Boolean active, Long imageAssetId, Long redeemableStart, Long redeemableEnd, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/event/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (eventId == null) {
            throw new RuntimeException("missing required params eventId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (eventId != null) {
            queryParams.put("eventId", eventId)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (subTitle != null) {
            queryParams.put("subTitle", subTitle)
        }
        if (details != null) {
            queryParams.put("details", details)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (filterIds != null) {
            queryParams.put("filterIds", filterIds)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (imageAssetId != null) {
            queryParams.put("imageAssetId", imageAssetId)
        }
        if (redeemableStart != null) {
            queryParams.put("redeemableStart", redeemableStart)
        }
        if (redeemableEnd != null) {
            queryParams.put("redeemableEnd", redeemableEnd)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OfferResponse.class )

    }

}
