package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.WrappedProxyItemResponse

class OpenAiApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def imageGeneration ( BigDecimal version, Long accountId, String postBody, Boolean returnRawResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/openai/v1/images/generations"

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
        if (postBody == null) {
            throw new RuntimeException("missing required params postBody")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (postBody != null) {
            queryParams.put("postBody", postBody)
        }
        if (returnRawResponse != null) {
            queryParams.put("returnRawResponse", returnRawResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    WrappedProxyItemResponse.class )

    }

}
