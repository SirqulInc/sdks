package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.SirqulResponse

class WorkflowApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def runWorkflow ( Long accountId, Long workflowId, Long skuId, Integer versionCode, String parameters, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/workflow/run"

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
        if (workflowId == null) {
            throw new RuntimeException("missing required params workflowId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (workflowId != null) {
            queryParams.put("workflowId", workflowId)
        }
        if (skuId != null) {
            queryParams.put("skuId", skuId)
        }
        if (versionCode != null) {
            queryParams.put("versionCode", versionCode)
        }
        if (parameters != null) {
            queryParams.put("parameters", parameters)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
