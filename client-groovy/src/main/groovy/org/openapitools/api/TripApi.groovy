package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Trip

class TripApi {
    String basePath = "https://dev.sirqul.com/api/3.18"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def createTrip ( Trip body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType




        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Trip.class )

    }

    def delete ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}"

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

    def driveTrip ( Long id, Boolean recurrence, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/drive"

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
        if (recurrence == null) {
            throw new RuntimeException("missing required params recurrence")
        }

        if (recurrence != null) {
            queryParams.put("recurrence", recurrence)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Trip.class )

    }

    def flexibleTrip ( Long id, Boolean recurrence, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/flexible"

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
        if (recurrence == null) {
            throw new RuntimeException("missing required params recurrence")
        }

        if (recurrence != null) {
            queryParams.put("recurrence", recurrence)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Trip.class )

    }

    def getTrip ( Long id, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}"

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
                    Trip.class )

    }

    def getTripMatches ( Long id, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Boolean matchedHasRoute, Boolean matchedHasDriver, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/match"

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

        if (matchedHasRoute != null) {
            queryParams.put("matchedHasRoute", matchedHasRoute)
        }
        if (matchedHasDriver != null) {
            queryParams.put("matchedHasDriver", matchedHasDriver)
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
                    Trip.class )

    }

    def processTripMatches ( Long startDate, Long endDate, Long tripId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/match/process"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType


        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (tripId != null) {
            queryParams.put("tripId", tripId)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "array",
                    Trip.class )

    }

    def ride ( Long id, Boolean recurrence, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/ride"

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
        if (recurrence == null) {
            throw new RuntimeException("missing required params recurrence")
        }

        if (recurrence != null) {
            queryParams.put("recurrence", recurrence)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Trip.class )

    }

    def search ( Long accountId, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Long startDate, Long endDate, Boolean hasNotifications, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (hasNotifications != null) {
            queryParams.put("hasNotifications", hasNotifications)
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
                    Trip.class )

    }

    def searchTrips ( Long accountId, String sortField, Boolean descending, Integer start, Integer limit, Boolean activeOnly, Long startDate, Long endDate, Boolean matchedHasRoute, Boolean matchedHasDriver, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/match"

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

        if (accountId != null) {
            queryParams.put("accountId", accountId)
        }
        if (startDate != null) {
            queryParams.put("startDate", startDate)
        }
        if (endDate != null) {
            queryParams.put("endDate", endDate)
        }
        if (matchedHasRoute != null) {
            queryParams.put("matchedHasRoute", matchedHasRoute)
        }
        if (matchedHasDriver != null) {
            queryParams.put("matchedHasDriver", matchedHasDriver)
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
                    Trip.class )

    }

    def updateLocations ( Long id, Trip body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/locations"

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
                    Trip.class )

    }

    def updateRecurrenceLocations ( Long id, Trip body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/locations/recurrence"

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
                    "POST", "array",
                    Trip.class )

    }

    def updateRecurrenceShipments ( Long id, Trip body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/shipments/recurrence"

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
                    "POST", "array",
                    Trip.class )

    }

    def updateShipments ( Long id, Trip body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}/shipments"

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
                    Trip.class )

    }

    def updateTrip ( Long id, Trip body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/${id}"

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
                    Trip.class )

    }

    def updateTripNotifications ( Long id, String notifications, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/trip/notifications"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (id == null) {
            throw new RuntimeException("missing required params id")
        }

        if (id != null) {
            queryParams.put("id", id)
        }
        if (notifications != null) {
            queryParams.put("notifications", notifications)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Trip.class )

    }

}
