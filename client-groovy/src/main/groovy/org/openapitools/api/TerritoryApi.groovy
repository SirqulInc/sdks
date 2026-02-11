package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.SirqulResponse
import org.openapitools.model.TerritoryResponse

class TerritoryApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createTerritory ( Long accountId, String name, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/territory/create"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    TerritoryResponse.class )

    }

    def deleteTerritory ( Long accountId, Long territoryId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/territory/delete"

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
        if (territoryId == null) {
            throw new RuntimeException("missing required params territoryId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (territoryId != null) {
            queryParams.put("territoryId", territoryId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getTerritory ( Long territoryId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/territory/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (territoryId == null) {
            throw new RuntimeException("missing required params territoryId")
        }

        if (territoryId != null) {
            queryParams.put("territoryId", territoryId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    TerritoryResponse.class )

    }

    def searchTerritories ( String sortField, Boolean descending, String keyword, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/territory/search"

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

        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (start != null) {
            queryParams.put("start", start)
        }
        if (limit != null) {
            queryParams.put("limit", limit)
        }
        if (sortField != null) {
            queryParams.put("sortField", sortField)
        }
        if (descending != null) {
            queryParams.put("descending", descending)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    TerritoryResponse.class )

    }

    def updateTerritory ( Long accountId, Long territoryId, String name, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/territory/update"

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
        if (territoryId == null) {
            throw new RuntimeException("missing required params territoryId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (territoryId != null) {
            queryParams.put("territoryId", territoryId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    TerritoryResponse.class )

    }

}
