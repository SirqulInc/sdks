package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Shipment

class ShipmentApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def cancelShipment ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/${id}/cancel"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def createShipment ( Shipment body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Shipment.class )

    }

    def deleteShipment ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def getShipment ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Shipment.class )

    }

    def searchShipments ( String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Long ownerId, Long riderId, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment"

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
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }
        // verify required params are set
        if (limit == null) {
            throw new RuntimeException("missing required params limit")
        }
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }

        if (ownerId != null) {
            queryParams.put("ownerId", ownerId)
        }
        if (riderId != null) {
            queryParams.put("riderId", riderId)
        }
        if (routeId != null) {
            queryParams.put("routeId", routeId)
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
                    Shipment.class )

    }

    def updateShipment ( Long id, Shipment body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Shipment.class )

    }

    def updateShipmentStatus ( Long id, Map<String, Boolean> body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/shipment/${id}/status"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

}
