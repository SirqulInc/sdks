package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.VehicleType

class VehicleTypeApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createVehicleType ( String vehicleType, VehicleType body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/type"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (vehicleType == null) {
            throw new RuntimeException("missing required params vehicleType")
        }

        if (vehicleType != null) {
            queryParams.put("vehicleType", vehicleType)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    VehicleType.class )

    }

    def deleteVehicleType ( Long vehicleTypeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/type/${vehicleTypeId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (vehicleTypeId == null) {
            throw new RuntimeException("missing required params vehicleTypeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def getVehicleType ( Long vehicleTypeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/type/${vehicleTypeId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (vehicleTypeId == null) {
            throw new RuntimeException("missing required params vehicleTypeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    VehicleType.class )

    }

    def searchVehicleTypes ( String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Long retailerId, Long hubId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/type"

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

        if (retailerId != null) {
            queryParams.put("retailerId", retailerId)
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
        if (activeOnly != null) {
            queryParams.put("activeOnly", activeOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    VehicleType.class )

    }

    def updateVehicleType ( Long vehicleTypeId, String vehicleType, VehicleType body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/vehicle/type/${vehicleTypeId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (vehicleTypeId == null) {
            throw new RuntimeException("missing required params vehicleTypeId")
        }
        // verify required params are set
        if (vehicleType == null) {
            throw new RuntimeException("missing required params vehicleType")
        }

        if (vehicleType != null) {
            queryParams.put("vehicleType", vehicleType)
        }


        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    VehicleType.class )

    }

}
