package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.AccountMiniResponse
import org.openapitools.model.AssignmentResponse
import org.openapitools.model.AssignmentStatusResponse
import org.openapitools.model.SirqulResponse

class AssignmentApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def assigmentAssigneeAccountSearch ( Long accountId, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/assignee/search"

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
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    AccountMiniResponse.class )

    }

    def assignmentCreate ( Long accountId, String name, Long assigneeAccountId, String description, Long retailerLocationId, String tags, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/create"

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
        if (assigneeAccountId == null) {
            throw new RuntimeException("missing required params assigneeAccountId")
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
        if (assigneeAccountId != null) {
            queryParams.put("assigneeAccountId", assigneeAccountId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AssignmentResponse.class )

    }

    def assignmentDelete ( Long accountId, Long assignmentId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/delete"

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
        if (assignmentId == null) {
            throw new RuntimeException("missing required params assignmentId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentId != null) {
            queryParams.put("assignmentId", assignmentId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def assignmentGet ( Long accountId, Long assignmentId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/get"

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
        if (assignmentId == null) {
            throw new RuntimeException("missing required params assignmentId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentId != null) {
            queryParams.put("assignmentId", assignmentId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AssignmentResponse.class )

    }

    def assignmentSearch ( Long accountId, String sortField, Boolean descending, Boolean activeOnly, Integer start, Integer limit, Long creatorAccountId, String assigneeAccountIds, String retailerLocationIds, String currentStatusType, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (creatorAccountId != null) {
            queryParams.put("creatorAccountId", creatorAccountId)
        }
        if (assigneeAccountIds != null) {
            queryParams.put("assigneeAccountIds", assigneeAccountIds)
        }
        if (retailerLocationIds != null) {
            queryParams.put("retailerLocationIds", retailerLocationIds)
        }
        if (currentStatusType != null) {
            queryParams.put("currentStatusType", currentStatusType)
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
                    AssignmentResponse.class )

    }

    def assignmentStatusCreate ( Long accountId, Long assignmentId, Long scheduledNotificationId, String toDo, String connection, String method, String status, String closure, String message, Long followUp, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/status/create"

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
        if (assignmentId == null) {
            throw new RuntimeException("missing required params assignmentId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentId != null) {
            queryParams.put("assignmentId", assignmentId)
        }
        if (scheduledNotificationId != null) {
            queryParams.put("scheduledNotificationId", scheduledNotificationId)
        }
        if (toDo != null) {
            queryParams.put("toDo", toDo)
        }
        if (connection != null) {
            queryParams.put("connection", connection)
        }
        if (method != null) {
            queryParams.put("method", method)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (closure != null) {
            queryParams.put("closure", closure)
        }
        if (message != null) {
            queryParams.put("message", message)
        }
        if (followUp != null) {
            queryParams.put("followUp", followUp)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AssignmentStatusResponse.class )

    }

    def assignmentStatusDelete ( Long accountId, Long assignmentStatusId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/status/delete"

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
        if (assignmentStatusId == null) {
            throw new RuntimeException("missing required params assignmentStatusId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentStatusId != null) {
            queryParams.put("assignmentStatusId", assignmentStatusId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def assignmentStatusGet ( Long accountId, Long assignmentStatusId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/status/get"

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
        if (assignmentStatusId == null) {
            throw new RuntimeException("missing required params assignmentStatusId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentStatusId != null) {
            queryParams.put("assignmentStatusId", assignmentStatusId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    AssignmentStatusResponse.class )

    }

    def assignmentStatusSearch ( Long accountId, String sortField, Boolean descending, Boolean activeOnly, Integer start, Integer limit, Long assignmentId, Long creatorAccountId, Long assigneeAccountId, Long retailerLocationId, String statusType, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/status/search"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentId != null) {
            queryParams.put("assignmentId", assignmentId)
        }
        if (creatorAccountId != null) {
            queryParams.put("creatorAccountId", creatorAccountId)
        }
        if (assigneeAccountId != null) {
            queryParams.put("assigneeAccountId", assigneeAccountId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (statusType != null) {
            queryParams.put("statusType", statusType)
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
                    AssignmentStatusResponse.class )

    }

    def assignmentStatusUpdate ( Long accountId, Long assignmentStatusId, Long scheduledNotificationId, String toDo, String connection, String method, String status, String closure, String message, Long followUp, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/status/update"

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
        if (assignmentStatusId == null) {
            throw new RuntimeException("missing required params assignmentStatusId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentStatusId != null) {
            queryParams.put("assignmentStatusId", assignmentStatusId)
        }
        if (scheduledNotificationId != null) {
            queryParams.put("scheduledNotificationId", scheduledNotificationId)
        }
        if (toDo != null) {
            queryParams.put("toDo", toDo)
        }
        if (connection != null) {
            queryParams.put("connection", connection)
        }
        if (method != null) {
            queryParams.put("method", method)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (closure != null) {
            queryParams.put("closure", closure)
        }
        if (message != null) {
            queryParams.put("message", message)
        }
        if (followUp != null) {
            queryParams.put("followUp", followUp)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AssignmentStatusResponse.class )

    }

    def assignmentUpdate ( Long accountId, Long assignmentId, String name, String description, Long assigneeAccountId, Long retailerLocationId, String tags, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/assignment/update"

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
        if (assignmentId == null) {
            throw new RuntimeException("missing required params assignmentId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (assignmentId != null) {
            queryParams.put("assignmentId", assignmentId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (assigneeAccountId != null) {
            queryParams.put("assigneeAccountId", assigneeAccountId)
        }
        if (retailerLocationId != null) {
            queryParams.put("retailerLocationId", retailerLocationId)
        }
        if (tags != null) {
            queryParams.put("tags", tags)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    AssignmentResponse.class )

    }

}
