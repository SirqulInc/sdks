package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.TwiMLResponse

class TwilioApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def smsBuyOffer ( String appKey, String body, String from, String currencyType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/sms/buyoffer/${appKey}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

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
