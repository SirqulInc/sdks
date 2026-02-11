package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AvailabilityResponse
import org.openapitools.model.ReservationResponse
import org.openapitools.model.TimeSlotResponse

class ReservationApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createReservation ( String deviceId, Long accountId, Long startDate, Long endDate, Long offerId, Long offerLocationId, String appKey, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/reservation/create"

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
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (offerLocationId != null) {
            queryParams.put("offerLocationId", offerLocationId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def deleteReservation ( Long reservationId, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/reservation/delete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (reservationId == null) {
            throw new RuntimeException("missing required params reservationId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (reservationId != null) {
            queryParams.put("reservationId", reservationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def reservableAvailability ( Long reservableId, String reservableType, String deviceId, Long accountId, String availability, String availabilitySummary, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/reservable/availability/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (reservableId == null) {
            throw new RuntimeException("missing required params reservableId")
        }
        // verify required params are set
        if (reservableType == null) {
            throw new RuntimeException("missing required params reservableType")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (reservableId != null) {
            queryParams.put("reservableId", reservableId)
        }
        if (reservableType != null) {
            queryParams.put("reservableType", reservableType)
        }
        if (availability != null) {
            queryParams.put("availability", availability)
        }
        if (availabilitySummary != null) {
            queryParams.put("availabilitySummary", availabilitySummary)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    AvailabilityResponse.class )

    }

    def searchAvailability ( Long reservableId, String reservableType, String deviceId, Long accountId, Long startDate, Long endDate, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/reservable/availability/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (reservableId == null) {
            throw new RuntimeException("missing required params reservableId")
        }
        // verify required params are set
        if (reservableType == null) {
            throw new RuntimeException("missing required params reservableType")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (reservableId != null) {
            queryParams.put("reservableId", reservableId)
        }
        if (reservableType != null) {
            queryParams.put("reservableType", reservableType)
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
                    AvailabilityResponse.class )

    }

    def searchReservations ( String deviceId, String appKey, Long accountId, Long filterAccountId, Long reservableId, String reservableType, String keyword, Long startDate, Long endDate, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/reservation/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (filterAccountId != null) {
            queryParams.put("filterAccountId", filterAccountId)
        }
        if (reservableId != null) {
            queryParams.put("reservableId", reservableId)
        }
        if (reservableType != null) {
            queryParams.put("reservableType", reservableType)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
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
                    ReservationResponse.class )

    }

    def searchSchedule ( Long reservableId, String reservableType, Long startDate, Long endDate, String deviceId, Long accountId, Integer timeBucketMins, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/reservable/schedule/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (reservableId == null) {
            throw new RuntimeException("missing required params reservableId")
        }
        // verify required params are set
        if (reservableType == null) {
            throw new RuntimeException("missing required params reservableType")
        }
        // verify required params are set
        if (startDate == null) {
            throw new RuntimeException("missing required params startDate")
        }
        // verify required params are set
        if (endDate == null) {
            throw new RuntimeException("missing required params endDate")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (reservableId != null) {
            queryParams.put("reservableId", reservableId)
        }
        if (reservableType != null) {
            queryParams.put("reservableType", reservableType)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (timeBucketMins != null) {
            queryParams.put("timeBucketMins", timeBucketMins)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TimeSlotResponse.class )

    }

}
