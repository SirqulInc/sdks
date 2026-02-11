package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountMiniResponse
import org.openapitools.model.Leg
import org.openapitools.model.LegResponse
import org.openapitools.model.PredictedLocationResponse
import org.openapitools.model.PreferredLocationResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.StepResponse

class TrackingApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def batchSaveTracking ( String data, String deviceId, Long accountId, Boolean generateAccounts, Boolean updateAccountLocations, String defaultTag, String slaveUID, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/batch/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (data != null) {
            queryParams.put("data", data)
        }
        if (generateAccounts != null) {
            queryParams.put("generateAccounts", generateAccounts)
        }
        if (updateAccountLocations != null) {
            queryParams.put("updateAccountLocations", updateAccountLocations)
        }
        if (defaultTag != null) {
            queryParams.put("defaultTag", defaultTag)
        }
        if (slaveUID != null) {
            queryParams.put("slaveUID", slaveUID)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    Leg.class )

    }

    def getPredictedLocations ( Long accountId, Double latitude, Double longitude, Long dateCheck, String hourCheck, Long threshold, String distanceUnit, Double searchRange, String sortOrder, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/predicted/get"

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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (dateCheck != null) {
            queryParams.put("dateCheck", dateCheck)
        }
        if (hourCheck != null) {
            queryParams.put("hourCheck", hourCheck)
        }
        if (threshold != null) {
            queryParams.put("threshold", threshold)
        }
        if (distanceUnit != null) {
            queryParams.put("distanceUnit", distanceUnit)
        }
        if (searchRange != null) {
            queryParams.put("searchRange", searchRange)
        }
        if (sortOrder != null) {
            queryParams.put("sortOrder", sortOrder)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PredictedLocationResponse.class )

    }

    def getPredictedPath ( Long accountId, Long startStepId, Long endStepId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/path/get"

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
        if (startStepId == null) {
            throw new RuntimeException("missing required params startStepId")
        }
        // verify required params are set
        if (endStepId == null) {
            throw new RuntimeException("missing required params endStepId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (startStepId != null) {
            queryParams.put("startStepId", startStepId)
        }
        if (endStepId != null) {
            queryParams.put("endStepId", endStepId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    StepResponse.class )

    }

    def getPreferredLocations ( Long accountId, Double latitude, Double longitude, Long dateCheck, String hourCheck, String sortField, Boolean descending, Integer start, Integer limit, Double searchRange, String distanceUnit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/preferred/search"

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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (dateCheck != null) {
            queryParams.put("dateCheck", dateCheck)
        }
        if (hourCheck != null) {
            queryParams.put("hourCheck", hourCheck)
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
        if (distanceUnit != null) {
            queryParams.put("distanceUnit", distanceUnit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    PreferredLocationResponse.class )

    }

    def getTrackingLegs ( String deviceId, Long accountId, Long ownerId, String trackingDeviceId, Long startDate, Long endDate, String tags, Boolean getLastPoint, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/search"

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
        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (trackingDeviceId != null) {
            queryParams.put("trackingDeviceId", trackingDeviceId)
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
        if (getLastPoint != null) {
            queryParams.put("getLastPoint", getLastPoint)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    LegResponse.class )

    }

    def saveTrackingLeg ( Double startLat, Double startLng, Long startDate, Double endLat, Double endLng, Long endDate, String deviceId, Long accountId, Double distance, Long duration, String steps, String tags, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/leg/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (startLat == null) {
            throw new RuntimeException("missing required params startLat")
        }
        // verify required params are set
        if (startLng == null) {
            throw new RuntimeException("missing required params startLng")
        }
        // verify required params are set
        if (startDate == null) {
            throw new RuntimeException("missing required params startDate")
        }
        // verify required params are set
        if (endLat == null) {
            throw new RuntimeException("missing required params endLat")
        }
        // verify required params are set
        if (endLng == null) {
            throw new RuntimeException("missing required params endLng")
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
        if (distance != null) {
            queryParams.put("distance", distance)
        }
        if (duration != null) {
            queryParams.put("duration", duration)
        }
        if (startLat != null) {
            queryParams.put("startLat", startLat)
        }
        if (startLng != null) {
            queryParams.put("startLng", startLng)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endLat != null) {
            queryParams.put("endLat", endLat)
        }
        if (endLng != null) {
            queryParams.put("endLng", endLng)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (steps != null) {
            queryParams.put("steps", steps)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def saveTrackingStep ( Long legId, Double startLat, Double startLng, Long startDate, Double endLat, Double endLng, Long endDate, String deviceId, Long accountId, Double distance, Long duration, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/step/create"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (legId == null) {
            throw new RuntimeException("missing required params legId")
        }
        // verify required params are set
        if (startLat == null) {
            throw new RuntimeException("missing required params startLat")
        }
        // verify required params are set
        if (startLng == null) {
            throw new RuntimeException("missing required params startLng")
        }
        // verify required params are set
        if (startDate == null) {
            throw new RuntimeException("missing required params startDate")
        }
        // verify required params are set
        if (endLat == null) {
            throw new RuntimeException("missing required params endLat")
        }
        // verify required params are set
        if (endLng == null) {
            throw new RuntimeException("missing required params endLng")
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
        if (legId != null) {
            queryParams.put("legId", legId)
        }
        if (distance != null) {
            queryParams.put("distance", distance)
        }
        if (duration != null) {
            queryParams.put("duration", duration)
        }
        if (startLat != null) {
            queryParams.put("startLat", startLat)
        }
        if (startLng != null) {
            queryParams.put("startLng", startLng)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endLat != null) {
            queryParams.put("endLat", endLat)
        }
        if (endLng != null) {
            queryParams.put("endLng", endLng)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchAccountsWithTrackingLegs ( Long accountId, String keyword, Long startDate, Long endDate, String tags, String audienceIds, Double latitude, Double longitude, Double range, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/list"

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
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AccountMiniResponse.class )

    }

    def searchTrackingLegs ( Long accountId, String appKey, String trackingDeviceId, Long startDate, Long endDate, String tags, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/tracking/searchByBillable"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (trackingDeviceId != null) {
            queryParams.put("trackingDeviceId", trackingDeviceId)
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
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    LegResponse.class )

    }

}
