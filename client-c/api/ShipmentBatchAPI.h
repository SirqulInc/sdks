#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/shipment_batch.h"
#include "../model/shipment_import_status.h"


// Create Shipment Batch
//
// Create a new shipment batch
//
shipment_batch_t*
ShipmentBatchAPI_createShipmentBatch(apiClient_t *apiClient, shipment_batch_t *body);


// Delete Shipment Batch
//
// Search for shipment batches
//
void
ShipmentBatchAPI_deleteShipmentBatch(apiClient_t *apiClient, long batchId);


// Get Shipment Batch
//
// Get an existing shipment batch
//
shipment_batch_t*
ShipmentBatchAPI_getShipmentBatch(apiClient_t *apiClient, long batchId);


// Get Shipment Batch Status
//
// Get the import status list of the import shipment batch
//
list_t*
ShipmentBatchAPI_getShipmentBatchStatus(apiClient_t *apiClient, long batchId, long accountId, char *sortField, int *descending, int *start, int *limit, int *valid, int *started, int *completed, int *hasShipment, int *hasRoute, char *keyword);


// Search Shipment Batch
//
// Search for shipment batches
//
list_t*
ShipmentBatchAPI_searchShipmentBatch(apiClient_t *apiClient, long hubId, char *sortField, int *descending, int *start, int *limit);


