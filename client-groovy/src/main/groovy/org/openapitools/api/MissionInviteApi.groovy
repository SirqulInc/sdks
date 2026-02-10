package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.MissionResponse
import org.openapitools.model.SirqulResponse

class MissionInviteApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createMissionInvite ( BigDecimal version, String deviceId, Long accountId, Long missionId, String joinCode, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/invite/create"

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
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (joinCode != null) {
            queryParams.put("joinCode", joinCode)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MissionResponse.class )

    }

    def deleteMissionInvite ( BigDecimal version, String deviceId, Long accountId, Long missionId, Long missionInviteId, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/invite/delete"

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
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (missionInviteId != null) {
            queryParams.put("missionInviteId", missionInviteId)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getMissionInvite ( BigDecimal version, String deviceId, Long accountId, Long missionId, Long missionInviteId, Boolean includeGameData, String includeScores, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/invite/get"

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
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (missionInviteId != null) {
            queryParams.put("missionInviteId", missionInviteId)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }
        if (includeScores != null) {
            queryParams.put("includeScores", includeScores)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    MissionResponse.class )

    }

    def searchMissionInvites ( BigDecimal version, String deviceId, Long accountId, String appKey, String appVersion, Long missionId, String status, Long lastUpdated, Integer start, Integer limit, String keyword, String missionTypes, Boolean filterByBillable, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/invite/search"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (appVersion != null) {
            queryParams.put("appVersion", appVersion)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (lastUpdated != null) {
            queryParams.put("lastUpdated", lastUpdated)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (missionTypes != null) {
            queryParams.put("missionTypes", missionTypes)
        }
        if (filterByBillable != null) {
            queryParams.put("filterByBillable", filterByBillable)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    MissionResponse.class )

    }

    def updateMissionInvite ( BigDecimal version, String deviceId, Long accountId, String appKey, Long missionId, Long missionInviteId, Long packId, Long gameLevelId, String status, String permissionableType, Long permissionableId, Boolean includeGameData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/mission/invite/update"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (missionId != null) {
            queryParams.put("missionId", missionId)
        }
        if (missionInviteId != null) {
            queryParams.put("missionInviteId", missionInviteId)
        }
        if (packId != null) {
            queryParams.put("packId", packId)
        }
        if (gameLevelId != null) {
            queryParams.put("gameLevelId", gameLevelId)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (includeGameData != null) {
            queryParams.put("includeGameData", includeGameData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    MissionResponse.class )

    }

}
