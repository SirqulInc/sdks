package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ConnectionGroupResponse
import org.openapitools.model.ConnectionInfoResponse
import org.openapitools.model.ConnectionListResponse
import org.openapitools.model.ConnectionResponse
import org.openapitools.model.SirqulResponse

class ConnectionApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def addConnectionToGroup ( Boolean returnNulls, Long groupId, String deviceId, Long accountId, Long connectionId, Long connectionAccountId, Long pendingId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/group/addConnection"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (groupId == null) {
            throw new RuntimeException("missing required params groupId")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionId != null) {
            queryParams.put("connectionId", connectionId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (pendingId != null) {
            queryParams.put("pendingId", pendingId)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
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

    def addConnectionsToGroup ( Long connectionGroupId, String deviceId, Long accountId, String connectionIds, String connectionAccountIds, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/connection/group/addConnections"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (connectionGroupId == null) {
            throw new RuntimeException("missing required params connectionGroupId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionIds != null) {
            queryParams.put("connectionIds", connectionIds)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (connectionGroupId != null) {
            queryParams.put("connectionGroupId", connectionGroupId)
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

    def addSubGroups ( Boolean returnNulls, Long groupId, String subGroupIds, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/group/addSubGroup"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (groupId == null) {
            throw new RuntimeException("missing required params groupId")
        }
        // verify required params are set
        if (subGroupIds == null) {
            throw new RuntimeException("missing required params subGroupIds")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
        }
        if (subGroupIds != null) {
            queryParams.put("subGroupIds", subGroupIds)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ConnectionGroupResponse.class )

    }

    def createOrUpdateConnection ( String deviceId, Long accountId, Long connectionId, Long connectionAccountId, Long pendingId, Long groupId, String gameType, String appKey, Boolean isTrusted, Boolean ignoreFriendRequest, Boolean isContact, Boolean isBlocked, Boolean isFollowing, Boolean connectionResponse, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/add"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionId != null) {
            queryParams.put("connectionId", connectionId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (pendingId != null) {
            queryParams.put("pendingId", pendingId)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (isTrusted != null) {
            queryParams.put("isTrusted", isTrusted)
        }
        if (ignoreFriendRequest != null) {
            queryParams.put("ignoreFriendRequest", ignoreFriendRequest)
        }
        if (isContact != null) {
            queryParams.put("isContact", isContact)
        }
        if (isBlocked != null) {
            queryParams.put("isBlocked", isBlocked)
        }
        if (isFollowing != null) {
            queryParams.put("isFollowing", isFollowing)
        }
        if (connectionResponse != null) {
            queryParams.put("connectionResponse", connectionResponse)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ConnectionResponse.class )

    }

    def createOrUpdateGroup ( Boolean returnNulls, String deviceId, Long accountId, String name, Long groupId, Long assetId, String connections, String description, Boolean canViewProfileInfo, Boolean canViewGameInfo, Boolean canViewFriendInfo, Boolean active, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/group"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
        }
        if (assetId != null) {
            queryParams.put("assetId", assetId)
        }
        if (connections != null) {
            queryParams.put("connections", connections)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (canViewProfileInfo != null) {
            queryParams.put("canViewProfileInfo", canViewProfileInfo)
        }
        if (canViewGameInfo != null) {
            queryParams.put("canViewGameInfo", canViewGameInfo)
        }
        if (canViewFriendInfo != null) {
            queryParams.put("canViewFriendInfo", canViewFriendInfo)
        }
        if (active != null) {
            queryParams.put("active", active)
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

    def followAccept ( Long accountId, Long connectionAccountId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/follow/accept"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (connectionAccountId == null) {
            throw new RuntimeException("missing required params connectionAccountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def followReject ( Long accountId, Long connectionAccountId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/follow/reject"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (connectionAccountId == null) {
            throw new RuntimeException("missing required params connectionAccountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def followRemove ( Long accountId, Long connectionAccountId, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/follow/remove"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (connectionAccountId == null) {
            throw new RuntimeException("missing required params connectionAccountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def followRequest ( Long accountId, Long connectionAccountId, String appKey, Boolean approvalNeeded, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/follow/request"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }
        // verify required params are set
        if (connectionAccountId == null) {
            throw new RuntimeException("missing required params connectionAccountId")
        }
        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (approvalNeeded != null) {
            queryParams.put("approvalNeeded", approvalNeeded)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def friendAccept ( Long friendAccountId, Boolean notifyFriend, String deviceId, Long accountId, String gameType, String appKey, String notificationMessage, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/friend/accept"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (friendAccountId == null) {
            throw new RuntimeException("missing required params friendAccountId")
        }
        // verify required params are set
        if (notifyFriend == null) {
            throw new RuntimeException("missing required params notifyFriend")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (friendAccountId != null) {
            queryParams.put("friendAccountId", friendAccountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (notifyFriend != null) {
            queryParams.put("notifyFriend", notifyFriend)
        }
        if (notificationMessage != null) {
            queryParams.put("notificationMessage", notificationMessage)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def friendReject ( Long friendAccountId, String deviceId, Long accountId, String gameType, String appKey, Boolean notifyFriend, String notificationMessage, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/friend/reject"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (friendAccountId == null) {
            throw new RuntimeException("missing required params friendAccountId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (friendAccountId != null) {
            queryParams.put("friendAccountId", friendAccountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (notifyFriend != null) {
            queryParams.put("notifyFriend", notifyFriend)
        }
        if (notificationMessage != null) {
            queryParams.put("notificationMessage", notificationMessage)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def friendRemove ( Long friendAccountId, String deviceId, Long accountId, Boolean notifyFriend, Boolean removeFromGroups, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/friend/remove"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (friendAccountId == null) {
            throw new RuntimeException("missing required params friendAccountId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (friendAccountId != null) {
            queryParams.put("friendAccountId", friendAccountId)
        }
        if (notifyFriend != null) {
            queryParams.put("notifyFriend", notifyFriend)
        }
        if (removeFromGroups != null) {
            queryParams.put("removeFromGroups", removeFromGroups)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def friendRequest ( Long friendAccountId, String deviceId, Long accountId, String gameType, String appKey, String notificationMessage, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/friend/request"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (friendAccountId == null) {
            throw new RuntimeException("missing required params friendAccountId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (friendAccountId != null) {
            queryParams.put("friendAccountId", friendAccountId)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (notificationMessage != null) {
            queryParams.put("notificationMessage", notificationMessage)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getConnectionSentFriendRequests ( String deviceId, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/getRequested"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ConnectionListResponse.class )

    }

    def getConnections ( Boolean returnNulls, String filter, String sortField, Boolean descending, Integer start, Integer limit, String deviceId, Long accountId, Long connectionAccountId, String q, String keyword, Integer i, Integer l, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (filter == null) {
            throw new RuntimeException("missing required params filter")
        }
        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
        }
        // verify required params are set
        if (descending == null) {
            throw new RuntimeException("missing required params descending")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
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
        if (filter != null) {
            queryParams.put("filter", filter)
        }
        if (q != null) {
            queryParams.put("q", q)
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
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ConnectionListResponse.class )

    }

    def getGroupDetails ( Boolean combineConnections, String deviceId, Long accountId, Long groupId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/group/details/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (combineConnections == null) {
            throw new RuntimeException("missing required params combineConnections")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
        }
        if (combineConnections != null) {
            queryParams.put("combineConnections", combineConnections)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ConnectionGroupResponse.class )

    }

    def groupSearch ( String sortField, Boolean descending, Boolean activeOnly, Integer start, Integer limit, String deviceId, Long accountId, Double latitude, Double longitude, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/connection/group/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
        }
        // verify required params are set
        if (descending == null) {
            throw new RuntimeException("missing required params descending")
        }
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
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
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ConnectionInfoResponse.class )

    }

    def removeConnectionFromGroup ( Boolean returnNulls, Long groupId, String deviceId, Long accountId, Long connectionId, Long connectionAccountId, Long pendingId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/group/removeConnection"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (groupId == null) {
            throw new RuntimeException("missing required params groupId")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionId != null) {
            queryParams.put("connectionId", connectionId)
        }
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (pendingId != null) {
            queryParams.put("pendingId", pendingId)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
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

    def removeConnectionsFromGroup ( Long connectionGroupId, String deviceId, Long accountId, String connectionIds, String connectionAccountIds, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/connection/group/removeConnections"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (connectionGroupId == null) {
            throw new RuntimeException("missing required params connectionGroupId")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (connectionIds != null) {
            queryParams.put("connectionIds", connectionIds)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (connectionGroupId != null) {
            queryParams.put("connectionGroupId", connectionGroupId)
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

    def removeGroup ( Boolean returnNulls, Long groupId, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/group/remove"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (groupId == null) {
            throw new RuntimeException("missing required params groupId")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
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

    def removeSubGroups ( Boolean returnNulls, Long groupId, String subGroupIds, String deviceId, Long accountId, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/consumer/connection/group/removeSubGroup"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (groupId == null) {
            throw new RuntimeException("missing required params groupId")
        }
        // verify required params are set
        if (subGroupIds == null) {
            throw new RuntimeException("missing required params subGroupIds")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (groupId != null) {
            queryParams.put("groupId", groupId)
        }
        if (subGroupIds != null) {
            queryParams.put("subGroupIds", subGroupIds)
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

    def searchConnections ( Boolean returnNulls, Integer start, Integer limit, String deviceId, Long accountId, String q, String keyword, Double latitude, Double longitude, String gameType, String appKey, Integer i, Integer l, String sortField, Boolean hasLocation, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/connection/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (returnNulls == null) {
            throw new RuntimeException("missing required params returnNulls")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }

        if (returnNulls != null) {
            queryParams.put("returnNulls", returnNulls)
        }
        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (q != null) {
            queryParams.put("q", q)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
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
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (hasLocation != null) {
            queryParams.put("hasLocation", hasLocation)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ConnectionListResponse.class )

    }

}
