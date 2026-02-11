package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Account
import org.openapitools.model.SirqulResponse

class DependentApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def create ( Long accountId, Account body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/dependent/${accountId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    SirqulResponse.class )

    }

    def getDependents ( Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/dependent/${accountId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def removeDependent ( Long accountId, Long dependentId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/dependent/${accountId}"

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
        if (dependentId == null) {
            throw new RuntimeException("missing required params dependentId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

}
