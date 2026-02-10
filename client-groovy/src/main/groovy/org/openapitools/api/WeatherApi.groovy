package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.WeatherResponse

class WeatherApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def searchWeather ( BigDecimal version, Long regionId, Double latitude, Double longitude, Long timezoneOffset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/weather/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (regionId != null) {
            queryParams.put("regionId", regionId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (timezoneOffset != null) {
            queryParams.put("timezoneOffset", timezoneOffset)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    WeatherResponse.class )

    }

}
