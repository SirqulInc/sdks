#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/activity_response.h"
#include "../model/entity_reference.h"


// Create an entity reference.
//
// Creates a reference for an entity for syncing data between servers.
//
activity_response_t*
ActivityAPI_createEntityReference(apiClient_t *apiClient, double version, entity_reference_t *body);


