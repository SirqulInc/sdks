package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ImportStatuses
import org.openapitools.model.Orders
import org.openapitools.model.ShipmentOrder

class OptimizeApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getOptimizationResult ( String batchID, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/optimize/result/${batchID}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (batchID == null) {
            throw new RuntimeException("missing required params batchID")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "map",
                    ShipmentOrder.class )

    }

    def requestOptimization ( Orders body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/optimize/request"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ImportStatuses.class )

    }

}
