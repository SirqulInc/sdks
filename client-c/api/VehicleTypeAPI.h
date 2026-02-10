#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/vehicle_type.h"


// Create Vehicle Type
//
// Create a new vehicle type
//
vehicle_type_t*
VehicleTypeAPI_createVehicleType(apiClient_t *apiClient, double version, char *vehicleType, vehicle_type_t *body);


// Delete Vehicle Type
//
// Delete a vehicle type
//
void
VehicleTypeAPI_deleteVehicleType(apiClient_t *apiClient, double version, long vehicleTypeId);


// Get Vehicle Type
//
// Get a vehicle type
//
vehicle_type_t*
VehicleTypeAPI_getVehicleType(apiClient_t *apiClient, double version, long vehicleTypeId);


// Search Vehicle Type
//
// Search for types of vehicles
//
list_t*
VehicleTypeAPI_searchVehicleTypes(apiClient_t *apiClient, double version, char *sortField, int *descending, int *start, int *limit, int *activeOnly, long retailerId, long hubId);


// Update Vehicle Type
//
// Update a vehicle type
//
vehicle_type_t*
VehicleTypeAPI_updateVehicleType(apiClient_t *apiClient, double version, long vehicleTypeId, char *vehicleType, vehicle_type_t *body);


