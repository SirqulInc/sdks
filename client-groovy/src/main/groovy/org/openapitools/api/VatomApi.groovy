package org.openapitools.api;

import org.openapitools.api.ApiUtils

class VatomApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createFollowing ( Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/rels/following/create"

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

    def createSpace ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/spaces/create"

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

    def createVatomEvent ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/events/create"

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

    def deleteFollowing ( Long accountId, String vatomRelsKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/rels/following/delete"

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

    def deletePointsBalance ( Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign/points/delete"

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

    def deleteSpace ( Long accountId, String appKey, String vatomSpaceId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/spaces/delete"

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

    def deleteVatomEvent ( Long accountId, String appKey, String vatomEventId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/events/delete"

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

    def deleteVatomNFT ( Long accountId, String vatomId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/vatoms/delete"

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

    def executeActionOnNFT ( Long accountId, String vatomId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/vatoms/execute-action"

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

    def geomapSearch ( Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/vatoms/geo-map/search"

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

    def getBusinessBehaviors ( Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/behaviors"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessCoinsBalance ( Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/coins/get"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessIds ( Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/businesses"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getBusinessInfo ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/get"

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

    def getBusinessUsers ( Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/users"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getCampaignGroupEntities ( Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign-groups/entities"

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

    def getCampaignGroupRules ( Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign-groups/rules"

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

    def getCampaignGroupStats ( Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign-groups/stats"

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

    def getCampaignInfo ( Long accountId, String appKey, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign-groups/get"

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

    def getEventGuestList ( Long accountId, String appKey, String vatomEventId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/events/guests/get"

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

    def getInventory ( Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/inventory"

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

    def getMyFollowing ( Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/rels/following"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getPointsBalance ( Long accountId, String vatomUserId, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/u/campaign/points/get"

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

    def getPointsBalanceAsBusiness ( Long accountId, String appKey, String vatomUserId, String vatomCampaignId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign/u/points/get"

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

    def getSpace ( Long accountId, String appKey, String vatomSpaceId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/spaces/get"

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

    def getUserCoinsAsBusiness ( Long accountId, String vatomUserId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/users/coins/get"

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

    def getUserCoinsBalance ( Long accountId, String vatomUserId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/u/coins/get"

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

    def getUserFollowers ( Long accountId, String vatomUserId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/users/rels/followers"

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

    def getUserFollowing ( Long accountId, String vatomUserId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/users/rels/following"

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

    def getUserInfo ( Long accountId, String vatomUserId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/user/get"

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

    def getUserProfile ( Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/get"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getVatomEvent ( Long accountId, String appKey, String vatomEventId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/events/get"

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

    def getVatomNFT ( Long accountId, String vatomId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/vatoms/get"

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

    def listCommunities ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/communities/search"

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

    def listEvents ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/events/search"

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

    def listSpaces ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/spaces/search"

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

    def listUserCoinTransactions ( Long accountId, String vatomUserId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/u/coins/txns/search"

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

    def listUserCoinTransactionsAsBusiness ( Long accountId, String vatomUserId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/users/coins/txns/search"

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

    def performActionOnNFT ( Long accountId, String vatomId, String vatomAction, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/vatoms/actions"

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

    def redeemNFT ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/redemptions"

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

    def redeemUserCoinsAsBusiness ( Long accountId, String vatomUserId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/users/coins/redeem"

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

    def searchBusinesses ( Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/search"

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

    def searchCampaignGroups ( Long accountId, String appKey, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign-groups/search"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def searchIdentities ( Long accountId, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/identities/search"

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
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def searchInventory ( Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/user-inventory/search"

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

    def sendNFT ( Long accountId, String appKey, String vatomCampaignId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaigns/send"

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

    def setPointsBalanceAsBusiness ( Long accountId, String appKey, String vatomUserId, String vatomCampaignId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/campaign/u/points/update"

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

    def transferUserCoins ( Long accountId, String vatomUserId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/u/coins/transfer"

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

    def updateBusinessCoins ( Long accountId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/coins/update"

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

    def updateEventGuestList ( Long accountId, String appKey, String vatomEventId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/events/guests/update"

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

    def updateSpace ( Long accountId, String appKey, String vatomSpaceId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/spaces/update"

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

    def updateUserCoinsAsBusiness ( Long accountId, String vatomUserId, String appKey, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/users/coins/update"

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

    def updateUserProfile ( Long accountId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/me/update"

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

    def updateVatomEvent ( Long accountId, String appKey, String vatomEventId, String vatomParameters, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vatom/b/events/update"

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
