package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.TwiMLResponse

class TwilioApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def smsBuyOffer ( BigDecimal version, String appKey, String body, String from, String currencyType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/sms/buyoffer/${appKey}"

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
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }
        // verify required params are set
        if (from == null) {
            throw new RuntimeException("missing required params from")
        }
        // verify required params are set
        if (currencyType == null) {
            throw new RuntimeException("missing required params currencyType")
        }

        if (body != null) {
            queryParams.put("Body", body)
        }
        if (from != null) {
            queryParams.put("From", from)
        }
        if (currencyType != null) {
            queryParams.put("currencyType", currencyType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    TwiMLResponse.class )

    }

}
