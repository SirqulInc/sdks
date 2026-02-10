#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/vehicle.h"


// Create Vehicle
//
// Create new vehicle
//
vehicle_t*
VehicleAPI_createVehicle(apiClient_t *apiClient, double version, char *vehicle, vehicle_t *body);


// Delete Vehicle
//
// Delete an existing vehicle
//
void
VehicleAPI_deleteVehicle(apiClient_t *apiClient, double version, long id);


// Get Vehicle
//
// Get an existing vehicle
//
vehicle_t*
VehicleAPI_getVehicle(apiClient_t *apiClient, double version, long id);


// Search Vehicle
//
// Search for vehicles
//
list_t*
VehicleAPI_searchVehicle(apiClient_t *apiClient, double version, long hubId, char *sortField, int *descending, int *start, int *limit, int *activeOnly, char *keyword);


// Update Vehicle
//
// Update an existing vehicle
//
vehicle_t*
VehicleAPI_updateVehicle(apiClient_t *apiClient, double version, long id, char *vehicle, vehicle_t *body);


