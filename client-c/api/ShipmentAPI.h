#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/shipment.h"


// Cancel Shipment
//
// Remove shipment from route
//
void
ShipmentAPI_cancelShipment(apiClient_t *apiClient, double version, long id);


// Create Shipment
//
// Create new shipment
//
shipment_t*
ShipmentAPI_createShipment(apiClient_t *apiClient, double version, shipment_t *body);


// Delete Shipment
//
// Delete an existing shipment
//
void
ShipmentAPI_deleteShipment(apiClient_t *apiClient, double version, long id);


// Get Shipment
//
// Get an existing shipment
//
shipment_t*
ShipmentAPI_getShipment(apiClient_t *apiClient, double version, long id);


// Search Shipments
//
// Search for shipments
//
list_t*
ShipmentAPI_searchShipments(apiClient_t *apiClient, double version, char *sortField, int *descending, int *start, int *limit, int *activeOnly, long ownerId, long riderId, long routeId);


// Update Shipment
//
// Update an existing shipment
//
shipment_t*
ShipmentAPI_updateShipment(apiClient_t *apiClient, double version, long id, shipment_t *body);


// Uupdate Shipment Status
//
// Update status of an existing shipment
//
void
ShipmentAPI_updateShipmentStatus(apiClient_t *apiClient, double version, long id, list_t* body);


