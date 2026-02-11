package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.PostalCodeResponse
import org.openapitools.model.SirqulResponse

class PostalCodeApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createPostalCode ( Long accountId, String code, Double latitude, Double longitude, String stateCode, String city, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/postalCode/create"

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
        if (code == null) {
            throw new RuntimeException("missing required params code")
        }
        // verify required params are set
        if (latitude == null) {
            throw new RuntimeException("missing required params latitude")
        }
        // verify required params are set
        if (longitude == null) {
            throw new RuntimeException("missing required params longitude")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (code != null) {
            queryParams.put("code", code)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (stateCode != null) {
            queryParams.put("stateCode", stateCode)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PostalCodeResponse.class )

    }

    def deletePostalCode ( Long accountId, Long postalCodeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/postalCode/delete"

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
        if (postalCodeId == null) {
            throw new RuntimeException("missing required params postalCodeId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (postalCodeId != null) {
            queryParams.put("postalCodeId", postalCodeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    SirqulResponse.class )

    }

    def getPostalCode ( Long postalCodeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/postalCode/get"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (postalCodeId == null) {
            throw new RuntimeException("missing required params postalCodeId")
        }

        if (postalCodeId != null) {
            queryParams.put("postalCodeId", postalCodeId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    PostalCodeResponse.class )

    }

    def getPostalCodes ( String sortField, Boolean descending, Double latitude, Double longitude, String keyword, Double miles, Integer start, Integer limit, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/postalCode/search"

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

        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (keyword != null) {
            queryParams.put("keyword", keyword)
        }
        if (miles != null) {
            queryParams.put("miles", miles)
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
                    PostalCodeResponse.class )

    }

    def updatePostalCode ( Long accountId, Long postalCodeId, String code, Double latitude, Double longitude, String stateCode, String city, Boolean active, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/postalCode/update"

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
        if (postalCodeId == null) {
            throw new RuntimeException("missing required params postalCodeId")
        }

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (postalCodeId != null) {
            queryParams.put("postalCodeId", postalCodeId)
        }
        if (code != null) {
            queryParams.put("code", code)
        }
        if (latitude != null) {
            queryParams.put("latitude", latitude)
        }
        if (longitude != null) {
            queryParams.put("longitude", longitude)
        }
        if (stateCode != null) {
            queryParams.put("stateCode", stateCode)
        }
        if (city != null) {
            queryParams.put("city", city)
        }
        if (active != null) {
            queryParams.put("active", active)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    PostalCodeResponse.class )

    }

}
