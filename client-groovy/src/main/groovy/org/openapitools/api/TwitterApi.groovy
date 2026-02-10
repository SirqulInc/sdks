package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.ProfileResponse
import org.openapitools.model.SirqulResponse

class TwitterApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def authorizeTwitter ( BigDecimal version, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/twitter/authorize"

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

        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def loginTwitter ( BigDecimal version, String accessToken, String accessTokenSecret, String appKey, String responseFilters, String deviceId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/twitter/login"

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
        if (accessToken == null) {
            throw new RuntimeException("missing required params accessToken")
        }
        // verify required params are set
        if (accessTokenSecret == null) {
            throw new RuntimeException("missing required params accessTokenSecret")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (responseFilters == null) {
            throw new RuntimeException("missing required params responseFilters")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accessToken != null) {
            queryParams.put("accessToken", accessToken)
        }
        if (accessTokenSecret != null) {
            queryParams.put("accessTokenSecret", accessTokenSecret)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ProfileResponse.class )

    }

}
