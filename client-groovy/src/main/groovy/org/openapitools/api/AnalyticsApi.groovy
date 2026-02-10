package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.ChartData
import org.openapitools.model.SirqulResponse
import org.openapitools.model.UserActivityResponse

class AnalyticsApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def activities ( BigDecimal version, Integer start, Integer limit, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/analytics/useractivity"

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
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UserActivityResponse.class )

    }

    def aggregatedFilteredUsage ( BigDecimal version, String deviceId, Long accountId, Long applicationId, String appKey, Long startDate, Long endDate, String deviceType, String device, String deviceOS, String gender, String ageGroup, String country, String state, String city, String zip, String model, String tag, Long userAccountId, String userAccountDisplay, String userAccountUsername, String groupByRoot, String groupBy, String distinctCount, String sortField, Boolean descending, Boolean hideUnknown, String responseFormat, Integer l, Integer limit, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/analytics/aggregatedFilteredUsage"

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
        if (applicationId != null) {
            queryParams.put("applicationId", applicationId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (deviceType != null) {
            queryParams.put("deviceType", deviceType)
        }
        if (device != null) {
            queryParams.put("device", device)
        }
        if (deviceOS != null) {
            queryParams.put("deviceOS", deviceOS)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (ageGroup != null) {
            queryParams.put("ageGroup", ageGroup)
        }
        if (country != null) {
            queryParams.put("country", country)
        }
        if (state != null) {
            queryParams.put("state", state)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (zip != null) {
            queryParams.put("zip", zip)
        }
        if (model != null) {
            queryParams.put("model", model)
        }
        if (tag != null) {
            queryParams.put("tag", tag)
        }
        if (userAccountId != null) {
            queryParams.put("userAccountId", userAccountId)
        }
        if (userAccountDisplay != null) {
            queryParams.put("userAccountDisplay", userAccountDisplay)
        }
        if (userAccountUsername != null) {
            queryParams.put("userAccountUsername", userAccountUsername)
        }
        if (groupByRoot != null) {
            queryParams.put("groupByRoot", groupByRoot)
        }
        if (groupBy != null) {
            queryParams.put("groupBy", groupBy)
        }
        if (distinctCount != null) {
            queryParams.put("distinctCount", distinctCount)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (hideUnknown != null) {
            queryParams.put("hideUnknown", hideUnknown)
        }
        if (responseFormat != null) {
            queryParams.put("responseFormat", responseFormat)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ChartData.class )

    }

    def filteredUsage ( BigDecimal version, String deviceId, Long accountId, Long applicationId, String appKey, Long startDate, Long endDate, String deviceType, String device, String deviceOS, String gender, String ageGroup, String country, String state, String city, String zip, String model, String tag, Long userAccountId, String userAccountDisplay, String userAccountUsername, Long customId, String customType, Double customValue, Double customValue2, Long customLong, Long customLong2, String customMessage, String customMessage2, String groupBy, String distinctCount, String sumColumn, String sortField, Boolean descending, Boolean hideUnknown, String responseFormat, Integer l, Integer limit, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/analytics/filteredUsage"

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
        if (applicationId != null) {
            queryParams.put("applicationId", applicationId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (deviceType != null) {
            queryParams.put("deviceType", deviceType)
        }
        if (device != null) {
            queryParams.put("device", device)
        }
        if (deviceOS != null) {
            queryParams.put("deviceOS", deviceOS)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (ageGroup != null) {
            queryParams.put("ageGroup", ageGroup)
        }
        if (country != null) {
            queryParams.put("country", country)
        }
        if (state != null) {
            queryParams.put("state", state)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (zip != null) {
            queryParams.put("zip", zip)
        }
        if (model != null) {
            queryParams.put("model", model)
        }
        if (tag != null) {
            queryParams.put("tag", tag)
        }
        if (userAccountId != null) {
            queryParams.put("userAccountId", userAccountId)
        }
        if (userAccountDisplay != null) {
            queryParams.put("userAccountDisplay", userAccountDisplay)
        }
        if (userAccountUsername != null) {
            queryParams.put("userAccountUsername", userAccountUsername)
        }
        if (customId != null) {
            queryParams.put("customId", customId)
        }
        if (customType != null) {
            queryParams.put("customType", customType)
        }
        if (customValue != null) {
            queryParams.put("customValue", customValue)
        }
        if (customValue2 != null) {
            queryParams.put("customValue2", customValue2)
        }
        if (customLong != null) {
            queryParams.put("customLong", customLong)
        }
        if (customLong2 != null) {
            queryParams.put("customLong2", customLong2)
        }
        if (customMessage != null) {
            queryParams.put("customMessage", customMessage)
        }
        if (customMessage2 != null) {
            queryParams.put("customMessage2", customMessage2)
        }
        if (groupBy != null) {
            queryParams.put("groupBy", groupBy)
        }
        if (distinctCount != null) {
            queryParams.put("distinctCount", distinctCount)
        }
        if (sumColumn != null) {
            queryParams.put("sumColumn", sumColumn)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (hideUnknown != null) {
            queryParams.put("hideUnknown", hideUnknown)
        }
        if (responseFormat != null) {
            queryParams.put("responseFormat", responseFormat)
        }
        if (l != null) {
            queryParams.put("_l", l)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ChartData.class )

    }

    def usage ( BigDecimal version, String tag, String deviceId, Long accountId, Long applicationId, String appKey, String appVersion, String device, String deviceType, String deviceOS, String model, Double latitude, Double longitude, Long customId, String customType, Long achievementIncrement, String city, String state, String country, String zip, String locationDescription, Long clientTime, String errorMessage, String ip, String userAgent, Boolean backgroundEvent, String customMessage, String customMessage2, Double customValue, Double customValue2, Long customLong, Long customLong2, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/analytics/usage"

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
        if (tag == null) {
            throw new RuntimeException("missing required params tag")
        }

        if (tag != null) {
            queryParams.put("tag", tag)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (applicationId != null) {
            queryParams.put("applicationId", applicationId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (device != null) {
            queryParams.put("device", device)
        }
        if (deviceType != null) {
            queryParams.put("deviceType", deviceType)
        }
        if (deviceOS != null) {
            queryParams.put("deviceOS", deviceOS)
        }
        if (model != null) {
            queryParams.put("model", model)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (customId != null) {
            queryParams.put("customId", customId)
        }
        if (customType != null) {
            queryParams.put("customType", customType)
        }
        if (achievementIncrement != null) {
            queryParams.put("achievementIncrement", achievementIncrement)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (state != null) {
            queryParams.put("state", state)
        }
        if (country != null) {
            queryParams.put("country", country)
        }
        if (zip != null) {
            queryParams.put("zip", zip)
        }
        if (locationDescription != null) {
            queryParams.put("locationDescription", locationDescription)
        }
        if (clientTime != null) {
            queryParams.put("clientTime", clientTime)
        }
        if (errorMessage != null) {
            queryParams.put("errorMessage", errorMessage)
        }
        if (ip != null) {
            queryParams.put("ip", ip)
        }
        if (userAgent != null) {
            queryParams.put("userAgent", userAgent)
        }
        if (backgroundEvent != null) {
            queryParams.put("backgroundEvent", backgroundEvent)
        }
        if (customMessage != null) {
            queryParams.put("customMessage", customMessage)
        }
        if (customMessage2 != null) {
            queryParams.put("customMessage2", customMessage2)
        }
        if (customValue != null) {
            queryParams.put("customValue", customValue)
        }
        if (customValue2 != null) {
            queryParams.put("customValue2", customValue2)
        }
        if (customLong != null) {
            queryParams.put("customLong", customLong)
        }
        if (customLong2 != null) {
            queryParams.put("customLong2", customLong2)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def usageBatch ( BigDecimal version, String appKey, String device, String data, String deviceId, Long accountId, String appVersion, String deviceType, String deviceOS, String model, Boolean updateRanking, Boolean returnSummaryResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/analytics/usage/batch"

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
        if (device == null) {
            throw new RuntimeException("missing required params device")
        }
        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (device != null) {
            queryParams.put("device", device)
        }
        if (deviceType != null) {
            queryParams.put("deviceType", deviceType)
        }
        if (deviceOS != null) {
            queryParams.put("deviceOS", deviceOS)
        }
        if (model != null) {
            queryParams.put("model", model)
        }
        if (data != null) {
            queryParams.put("data", data)
        }
        if (updateRanking != null) {
            queryParams.put("updateRanking", updateRanking)
        }
        if (returnSummaryResponse != null) {
            queryParams.put("returnSummaryResponse", returnSummaryResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

}
