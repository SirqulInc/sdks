#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/import_statuses.h"
#include "../model/orders.h"
#include "../model/shipment_order.h"


// Get Optimization Result
//
// Get the results of the import batch.
//
list_t*_t*
OptimizeAPI_getOptimizationResult(apiClient_t *apiClient, char *batchID, int *start, int *limit);


// Request Optimization
//
// Request and upload of shipment orders and create ShipmentImportBatch for optimization.
//
import_statuses_t*
OptimizeAPI_requestOptimization(apiClient_t *apiClient, orders_t *body);


