package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal

class VatomApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createFollowing ( BigDecimal version, Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/rels/following/create"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def createSpace ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/spaces/create"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def createVatomEvent ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/events/create"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def deleteFollowing ( BigDecimal version, Long accountId, String vatomRelsKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/rels/following/delete"

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
        if (vatomRelsKey == null) {
            throw new RuntimeException("missing required params vatomRelsKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomRelsKey != null) {
            queryParams.put("vatomRelsKey", vatomRelsKey)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def deletePointsBalance ( BigDecimal version, Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign/points/delete"

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
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def deleteSpace ( BigDecimal version, Long accountId, String appKey, String vatomSpaceId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/spaces/delete"

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
        if (vatomSpaceId == null) {
            throw new RuntimeException("missing required params vatomSpaceId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomSpaceId != null) {
            queryParams.put("vatomSpaceId", vatomSpaceId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def deleteVatomEvent ( BigDecimal version, Long accountId, String appKey, String vatomEventId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/events/delete"

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
        if (vatomEventId == null) {
            throw new RuntimeException("missing required params vatomEventId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomEventId != null) {
            queryParams.put("vatomEventId", vatomEventId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def deleteVatomNFT ( BigDecimal version, Long accountId, String vatomId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/vatoms/delete"

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
        if (vatomId == null) {
            throw new RuntimeException("missing required params vatomId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomId != null) {
            queryParams.put("vatomId", vatomId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def executeActionOnNFT ( BigDecimal version, Long accountId, String vatomId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/vatoms/execute-action"

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
        if (vatomId == null) {
            throw new RuntimeException("missing required params vatomId")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomId != null) {
            queryParams.put("vatomId", vatomId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def geomapSearch ( BigDecimal version, Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/vatoms/geo-map/search"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessBehaviors ( BigDecimal version, Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/behaviors"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessCoinsBalance ( BigDecimal version, Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/coins/get"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessIds ( BigDecimal version, Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/businesses"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessInfo ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/get"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessUsers ( BigDecimal version, Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/users"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getCampaignGroupEntities ( BigDecimal version, Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign-groups/entities"

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
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getCampaignGroupRules ( BigDecimal version, Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign-groups/rules"

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
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getCampaignGroupStats ( BigDecimal version, Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign-groups/stats"

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
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getCampaignInfo ( BigDecimal version, Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign-groups/get"

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
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getEventGuestList ( BigDecimal version, Long accountId, String appKey, String vatomEventId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/events/guests/get"

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
        if (vatomEventId == null) {
            throw new RuntimeException("missing required params vatomEventId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomEventId != null) {
            queryParams.put("vatomEventId", vatomEventId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getInventory ( BigDecimal version, Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/inventory"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getMyFollowing ( BigDecimal version, Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/rels/following"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getPointsBalance ( BigDecimal version, Long accountId, String vatomUserId, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/u/campaign/points/get"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getPointsBalanceAsBusiness ( BigDecimal version, Long accountId, String appKey, String vatomUserId, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign/u/points/get"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getSpace ( BigDecimal version, Long accountId, String appKey, String vatomSpaceId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/spaces/get"

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
        if (vatomSpaceId == null) {
            throw new RuntimeException("missing required params vatomSpaceId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomSpaceId != null) {
            queryParams.put("vatomSpaceId", vatomSpaceId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getUserCoinsAsBusiness ( BigDecimal version, Long accountId, String vatomUserId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/users/coins/get"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getUserCoinsBalance ( BigDecimal version, Long accountId, String vatomUserId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/u/coins/get"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getUserFollowers ( BigDecimal version, Long accountId, String vatomUserId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/users/rels/followers"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getUserFollowing ( BigDecimal version, Long accountId, String vatomUserId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/users/rels/following"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getUserInfo ( BigDecimal version, Long accountId, String vatomUserId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/user/get"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getUserProfile ( BigDecimal version, Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/get"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getVatomEvent ( BigDecimal version, Long accountId, String appKey, String vatomEventId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/events/get"

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
        if (vatomEventId == null) {
            throw new RuntimeException("missing required params vatomEventId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomEventId != null) {
            queryParams.put("vatomEventId", vatomEventId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getVatomNFT ( BigDecimal version, Long accountId, String vatomId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/vatoms/get"

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
        if (vatomId == null) {
            throw new RuntimeException("missing required params vatomId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomId != null) {
            queryParams.put("vatomId", vatomId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def listCommunities ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/communities/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def listEvents ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/events/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def listSpaces ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/spaces/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def listUserCoinTransactions ( BigDecimal version, Long accountId, String vatomUserId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/u/coins/txns/search"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def listUserCoinTransactionsAsBusiness ( BigDecimal version, Long accountId, String vatomUserId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/users/coins/txns/search"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def performActionOnNFT ( BigDecimal version, Long accountId, String vatomId, String vatomAction, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/vatoms/actions"

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
        if (vatomId == null) {
            throw new RuntimeException("missing required params vatomId")
        }
        // verify required params are set
        if (vatomAction == null) {
            throw new RuntimeException("missing required params vatomAction")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomId != null) {
            queryParams.put("vatomId", vatomId)
        }
        if (vatomAction != null) {
            queryParams.put("vatomAction", vatomAction)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def redeemNFT ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/redemptions"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def redeemUserCoinsAsBusiness ( BigDecimal version, Long accountId, String vatomUserId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/users/coins/redeem"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def searchBusinesses ( BigDecimal version, Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def searchCampaignGroups ( BigDecimal version, Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign-groups/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def searchIdentities ( BigDecimal version, Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/identities/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def searchInventory ( BigDecimal version, Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/user-inventory/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def sendNFT ( BigDecimal version, Long accountId, String appKey, String vatomCampaignId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaigns/send"

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
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def setPointsBalanceAsBusiness ( BigDecimal version, Long accountId, String appKey, String vatomUserId, String vatomCampaignId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/campaign/u/points/update"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (vatomCampaignId == null) {
            throw new RuntimeException("missing required params vatomCampaignId")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (vatomCampaignId != null) {
            queryParams.put("vatomCampaignId", vatomCampaignId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def transferUserCoins ( BigDecimal version, Long accountId, String vatomUserId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/u/coins/transfer"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def updateBusinessCoins ( BigDecimal version, Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/coins/update"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def updateEventGuestList ( BigDecimal version, Long accountId, String appKey, String vatomEventId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/events/guests/update"

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
        if (vatomEventId == null) {
            throw new RuntimeException("missing required params vatomEventId")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomEventId != null) {
            queryParams.put("vatomEventId", vatomEventId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def updateSpace ( BigDecimal version, Long accountId, String appKey, String vatomSpaceId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/spaces/update"

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
        if (vatomSpaceId == null) {
            throw new RuntimeException("missing required params vatomSpaceId")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomSpaceId != null) {
            queryParams.put("vatomSpaceId", vatomSpaceId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def updateUserCoinsAsBusiness ( BigDecimal version, Long accountId, String vatomUserId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/users/coins/update"

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
        if (vatomUserId == null) {
            throw new RuntimeException("missing required params vatomUserId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomUserId != null) {
            queryParams.put("vatomUserId", vatomUserId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def updateUserProfile ( BigDecimal version, Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/me/update"

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
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def updateVatomEvent ( BigDecimal version, Long accountId, String appKey, String vatomEventId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/vatom/b/events/update"

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
        if (vatomEventId == null) {
            throw new RuntimeException("missing required params vatomEventId")
        }
        // verify required params are set
        if (vatomParameters == null) {
            throw new RuntimeException("missing required params vatomParameters")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (vatomEventId != null) {
            queryParams.put("vatomEventId", vatomEventId)
        }
        if (vatomParameters != null) {
            queryParams.put("vatomParameters", vatomParameters)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

}
