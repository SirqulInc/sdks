package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ApplicationConfigResponse
import org.openapitools.model.SirqulResponse

class ApplicationConfigApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createApplicationConfig ( Long accountId, String appKey, String configVersion, Long assetId, Long retailerId, Long retailerLocationId, String udid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/appconfig/create"

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
        if (configVersion == null) {
            throw new RuntimeException("missing required params configVersion")
        }
        // verify required params are set
        if (assetId == null) {
            throw new RuntimeException("missing required params assetId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (configVersion != null) {
            queryParams.put("configVersion", configVersion)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (udid != null) {
            queryParams.put("udid", udid)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ApplicationConfigResponse.class )

    }

    def deleteApplicationConfig ( Long accountId, Long configId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/appconfig/delete"

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
        if (configId == null) {
            throw new RuntimeException("missing required params configId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (configId != null) {
            queryParams.put("configId", configId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getApplicationConfig ( Long accountId, Long configId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/appconfig/get"

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
        if (configId == null) {
            throw new RuntimeException("missing required params configId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (configId != null) {
            queryParams.put("configId", configId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ApplicationConfigResponse.class )

    }

    def getApplicationConfigByConfigVersion ( String appKey, String configVersion, Long retailerId, Long retailerLocationId, String udid, Boolean allowOlderVersions, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/appconfig/getbyversion"

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
        if (configVersion == null) {
            throw new RuntimeException("missing required params configVersion")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (configVersion != null) {
            queryParams.put("configVersion", configVersion)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (udid != null) {
            queryParams.put("udid", udid)
        }
        if (allowOlderVersions != null) {
            queryParams.put("allowOlderVersions", allowOlderVersions)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ApplicationConfigResponse.class )

    }

    def searchApplicationConfig ( Long accountId, String appKey, Long retailerId, Long retailerLocationId, String udid, String configVersion, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/appconfig/search"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (udid != null) {
            queryParams.put("udid", udid)
        }
        if (configVersion != null) {
            queryParams.put("configVersion", configVersion)
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
                    ApplicationConfigResponse.class )

    }

    def updateApplicationConfig ( Long accountId, Long configId, String appKey, String configVersion, Long assetId, Long retailerId, Long retailerLocationId, String udid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/appconfig/update"

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
        if (configId == null) {
            throw new RuntimeException("missing required params configId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (configId != null) {
            queryParams.put("configId", configId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (configVersion != null) {
            queryParams.put("configVersion", configVersion)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (udid != null) {
            queryParams.put("udid", udid)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ApplicationConfigResponse.class )

    }

}
