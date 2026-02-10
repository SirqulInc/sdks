package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.MissionFormatResponse
import org.openapitools.model.MissionResponse
import org.openapitools.model.SirqulResponse

class MissionApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createMission ( BigDecimal version, Long accountId, String title, String description, String subType, Long startDate, Long endDate, Boolean active, String gameLevelIds, String creativeIds, String audienceIds, String missionTask, String formatType, Long offerId, Double balance, Boolean advancedReporting, Boolean allocateTickets, Long ticketCount, String ticketType, Long points, String metaData, String applicationIds, String devices, String deviceIds, String deviceVersions, String locations, String radius, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/create"

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
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (gameLevelIds != null) {
            queryParams.put("gameLevelIds", gameLevelIds)
        }
        if (creativeIds != null) {
            queryParams.put("creativeIds", creativeIds)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (missionTask != null) {
            queryParams.put("missionTask", missionTask)
        }
        if (formatType != null) {
            queryParams.put("formatType", formatType)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (balance != null) {
            queryParams.put("balance", balance)
        }
        if (advancedReporting != null) {
            queryParams.put("advancedReporting", advancedReporting)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketCount != null) {
            queryParams.put("ticketCount", ticketCount)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (applicationIds != null) {
            queryParams.put("applicationIds", applicationIds)
        }
        if (devices != null) {
            queryParams.put("devices", devices)
        }
        if (deviceIds != null) {
            queryParams.put("deviceIds", deviceIds)
        }
        if (deviceVersions != null) {
            queryParams.put("deviceVersions", deviceVersions)
        }
        if (locations != null) {
            queryParams.put("locations", locations)
        }
        if (radius != null) {
            queryParams.put("radius", radius)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MissionResponse.class )

    }

    def deleteMission ( BigDecimal version, Long accountId, Long missionId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/delete"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def findMissions ( BigDecimal version, String appKey, String suffix, String type, Long accountId, String appVersion, Double latitude, Double longitude, String device, Long deviceIdentifier, String deviceVersion, Integer start, Integer limit, Boolean includeGameData, Boolean includeAudiences, Boolean allocatesTickets, Boolean randomize, Boolean targetedAdsOnly, String missionIds, String audienceOperator, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/find"

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
        if (suffix != null) {
            queryParams.put("suffix", suffix)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (device != null) {
            queryParams.put("device", device)
        }
        if (deviceIdentifier != null) {
            queryParams.put("deviceIdentifier", deviceIdentifier)
        }
        if (deviceVersion != null) {
            queryParams.put("deviceVersion", deviceVersion)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (includeAudiences != null) {
            queryParams.put("includeAudiences", includeAudiences)
        }
        if (allocatesTickets != null) {
            queryParams.put("allocatesTickets", allocatesTickets)
        }
        if (randomize != null) {
            queryParams.put("randomize", randomize)
        }
        if (targetedAdsOnly != null) {
            queryParams.put("targetedAdsOnly", targetedAdsOnly)
        }
        if (missionIds != null) {
            queryParams.put("missionIds", missionIds)
        }
        if (audienceOperator != null) {
            queryParams.put("audienceOperator", audienceOperator)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    MissionResponse.class )

    }

    def getMission ( BigDecimal version, Long accountId, Long missionId, Boolean returnCreative, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/get"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (returnCreative != null) {
            queryParams.put("returnCreative", returnCreative)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    MissionResponse.class )

    }

    def importMission ( BigDecimal version, Long accountId, Double latitude, Double longitude, String appKey, String keyword, Integer start, Integer limit, String adSize, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/import"

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
        if (latitude == null) {
            throw new RuntimeException("missing required params latitude")
        }
        // verify required params are set
        if (longitude == null) {
            throw new RuntimeException("missing required params longitude")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
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
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (adSize != null) {
            queryParams.put("adSize", adSize)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchMissionFormats ( BigDecimal version, Integer start, Integer limit, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/format/search"

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
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
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
                    MissionFormatResponse.class )

    }

    def searchMissions ( BigDecimal version, Long accountId, String keyword, String subType, Integer start, Integer limit, Boolean includeGameData, Boolean includeAudiences, Boolean includeInactive, String suffix, String sortField, Boolean descending, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (includeAudiences != null) {
            queryParams.put("includeAudiences", includeAudiences)
        }
        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
        }
        if (suffix != null) {
            queryParams.put("suffix", suffix)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MissionResponse.class )

    }

    def searchMissionsByBillableEntity ( BigDecimal version, Long accountId, String keyword, Integer start, Integer limit, Boolean includeGameData, Boolean includeAudiences, Boolean includeInactive, String suffix, String sortField, Boolean descending, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/searchByBillableEntity"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (includeAudiences != null) {
            queryParams.put("includeAudiences", includeAudiences)
        }
        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
        }
        if (suffix != null) {
            queryParams.put("suffix", suffix)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MissionResponse.class )

    }

    def updateMission ( BigDecimal version, Long accountId, Long missionId, String title, String description, String subType, String metaData, Long startDate, Long endDate, Boolean active, String gameLevelIds, String creativeIds, String audienceIds, Long offerId, Double balance, Boolean advancedReporting, Boolean allocateTickets, Long ticketCount, String ticketType, Long points, String applicationIds, String devices, String deviceIds, String deviceVersions, String locations, String radius, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/update"

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
        if (missionId == null) {
            throw new RuntimeException("missing required params missionId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (subType != null) {
            queryParams.put("subType", subType)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (gameLevelIds != null) {
            queryParams.put("gameLevelIds", gameLevelIds)
        }
        if (creativeIds != null) {
            queryParams.put("creativeIds", creativeIds)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (offerId != null) {
            queryParams.put("offerId", offerId)
        }
        if (balance != null) {
            queryParams.put("balance", balance)
        }
        if (advancedReporting != null) {
            queryParams.put("advancedReporting", advancedReporting)
        }
        if (allocateTickets != null) {
            queryParams.put("allocateTickets", allocateTickets)
        }
        if (ticketCount != null) {
            queryParams.put("ticketCount", ticketCount)
        }
        if (ticketType != null) {
            queryParams.put("ticketType", ticketType)
        }
        if (points != null) {
            queryParams.put("points", points)
        }
        if (applicationIds != null) {
            queryParams.put("applicationIds", applicationIds)
        }
        if (devices != null) {
            queryParams.put("devices", devices)
        }
        if (deviceIds != null) {
            queryParams.put("deviceIds", deviceIds)
        }
        if (deviceVersions != null) {
            queryParams.put("deviceVersions", deviceVersions)
        }
        if (locations != null) {
            queryParams.put("locations", locations)
        }
        if (radius != null) {
            queryParams.put("radius", radius)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MissionResponse.class )

    }

}
