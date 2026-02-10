package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Account
import java.math.BigDecimal
import org.openapitools.model.SirqulResponse

class DependentApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def create ( BigDecimal version, Long accountId, Account body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/cargo/dependent/${accountId}"

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



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    SirqulResponse.class )

    }

    def getDependents ( BigDecimal version, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/cargo/dependent/${accountId}"

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





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def removeDependent ( BigDecimal version, Long accountId, Long dependentId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/cargo/dependent/${accountId}"

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
        if (dependentId == null) {
            throw new RuntimeException("missing required params dependentId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

}
