package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.PathingResponse

class PathingApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def computePath ( String data, String units, Boolean reducePath, Boolean directions, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/pathing/compute"

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
        if (units == null) {
            throw new RuntimeException("missing required params units")
        }
        // verify required params are set
        if (reducePath == null) {
            throw new RuntimeException("missing required params reducePath")
        }
        // verify required params are set
        if (directions == null) {
            throw new RuntimeException("missing required params directions")
        }

        if (data != null) {
            queryParams.put("data", data)
        }
        if (units != null) {
            queryParams.put("units", units)
        }
        if (reducePath != null) {
            queryParams.put("reducePath", reducePath)
        }
        if (directions != null) {
            queryParams.put("directions", directions)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PathingResponse.class )

    }

}
