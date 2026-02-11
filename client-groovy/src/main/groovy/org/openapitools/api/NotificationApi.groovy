package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.BlockedNotificationResponse
import org.openapitools.model.NotificationMessageListResponse
import org.openapitools.model.NotificationRecipientResponse
import org.openapitools.model.NotificationRecipientResponseListResponse
import org.openapitools.model.NotificationTemplateResponse
import org.openapitools.model.SirqulResponse

class NotificationApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createNotificationTemplate ( Long accountId, String conduit, String title, String body, String appKey, String event, String tags, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/template/create"

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
        if (conduit == null) {
            throw new RuntimeException("missing required params conduit")
        }
        // verify required params are set
        if (title == null) {
            throw new RuntimeException("missing required params title")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (event != null) {
            queryParams.put("event", event)
        }
        if (conduit != null) {
            queryParams.put("conduit", conduit)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (body != null) {
            queryParams.put("body", body)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    NotificationTemplateResponse.class )

    }

    def createOrUpdateBlockedNotifications ( String appKey, String data, Long accountId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/blocked/batch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (data == null) {
            throw new RuntimeException("missing required params data")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (data != null) {
            queryParams.put("data", data)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    BlockedNotificationResponse.class )

    }

    def deleteNotificationTemplate ( Long accountId, Long notificationTemplateId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/template/delete"

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
        if (notificationTemplateId == null) {
            throw new RuntimeException("missing required params notificationTemplateId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (notificationTemplateId != null) {
            queryParams.put("notificationTemplateId", notificationTemplateId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    NotificationTemplateResponse.class )

    }

    def getNotificationTemplate ( Long accountId, Long notificationTemplateId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/template/get"

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
        if (notificationTemplateId == null) {
            throw new RuntimeException("missing required params notificationTemplateId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (notificationTemplateId != null) {
            queryParams.put("notificationTemplateId", notificationTemplateId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    NotificationTemplateResponse.class )

    }

    def getNotifications ( String deviceId, Long accountId, Long connectionAccountId, String appKey, String eventType, String contentIds, String contentTypes, String parentIds, String parentTypes, String actionCategory, String conduits, String keyword, Boolean returnReadMessages, Boolean markAsRead, Long fromDate, Double latitude, Double longitude, Boolean returnSent, Boolean ignoreFlagged, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/search"

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
        if (connectionAccountId != null) {
            queryParams.put("connectionAccountId", connectionAccountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (eventType != null) {
            queryParams.put("eventType", eventType)
        }
        if (contentIds != null) {
            queryParams.put("contentIds", contentIds)
        }
        if (contentTypes != null) {
            queryParams.put("contentTypes", contentTypes)
        }
        if (parentIds != null) {
            queryParams.put("parentIds", parentIds)
        }
        if (parentTypes != null) {
            queryParams.put("parentTypes", parentTypes)
        }
        if (actionCategory != null) {
            queryParams.put("actionCategory", actionCategory)
        }
        if (conduits != null) {
            queryParams.put("conduits", conduits)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (returnReadMessages != null) {
            queryParams.put("returnReadMessages", returnReadMessages)
        }
        if (markAsRead != null) {
            queryParams.put("markAsRead", markAsRead)
        }
        if (fromDate != null) {
            queryParams.put("fromDate", fromDate)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (returnSent != null) {
            queryParams.put("returnSent", returnSent)
        }
        if (ignoreFlagged != null) {
            queryParams.put("ignoreFlagged", ignoreFlagged)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    NotificationMessageListResponse.class )

    }

    def registerNotificationToken ( String token, String pushType, String deviceId, Long accountId, String environment, String appKey, String gameType, Boolean active, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/token"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (token == null) {
            throw new RuntimeException("missing required params token")
        }
        // verify required params are set
        if (pushType == null) {
            throw new RuntimeException("missing required params pushType")
        }

        if (deviceId != null) {
            queryParams.put("deviceId", deviceId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (token != null) {
            queryParams.put("token", token)
        }
        if (pushType != null) {
            queryParams.put("pushType", pushType)
        }
        if (environment != null) {
            queryParams.put("environment", environment)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
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

    def searchBlockedNotifications ( String appKey, Long accountId, String searchTags, String events, String conduits, String customTypes, String contentTypes, String contentIds, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/blocked/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (searchTags != null) {
            queryParams.put("searchTags", searchTags)
        }
        if (events != null) {
            queryParams.put("events", events)
        }
        if (conduits != null) {
            queryParams.put("conduits", conduits)
        }
        if (customTypes != null) {
            queryParams.put("customTypes", customTypes)
        }
        if (contentTypes != null) {
            queryParams.put("contentTypes", contentTypes)
        }
        if (contentIds != null) {
            queryParams.put("contentIds", contentIds)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    BlockedNotificationResponse.class )

    }

    def searchNotificationTemplate ( Long accountId, String sortField, Boolean descending, Integer start, Integer limit, String appKey, String event, String conduit, Boolean globalOnly, Boolean reservedOnly, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/template/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (event != null) {
            queryParams.put("event", event)
        }
        if (conduit != null) {
            queryParams.put("conduit", conduit)
        }
        if (globalOnly != null) {
            queryParams.put("globalOnly", globalOnly)
        }
        if (reservedOnly != null) {
            queryParams.put("reservedOnly", reservedOnly)
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
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    NotificationTemplateResponse.class )

    }

    def searchRecipients ( String sortField, String deviceId, Long accountId, String appKey, String conduit, String keyword, Long audienceId, String audienceIds, String connectionGroupIds, String recipientAccountIds, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/recipient/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (sortField == null) {
            throw new RuntimeException("missing required params sortField")
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
        if (conduit != null) {
            queryParams.put("conduit", conduit)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
        }
        if (recipientAccountIds != null) {
            queryParams.put("recipientAccountIds", recipientAccountIds)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    NotificationRecipientResponse.class )

    }

    def searchRecipientsCount ( String deviceId, Long accountId, String appKey, String conduit, String keyword, Long audienceId, String audienceIds, String connectionGroupIds, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/recipient/search/count"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (conduit != null) {
            queryParams.put("conduit", conduit)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    NotificationRecipientResponseListResponse.class )

    }

    def sendBatchNotifications ( Long accountId, String appKey, String customMessage, String conduit, Long contentId, String contentName, String contentType, Long parentId, String parentType, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/batch"

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
        if (appKey == null) {
            throw new RuntimeException("missing required params appKey")
        }
        // verify required params are set
        if (customMessage == null) {
            throw new RuntimeException("missing required params customMessage")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (conduit != null) {
            queryParams.put("conduit", conduit)
        }
        if (customMessage != null) {
            queryParams.put("customMessage", customMessage)
        }
        if (contentId != null) {
            queryParams.put("contentId", contentId)
        }
        if (contentName != null) {
            queryParams.put("contentName", contentName)
        }
        if (contentType != null) {
            queryParams.put("contentType", contentType)
        }
        if (parentId != null) {
            queryParams.put("parentId", parentId)
        }
        if (parentType != null) {
            queryParams.put("parentType", parentType)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def sendCustomNotifications ( String deviceId, Long accountId, String receiverAccountIds, Boolean includeFriendGroup, String appKey, String gameType, String conduit, Long contentId, String contentName, String contentType, Long parentId, String parentType, String actionCategory, String subject, String customMessage, Boolean friendOnlyAPNS, Double latitude, Double longitude, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/custom"

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
        if (receiverAccountIds != null) {
            queryParams.put("receiverAccountIds", receiverAccountIds)
        }
        if (includeFriendGroup != null) {
            queryParams.put("includeFriendGroup", includeFriendGroup)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (gameType != null) {
            queryParams.put("gameType", gameType)
        }
        if (conduit != null) {
            queryParams.put("conduit", conduit)
        }
        if (contentId != null) {
            queryParams.put("contentId", contentId)
        }
        if (contentName != null) {
            queryParams.put("contentName", contentName)
        }
        if (contentType != null) {
            queryParams.put("contentType", contentType)
        }
        if (parentId != null) {
            queryParams.put("parentId", parentId)
        }
        if (parentType != null) {
            queryParams.put("parentType", parentType)
        }
        if (actionCategory != null) {
            queryParams.put("actionCategory", actionCategory)
        }
        if (subject != null) {
            queryParams.put("subject", subject)
        }
        if (customMessage != null) {
            queryParams.put("customMessage", customMessage)
        }
        if (friendOnlyAPNS != null) {
            queryParams.put("friendOnlyAPNS", friendOnlyAPNS)
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

    def updateNotificationTemplate ( Long accountId, Long notificationTemplateId, String title, String body, String tags, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/template/update"

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
        if (notificationTemplateId == null) {
            throw new RuntimeException("missing required params notificationTemplateId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (notificationTemplateId != null) {
            queryParams.put("notificationTemplateId", notificationTemplateId)
        }
        if (title != null) {
            queryParams.put("title", title)
        }
        if (body != null) {
            queryParams.put("body", body)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    NotificationTemplateResponse.class )

    }

}
