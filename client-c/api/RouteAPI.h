#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/direction.h"
#include "../model/route.h"
#include "../model/shipment.h"
#include "../model/stop.h"


// Approve Route
//
// Approve a route
//
route_t*
RouteAPI_approveRoute(apiClient_t *apiClient, long routeId);


// Copy Route
//
// Make an copy of the given route with optional overriding properties
//
route_t*
RouteAPI_copyRoute(apiClient_t *apiClient, long routeId, route_t *body);


// Create Route
//
// Create new route
//
route_t*
RouteAPI_createRoute(apiClient_t *apiClient, route_t *body);


// Update Route Directions
//
// Regenerate the directions of a route
//
list_t*
RouteAPI_createRouteDirections(apiClient_t *apiClient, long routeId);


// Create Route Polyline
//
// Update the polyline of the requested route
//
route_t*
RouteAPI_createRoutePolyline(apiClient_t *apiClient, long routeId);


// Delete Route
//
// Delete an existing route
//
void
RouteAPI_deleteRoute(apiClient_t *apiClient, long routeId);


// Disapprove Route
//
// Disapprove a route
//
route_t*
RouteAPI_disapproveRoute(apiClient_t *apiClient, long routeId);


// Get Route
//
// Get an existing route
//
route_t*
RouteAPI_getRoute(apiClient_t *apiClient, long routeId, int *showInheritedProperties);


// Get Route Directions
//
// Get the directions of a route
//
list_t*
RouteAPI_getRouteDirections(apiClient_t *apiClient, long routeId);


// Get Route Shipments
//
// Get the shipments on the requested route
//
list_t*
RouteAPI_getRouteShipments(apiClient_t *apiClient, long routeId);


// Get Route Stop
//
// Get the specific stop on a route
//
stop_t*
RouteAPI_getRouteStop(apiClient_t *apiClient, long routeId, long stopId);


// Get Route Stops
//
// The stops of the route requested
//
list_t*
RouteAPI_getRouteStops(apiClient_t *apiClient, long routeId, int *confirmedOnly);


// Get Shipments At Stop
//
// Get the list of shipments on the requested route at a stop
//
list_t*
RouteAPI_getShipmentsAtStop(apiClient_t *apiClient, long routeId, long stopId);


// Optimize Route
//
// Optimize a route. The optimization method based on how the server is configured.
//
void
RouteAPI_optimizeRoute(apiClient_t *apiClient, long routeId);


// Delete Stop
//
// Delete a stop on a route
//
void
RouteAPI_removeStop(apiClient_t *apiClient, long routeId, long stopId);


// Reorder Route Stops
//
// Reordering the stops on the route with and update route distance, time, direction, and polyline
//
list_t*
RouteAPI_reorderRouteStopsPatch(apiClient_t *apiClient, long routeId, list_t *body);


// Reorder Route Stops
//
// Reordering the stops on the route with and update route distance, time, direction, and polyline
//
list_t*
RouteAPI_reorderRouteStopsPost(apiClient_t *apiClient, long routeId, list_t *body);


// Search Routes
//
// Search for routes.
//
list_t*
RouteAPI_searchRoutes(apiClient_t *apiClient, char *sortField, int *descending, int *start, int *limit, int *activeOnly, int *includesEmpty, int *rootOnly, int *showInheritedProperties, long hubId, long programId, long scheduledStart, long scheduledEnd, long updatedStart, long updatedEnd, int *featured, int *seatCount, int *approved, int *started, int *completed, int *valid, long parentId);


// Set Driver
//
// Update the driver of the route.
//
void
RouteAPI_setDriver(apiClient_t *apiClient, long id, long driverId);


// Update Route
//
// Update an existing route
//
route_t*
RouteAPI_updateRoute(apiClient_t *apiClient, long routeId, route_t *body);


// Update Route Stop
//
// Update a stop on a specified route
//
void
RouteAPI_updateRouteStop(apiClient_t *apiClient, long routeId, long stopId, stop_t *body);


