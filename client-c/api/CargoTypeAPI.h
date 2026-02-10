#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cargo_type.h"


// Create Cargo Type
//
// Create new cargo type
//
cargo_type_t*
CargoTypeAPI_createCargoType(apiClient_t *apiClient, double version, cargo_type_t *body);


// Delete Cargo Type
//
// Delete a type of cargo
//
void
CargoTypeAPI_deleteCargoType(apiClient_t *apiClient, double version, long cargoTypeId);


// Get Cargo Type
//
// Get an existing cargo type
//
cargo_type_t*
CargoTypeAPI_getCargoType(apiClient_t *apiClient, double version, long cargoTypeId);


// Search Cargo Type
//
// Search for types of cargo
//
list_t*
CargoTypeAPI_searchCargoTypes(apiClient_t *apiClient, double version, char *sortField, int *descending, int *start, int *limit, int *activeOnly, long retailerId, long hubId);


// Update Cargo Type
//
// Update an existing cargo type
//
cargo_type_t*
CargoTypeAPI_updateCargoType(apiClient_t *apiClient, double version, long cargoTypeId, cargo_type_t *body);


