#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/stop.h"


// Get Stop
//
// Get an existing stop
//
stop_t*
StopAPI_getStop(apiClient_t *apiClient, double version, long id);


// Update Stop
//
// Update an existing stop
//
stop_t*
StopAPI_updateStop(apiClient_t *apiClient, double version, long id, stop_t *body);


