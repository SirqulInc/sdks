package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.FilterResponse
import org.openapitools.model.FilterTreeResponse
import org.openapitools.model.SirqulResponse

class FilterApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createFilter ( BigDecimal version, Long accountId, String name, String appKey, Long parentFilterId, String description, String externalId, String externalType, Boolean active, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/filter/create"

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
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (parentFilterId != null) {
            queryParams.put("parentFilterId", parentFilterId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (externalType != null) {
            queryParams.put("externalType", externalType)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    FilterTreeResponse.class )

    }

    def deleteFilter ( BigDecimal version, Long accountId, Long filterId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/filter/delete"

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
        if (filterId == null) {
            throw new RuntimeException("missing required params filterId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (filterId != null) {
            queryParams.put("filterId", filterId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getFilter ( BigDecimal version, Long filterId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/filter/get"

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
        if (filterId == null) {
            throw new RuntimeException("missing required params filterId")
        }

        if (filterId != null) {
            queryParams.put("filterId", filterId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    FilterTreeResponse.class )

    }

    def searchFilters ( BigDecimal version, Long accountId, String keyword, String appKey, String responseGroup, Boolean rootOnly, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/filter/search"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (appKey != null) {
            queryParams.put("appKey", appKey)
        }
        if (responseGroup != null) {
            queryParams.put("responseGroup", responseGroup)
        }
        if (rootOnly != null) {
            queryParams.put("rootOnly", rootOnly)
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
                    FilterResponse.class )

    }

    def updateFilter ( BigDecimal version, Long accountId, Long filterId, Long parentFilterId, String name, String description, String externalId, String externalType, Boolean active, String metaData, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/filter/update"

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
        if (filterId == null) {
            throw new RuntimeException("missing required params filterId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (filterId != null) {
            queryParams.put("filterId", filterId)
        }
        if (parentFilterId != null) {
            queryParams.put("parentFilterId", parentFilterId)
        }
        if (name != null) {
            queryParams.put("name", name)
        }
        if (description != null) {
            queryParams.put("description", description)
        }
        if (externalId != null) {
            queryParams.put("externalId", externalId)
        }
        if (externalType != null) {
            queryParams.put("externalType", externalType)
        }
        if (active != null) {
            queryParams.put("active", active)
        }
        if (metaData != null) {
            queryParams.put("metaData", metaData)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    FilterTreeResponse.class )

    }

}
