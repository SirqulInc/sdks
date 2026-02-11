package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ScheduledNotificationFullResponse
import org.openapitools.model.SirqulResponse

class ScheduledNotificationApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createScheduledNotification ( Long accountId, String name, String type, String message, Long contentId, String contentName, String contentType, Long parentId, String parentType, String appKey, String groupingId, String connectionGroupIds, String connectionAccountIds, Long audienceId, String audienceIds, String albumIds, Long reportId, String reportParams, String endpointURL, String payload, Long scheduledDate, Long startDate, Long endDate, String cronExpression, String cronType, String metaData, String conditionalInput, String templateType, String visibility, Boolean active, Boolean sendNow, String eventType, String deepLinkURI, Boolean sendToAll, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/schedule/create"

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
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (type == null) {
            throw new RuntimeException("missing required params type")
        }
        // verify required params are set
        if (message == null) {
            throw new RuntimeException("missing required params message")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (message != null) {
            queryParams.put("message", message)
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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (albumIds != null) {
            queryParams.put("albumIds", albumIds)
        }
        if (reportId != null) {
            queryParams.put("reportId", reportId)
        }
        if (reportParams != null) {
            queryParams.put("reportParams", reportParams)
        }
        if (endpointURL != null) {
            queryParams.put("endpointURL", endpointURL)
        }
        if (payload != null) {
            queryParams.put("payload", payload)
        }
        if (scheduledDate != null) {
            queryParams.put("scheduledDate", scheduledDate)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (cronExpression != null) {
            queryParams.put("cronExpression", cronExpression)
        }
        if (cronType != null) {
            queryParams.put("cronType", cronType)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (conditionalInput != null) {
            queryParams.put("conditionalInput", conditionalInput)
        }
        if (templateType != null) {
            queryParams.put("templateType", templateType)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (sendNow != null) {
            queryParams.put("sendNow", sendNow)
        }
        if (eventType != null) {
            queryParams.put("eventType", eventType)
        }
        if (deepLinkURI != null) {
            queryParams.put("deepLinkURI", deepLinkURI)
        }
        if (sendToAll != null) {
            queryParams.put("sendToAll", sendToAll)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ScheduledNotificationFullResponse.class )

    }

    def deleteScheduledNotification ( Long accountId, Long scheduledNotificationId, Boolean deleteByGroupingId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/schedule/delete"

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
        if (scheduledNotificationId == null) {
            throw new RuntimeException("missing required params scheduledNotificationId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (scheduledNotificationId != null) {
            queryParams.put("scheduledNotificationId", scheduledNotificationId)
        }
        if (deleteByGroupingId != null) {
            queryParams.put("deleteByGroupingId", deleteByGroupingId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ScheduledNotificationFullResponse.class )

    }

    def getScheduledNotification ( Long accountId, Long scheduledNotificationId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/schedule/get"

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
        if (scheduledNotificationId == null) {
            throw new RuntimeException("missing required params scheduledNotificationId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (scheduledNotificationId != null) {
            queryParams.put("scheduledNotificationId", scheduledNotificationId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ScheduledNotificationFullResponse.class )

    }

    def scheduleNotificationListings ( Long accountId, String appKey, String reportName, String message, Integer offset, Long recipientReportId, String reportParams, String type, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/schedule/generate"

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
        if (reportName == null) {
            throw new RuntimeException("missing required params reportName")
        }
        // verify required params are set
        if (message == null) {
            throw new RuntimeException("missing required params message")
        }
        // verify required params are set
        if (offset == null) {
            throw new RuntimeException("missing required params offset")
        }
        // verify required params are set
        if (recipientReportId == null) {
            throw new RuntimeException("missing required params recipientReportId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (reportName != null) {
            queryParams.put("reportName", reportName)
        }
        if (reportParams != null) {
            queryParams.put("reportParams", reportParams)
        }
        if (message != null) {
            queryParams.put("message", message)
        }
        if (offset != null) {
            queryParams.put("offset", offset)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (recipientReportId != null) {
            queryParams.put("recipientReportId", recipientReportId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def searchScheduledNotifications ( Long accountId, String groupingId, Long audienceId, String filter, String types, String contentIds, String contentTypes, String parentIds, String parentTypes, String statuses, String templateTypes, String appKey, String keyword, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Boolean groupByGroupingId, Boolean returnAudienceAccountCount, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/schedule/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }
        if (filter != null) {
            queryParams.put("filter", filter)
        }
        if (types != null) {
            queryParams.put("types", types)
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
        if (statuses != null) {
            queryParams.put("statuses", statuses)
        }
        if (templateTypes != null) {
            queryParams.put("templateTypes", templateTypes)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
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
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }
        if (groupByGroupingId != null) {
            queryParams.put("groupByGroupingId", groupByGroupingId)
        }
        if (returnAudienceAccountCount != null) {
            queryParams.put("returnAudienceAccountCount", returnAudienceAccountCount)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ScheduledNotificationFullResponse.class )

    }

    def updateScheduledNotification ( Long scheduledNotificationId, Long accountId, String name, String type, String message, String payload, Long contentId, String contentName, String contentType, Long parentId, String parentType, String appKey, String groupingId, String connectionGroupIds, String connectionAccountIds, Long audienceId, String audienceIds, String albumIds, Long reportId, String reportParams, String endpointURL, Long scheduledDate, Long startDate, Long endDate, String cronExpression, String cronType, String metaData, String conditionalInput, String templateType, String visibility, Boolean active, String errorMessage, String status, Boolean updateByGroupingId, Boolean sendNow, String eventType, String deepLinkURI, Boolean sendToAll, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/notification/schedule/update"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (scheduledNotificationId == null) {
            throw new RuntimeException("missing required params scheduledNotificationId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (scheduledNotificationId != null) {
            queryParams.put("scheduledNotificationId", scheduledNotificationId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (type != null) {
            queryParams.put("type", type)
        }
        if (message != null) {
            queryParams.put("message", message)
        }
        if (payload != null) {
            queryParams.put("payload", payload)
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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
        }
        if (connectionGroupIds != null) {
            queryParams.put("connectionGroupIds", connectionGroupIds)
        }
        if (connectionAccountIds != null) {
            queryParams.put("connectionAccountIds", connectionAccountIds)
        }
        if (audienceId != null) {
            queryParams.put("audienceId", audienceId)
        }
        if (audienceIds != null) {
            queryParams.put("audienceIds", audienceIds)
        }
        if (albumIds != null) {
            queryParams.put("albumIds", albumIds)
        }
        if (reportId != null) {
            queryParams.put("reportId", reportId)
        }
        if (reportParams != null) {
            queryParams.put("reportParams", reportParams)
        }
        if (endpointURL != null) {
            queryParams.put("endpointURL", endpointURL)
        }
        if (scheduledDate != null) {
            queryParams.put("scheduledDate", scheduledDate)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (cronExpression != null) {
            queryParams.put("cronExpression", cronExpression)
        }
        if (cronType != null) {
            queryParams.put("cronType", cronType)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }
        if (conditionalInput != null) {
            queryParams.put("conditionalInput", conditionalInput)
        }
        if (templateType != null) {
            queryParams.put("templateType", templateType)
        }
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (errorMessage != null) {
            queryParams.put("errorMessage", errorMessage)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (updateByGroupingId != null) {
            queryParams.put("updateByGroupingId", updateByGroupingId)
        }
        if (sendNow != null) {
            queryParams.put("sendNow", sendNow)
        }
        if (eventType != null) {
            queryParams.put("eventType", eventType)
        }
        if (deepLinkURI != null) {
            queryParams.put("deepLinkURI", deepLinkURI)
        }
        if (sendToAll != null) {
            queryParams.put("sendToAll", sendToAll)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ScheduledNotificationFullResponse.class )

    }

}
