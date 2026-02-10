package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.SirqulResponse
import org.openapitools.model.UserPermissionsResponse

class UserPermissionsApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addUsersToPermissionable ( BigDecimal version, String permissionableType, Long permissionableId, String deviceId, Long accountId, Boolean read, Boolean write, Boolean delete, Boolean add, String connectionIds, String connectionAccountIds, String connectionGroupIds, Boolean pending, Boolean admin, Boolean includeFriendGroup, Double latitude, Double longitude, String audienceIds, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/consumer/permissions/add"

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
        if (permissionableType == null) {
            throw new RuntimeException("missing required params permissionableType")
        }
        // verify required params are set
        if (permissionableId == null) {
            throw new RuntimeException("missing required params permissionableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (read != null) {
            queryParams.put("read", read)
        }
        if (write != null) {
            queryParams.put("write", write)
        }
        if (delete != null) {
            queryParams.put("delete", delete)
        }
        if (add != null) {
            queryParams.put("add", add)
        }
        if (connectionIds != null) {
            queryParams.put("connectionIds", connectionIds)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
        }
        if (pending != null) {
            queryParams.put("pending", pending)
        }
        if (admin != null) {
            queryParams.put("admin", admin)
        }
        if (includeFriendGroup != null) {
            queryParams.put("includeFriendGroup", includeFriendGroup)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def approvePermissionable ( BigDecimal version, String permissionableType, Long permissionableId, String deviceId, Long accountId, String approvalStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/permissionable/approve"

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
        if (permissionableType == null) {
            throw new RuntimeException("missing required params permissionableType")
        }
        // verify required params are set
        if (permissionableId == null) {
            throw new RuntimeException("missing required params permissionableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (approvalStatus != null) {
            queryParams.put("approvalStatus", approvalStatus)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def leaveFromPermissionable ( BigDecimal version, String permissionableType, Long permissionableId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/consumer/permissions/leave"

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
        if (permissionableType == null) {
            throw new RuntimeException("missing required params permissionableType")
        }
        // verify required params are set
        if (permissionableId == null) {
            throw new RuntimeException("missing required params permissionableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
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

    def removeUsersFromPermissionable ( BigDecimal version, String permissionableType, Long permissionableId, String deviceId, Long accountId, String connectionIds, String connectionAccountIds, String connectionGroupIds, Boolean removeFriendGroup, Double latitude, Double longitude, String audienceIds, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/consumer/permissions/remove"

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
        if (permissionableType == null) {
            throw new RuntimeException("missing required params permissionableType")
        }
        // verify required params are set
        if (permissionableId == null) {
            throw new RuntimeException("missing required params permissionableId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (connectionIds != null) {
            queryParams.put("connectionIds", connectionIds)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
        }
        if (removeFriendGroup != null) {
            queryParams.put("removeFriendGroup", removeFriendGroup)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchPermissionables ( BigDecimal version, String deviceId, Long accountId, Long connectionAccountId, String connectionAccountIds, String permissionableType, Long permissionableId, String keyword, String sortField, Boolean descending, Boolean pending, Boolean admin, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/permissions/search"

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
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (pending != null) {
            queryParams.put("pending", pending)
        }
        if (admin != null) {
            queryParams.put("admin", admin)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UserPermissionsResponse.class )

    }

    def searchPermissionablesFollowingDistance ( BigDecimal version, Double latitude, Double longitude, String deviceId, Long accountId, Long connectionAccountId, String connectionAccountIds, String permissionableType, Long permissionableId, Double searchRange, String keyword, Boolean pending, Boolean admin, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/permissions/distancesearch"

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
        if (latitude == null) {
            throw new RuntimeException("missing required params latitude")
        }
        // verify required params are set
        if (longitude == null) {
            throw new RuntimeException("missing required params longitude")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (permissionableType != null) {
            queryParams.put("permissionableType", permissionableType)
        }
        if (permissionableId != null) {
            queryParams.put("permissionableId", permissionableId)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (searchRange != null) {
            queryParams.put("searchRange", searchRange)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (pending != null) {
            queryParams.put("pending", pending)
        }
        if (admin != null) {
            queryParams.put("admin", admin)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    UserPermissionsResponse.class )

    }

}
