#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/location.h"
#include "../model/sirqul_response.h"


// Create new location
//
// Create a new location from a real object location.
//
sirqul_response_t*
LocationApiV2API_createLocationV2(apiClient_t *apiClient, location_t *body);


// Update an existing location
//
// Update an existing location
//
sirqul_response_t*
LocationApiV2API_updateLocationV2(apiClient_t *apiClient, long id, location_t *body);


