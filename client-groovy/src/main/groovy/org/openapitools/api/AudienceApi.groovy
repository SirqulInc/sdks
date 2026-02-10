package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AgeGroupResponse
import org.openapitools.model.AudienceDeviceResponse
import org.openapitools.model.AudienceResponse
import java.math.BigDecimal
import org.openapitools.model.OfferListResponse
import org.openapitools.model.SearchResponse
import org.openapitools.model.SirqulResponse

class AudienceApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createAudience ( BigDecimal version, Long accountId, String name, String description, String searchTags, String gender, String ageGroups, String categoryIds, String applicationIds, String gameExperienceLevel, String devices, String deviceIds, String deviceVersions, String locations, String radius, Integer startTimeOffset, Integer endTimeOffset, Boolean sendSuggestion, String associateDescription, String associateType, Long associateId, String groupingId, String metaData, String visibility, String audienceType, Boolean useOrder, String cohortRegionsData, String appKey, String trilaterationTypes, Boolean uniqueName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (ageGroups != null) {
            queryParams.put("ageGroups", ageGroups)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (applicationIds != null) {
            queryParams.put("applicationIds", applicationIds)
        }
        if (gameExperienceLevel != null) {
            queryParams.put("gameExperienceLevel", gameExperienceLevel)
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
        if (startTimeOffset != null) {
            queryParams.put("startTimeOffset", startTimeOffset)
        }
        if (endTimeOffset != null) {
            queryParams.put("endTimeOffset", endTimeOffset)
        }
        if (sendSuggestion != null) {
            queryParams.put("sendSuggestion", sendSuggestion)
        }
        if (associateDescription != null) {
            queryParams.put("associateDescription", associateDescription)
        }
        if (associateType != null) {
            queryParams.put("associateType", associateType)
        }
        if (associateId != null) {
            queryParams.put("associateId", associateId)
        }
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (audienceType != null) {
            queryParams.put("audienceType", audienceType)
        }
        if (useOrder != null) {
            queryParams.put("useOrder", useOrder)
        }
        if (cohortRegionsData != null) {
            queryParams.put("cohortRegionsData", cohortRegionsData)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (trilaterationTypes != null) {
            queryParams.put("trilaterationTypes", trilaterationTypes)
        }
        if (uniqueName != null) {
            queryParams.put("uniqueName", uniqueName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AudienceResponse.class )

    }

    def deleteAudience ( BigDecimal version, Long accountId, Long audienceId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/delete"

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
        if (audienceId == null) {
            throw new RuntimeException("missing required params audienceId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getAgeGroups ( BigDecimal version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/ageGroups"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AgeGroupResponse.class )

    }

    def getAudience ( BigDecimal version, Long accountId, Long audienceId, String appKey, Boolean returnAccountCount, Boolean returnAlbumCount, String albumTypesForCount, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/get"

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
        if (audienceId == null) {
            throw new RuntimeException("missing required params audienceId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnAccountCount != null) {
            queryParams.put("returnAccountCount", returnAccountCount)
        }
        if (returnAlbumCount != null) {
            queryParams.put("returnAlbumCount", returnAlbumCount)
        }
        if (albumTypesForCount != null) {
            queryParams.put("albumTypesForCount", albumTypesForCount)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AudienceResponse.class )

    }

    def getAudienceList ( BigDecimal version, Long accountId, String albumIds, String keyword, String keywordFields, String sortField, Boolean descending, Integer start, Integer limit, Boolean sendSuggestion, Boolean activeOnly, Boolean groupByGroupingId, String appKey, Boolean returnGlobal, Boolean exactKeyword, String audienceType, String audienceTypes, Boolean returnAccountCount, Boolean returnAlbumCount, String albumTypesForCount, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/search"

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
        if (albumIds != null) {
            queryParams.put("albumIds", albumIds)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (keywordFields != null) {
            queryParams.put("keywordFields", keywordFields)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
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
        if (sendSuggestion != null) {
            queryParams.put("sendSuggestion", sendSuggestion)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (groupByGroupingId != null) {
            queryParams.put("groupByGroupingId", groupByGroupingId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (returnGlobal != null) {
            queryParams.put("returnGlobal", returnGlobal)
        }
        if (exactKeyword != null) {
            queryParams.put("exactKeyword", exactKeyword)
        }
        if (audienceType != null) {
            queryParams.put("audienceType", audienceType)
        }
        if (audienceTypes != null) {
            queryParams.put("audienceTypes", audienceTypes)
        }
        if (returnAccountCount != null) {
            queryParams.put("returnAccountCount", returnAccountCount)
        }
        if (returnAlbumCount != null) {
            queryParams.put("returnAlbumCount", returnAlbumCount)
        }
        if (albumTypesForCount != null) {
            queryParams.put("albumTypesForCount", albumTypesForCount)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    SearchResponse.class )

    }

    def getDevices ( BigDecimal version, Boolean includeInactive, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/devices"

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
        if (includeInactive == null) {
            throw new RuntimeException("missing required params includeInactive")
        }

        if (includeInactive != null) {
            queryParams.put("includeInactive", includeInactive)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AudienceDeviceResponse.class )

    }

    def getExperiences ( BigDecimal version, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/experiences"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def getGroupedAudiences ( BigDecimal version, Long accountId, String audienceGroupingId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/grouped/get"

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
        if (audienceGroupingId == null) {
            throw new RuntimeException("missing required params audienceGroupingId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (audienceGroupingId != null) {
            queryParams.put("audienceGroupingId", audienceGroupingId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AudienceResponse.class )

    }

    def listByAccount ( BigDecimal version, Long accountId, Integer limit, String suggestionType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/suggestion/list"

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
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (suggestionType == null) {
            throw new RuntimeException("missing required params suggestionType")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (suggestionType != null) {
            queryParams.put("suggestionType", suggestionType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    OfferListResponse.class )

    }

    def listByAudience ( BigDecimal version, Integer limit, String gender, Integer age, String categoryIds, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/suggestion/offersByAudience"

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
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (age != null) {
            queryParams.put("age", age)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferListResponse.class )

    }

    def listLastestByAccount ( BigDecimal version, Long accountId, Integer timeframe, String suggestionType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/suggestion/latest"

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
        if (timeframe == null) {
            throw new RuntimeException("missing required params timeframe")
        }
        // verify required params are set
        if (suggestionType == null) {
            throw new RuntimeException("missing required params suggestionType")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (timeframe != null) {
            queryParams.put("timeframe", timeframe)
        }
        if (suggestionType != null) {
            queryParams.put("suggestionType", suggestionType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    OfferListResponse.class )

    }

    def sendByAccount ( BigDecimal version, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/suggestion/send"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def updateAudience ( BigDecimal version, Long accountId, Long audienceId, String name, String description, String searchTags, String gender, String ageGroups, String categoryIds, String applicationIds, String gameExperienceLevel, String devices, String deviceIds, String deviceVersions, String locations, String radius, Boolean active, Boolean sendSuggestion, Integer startTimeOffset, Integer endTimeOffset, String associateDescription, String associateType, Long associateId, String groupingId, String metaData, String visibility, String audienceType, Boolean useOrder, String cohortRegionsData, String appKey, String trilaterationTypes, Boolean uniqueName, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/audience/update"

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
        if (audienceId == null) {
            throw new RuntimeException("missing required params audienceId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (gender != null) {
            queryParams.put("gender", gender)
        }
        if (ageGroups != null) {
            queryParams.put("ageGroups", ageGroups)
        }
        if (categoryIds != null) {
            queryParams.put("categoryIds", categoryIds)
        }
        if (applicationIds != null) {
            queryParams.put("applicationIds", applicationIds)
        }
        if (gameExperienceLevel != null) {
            queryParams.put("gameExperienceLevel", gameExperienceLevel)
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
        if (active != null) {
            queryParams.put("active", active)
        }
        if (sendSuggestion != null) {
            queryParams.put("sendSuggestion", sendSuggestion)
        }
        if (startTimeOffset != null) {
            queryParams.put("startTimeOffset", startTimeOffset)
        }
        if (endTimeOffset != null) {
            queryParams.put("endTimeOffset", endTimeOffset)
        }
        if (associateDescription != null) {
            queryParams.put("associateDescription", associateDescription)
        }
        if (associateType != null) {
            queryParams.put("associateType", associateType)
        }
        if (associateId != null) {
            queryParams.put("associateId", associateId)
        }
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (audienceType != null) {
            queryParams.put("audienceType", audienceType)
        }
        if (useOrder != null) {
            queryParams.put("useOrder", useOrder)
        }
        if (cohortRegionsData != null) {
            queryParams.put("cohortRegionsData", cohortRegionsData)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (trilaterationTypes != null) {
            queryParams.put("trilaterationTypes", trilaterationTypes)
        }
        if (uniqueName != null) {
            queryParams.put("uniqueName", uniqueName)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AudienceResponse.class )

    }

}
