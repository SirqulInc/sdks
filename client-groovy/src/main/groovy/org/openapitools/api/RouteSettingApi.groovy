package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.RouteSettings

class RouteSettingApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createRouteSettings ( BigDecimal version, RouteSettings body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/setting"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (version == null) {
            throw new RuntimeException("missing required params version")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    RouteSettings.class )

    }

    def deleteRouteSettings ( BigDecimal version, Long routeSettingsId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/setting/${routeSettingsId}"

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
        if (routeSettingsId == null) {
            throw new RuntimeException("missing required params routeSettingsId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    Object.class )

    }

    def getRouteSettings ( BigDecimal version, Long routeSettingsId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/setting/${routeSettingsId}"

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
        if (routeSettingsId == null) {
            throw new RuntimeException("missing required params routeSettingsId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RouteSettings.class )

    }

    def searchRouteSettings ( BigDecimal version, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Long hubId, Long programId, String keyword, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/setting"

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
        if (programId != null) {
            queryParams.put("programId", programId)
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
                    RouteSettings.class )

    }

    def updateRouteSettings ( BigDecimal version, Long routeSettingsId, RouteSettings body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/setting/${routeSettingsId}"

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
        if (routeSettingsId == null) {
            throw new RuntimeException("missing required params routeSettingsId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    RouteSettings.class )

    }

}
