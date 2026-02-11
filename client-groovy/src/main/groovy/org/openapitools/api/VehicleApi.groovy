package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Vehicle

class VehicleApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createVehicle ( String vehicle, Vehicle body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (vehicle == null) {
            throw new RuntimeException("missing required params vehicle")
        }

        if (vehicle != null) {
            queryParams.put("vehicle", vehicle)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Vehicle.class )

    }

    def deleteVehicle ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/${id}"

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

    def getVehicle ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/${id}"

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
                    Vehicle.class )

    }

    def searchVehicle ( Long hubId, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle"

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
        // verify required params are set
        if (activeOnly == null) {
            throw new RuntimeException("missing required params activeOnly")
        }

        if (hubId != null) {
            queryParams.put("hubId", hubId)
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
                    Vehicle.class )

    }

    def updateVehicle ( Long id, String vehicle, Vehicle body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/${id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (vehicle == null) {
            throw new RuntimeException("missing required params vehicle")
        }

        if (vehicle != null) {
            queryParams.put("vehicle", vehicle)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Vehicle.class )

    }

}
