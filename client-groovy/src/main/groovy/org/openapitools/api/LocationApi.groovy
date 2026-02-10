package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.CoordsResponse
import org.openapitools.model.GeoPointResponse
import org.openapitools.model.LocationSearchResponse
import org.openapitools.model.SirqulResponse
import org.openapitools.model.TrilatCacheRequest

class LocationApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def cacheTrilaterationData ( BigDecimal version, String udid, Long sourceTime, Integer minimumSampleSize, String data, File dataFile, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/location/trilaterate/cache"

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
        if (udid == null) {
            throw new RuntimeException("missing required params udid")
        }

        if (udid != null) {
            queryParams.put("udid", udid)
        }
        if (sourceTime != null) {
            queryParams.put("sourceTime", sourceTime)
        }
        if (minimumSampleSize != null) {
            queryParams.put("minimumSampleSize", minimumSampleSize)
        }
        if (data != null) {
            queryParams.put("data", data)
        }
        if (dataFile != null) {
            queryParams.put("dataFile", dataFile)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def cacheTrilaterationDataGzip ( BigDecimal version, TrilatCacheRequest body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/location/trilaterate/cache/submit"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getLocationByIp ( BigDecimal version, String ip, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/location/ip"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (ip != null) {
            queryParams.put("ip", ip)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CoordsResponse.class )

    }

    def getLocationByTrilateration ( BigDecimal version, Long accountId, Double latitude, Double longitude, String data, String responseFilters, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/account/location/trilaterate"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (data != null) {
            queryParams.put("data", data)
        }
        if (responseFilters != null) {
            queryParams.put("responseFilters", responseFilters)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    GeoPointResponse.class )

    }

    def getLocations ( BigDecimal version, String deviceId, Long accountId, Double currentlatitude, Double currentlongitude, Double currentLatitude, Double currentLongitude, String query, String zipcode, String zipCode, Double selectedMaplatitude, Double selectedMaplongitude, Double selectedMapLatitude, Double selectedMapLongitude, Double searchRange, Boolean useGeocode, Integer i, Integer start, Integer l, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/location/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (currentlatitude != null) {
            queryParams.put("currentlatitude", currentlatitude)
        }
        if (currentlongitude != null) {
            queryParams.put("currentlongitude", currentlongitude)
        }
        if (currentLatitude != null) {
            queryParams.put("currentLatitude", currentLatitude)
        }
        if (currentLongitude != null) {
            queryParams.put("currentLongitude", currentLongitude)
        }
        if (query != null) {
            queryParams.put("query", query)
        }
        if (zipcode != null) {
            queryParams.put("zipcode", zipcode)
        }
        if (zipCode != null) {
            queryParams.put("zipCode", zipCode)
        }
        if (selectedMaplatitude != null) {
            queryParams.put("selectedMaplatitude", selectedMaplatitude)
        }
        if (selectedMaplongitude != null) {
            queryParams.put("selectedMaplongitude", selectedMaplongitude)
        }
        if (selectedMapLatitude != null) {
            queryParams.put("selectedMapLatitude", selectedMapLatitude)
        }
        if (selectedMapLongitude != null) {
            queryParams.put("selectedMapLongitude", selectedMapLongitude)
        }
        if (searchRange != null) {
            queryParams.put("searchRange", searchRange)
        }
        if (useGeocode != null) {
            queryParams.put("useGeocode", useGeocode)
        }
        if (i != null) {
            queryParams.put("_i", i)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    LocationSearchResponse.class )

    }

}
