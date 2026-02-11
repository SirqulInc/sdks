package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.RoutingListResponse

class RoutingApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def computeRouting ( String data, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/routing/compute"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }

        if (data != null) {
            queryParams.put("data", data)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RoutingListResponse.class )

    }

}
