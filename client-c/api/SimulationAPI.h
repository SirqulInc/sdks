#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"


// Routing Simulation
//
// Simulates routing requests.
//
sirqul_response_t*
SimulationAPI_simulation(apiClient_t *apiClient, double version, char *data, int *realTime);


