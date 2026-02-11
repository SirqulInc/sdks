#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/pathing_response.h"

// Enum UNITS for PathingAPI_computePath
typedef enum  { sirqul_iot_platform_computePath_UNITS_NULL = 0, sirqul_iot_platform_computePath_UNITS_METRIC, sirqul_iot_platform_computePath_UNITS_IMPERIAL } sirqul_iot_platform_computePath_units_e;


// Calculate Path
//
// Calculates the shortest path from point to point on a grid
//
pathing_response_t*
PathingAPI_computePath(apiClient_t *apiClient, char *data, sirqul_iot_platform_computePath_units_e units, int *reducePath, int *directions);


