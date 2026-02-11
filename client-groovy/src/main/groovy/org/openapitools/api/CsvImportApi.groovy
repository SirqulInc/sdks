package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CsvImportResponse
import org.openapitools.model.SirqulResponse

class CsvImportApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getStatusCSV ( Long accountId, Long batchId, String responseGroup, Long start, Long limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/csvimport/batch/status/details"

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
        if (responseGroup == null) {
            throw new RuntimeException("missing required params responseGroup")
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
        if (batchId != null) {
            queryParams.put("batchId", batchId)
        }
        if (responseGroup != null) {
            queryParams.put("responseGroup", responseGroup)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    SirqulResponse.class )

    }

    def listStatusCSV ( Long accountId, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/csvimport/batch/list"

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
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CsvImportResponse.class )

    }

    def statusCSV ( Long accountId, Long batchId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/csvimport/batch/status"

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
                    "GET", "",
                    CsvImportResponse.class )

    }

    def uploadCSV ( Long accountId, String uploadType, File importFile, String fileFormat, String appKey, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/csvimport/upload"

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
        if (uploadType == null) {
            throw new RuntimeException("missing required params uploadType")
        }
        // verify required params are set
        if (importFile == null) {
            throw new RuntimeException("missing required params importFile")
        }
        // verify required params are set
        if (fileFormat == null) {
            throw new RuntimeException("missing required params fileFormat")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (uploadType != null) {
            queryParams.put("uploadType", uploadType)
        }
        if (importFile != null) {
            queryParams.put("importFile", importFile)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (fileFormat != null) {
            queryParams.put("fileFormat", fileFormat)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CsvImportResponse.class )

    }

}
