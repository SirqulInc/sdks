package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.WeatherResponse

class WeatherApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def searchWeather ( Long regionId, Double latitude, Double longitude, Long timezoneOffset, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/weather/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


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
