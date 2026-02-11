#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cell_carrier_response.h"


// Search Carriers
//
// Search on supported mobile telephone carriers that can be used to send SMS notifications via email.
//
list_t*
CarrierAPI_searchCarriers(apiClient_t *apiClient, char *keyword, int *descending, int *start, int *limit, int *activeOnly);


