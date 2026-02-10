package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.CountResponse
import org.openapitools.model.FlagResponse
import org.openapitools.model.SirqulResponse

class FlagApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createFlag ( BigDecimal version, String flagableType, Long flagableId, String deviceId, Long accountId, String flagDescription, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/flag/create"

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
        if (flagableType == null) {
            throw new RuntimeException("missing required params flagableType")
        }
        // verify required params are set
        if (flagableId == null) {
            throw new RuntimeException("missing required params flagableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (flagableType != null) {
            queryParams.put("flagableType", flagableType)
        }
        if (flagableId != null) {
            queryParams.put("flagableId", flagableId)
        }
        if (flagDescription != null) {
            queryParams.put("flagDescription", flagDescription)
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

    def deleteFlag ( BigDecimal version, String deviceId, Long accountId, String itemBeingFlaggedType, Long itemBeingFlaggedId, String flagableType, Long flagableId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/flag/delete"

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
        if (itemBeingFlaggedType != null) {
            queryParams.put("itemBeingFlaggedType", itemBeingFlaggedType)
        }
        if (itemBeingFlaggedId != null) {
            queryParams.put("itemBeingFlaggedId", itemBeingFlaggedId)
        }
        if (flagableType != null) {
            queryParams.put("flagableType", flagableType)
        }
        if (flagableId != null) {
            queryParams.put("flagableId", flagableId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getFlag ( BigDecimal version, String flagableType, Long flagableId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/flag/get"

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
        if (flagableType == null) {
            throw new RuntimeException("missing required params flagableType")
        }
        // verify required params are set
        if (flagableId == null) {
            throw new RuntimeException("missing required params flagableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (flagableType != null) {
            queryParams.put("flagableType", flagableType)
        }
        if (flagableId != null) {
            queryParams.put("flagableId", flagableId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    FlagResponse.class )

    }

    def getFlagThreshold ( BigDecimal version, String itemBeingFlaggedType, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/flag/threshold/get"

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
        if (itemBeingFlaggedType == null) {
            throw new RuntimeException("missing required params itemBeingFlaggedType")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (itemBeingFlaggedType != null) {
            queryParams.put("itemBeingFlaggedType", itemBeingFlaggedType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CountResponse.class )

    }

    def updateFlagThreshold ( BigDecimal version, String itemBeingFlaggedType, Long threshold, String appKey, String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/flag/threshold/update"

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
        if (itemBeingFlaggedType == null) {
            throw new RuntimeException("missing required params itemBeingFlaggedType")
        }
        // verify required params are set
        if (threshold == null) {
            throw new RuntimeException("missing required params threshold")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (itemBeingFlaggedType != null) {
            queryParams.put("itemBeingFlaggedType", itemBeingFlaggedType)
        }
        if (threshold != null) {
            queryParams.put("threshold", threshold)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CountResponse.class )

    }

}
