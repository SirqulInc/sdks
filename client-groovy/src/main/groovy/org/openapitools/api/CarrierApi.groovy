package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CellCarrierResponse

class CarrierApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def searchCarriers ( String keyword, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/carrier/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    CellCarrierResponse.class )

    }

}
