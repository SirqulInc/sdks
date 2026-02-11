package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.SirqulResponse

class SimulationApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def simulation ( String data, Boolean realTime, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/simulation/routing"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }
        // verify required params are set
        if (realTime == null) {
            throw new RuntimeException("missing required params realTime")
        }

        if (data != null) {
            queryParams.put("data", data)
        }
        if (realTime != null) {
            queryParams.put("realTime", realTime)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
