package org.openapitools.api;

import org.openapitools.api.ApiUtils
import java.math.BigDecimal
import org.openapitools.model.Direction
import org.openapitools.model.Route
import org.openapitools.model.Shipment
import org.openapitools.model.Stop

class RouteApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def approveRoute ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/approve"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Route.class )

    }

    def copyRoute ( BigDecimal version, Long routeId, Route body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/copy"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Route.class )

    }

    def createRoute ( BigDecimal version, Route body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route"

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
                    Route.class )

    }

    def createRouteDirections ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/directions"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "array",
                    Direction.class )

    }

    def createRoutePolyline ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/polyline"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Route.class )

    }

    def deleteRoute ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def disapproveRoute ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/disapprove"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Route.class )

    }

    def getRoute ( BigDecimal version, Long routeId, Boolean showInheritedProperties, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }
        // verify required params are set
        if (showInheritedProperties == null) {
            throw new RuntimeException("missing required params showInheritedProperties")
        }

        if (showInheritedProperties != null) {
            queryParams.put("showInheritedProperties", showInheritedProperties)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Route.class )

    }

    def getRouteDirections ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/directions"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Direction.class )

    }

    def getRouteShipments ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/shipments"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Shipment.class )

    }

    def getRouteStop ( BigDecimal version, Long routeId, Long stopId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/stop/${stopId}"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }
        // verify required params are set
        if (stopId == null) {
            throw new RuntimeException("missing required params stopId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Stop.class )

    }

    def getRouteStops ( BigDecimal version, Long routeId, Boolean confirmedOnly, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/stops"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }
        // verify required params are set
        if (confirmedOnly == null) {
            throw new RuntimeException("missing required params confirmedOnly")
        }

        if (confirmedOnly != null) {
            queryParams.put("confirmedOnly", confirmedOnly)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Stop.class )

    }

    def getShipmentsAtStop ( BigDecimal version, Long routeId, Long stopId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/stop/${stopId}/shipments"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }
        // verify required params are set
        if (stopId == null) {
            throw new RuntimeException("missing required params stopId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Shipment.class )

    }

    def optimizeRoute ( BigDecimal version, Long routeId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/optimize"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def removeStop ( BigDecimal version, Long routeId, Long stopId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/stop/${stopId}"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }
        // verify required params are set
        if (stopId == null) {
            throw new RuntimeException("missing required params stopId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def reorderRouteStopsPatch ( BigDecimal version, Long routeId, List<Stop> body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/stops/reorder"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PATCH", "array",
                    Stop.class )

    }

    def reorderRouteStopsPost ( BigDecimal version, Long routeId, List<Stop> body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/stops/reorder"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    Stop.class )

    }

    def searchRoutes ( BigDecimal version, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Boolean includesEmpty, Boolean rootOnly, Boolean showInheritedProperties, Long hubId, Long programId, Long scheduledStart, Long scheduledEnd, Long updatedStart, Long updatedEnd, Boolean featured, Integer seatCount, Boolean approved, Boolean started, Boolean completed, Boolean valid, Long parentId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route"

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
        // verify required params are set
        if (includesEmpty == null) {
            throw new RuntimeException("missing required params includesEmpty")
        }
        // verify required params are set
        if (rootOnly == null) {
            throw new RuntimeException("missing required params rootOnly")
        }
        // verify required params are set
        if (showInheritedProperties == null) {
            throw new RuntimeException("missing required params showInheritedProperties")
        }

        if (hubId != null) {
            queryParams.put("hubId", hubId)
        }
        if (programId != null) {
            queryParams.put("programId", programId)
        }
        if (scheduledStart != null) {
            queryParams.put("scheduledStart", scheduledStart)
        }
        if (scheduledEnd != null) {
            queryParams.put("scheduledEnd", scheduledEnd)
        }
        if (updatedStart != null) {
            queryParams.put("updatedStart", updatedStart)
        }
        if (updatedEnd != null) {
            queryParams.put("updatedEnd", updatedEnd)
        }
        if (featured != null) {
            queryParams.put("featured", featured)
        }
        if (seatCount != null) {
            queryParams.put("seatCount", seatCount)
        }
        if (approved != null) {
            queryParams.put("approved", approved)
        }
        if (started != null) {
            queryParams.put("started", started)
        }
        if (completed != null) {
            queryParams.put("completed", completed)
        }
        if (valid != null) {
            queryParams.put("valid", valid)
        }
        if (parentId != null) {
            queryParams.put("parentId", parentId)
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
        if (includesEmpty != null) {
            queryParams.put("includesEmpty", includesEmpty)
        }
        if (rootOnly != null) {
            queryParams.put("rootOnly", rootOnly)
        }
        if (showInheritedProperties != null) {
            queryParams.put("showInheritedProperties", showInheritedProperties)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "array",
                    Route.class )

    }

    def setDriver ( BigDecimal version, Long id, Long driverId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${id}/driver/${driverId}"

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
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }
        // verify required params are set
        if (driverId == null) {
            throw new RuntimeException("missing required params driverId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def updateRoute ( BigDecimal version, Long routeId, Route body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Route.class )

    }

    def updateRouteStop ( BigDecimal version, Long routeId, Long stopId, Stop body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/${version}/route/${routeId}/stop/${stopId}"

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
        if (routeId == null) {
            throw new RuntimeException("missing required params routeId")
        }
        // verify required params are set
        if (stopId == null) {
            throw new RuntimeException("missing required params stopId")
        }



        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    null )

    }

}
