package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.SirqulResponse

class StripeApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createStripeCheckoutSession ( BigDecimal version, String appKey, String stripeParameters, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/stripe/checkout/session/create"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (stripeParameters == null) {
            throw new RuntimeException("missing required params stripeParameters")
        }

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (stripeParameters != null) {
            queryParams.put("stripeParameters", stripeParameters)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
