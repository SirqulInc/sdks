package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.SirqulResponse
import org.openapitools.model.TaskResponse

class TaskApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createTask ( BigDecimal version, Long accountId, String name, String appKey, String groupingId, String endpointURL, String payload, Long scheduledDate, Long startDate, Long endDate, String cronExpression, String visibility, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/task/create"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
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
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    TaskResponse.class )

    }

    def deleteTask ( BigDecimal version, Long accountId, Long taskId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/task/delete"

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
        if (taskId == null) {
            throw new RuntimeException("missing required params taskId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (taskId != null) {
            queryParams.put("taskId", taskId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getTask ( BigDecimal version, Long accountId, Long taskId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/task/get"

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
        if (taskId == null) {
            throw new RuntimeException("missing required params taskId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (taskId != null) {
            queryParams.put("taskId", taskId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    TaskResponse.class )

    }

    def searchTasks ( BigDecimal version, Long accountId, String groupingId, String filter, String statuses, String templateTypes, String appKey, String keyword, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/task/search"

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
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
        }
        if (filter != null) {
            queryParams.put("filter", filter)
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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TaskResponse.class )

    }

    def updateTask ( BigDecimal version, Long taskId, Long accountId, String name, String appKey, String groupingId, String endpointURL, String payload, Long scheduledDate, Long startDate, Long endDate, String cronExpression, String visibility, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/task/update"

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
        if (taskId == null) {
            throw new RuntimeException("missing required params taskId")
        }
        // verify required params are set
        if (accountId == null) {
            throw new RuntimeException("missing required params accountId")
        }

        if (taskId != null) {
            queryParams.put("taskId", taskId)
        }
        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (groupingId != null) {
            queryParams.put("groupingId", groupingId)
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
        if (visibility != null) {
            queryParams.put("visibility", visibility)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    TaskResponse.class )

    }

}
