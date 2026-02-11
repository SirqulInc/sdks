package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.CargoType

class CargoTypeApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createCargoType ( CargoType body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/type"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    CargoType.class )

    }

    def deleteCargoType ( Long cargoTypeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/type/${cargoTypeId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (cargoTypeId == null) {
            throw new RuntimeException("missing required params cargoTypeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def getCargoType ( Long cargoTypeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/type/${cargoTypeId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (cargoTypeId == null) {
            throw new RuntimeException("missing required params cargoTypeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    CargoType.class )

    }

    def searchCargoTypes ( String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Long retailerId, Long hubId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/type"

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
                    CargoType.class )

    }

    def updateCargoType ( Long cargoTypeId, CargoType body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/cargo/type/${cargoTypeId}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (cargoTypeId == null) {
            throw new RuntimeException("missing required params cargoTypeId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    CargoType.class )

    }

}
