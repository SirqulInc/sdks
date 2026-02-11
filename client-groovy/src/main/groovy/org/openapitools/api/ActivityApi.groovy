package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ActivityResponse
import org.openapitools.model.EntityReference

class ActivityApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createEntityReference ( EntityReference body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/entity/reference"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ActivityResponse.class )

    }

}
