#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"


// Get Retailer
//
// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
//
sirqul_response_t*
RetailerV2API_getRetaokiler(apiClient_t *apiClient, double version, long retailerId, int *activeOnly, char *keyword, char *sortField, long start, long limit);


