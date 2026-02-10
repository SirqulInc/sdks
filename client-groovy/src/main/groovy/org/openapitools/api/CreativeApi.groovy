package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.CreativeResponse
import org.openapitools.model.MissionResponse
import org.openapitools.model.SirqulResponse

class CreativeApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addPreview ( BigDecimal version, Long accountId, Long creativeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/creative/addpreview"

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
        if (creativeId == null) {
            throw new RuntimeException("missing required params creativeId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (creativeId != null) {
            queryParams.put("creativeId", creativeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def adsFind ( BigDecimal version, String appKey, Boolean randomize, Boolean targetedAdsOnly, String type, Long accountId, String appVersion, Double latitude, Double longitude, String device, Long deviceIdentifier, String deviceVersion, Integer start, Integer limit, Boolean includeAudiences, Boolean allocatesTickets, String missionIds, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/ads/find"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (randomize == null) {
            throw new RuntimeException("missing required params randomize")
        }
        // verify required params are set
        if (targetedAdsOnly == null) {
            throw new RuntimeException("missing required params targetedAdsOnly")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (device != null) {
            queryParams.put("device", device)
        }
        if (deviceIdentifier != null) {
            queryParams.put("deviceIdentifier", deviceIdentifier)
        }
        if (deviceVersion != null) {
            queryParams.put("deviceVersion", deviceVersion)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (includeAudiences != null) {
            queryParams.put("includeAudiences", includeAudiences)
        }
        if (allocatesTickets != null) {
            queryParams.put("allocatesTickets", allocatesTickets)
        }
        if (randomize != null) {
            queryParams.put("randomize", randomize)
        }
        if (targetedAdsOnly != null) {
            queryParams.put("targetedAdsOnly", targetedAdsOnly)
        }
        if (missionIds != null) {
            queryParams.put("missionIds", missionIds)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MissionResponse.class )

    }

    def createCreative ( BigDecimal version, Long accountId, String name, Boolean active, Boolean waitForAsset, String description, Long assetImageId, String action, String data, String suffix, String type, Double balance, Long referenceId, String appVersion, Long missionId, Long offerId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/creative/create"

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
        // verify required params are set
        if (active == null) {
            throw new RuntimeException("missing required params active")
        }
        // verify required params are set
        if (waitForAsset == null) {
            throw new RuntimeException("missing required params waitForAsset")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (assetImageId != null) {
            queryParams.put("assetImageId", assetImageId)
        }
        if (action != null) {
            queryParams.put("action", action)
        }
        if (data != null) {
            queryParams.put("data", data)
        }
        if (suffix != null) {
            queryParams.put("suffix", suffix)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (balance != null) {
            queryParams.put("balance", balance)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (referenceId != null) {
            queryParams.put("referenceId", referenceId)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (waitForAsset != null) {
            queryParams.put("waitForAsset", waitForAsset)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CreativeResponse.class )

    }

    def deleteCreative ( BigDecimal version, Long accountId, Long creativeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/creative/delete"

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
        if (creativeId == null) {
            throw new RuntimeException("missing required params creativeId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (creativeId != null) {
            queryParams.put("creativeId", creativeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getCreative ( BigDecimal version, Long accountId, Long creativeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/creative/get"

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
        if (creativeId == null) {
            throw new RuntimeException("missing required params creativeId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (creativeId != null) {
            queryParams.put("creativeId", creativeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CreativeResponse.class )

    }

    def getCreativesByApplication ( BigDecimal version, Long accountId, String appKey, Integer start, Integer limit, Long missionId, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/creative/search"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
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
                    CreativeResponse.class )

    }

    def removePreview ( BigDecimal version, Long accountId, Long creativeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/creative/removepreview"

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
        if (creativeId == null) {
            throw new RuntimeException("missing required params creativeId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (creativeId != null) {
            queryParams.put("creativeId", creativeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateCreative ( BigDecimal version, Long accountId, Long creativeId, String name, String description, Long assetImageId, String action, String data, String suffix, String type, Double balance, Boolean active, Long referenceId, String appVersion, Long missionId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/creative/update"

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
        if (creativeId == null) {
            throw new RuntimeException("missing required params creativeId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (creativeId != null) {
            queryParams.put("creativeId", creativeId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (assetImageId != null) {
            queryParams.put("assetImageId", assetImageId)
        }
        if (action != null) {
            queryParams.put("action", action)
        }
        if (data != null) {
            queryParams.put("data", data)
        }
        if (suffix != null) {
            queryParams.put("suffix", suffix)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (balance != null) {
            queryParams.put("balance", balance)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (referenceId != null) {
            queryParams.put("referenceId", referenceId)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CreativeResponse.class )

    }

}
