package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.RegionLegSummary
import org.openapitools.model.ReportBatchResponse
import org.openapitools.model.ReportRegionLegSummaryBatchResponse
import org.openapitools.model.ReportResponse
import org.openapitools.model.SirqulResponse

class ReportingApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createBatch ( Long accountId, String status, Integer previewLimit, String appKey, String endpoint, String parameters, String name, Long startDate, Long endDate, String description, String pageUrl, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/report/batch/create"

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
        if (status == null) {
            throw new RuntimeException("missing required params status")
        }
        // verify required params are set
        if (previewLimit == null) {
            throw new RuntimeException("missing required params previewLimit")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (endpoint != null) {
            queryParams.put("endpoint", endpoint)
        }
        if (parameters != null) {
            queryParams.put("parameters", parameters)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (previewLimit != null) {
            queryParams.put("previewLimit", previewLimit)
        }
        if (pageUrl != null) {
            queryParams.put("pageUrl", pageUrl)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ReportBatchResponse.class )

    }

    def createRegionLegSummaryBatch ( List<RegionLegSummary> body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/report/region/summary/batch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ReportRegionLegSummaryBatchResponse.class )

    }

    def deleteBatch ( Long accountId, Long batchId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/report/batch/delete"

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
        if (batchId == null) {
            throw new RuntimeException("missing required params batchId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (batchId != null) {
            queryParams.put("batchId", batchId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getReportBatch ( Long accountId, Long batchId, Boolean allResults, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/report/batch/get"

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
        if (batchId == null) {
            throw new RuntimeException("missing required params batchId")
        }
        // verify required params are set
        if (allResults == null) {
            throw new RuntimeException("missing required params allResults")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (batchId != null) {
            queryParams.put("batchId", batchId)
        }
        if (allResults != null) {
            queryParams.put("allResults", allResults)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ReportBatchResponse.class )

    }

    def runReport ( Boolean desc, Long accountId, String query, String parameters, String order, Long start, Long limit, String responseFormat, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/report/run"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (desc == null) {
            throw new RuntimeException("missing required params desc")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (query != null) {
            queryParams.put("query", query)
        }
        if (parameters != null) {
            queryParams.put("parameters", parameters)
        }
        if (order != null) {
            queryParams.put("order", order)
        }
        if (desc != null) {
            queryParams.put("desc", desc)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (responseFormat != null) {
            queryParams.put("responseFormat", responseFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ReportResponse.class )

    }

    def searchBatch ( Long accountId, Integer start, Integer limit, String names, String appKey, String status, Boolean globalAppSearch, Long startDate, Long endDate, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/report/batch/search"

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
        if (names != null) {
            queryParams.put("names", names)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (status != null) {
            queryParams.put("status", status)
        }
        if (globalAppSearch != null) {
            queryParams.put("globalAppSearch", globalAppSearch)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    ReportBatchResponse.class )

    }

}
