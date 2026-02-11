package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Stop

class StopApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getStop ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/stop/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Stop.class )

    }

    def updateStop ( Long id, Stop body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/stop/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Stop.class )

    }

}
