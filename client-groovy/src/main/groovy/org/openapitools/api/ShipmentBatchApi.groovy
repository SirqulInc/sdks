package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ShipmentBatch
import org.openapitools.model.ShipmentImportStatus

class ShipmentBatchApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createShipmentBatch ( ShipmentBatch body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/batch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    ShipmentBatch.class )

    }

    def deleteShipmentBatch ( Long batchId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/batch/${batchId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (batchId == null) {
            throw new RuntimeException("missing required params batchId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def getShipmentBatch ( Long batchId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/batch/${batchId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (batchId == null) {
            throw new RuntimeException("missing required params batchId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ShipmentBatch.class )

    }

    def getShipmentBatchStatus ( Long batchId, Long accountId, String sortField, Boolean descending, Integer start, Integer limit, Boolean valid, Boolean started, Boolean completed, Boolean hasShipment, Boolean hasRoute, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/batch/${batchId}/status"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (batchId == null) {
            throw new RuntimeException("missing required params batchId")
        }
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
        if (valid != null) {
            queryParams.put("valid", valid)
        }
        if (started != null) {
            queryParams.put("started", started)
        }
        if (completed != null) {
            queryParams.put("completed", completed)
        }
        if (hasShipment != null) {
            queryParams.put("hasShipment", hasShipment)
        }
        if (hasRoute != null) {
            queryParams.put("hasRoute", hasRoute)
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
                    "GET", "array",
                    ShipmentImportStatus.class )

    }

    def searchShipmentBatch ( Long hubId, String sortField, Boolean descending, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/batch"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (hubId == null) {
            throw new RuntimeException("missing required params hubId")
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

        if (hubId != null) {
            queryParams.put("hubId", hubId)
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
                    ShipmentBatch.class )

    }

}
