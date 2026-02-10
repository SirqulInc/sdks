#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ShipmentBatchAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Shipment Batch
//
// Create a new shipment batch
//
shipment_batch_t*
ShipmentBatchAPI_createShipmentBatch(apiClient_t *apiClient, double version, shipment_batch_t *body)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/shipment/batch");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = shipment_batch_convertToJSON(body);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_body);
        localVarBodyLength = strlen(localVarBodyParameters);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    shipment_batch_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ShipmentBatchAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = shipment_batch_parseFromJSON(ShipmentBatchAPIlocalVarJSON);
        cJSON_Delete(ShipmentBatchAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Shipment Batch
//
// Search for shipment batches
//
void
ShipmentBatchAPI_deleteShipmentBatch(apiClient_t *apiClient, double version, long batchId)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/shipment/batch/{batchId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(batchId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_batchId =  + sizeof(batchId)+3 + sizeof("{ batchId }") - 1;
    if(batchId == 0){
        goto end;
    }
    char* localVarToReplace_batchId = malloc(sizeOfPathParams_batchId);
    snprintf(localVarToReplace_batchId, sizeOfPathParams_batchId, "{%s}", "batchId");

    char localVarBuff_batchId[256];
    snprintf(localVarBuff_batchId, sizeof localVarBuff_batchId, "%ld", batchId);

    localVarPath = strReplace(localVarPath, localVarToReplace_batchId, localVarBuff_batchId);



    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "DELETE");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 0) {
    //    printf("%s\n","successful operation");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    
    
    free(localVarPath);
    free(localVarToReplace_version);
    free(localVarToReplace_batchId);

}

// Get Shipment Batch
//
// Get an existing shipment batch
//
shipment_batch_t*
ShipmentBatchAPI_getShipmentBatch(apiClient_t *apiClient, double version, long batchId)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/shipment/batch/{batchId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(batchId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_batchId =  + sizeof(batchId)+3 + sizeof("{ batchId }") - 1;
    if(batchId == 0){
        goto end;
    }
    char* localVarToReplace_batchId = malloc(sizeOfPathParams_batchId);
    snprintf(localVarToReplace_batchId, sizeOfPathParams_batchId, "{%s}", "batchId");

    char localVarBuff_batchId[256];
    snprintf(localVarBuff_batchId, sizeof localVarBuff_batchId, "%ld", batchId);

    localVarPath = strReplace(localVarPath, localVarToReplace_batchId, localVarBuff_batchId);



    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    shipment_batch_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ShipmentBatchAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = shipment_batch_parseFromJSON(ShipmentBatchAPIlocalVarJSON);
        cJSON_Delete(ShipmentBatchAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    free(localVarToReplace_batchId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Shipment Batch Status
//
// Get the import status list of the import shipment batch
//
list_t*
ShipmentBatchAPI_getShipmentBatchStatus(apiClient_t *apiClient, double version, long batchId, long accountId, char *sortField, int *descending, int *start, int *limit, int *valid, int *started, int *completed, int *hasShipment, int *hasRoute, char *keyword)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/shipment/batch/{batchId}/status");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(batchId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_batchId =  + sizeof(batchId)+3 + sizeof("{ batchId }") - 1;
    if(batchId == 0){
        goto end;
    }
    char* localVarToReplace_batchId = malloc(sizeOfPathParams_batchId);
    snprintf(localVarToReplace_batchId, sizeOfPathParams_batchId, "{%s}", "batchId");

    char localVarBuff_batchId[256];
    snprintf(localVarBuff_batchId, sizeof localVarBuff_batchId, "%ld", batchId);

    localVarPath = strReplace(localVarPath, localVarToReplace_batchId, localVarBuff_batchId);




    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_valid = NULL;
    char * valueQuery_valid = NULL;
    keyValuePair_t *keyPairQuery_valid = 0;
    if (valid)
    {
        keyQuery_valid = strdup("valid");
        valueQuery_valid = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_valid, MAX_NUMBER_LENGTH, "%d", *valid);
        keyPairQuery_valid = keyValuePair_create(keyQuery_valid, valueQuery_valid);
        list_addElement(localVarQueryParameters,keyPairQuery_valid);
    }

    // query parameters
    char *keyQuery_started = NULL;
    char * valueQuery_started = NULL;
    keyValuePair_t *keyPairQuery_started = 0;
    if (started)
    {
        keyQuery_started = strdup("started");
        valueQuery_started = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_started, MAX_NUMBER_LENGTH, "%d", *started);
        keyPairQuery_started = keyValuePair_create(keyQuery_started, valueQuery_started);
        list_addElement(localVarQueryParameters,keyPairQuery_started);
    }

    // query parameters
    char *keyQuery_completed = NULL;
    char * valueQuery_completed = NULL;
    keyValuePair_t *keyPairQuery_completed = 0;
    if (completed)
    {
        keyQuery_completed = strdup("completed");
        valueQuery_completed = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_completed, MAX_NUMBER_LENGTH, "%d", *completed);
        keyPairQuery_completed = keyValuePair_create(keyQuery_completed, valueQuery_completed);
        list_addElement(localVarQueryParameters,keyPairQuery_completed);
    }

    // query parameters
    char *keyQuery_hasShipment = NULL;
    char * valueQuery_hasShipment = NULL;
    keyValuePair_t *keyPairQuery_hasShipment = 0;
    if (hasShipment)
    {
        keyQuery_hasShipment = strdup("hasShipment");
        valueQuery_hasShipment = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasShipment, MAX_NUMBER_LENGTH, "%d", *hasShipment);
        keyPairQuery_hasShipment = keyValuePair_create(keyQuery_hasShipment, valueQuery_hasShipment);
        list_addElement(localVarQueryParameters,keyPairQuery_hasShipment);
    }

    // query parameters
    char *keyQuery_hasRoute = NULL;
    char * valueQuery_hasRoute = NULL;
    keyValuePair_t *keyPairQuery_hasRoute = 0;
    if (hasRoute)
    {
        keyQuery_hasRoute = strdup("hasRoute");
        valueQuery_hasRoute = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasRoute, MAX_NUMBER_LENGTH, "%d", *hasRoute);
        keyPairQuery_hasRoute = keyValuePair_create(keyQuery_hasRoute, valueQuery_hasRoute);
        list_addElement(localVarQueryParameters,keyPairQuery_hasRoute);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ShipmentBatchAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ShipmentBatchAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ShipmentBatchAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ShipmentBatchAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    free(localVarToReplace_batchId);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_valid){
        free(keyQuery_valid);
        keyQuery_valid = NULL;
    }
    if(valueQuery_valid){
        free(valueQuery_valid);
        valueQuery_valid = NULL;
    }
    if(keyPairQuery_valid){
        keyValuePair_free(keyPairQuery_valid);
        keyPairQuery_valid = NULL;
    }
    if(keyQuery_started){
        free(keyQuery_started);
        keyQuery_started = NULL;
    }
    if(valueQuery_started){
        free(valueQuery_started);
        valueQuery_started = NULL;
    }
    if(keyPairQuery_started){
        keyValuePair_free(keyPairQuery_started);
        keyPairQuery_started = NULL;
    }
    if(keyQuery_completed){
        free(keyQuery_completed);
        keyQuery_completed = NULL;
    }
    if(valueQuery_completed){
        free(valueQuery_completed);
        valueQuery_completed = NULL;
    }
    if(keyPairQuery_completed){
        keyValuePair_free(keyPairQuery_completed);
        keyPairQuery_completed = NULL;
    }
    if(keyQuery_hasShipment){
        free(keyQuery_hasShipment);
        keyQuery_hasShipment = NULL;
    }
    if(valueQuery_hasShipment){
        free(valueQuery_hasShipment);
        valueQuery_hasShipment = NULL;
    }
    if(keyPairQuery_hasShipment){
        keyValuePair_free(keyPairQuery_hasShipment);
        keyPairQuery_hasShipment = NULL;
    }
    if(keyQuery_hasRoute){
        free(keyQuery_hasRoute);
        keyQuery_hasRoute = NULL;
    }
    if(valueQuery_hasRoute){
        free(valueQuery_hasRoute);
        valueQuery_hasRoute = NULL;
    }
    if(keyPairQuery_hasRoute){
        keyValuePair_free(keyPairQuery_hasRoute);
        keyPairQuery_hasRoute = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Shipment Batch
//
// Search for shipment batches
//
list_t*
ShipmentBatchAPI_searchShipmentBatch(apiClient_t *apiClient, double version, long hubId, char *sortField, int *descending, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/shipment/batch");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_hubId = NULL;
    char * valueQuery_hubId ;
    keyValuePair_t *keyPairQuery_hubId = 0;
    {
        keyQuery_hubId = strdup("hubId");
        valueQuery_hubId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_hubId, MAX_NUMBER_LENGTH_LONG, "%d", hubId);
        keyPairQuery_hubId = keyValuePair_create(keyQuery_hubId, valueQuery_hubId);
        list_addElement(localVarQueryParameters,keyPairQuery_hubId);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ShipmentBatchAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ShipmentBatchAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ShipmentBatchAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ShipmentBatchAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_hubId){
        free(keyQuery_hubId);
        keyQuery_hubId = NULL;
    }
    if(keyPairQuery_hubId){
        keyValuePair_free(keyPairQuery_hubId);
        keyPairQuery_hubId = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

