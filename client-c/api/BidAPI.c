#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "BidAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Bid
//
// Creates a bid on a biddable object
//
bid_response_t*
BidAPI_createBid(apiClient_t *apiClient, char *biddableType, long biddableId, double amountPerView, double amountPerAction, double budgetAmount, char *budgetSchedule, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/bid/create");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

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
    char *keyQuery_biddableType = NULL;
    char * valueQuery_biddableType = NULL;
    keyValuePair_t *keyPairQuery_biddableType = 0;
    if (biddableType)
    {
        keyQuery_biddableType = strdup("biddableType");
        valueQuery_biddableType = strdup((biddableType));
        keyPairQuery_biddableType = keyValuePair_create(keyQuery_biddableType, valueQuery_biddableType);
        list_addElement(localVarQueryParameters,keyPairQuery_biddableType);
    }

    // query parameters
    char *keyQuery_biddableId = NULL;
    char * valueQuery_biddableId ;
    keyValuePair_t *keyPairQuery_biddableId = 0;
    {
        keyQuery_biddableId = strdup("biddableId");
        valueQuery_biddableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_biddableId, MAX_NUMBER_LENGTH_LONG, "%d", biddableId);
        keyPairQuery_biddableId = keyValuePair_create(keyQuery_biddableId, valueQuery_biddableId);
        list_addElement(localVarQueryParameters,keyPairQuery_biddableId);
    }

    // query parameters
    char *keyQuery_amountPerView = NULL;
    char * valueQuery_amountPerView = NULL;
    keyValuePair_t *keyPairQuery_amountPerView = 0;
    {
        keyQuery_amountPerView = strdup("amountPerView");
        int s = snprintf(NULL, 0, "%.16e", amountPerView);
        if (s >= 0)
        {
            valueQuery_amountPerView = calloc(1,s+1);
            snprintf(valueQuery_amountPerView, s+1, "%.16e", amountPerView);
        }
        keyPairQuery_amountPerView = keyValuePair_create(keyQuery_amountPerView, valueQuery_amountPerView);
        list_addElement(localVarQueryParameters,keyPairQuery_amountPerView);
    }

    // query parameters
    char *keyQuery_amountPerAction = NULL;
    char * valueQuery_amountPerAction = NULL;
    keyValuePair_t *keyPairQuery_amountPerAction = 0;
    {
        keyQuery_amountPerAction = strdup("amountPerAction");
        int s = snprintf(NULL, 0, "%.16e", amountPerAction);
        if (s >= 0)
        {
            valueQuery_amountPerAction = calloc(1,s+1);
            snprintf(valueQuery_amountPerAction, s+1, "%.16e", amountPerAction);
        }
        keyPairQuery_amountPerAction = keyValuePair_create(keyQuery_amountPerAction, valueQuery_amountPerAction);
        list_addElement(localVarQueryParameters,keyPairQuery_amountPerAction);
    }

    // query parameters
    char *keyQuery_budgetAmount = NULL;
    char * valueQuery_budgetAmount = NULL;
    keyValuePair_t *keyPairQuery_budgetAmount = 0;
    {
        keyQuery_budgetAmount = strdup("budgetAmount");
        int s = snprintf(NULL, 0, "%.16e", budgetAmount);
        if (s >= 0)
        {
            valueQuery_budgetAmount = calloc(1,s+1);
            snprintf(valueQuery_budgetAmount, s+1, "%.16e", budgetAmount);
        }
        keyPairQuery_budgetAmount = keyValuePair_create(keyQuery_budgetAmount, valueQuery_budgetAmount);
        list_addElement(localVarQueryParameters,keyPairQuery_budgetAmount);
    }

    // query parameters
    char *keyQuery_budgetSchedule = NULL;
    char * valueQuery_budgetSchedule = NULL;
    keyValuePair_t *keyPairQuery_budgetSchedule = 0;
    if (budgetSchedule)
    {
        keyQuery_budgetSchedule = strdup("budgetSchedule");
        valueQuery_budgetSchedule = strdup((budgetSchedule));
        keyPairQuery_budgetSchedule = keyValuePair_create(keyQuery_budgetSchedule, valueQuery_budgetSchedule);
        list_addElement(localVarQueryParameters,keyPairQuery_budgetSchedule);
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
    bid_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BidAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = bid_response_parseFromJSON(BidAPIlocalVarJSON);
        cJSON_Delete(BidAPIlocalVarJSON);
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
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_biddableType){
        free(keyQuery_biddableType);
        keyQuery_biddableType = NULL;
    }
    if(valueQuery_biddableType){
        free(valueQuery_biddableType);
        valueQuery_biddableType = NULL;
    }
    if(keyPairQuery_biddableType){
        keyValuePair_free(keyPairQuery_biddableType);
        keyPairQuery_biddableType = NULL;
    }
    if(keyQuery_biddableId){
        free(keyQuery_biddableId);
        keyQuery_biddableId = NULL;
    }
    if(keyPairQuery_biddableId){
        keyValuePair_free(keyPairQuery_biddableId);
        keyPairQuery_biddableId = NULL;
    }
    if(keyQuery_amountPerView){
        free(keyQuery_amountPerView);
        keyQuery_amountPerView = NULL;
    }
    if(keyPairQuery_amountPerView){
        keyValuePair_free(keyPairQuery_amountPerView);
        keyPairQuery_amountPerView = NULL;
    }
    if(keyQuery_amountPerAction){
        free(keyQuery_amountPerAction);
        keyQuery_amountPerAction = NULL;
    }
    if(keyPairQuery_amountPerAction){
        keyValuePair_free(keyPairQuery_amountPerAction);
        keyPairQuery_amountPerAction = NULL;
    }
    if(keyQuery_budgetAmount){
        free(keyQuery_budgetAmount);
        keyQuery_budgetAmount = NULL;
    }
    if(keyPairQuery_budgetAmount){
        keyValuePair_free(keyPairQuery_budgetAmount);
        keyPairQuery_budgetAmount = NULL;
    }
    if(keyQuery_budgetSchedule){
        free(keyQuery_budgetSchedule);
        keyQuery_budgetSchedule = NULL;
    }
    if(valueQuery_budgetSchedule){
        free(valueQuery_budgetSchedule);
        valueQuery_budgetSchedule = NULL;
    }
    if(keyPairQuery_budgetSchedule){
        keyValuePair_free(keyPairQuery_budgetSchedule);
        keyPairQuery_budgetSchedule = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Bid
//
// Deleted a bid on a biddable object
//
sirqul_response_t*
BidAPI_deleteBid(apiClient_t *apiClient, long bidId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/bid/delete");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

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
    char *keyQuery_bidId = NULL;
    char * valueQuery_bidId ;
    keyValuePair_t *keyPairQuery_bidId = 0;
    {
        keyQuery_bidId = strdup("bidId");
        valueQuery_bidId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_bidId, MAX_NUMBER_LENGTH_LONG, "%d", bidId);
        keyPairQuery_bidId = keyValuePair_create(keyQuery_bidId, valueQuery_bidId);
        list_addElement(localVarQueryParameters,keyPairQuery_bidId);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BidAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(BidAPIlocalVarJSON);
        cJSON_Delete(BidAPIlocalVarJSON);
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
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_bidId){
        free(keyQuery_bidId);
        keyQuery_bidId = NULL;
    }
    if(keyPairQuery_bidId){
        keyValuePair_free(keyPairQuery_bidId);
        keyPairQuery_bidId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Bid
//
// Get the bid details of a biddable object
//
bid_response_t*
BidAPI_getBid(apiClient_t *apiClient, long bidId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/bid/get");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

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
    char *keyQuery_bidId = NULL;
    char * valueQuery_bidId ;
    keyValuePair_t *keyPairQuery_bidId = 0;
    {
        keyQuery_bidId = strdup("bidId");
        valueQuery_bidId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_bidId, MAX_NUMBER_LENGTH_LONG, "%d", bidId);
        keyPairQuery_bidId = keyValuePair_create(keyQuery_bidId, valueQuery_bidId);
        list_addElement(localVarQueryParameters,keyPairQuery_bidId);
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
    //nonprimitive not container
    bid_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BidAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = bid_response_parseFromJSON(BidAPIlocalVarJSON);
        cJSON_Delete(BidAPIlocalVarJSON);
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
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_bidId){
        free(keyQuery_bidId);
        keyQuery_bidId = NULL;
    }
    if(keyPairQuery_bidId){
        keyValuePair_free(keyPairQuery_bidId);
        keyPairQuery_bidId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Bid
//
// Updates a bid on a biddable object
//
bid_response_t*
BidAPI_updateBid(apiClient_t *apiClient, long bidId, char *deviceId, long accountId, double amountPerView, double amountPerAction, double budgetAmount, char *budgetSchedule)
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
    char *localVarPath = strdup("/bid/update");





    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

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
    char *keyQuery_bidId = NULL;
    char * valueQuery_bidId ;
    keyValuePair_t *keyPairQuery_bidId = 0;
    {
        keyQuery_bidId = strdup("bidId");
        valueQuery_bidId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_bidId, MAX_NUMBER_LENGTH_LONG, "%d", bidId);
        keyPairQuery_bidId = keyValuePair_create(keyQuery_bidId, valueQuery_bidId);
        list_addElement(localVarQueryParameters,keyPairQuery_bidId);
    }

    // query parameters
    char *keyQuery_amountPerView = NULL;
    char * valueQuery_amountPerView = NULL;
    keyValuePair_t *keyPairQuery_amountPerView = 0;
    {
        keyQuery_amountPerView = strdup("amountPerView");
        int s = snprintf(NULL, 0, "%.16e", amountPerView);
        if (s >= 0)
        {
            valueQuery_amountPerView = calloc(1,s+1);
            snprintf(valueQuery_amountPerView, s+1, "%.16e", amountPerView);
        }
        keyPairQuery_amountPerView = keyValuePair_create(keyQuery_amountPerView, valueQuery_amountPerView);
        list_addElement(localVarQueryParameters,keyPairQuery_amountPerView);
    }

    // query parameters
    char *keyQuery_amountPerAction = NULL;
    char * valueQuery_amountPerAction = NULL;
    keyValuePair_t *keyPairQuery_amountPerAction = 0;
    {
        keyQuery_amountPerAction = strdup("amountPerAction");
        int s = snprintf(NULL, 0, "%.16e", amountPerAction);
        if (s >= 0)
        {
            valueQuery_amountPerAction = calloc(1,s+1);
            snprintf(valueQuery_amountPerAction, s+1, "%.16e", amountPerAction);
        }
        keyPairQuery_amountPerAction = keyValuePair_create(keyQuery_amountPerAction, valueQuery_amountPerAction);
        list_addElement(localVarQueryParameters,keyPairQuery_amountPerAction);
    }

    // query parameters
    char *keyQuery_budgetAmount = NULL;
    char * valueQuery_budgetAmount = NULL;
    keyValuePair_t *keyPairQuery_budgetAmount = 0;
    {
        keyQuery_budgetAmount = strdup("budgetAmount");
        int s = snprintf(NULL, 0, "%.16e", budgetAmount);
        if (s >= 0)
        {
            valueQuery_budgetAmount = calloc(1,s+1);
            snprintf(valueQuery_budgetAmount, s+1, "%.16e", budgetAmount);
        }
        keyPairQuery_budgetAmount = keyValuePair_create(keyQuery_budgetAmount, valueQuery_budgetAmount);
        list_addElement(localVarQueryParameters,keyPairQuery_budgetAmount);
    }

    // query parameters
    char *keyQuery_budgetSchedule = NULL;
    char * valueQuery_budgetSchedule = NULL;
    keyValuePair_t *keyPairQuery_budgetSchedule = 0;
    if (budgetSchedule)
    {
        keyQuery_budgetSchedule = strdup("budgetSchedule");
        valueQuery_budgetSchedule = strdup((budgetSchedule));
        keyPairQuery_budgetSchedule = keyValuePair_create(keyQuery_budgetSchedule, valueQuery_budgetSchedule);
        list_addElement(localVarQueryParameters,keyPairQuery_budgetSchedule);
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
    bid_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BidAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = bid_response_parseFromJSON(BidAPIlocalVarJSON);
        cJSON_Delete(BidAPIlocalVarJSON);
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
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_bidId){
        free(keyQuery_bidId);
        keyQuery_bidId = NULL;
    }
    if(keyPairQuery_bidId){
        keyValuePair_free(keyPairQuery_bidId);
        keyPairQuery_bidId = NULL;
    }
    if(keyQuery_amountPerView){
        free(keyQuery_amountPerView);
        keyQuery_amountPerView = NULL;
    }
    if(keyPairQuery_amountPerView){
        keyValuePair_free(keyPairQuery_amountPerView);
        keyPairQuery_amountPerView = NULL;
    }
    if(keyQuery_amountPerAction){
        free(keyQuery_amountPerAction);
        keyQuery_amountPerAction = NULL;
    }
    if(keyPairQuery_amountPerAction){
        keyValuePair_free(keyPairQuery_amountPerAction);
        keyPairQuery_amountPerAction = NULL;
    }
    if(keyQuery_budgetAmount){
        free(keyQuery_budgetAmount);
        keyQuery_budgetAmount = NULL;
    }
    if(keyPairQuery_budgetAmount){
        keyValuePair_free(keyPairQuery_budgetAmount);
        keyPairQuery_budgetAmount = NULL;
    }
    if(keyQuery_budgetSchedule){
        free(keyQuery_budgetSchedule);
        keyQuery_budgetSchedule = NULL;
    }
    if(valueQuery_budgetSchedule){
        free(valueQuery_budgetSchedule);
        valueQuery_budgetSchedule = NULL;
    }
    if(keyPairQuery_budgetSchedule){
        keyValuePair_free(keyPairQuery_budgetSchedule);
        keyPairQuery_budgetSchedule = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

