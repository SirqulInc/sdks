#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "TicketAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Get Ticket Count
//
// Gets the ticket count.
//
count_response_t*
TicketAPI_getTicketCount(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *gameType, char *appKey, char *ticketType)
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
    char *localVarPath = strdup("/api/{version}/ticket/count");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_ticketType = NULL;
    char * valueQuery_ticketType = NULL;
    keyValuePair_t *keyPairQuery_ticketType = 0;
    if (ticketType)
    {
        keyQuery_ticketType = strdup("ticketType");
        valueQuery_ticketType = strdup((ticketType));
        keyPairQuery_ticketType = keyValuePair_create(keyQuery_ticketType, valueQuery_ticketType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketType);
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
    count_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TicketAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = count_response_parseFromJSON(TicketAPIlocalVarJSON);
        cJSON_Delete(TicketAPIlocalVarJSON);
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
    free(localVarToReplace_version);
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
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_ticketType){
        free(keyQuery_ticketType);
        keyQuery_ticketType = NULL;
    }
    if(valueQuery_ticketType){
        free(valueQuery_ticketType);
        valueQuery_ticketType = NULL;
    }
    if(keyPairQuery_ticketType){
        keyValuePair_free(keyPairQuery_ticketType);
        keyPairQuery_ticketType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Ticket List
//
// Gets the list of tickets.
//
ticket_list_response_t*
TicketAPI_getTicketList(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *ticketObjectType, char *actionType, char *ticketIds, char *objectIds, char *receiptTokens, char *gameType, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/ticket/getList");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_ticketObjectType = NULL;
    char * valueQuery_ticketObjectType = NULL;
    keyValuePair_t *keyPairQuery_ticketObjectType = 0;
    if (ticketObjectType)
    {
        keyQuery_ticketObjectType = strdup("ticketObjectType");
        valueQuery_ticketObjectType = strdup((ticketObjectType));
        keyPairQuery_ticketObjectType = keyValuePair_create(keyQuery_ticketObjectType, valueQuery_ticketObjectType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketObjectType);
    }

    // query parameters
    char *keyQuery_actionType = NULL;
    char * valueQuery_actionType = NULL;
    keyValuePair_t *keyPairQuery_actionType = 0;
    if (actionType)
    {
        keyQuery_actionType = strdup("actionType");
        valueQuery_actionType = strdup((actionType));
        keyPairQuery_actionType = keyValuePair_create(keyQuery_actionType, valueQuery_actionType);
        list_addElement(localVarQueryParameters,keyPairQuery_actionType);
    }

    // query parameters
    char *keyQuery_ticketIds = NULL;
    char * valueQuery_ticketIds = NULL;
    keyValuePair_t *keyPairQuery_ticketIds = 0;
    if (ticketIds)
    {
        keyQuery_ticketIds = strdup("ticketIds");
        valueQuery_ticketIds = strdup((ticketIds));
        keyPairQuery_ticketIds = keyValuePair_create(keyQuery_ticketIds, valueQuery_ticketIds);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketIds);
    }

    // query parameters
    char *keyQuery_objectIds = NULL;
    char * valueQuery_objectIds = NULL;
    keyValuePair_t *keyPairQuery_objectIds = 0;
    if (objectIds)
    {
        keyQuery_objectIds = strdup("objectIds");
        valueQuery_objectIds = strdup((objectIds));
        keyPairQuery_objectIds = keyValuePair_create(keyQuery_objectIds, valueQuery_objectIds);
        list_addElement(localVarQueryParameters,keyPairQuery_objectIds);
    }

    // query parameters
    char *keyQuery_receiptTokens = NULL;
    char * valueQuery_receiptTokens = NULL;
    keyValuePair_t *keyPairQuery_receiptTokens = 0;
    if (receiptTokens)
    {
        keyQuery_receiptTokens = strdup("receiptTokens");
        valueQuery_receiptTokens = strdup((receiptTokens));
        keyPairQuery_receiptTokens = keyValuePair_create(keyQuery_receiptTokens, valueQuery_receiptTokens);
        list_addElement(localVarQueryParameters,keyPairQuery_receiptTokens);
    }

    // query parameters
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
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
    ticket_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TicketAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ticket_list_response_parseFromJSON(TicketAPIlocalVarJSON);
        cJSON_Delete(TicketAPIlocalVarJSON);
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
    free(localVarToReplace_version);
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
    if(keyQuery_ticketObjectType){
        free(keyQuery_ticketObjectType);
        keyQuery_ticketObjectType = NULL;
    }
    if(valueQuery_ticketObjectType){
        free(valueQuery_ticketObjectType);
        valueQuery_ticketObjectType = NULL;
    }
    if(keyPairQuery_ticketObjectType){
        keyValuePair_free(keyPairQuery_ticketObjectType);
        keyPairQuery_ticketObjectType = NULL;
    }
    if(keyQuery_actionType){
        free(keyQuery_actionType);
        keyQuery_actionType = NULL;
    }
    if(valueQuery_actionType){
        free(valueQuery_actionType);
        valueQuery_actionType = NULL;
    }
    if(keyPairQuery_actionType){
        keyValuePair_free(keyPairQuery_actionType);
        keyPairQuery_actionType = NULL;
    }
    if(keyQuery_ticketIds){
        free(keyQuery_ticketIds);
        keyQuery_ticketIds = NULL;
    }
    if(valueQuery_ticketIds){
        free(valueQuery_ticketIds);
        valueQuery_ticketIds = NULL;
    }
    if(keyPairQuery_ticketIds){
        keyValuePair_free(keyPairQuery_ticketIds);
        keyPairQuery_ticketIds = NULL;
    }
    if(keyQuery_objectIds){
        free(keyQuery_objectIds);
        keyQuery_objectIds = NULL;
    }
    if(valueQuery_objectIds){
        free(valueQuery_objectIds);
        valueQuery_objectIds = NULL;
    }
    if(keyPairQuery_objectIds){
        keyValuePair_free(keyPairQuery_objectIds);
        keyPairQuery_objectIds = NULL;
    }
    if(keyQuery_receiptTokens){
        free(keyQuery_receiptTokens);
        keyQuery_receiptTokens = NULL;
    }
    if(valueQuery_receiptTokens){
        free(valueQuery_receiptTokens);
        valueQuery_receiptTokens = NULL;
    }
    if(keyPairQuery_receiptTokens){
        keyValuePair_free(keyPairQuery_receiptTokens);
        keyPairQuery_receiptTokens = NULL;
    }
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Gift Tickets
//
// Gift tickets to another user.
//
sirqul_response_t*
TicketAPI_giftPurchase(apiClient_t *apiClient, double version, long receiverAccountId, long ticketId, char *deviceId, long accountId, long assetId, char *customMessage, char *gameType, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/purchase/gift");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_receiverAccountId = NULL;
    char * valueQuery_receiverAccountId ;
    keyValuePair_t *keyPairQuery_receiverAccountId = 0;
    {
        keyQuery_receiverAccountId = strdup("receiverAccountId");
        valueQuery_receiverAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_receiverAccountId, MAX_NUMBER_LENGTH_LONG, "%d", receiverAccountId);
        keyPairQuery_receiverAccountId = keyValuePair_create(keyQuery_receiverAccountId, valueQuery_receiverAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_receiverAccountId);
    }

    // query parameters
    char *keyQuery_ticketId = NULL;
    char * valueQuery_ticketId ;
    keyValuePair_t *keyPairQuery_ticketId = 0;
    {
        keyQuery_ticketId = strdup("ticketId");
        valueQuery_ticketId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketId, MAX_NUMBER_LENGTH_LONG, "%d", ticketId);
        keyPairQuery_ticketId = keyValuePair_create(keyQuery_ticketId, valueQuery_ticketId);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketId);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId ;
    keyValuePair_t *keyPairQuery_assetId = 0;
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetId, MAX_NUMBER_LENGTH_LONG, "%d", assetId);
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
    }

    // query parameters
    char *keyQuery_customMessage = NULL;
    char * valueQuery_customMessage = NULL;
    keyValuePair_t *keyPairQuery_customMessage = 0;
    if (customMessage)
    {
        keyQuery_customMessage = strdup("customMessage");
        valueQuery_customMessage = strdup((customMessage));
        keyPairQuery_customMessage = keyValuePair_create(keyQuery_customMessage, valueQuery_customMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_customMessage);
    }

    // query parameters
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
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
        cJSON *TicketAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TicketAPIlocalVarJSON);
        cJSON_Delete(TicketAPIlocalVarJSON);
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
    free(localVarToReplace_version);
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
    if(keyQuery_receiverAccountId){
        free(keyQuery_receiverAccountId);
        keyQuery_receiverAccountId = NULL;
    }
    if(keyPairQuery_receiverAccountId){
        keyValuePair_free(keyPairQuery_receiverAccountId);
        keyPairQuery_receiverAccountId = NULL;
    }
    if(keyQuery_ticketId){
        free(keyQuery_ticketId);
        keyQuery_ticketId = NULL;
    }
    if(keyPairQuery_ticketId){
        keyValuePair_free(keyPairQuery_ticketId);
        keyPairQuery_ticketId = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_customMessage){
        free(keyQuery_customMessage);
        keyQuery_customMessage = NULL;
    }
    if(valueQuery_customMessage){
        free(valueQuery_customMessage);
        valueQuery_customMessage = NULL;
    }
    if(keyPairQuery_customMessage){
        keyValuePair_free(keyPairQuery_customMessage);
        keyPairQuery_customMessage = NULL;
    }
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Save Ticket
//
// Allow user to acquire a purchase item and generate a ticket record. Used to redeem tickets or add tickets to the system.
//
profile_response_t*
TicketAPI_saveTicket(apiClient_t *apiClient, double version, char *actionType, char *ticketObjectType, int *returnNulls, char *deviceId, long accountId, char *gameType, char *appKey, long objectId, char *purchaseCode, char *receiptToken, char *receiptData, long count, char *ticketType, char *purchaseProvider, char *purchaseType, int *returnProfileResponse, int *includeProfileResponse, char *appVersion)
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
    char *localVarPath = strdup("/api/{version}/ticket/save");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_returnNulls = NULL;
    char * valueQuery_returnNulls = NULL;
    keyValuePair_t *keyPairQuery_returnNulls = 0;
    if (returnNulls)
    {
        keyQuery_returnNulls = strdup("returnNulls");
        valueQuery_returnNulls = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnNulls, MAX_NUMBER_LENGTH, "%d", *returnNulls);
        keyPairQuery_returnNulls = keyValuePair_create(keyQuery_returnNulls, valueQuery_returnNulls);
        list_addElement(localVarQueryParameters,keyPairQuery_returnNulls);
    }

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
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_actionType = NULL;
    char * valueQuery_actionType = NULL;
    keyValuePair_t *keyPairQuery_actionType = 0;
    if (actionType)
    {
        keyQuery_actionType = strdup("actionType");
        valueQuery_actionType = strdup((actionType));
        keyPairQuery_actionType = keyValuePair_create(keyQuery_actionType, valueQuery_actionType);
        list_addElement(localVarQueryParameters,keyPairQuery_actionType);
    }

    // query parameters
    char *keyQuery_ticketObjectType = NULL;
    char * valueQuery_ticketObjectType = NULL;
    keyValuePair_t *keyPairQuery_ticketObjectType = 0;
    if (ticketObjectType)
    {
        keyQuery_ticketObjectType = strdup("ticketObjectType");
        valueQuery_ticketObjectType = strdup((ticketObjectType));
        keyPairQuery_ticketObjectType = keyValuePair_create(keyQuery_ticketObjectType, valueQuery_ticketObjectType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketObjectType);
    }

    // query parameters
    char *keyQuery_objectId = NULL;
    char * valueQuery_objectId ;
    keyValuePair_t *keyPairQuery_objectId = 0;
    {
        keyQuery_objectId = strdup("objectId");
        valueQuery_objectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_objectId, MAX_NUMBER_LENGTH_LONG, "%d", objectId);
        keyPairQuery_objectId = keyValuePair_create(keyQuery_objectId, valueQuery_objectId);
        list_addElement(localVarQueryParameters,keyPairQuery_objectId);
    }

    // query parameters
    char *keyQuery_purchaseCode = NULL;
    char * valueQuery_purchaseCode = NULL;
    keyValuePair_t *keyPairQuery_purchaseCode = 0;
    if (purchaseCode)
    {
        keyQuery_purchaseCode = strdup("purchaseCode");
        valueQuery_purchaseCode = strdup((purchaseCode));
        keyPairQuery_purchaseCode = keyValuePair_create(keyQuery_purchaseCode, valueQuery_purchaseCode);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseCode);
    }

    // query parameters
    char *keyQuery_receiptToken = NULL;
    char * valueQuery_receiptToken = NULL;
    keyValuePair_t *keyPairQuery_receiptToken = 0;
    if (receiptToken)
    {
        keyQuery_receiptToken = strdup("receiptToken");
        valueQuery_receiptToken = strdup((receiptToken));
        keyPairQuery_receiptToken = keyValuePair_create(keyQuery_receiptToken, valueQuery_receiptToken);
        list_addElement(localVarQueryParameters,keyPairQuery_receiptToken);
    }

    // query parameters
    char *keyQuery_receiptData = NULL;
    char * valueQuery_receiptData = NULL;
    keyValuePair_t *keyPairQuery_receiptData = 0;
    if (receiptData)
    {
        keyQuery_receiptData = strdup("receiptData");
        valueQuery_receiptData = strdup((receiptData));
        keyPairQuery_receiptData = keyValuePair_create(keyQuery_receiptData, valueQuery_receiptData);
        list_addElement(localVarQueryParameters,keyPairQuery_receiptData);
    }

    // query parameters
    char *keyQuery_count = NULL;
    char * valueQuery_count ;
    keyValuePair_t *keyPairQuery_count = 0;
    {
        keyQuery_count = strdup("count");
        valueQuery_count = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_count, MAX_NUMBER_LENGTH_LONG, "%d", count);
        keyPairQuery_count = keyValuePair_create(keyQuery_count, valueQuery_count);
        list_addElement(localVarQueryParameters,keyPairQuery_count);
    }

    // query parameters
    char *keyQuery_ticketType = NULL;
    char * valueQuery_ticketType = NULL;
    keyValuePair_t *keyPairQuery_ticketType = 0;
    if (ticketType)
    {
        keyQuery_ticketType = strdup("ticketType");
        valueQuery_ticketType = strdup((ticketType));
        keyPairQuery_ticketType = keyValuePair_create(keyQuery_ticketType, valueQuery_ticketType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketType);
    }

    // query parameters
    char *keyQuery_purchaseProvider = NULL;
    char * valueQuery_purchaseProvider = NULL;
    keyValuePair_t *keyPairQuery_purchaseProvider = 0;
    if (purchaseProvider)
    {
        keyQuery_purchaseProvider = strdup("purchaseProvider");
        valueQuery_purchaseProvider = strdup((purchaseProvider));
        keyPairQuery_purchaseProvider = keyValuePair_create(keyQuery_purchaseProvider, valueQuery_purchaseProvider);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseProvider);
    }

    // query parameters
    char *keyQuery_purchaseType = NULL;
    char * valueQuery_purchaseType = NULL;
    keyValuePair_t *keyPairQuery_purchaseType = 0;
    if (purchaseType)
    {
        keyQuery_purchaseType = strdup("purchaseType");
        valueQuery_purchaseType = strdup((purchaseType));
        keyPairQuery_purchaseType = keyValuePair_create(keyQuery_purchaseType, valueQuery_purchaseType);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseType);
    }

    // query parameters
    char *keyQuery_returnProfileResponse = NULL;
    char * valueQuery_returnProfileResponse = NULL;
    keyValuePair_t *keyPairQuery_returnProfileResponse = 0;
    if (returnProfileResponse)
    {
        keyQuery_returnProfileResponse = strdup("returnProfileResponse");
        valueQuery_returnProfileResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnProfileResponse, MAX_NUMBER_LENGTH, "%d", *returnProfileResponse);
        keyPairQuery_returnProfileResponse = keyValuePair_create(keyQuery_returnProfileResponse, valueQuery_returnProfileResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnProfileResponse);
    }

    // query parameters
    char *keyQuery_includeProfileResponse = NULL;
    char * valueQuery_includeProfileResponse = NULL;
    keyValuePair_t *keyPairQuery_includeProfileResponse = 0;
    if (includeProfileResponse)
    {
        keyQuery_includeProfileResponse = strdup("includeProfileResponse");
        valueQuery_includeProfileResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeProfileResponse, MAX_NUMBER_LENGTH, "%d", *includeProfileResponse);
        keyPairQuery_includeProfileResponse = keyValuePair_create(keyQuery_includeProfileResponse, valueQuery_includeProfileResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_includeProfileResponse);
    }

    // query parameters
    char *keyQuery_appVersion = NULL;
    char * valueQuery_appVersion = NULL;
    keyValuePair_t *keyPairQuery_appVersion = 0;
    if (appVersion)
    {
        keyQuery_appVersion = strdup("appVersion");
        valueQuery_appVersion = strdup((appVersion));
        keyPairQuery_appVersion = keyValuePair_create(keyQuery_appVersion, valueQuery_appVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_appVersion);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TicketAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(TicketAPIlocalVarJSON);
        cJSON_Delete(TicketAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_returnNulls){
        free(keyQuery_returnNulls);
        keyQuery_returnNulls = NULL;
    }
    if(valueQuery_returnNulls){
        free(valueQuery_returnNulls);
        valueQuery_returnNulls = NULL;
    }
    if(keyPairQuery_returnNulls){
        keyValuePair_free(keyPairQuery_returnNulls);
        keyPairQuery_returnNulls = NULL;
    }
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
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_actionType){
        free(keyQuery_actionType);
        keyQuery_actionType = NULL;
    }
    if(valueQuery_actionType){
        free(valueQuery_actionType);
        valueQuery_actionType = NULL;
    }
    if(keyPairQuery_actionType){
        keyValuePair_free(keyPairQuery_actionType);
        keyPairQuery_actionType = NULL;
    }
    if(keyQuery_ticketObjectType){
        free(keyQuery_ticketObjectType);
        keyQuery_ticketObjectType = NULL;
    }
    if(valueQuery_ticketObjectType){
        free(valueQuery_ticketObjectType);
        valueQuery_ticketObjectType = NULL;
    }
    if(keyPairQuery_ticketObjectType){
        keyValuePair_free(keyPairQuery_ticketObjectType);
        keyPairQuery_ticketObjectType = NULL;
    }
    if(keyQuery_objectId){
        free(keyQuery_objectId);
        keyQuery_objectId = NULL;
    }
    if(keyPairQuery_objectId){
        keyValuePair_free(keyPairQuery_objectId);
        keyPairQuery_objectId = NULL;
    }
    if(keyQuery_purchaseCode){
        free(keyQuery_purchaseCode);
        keyQuery_purchaseCode = NULL;
    }
    if(valueQuery_purchaseCode){
        free(valueQuery_purchaseCode);
        valueQuery_purchaseCode = NULL;
    }
    if(keyPairQuery_purchaseCode){
        keyValuePair_free(keyPairQuery_purchaseCode);
        keyPairQuery_purchaseCode = NULL;
    }
    if(keyQuery_receiptToken){
        free(keyQuery_receiptToken);
        keyQuery_receiptToken = NULL;
    }
    if(valueQuery_receiptToken){
        free(valueQuery_receiptToken);
        valueQuery_receiptToken = NULL;
    }
    if(keyPairQuery_receiptToken){
        keyValuePair_free(keyPairQuery_receiptToken);
        keyPairQuery_receiptToken = NULL;
    }
    if(keyQuery_receiptData){
        free(keyQuery_receiptData);
        keyQuery_receiptData = NULL;
    }
    if(valueQuery_receiptData){
        free(valueQuery_receiptData);
        valueQuery_receiptData = NULL;
    }
    if(keyPairQuery_receiptData){
        keyValuePair_free(keyPairQuery_receiptData);
        keyPairQuery_receiptData = NULL;
    }
    if(keyQuery_count){
        free(keyQuery_count);
        keyQuery_count = NULL;
    }
    if(keyPairQuery_count){
        keyValuePair_free(keyPairQuery_count);
        keyPairQuery_count = NULL;
    }
    if(keyQuery_ticketType){
        free(keyQuery_ticketType);
        keyQuery_ticketType = NULL;
    }
    if(valueQuery_ticketType){
        free(valueQuery_ticketType);
        valueQuery_ticketType = NULL;
    }
    if(keyPairQuery_ticketType){
        keyValuePair_free(keyPairQuery_ticketType);
        keyPairQuery_ticketType = NULL;
    }
    if(keyQuery_purchaseProvider){
        free(keyQuery_purchaseProvider);
        keyQuery_purchaseProvider = NULL;
    }
    if(valueQuery_purchaseProvider){
        free(valueQuery_purchaseProvider);
        valueQuery_purchaseProvider = NULL;
    }
    if(keyPairQuery_purchaseProvider){
        keyValuePair_free(keyPairQuery_purchaseProvider);
        keyPairQuery_purchaseProvider = NULL;
    }
    if(keyQuery_purchaseType){
        free(keyQuery_purchaseType);
        keyQuery_purchaseType = NULL;
    }
    if(valueQuery_purchaseType){
        free(valueQuery_purchaseType);
        valueQuery_purchaseType = NULL;
    }
    if(keyPairQuery_purchaseType){
        keyValuePair_free(keyPairQuery_purchaseType);
        keyPairQuery_purchaseType = NULL;
    }
    if(keyQuery_returnProfileResponse){
        free(keyQuery_returnProfileResponse);
        keyQuery_returnProfileResponse = NULL;
    }
    if(valueQuery_returnProfileResponse){
        free(valueQuery_returnProfileResponse);
        valueQuery_returnProfileResponse = NULL;
    }
    if(keyPairQuery_returnProfileResponse){
        keyValuePair_free(keyPairQuery_returnProfileResponse);
        keyPairQuery_returnProfileResponse = NULL;
    }
    if(keyQuery_includeProfileResponse){
        free(keyQuery_includeProfileResponse);
        keyQuery_includeProfileResponse = NULL;
    }
    if(valueQuery_includeProfileResponse){
        free(valueQuery_includeProfileResponse);
        valueQuery_includeProfileResponse = NULL;
    }
    if(keyPairQuery_includeProfileResponse){
        keyValuePair_free(keyPairQuery_includeProfileResponse);
        keyPairQuery_includeProfileResponse = NULL;
    }
    if(keyQuery_appVersion){
        free(keyQuery_appVersion);
        keyQuery_appVersion = NULL;
    }
    if(valueQuery_appVersion){
        free(valueQuery_appVersion);
        valueQuery_appVersion = NULL;
    }
    if(keyPairQuery_appVersion){
        keyValuePair_free(keyPairQuery_appVersion);
        keyPairQuery_appVersion = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Save Ticket with Reciept
//
// Similar to the Save Ticket endpoint but allows the receiptData to be in binary format. This must be a multi-part post
//
profile_response_t*
TicketAPI_saveTicketViaFileUpload(apiClient_t *apiClient, double version, char *actionType, char *ticketObjectType, binary_t* receiptData, int *returnNulls, char *deviceId, long accountId, char *gameType, char *appKey, long objectId, char *purchaseCode, char *receiptToken, long count, char *ticketType, char *purchaseProvider, char *purchaseType, int *returnProfileResponse, int *includeProfileResponse, char *appVersion)
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
    char *localVarPath = strdup("/api/{version}/ticket/save/fileUpload");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_returnNulls = NULL;
    char * valueQuery_returnNulls = NULL;
    keyValuePair_t *keyPairQuery_returnNulls = 0;
    if (returnNulls)
    {
        keyQuery_returnNulls = strdup("returnNulls");
        valueQuery_returnNulls = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnNulls, MAX_NUMBER_LENGTH, "%d", *returnNulls);
        keyPairQuery_returnNulls = keyValuePair_create(keyQuery_returnNulls, valueQuery_returnNulls);
        list_addElement(localVarQueryParameters,keyPairQuery_returnNulls);
    }

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
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
    }

    // query parameters
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_actionType = NULL;
    char * valueQuery_actionType = NULL;
    keyValuePair_t *keyPairQuery_actionType = 0;
    if (actionType)
    {
        keyQuery_actionType = strdup("actionType");
        valueQuery_actionType = strdup((actionType));
        keyPairQuery_actionType = keyValuePair_create(keyQuery_actionType, valueQuery_actionType);
        list_addElement(localVarQueryParameters,keyPairQuery_actionType);
    }

    // query parameters
    char *keyQuery_ticketObjectType = NULL;
    char * valueQuery_ticketObjectType = NULL;
    keyValuePair_t *keyPairQuery_ticketObjectType = 0;
    if (ticketObjectType)
    {
        keyQuery_ticketObjectType = strdup("ticketObjectType");
        valueQuery_ticketObjectType = strdup((ticketObjectType));
        keyPairQuery_ticketObjectType = keyValuePair_create(keyQuery_ticketObjectType, valueQuery_ticketObjectType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketObjectType);
    }

    // query parameters
    char *keyQuery_objectId = NULL;
    char * valueQuery_objectId ;
    keyValuePair_t *keyPairQuery_objectId = 0;
    {
        keyQuery_objectId = strdup("objectId");
        valueQuery_objectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_objectId, MAX_NUMBER_LENGTH_LONG, "%d", objectId);
        keyPairQuery_objectId = keyValuePair_create(keyQuery_objectId, valueQuery_objectId);
        list_addElement(localVarQueryParameters,keyPairQuery_objectId);
    }

    // query parameters
    char *keyQuery_purchaseCode = NULL;
    char * valueQuery_purchaseCode = NULL;
    keyValuePair_t *keyPairQuery_purchaseCode = 0;
    if (purchaseCode)
    {
        keyQuery_purchaseCode = strdup("purchaseCode");
        valueQuery_purchaseCode = strdup((purchaseCode));
        keyPairQuery_purchaseCode = keyValuePair_create(keyQuery_purchaseCode, valueQuery_purchaseCode);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseCode);
    }

    // query parameters
    char *keyQuery_receiptToken = NULL;
    char * valueQuery_receiptToken = NULL;
    keyValuePair_t *keyPairQuery_receiptToken = 0;
    if (receiptToken)
    {
        keyQuery_receiptToken = strdup("receiptToken");
        valueQuery_receiptToken = strdup((receiptToken));
        keyPairQuery_receiptToken = keyValuePair_create(keyQuery_receiptToken, valueQuery_receiptToken);
        list_addElement(localVarQueryParameters,keyPairQuery_receiptToken);
    }

    // query parameters
    char *keyQuery_receiptData = NULL;
    binary_t* valueQuery_receiptData ;
    keyValuePair_t *keyPairQuery_receiptData = 0;
    if (receiptData)
    {
        keyQuery_receiptData = strdup("receiptData");
        valueQuery_receiptData = (receiptData);
        keyPairQuery_receiptData = keyValuePair_create(keyQuery_receiptData, &valueQuery_receiptData);
        list_addElement(localVarQueryParameters,keyPairQuery_receiptData);
    }

    // query parameters
    char *keyQuery_count = NULL;
    char * valueQuery_count ;
    keyValuePair_t *keyPairQuery_count = 0;
    {
        keyQuery_count = strdup("count");
        valueQuery_count = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_count, MAX_NUMBER_LENGTH_LONG, "%d", count);
        keyPairQuery_count = keyValuePair_create(keyQuery_count, valueQuery_count);
        list_addElement(localVarQueryParameters,keyPairQuery_count);
    }

    // query parameters
    char *keyQuery_ticketType = NULL;
    char * valueQuery_ticketType = NULL;
    keyValuePair_t *keyPairQuery_ticketType = 0;
    if (ticketType)
    {
        keyQuery_ticketType = strdup("ticketType");
        valueQuery_ticketType = strdup((ticketType));
        keyPairQuery_ticketType = keyValuePair_create(keyQuery_ticketType, valueQuery_ticketType);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketType);
    }

    // query parameters
    char *keyQuery_purchaseProvider = NULL;
    char * valueQuery_purchaseProvider = NULL;
    keyValuePair_t *keyPairQuery_purchaseProvider = 0;
    if (purchaseProvider)
    {
        keyQuery_purchaseProvider = strdup("purchaseProvider");
        valueQuery_purchaseProvider = strdup((purchaseProvider));
        keyPairQuery_purchaseProvider = keyValuePair_create(keyQuery_purchaseProvider, valueQuery_purchaseProvider);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseProvider);
    }

    // query parameters
    char *keyQuery_purchaseType = NULL;
    char * valueQuery_purchaseType = NULL;
    keyValuePair_t *keyPairQuery_purchaseType = 0;
    if (purchaseType)
    {
        keyQuery_purchaseType = strdup("purchaseType");
        valueQuery_purchaseType = strdup((purchaseType));
        keyPairQuery_purchaseType = keyValuePair_create(keyQuery_purchaseType, valueQuery_purchaseType);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseType);
    }

    // query parameters
    char *keyQuery_returnProfileResponse = NULL;
    char * valueQuery_returnProfileResponse = NULL;
    keyValuePair_t *keyPairQuery_returnProfileResponse = 0;
    if (returnProfileResponse)
    {
        keyQuery_returnProfileResponse = strdup("returnProfileResponse");
        valueQuery_returnProfileResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnProfileResponse, MAX_NUMBER_LENGTH, "%d", *returnProfileResponse);
        keyPairQuery_returnProfileResponse = keyValuePair_create(keyQuery_returnProfileResponse, valueQuery_returnProfileResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnProfileResponse);
    }

    // query parameters
    char *keyQuery_includeProfileResponse = NULL;
    char * valueQuery_includeProfileResponse = NULL;
    keyValuePair_t *keyPairQuery_includeProfileResponse = 0;
    if (includeProfileResponse)
    {
        keyQuery_includeProfileResponse = strdup("includeProfileResponse");
        valueQuery_includeProfileResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeProfileResponse, MAX_NUMBER_LENGTH, "%d", *includeProfileResponse);
        keyPairQuery_includeProfileResponse = keyValuePair_create(keyQuery_includeProfileResponse, valueQuery_includeProfileResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_includeProfileResponse);
    }

    // query parameters
    char *keyQuery_appVersion = NULL;
    char * valueQuery_appVersion = NULL;
    keyValuePair_t *keyPairQuery_appVersion = 0;
    if (appVersion)
    {
        keyQuery_appVersion = strdup("appVersion");
        valueQuery_appVersion = strdup((appVersion));
        keyPairQuery_appVersion = keyValuePair_create(keyQuery_appVersion, valueQuery_appVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_appVersion);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TicketAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(TicketAPIlocalVarJSON);
        cJSON_Delete(TicketAPIlocalVarJSON);
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
    free(localVarToReplace_version);
    if(keyQuery_returnNulls){
        free(keyQuery_returnNulls);
        keyQuery_returnNulls = NULL;
    }
    if(valueQuery_returnNulls){
        free(valueQuery_returnNulls);
        valueQuery_returnNulls = NULL;
    }
    if(keyPairQuery_returnNulls){
        keyValuePair_free(keyPairQuery_returnNulls);
        keyPairQuery_returnNulls = NULL;
    }
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
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_actionType){
        free(keyQuery_actionType);
        keyQuery_actionType = NULL;
    }
    if(valueQuery_actionType){
        free(valueQuery_actionType);
        valueQuery_actionType = NULL;
    }
    if(keyPairQuery_actionType){
        keyValuePair_free(keyPairQuery_actionType);
        keyPairQuery_actionType = NULL;
    }
    if(keyQuery_ticketObjectType){
        free(keyQuery_ticketObjectType);
        keyQuery_ticketObjectType = NULL;
    }
    if(valueQuery_ticketObjectType){
        free(valueQuery_ticketObjectType);
        valueQuery_ticketObjectType = NULL;
    }
    if(keyPairQuery_ticketObjectType){
        keyValuePair_free(keyPairQuery_ticketObjectType);
        keyPairQuery_ticketObjectType = NULL;
    }
    if(keyQuery_objectId){
        free(keyQuery_objectId);
        keyQuery_objectId = NULL;
    }
    if(keyPairQuery_objectId){
        keyValuePair_free(keyPairQuery_objectId);
        keyPairQuery_objectId = NULL;
    }
    if(keyQuery_purchaseCode){
        free(keyQuery_purchaseCode);
        keyQuery_purchaseCode = NULL;
    }
    if(valueQuery_purchaseCode){
        free(valueQuery_purchaseCode);
        valueQuery_purchaseCode = NULL;
    }
    if(keyPairQuery_purchaseCode){
        keyValuePair_free(keyPairQuery_purchaseCode);
        keyPairQuery_purchaseCode = NULL;
    }
    if(keyQuery_receiptToken){
        free(keyQuery_receiptToken);
        keyQuery_receiptToken = NULL;
    }
    if(valueQuery_receiptToken){
        free(valueQuery_receiptToken);
        valueQuery_receiptToken = NULL;
    }
    if(keyPairQuery_receiptToken){
        keyValuePair_free(keyPairQuery_receiptToken);
        keyPairQuery_receiptToken = NULL;
    }
    if(keyQuery_receiptData){
        free(keyQuery_receiptData);
        keyQuery_receiptData = NULL;
    }
    if(keyPairQuery_receiptData){
        keyValuePair_free(keyPairQuery_receiptData);
        keyPairQuery_receiptData = NULL;
    }
    if(keyQuery_count){
        free(keyQuery_count);
        keyQuery_count = NULL;
    }
    if(keyPairQuery_count){
        keyValuePair_free(keyPairQuery_count);
        keyPairQuery_count = NULL;
    }
    if(keyQuery_ticketType){
        free(keyQuery_ticketType);
        keyQuery_ticketType = NULL;
    }
    if(valueQuery_ticketType){
        free(valueQuery_ticketType);
        valueQuery_ticketType = NULL;
    }
    if(keyPairQuery_ticketType){
        keyValuePair_free(keyPairQuery_ticketType);
        keyPairQuery_ticketType = NULL;
    }
    if(keyQuery_purchaseProvider){
        free(keyQuery_purchaseProvider);
        keyQuery_purchaseProvider = NULL;
    }
    if(valueQuery_purchaseProvider){
        free(valueQuery_purchaseProvider);
        valueQuery_purchaseProvider = NULL;
    }
    if(keyPairQuery_purchaseProvider){
        keyValuePair_free(keyPairQuery_purchaseProvider);
        keyPairQuery_purchaseProvider = NULL;
    }
    if(keyQuery_purchaseType){
        free(keyQuery_purchaseType);
        keyQuery_purchaseType = NULL;
    }
    if(valueQuery_purchaseType){
        free(valueQuery_purchaseType);
        valueQuery_purchaseType = NULL;
    }
    if(keyPairQuery_purchaseType){
        keyValuePair_free(keyPairQuery_purchaseType);
        keyPairQuery_purchaseType = NULL;
    }
    if(keyQuery_returnProfileResponse){
        free(keyQuery_returnProfileResponse);
        keyQuery_returnProfileResponse = NULL;
    }
    if(valueQuery_returnProfileResponse){
        free(valueQuery_returnProfileResponse);
        valueQuery_returnProfileResponse = NULL;
    }
    if(keyPairQuery_returnProfileResponse){
        keyValuePair_free(keyPairQuery_returnProfileResponse);
        keyPairQuery_returnProfileResponse = NULL;
    }
    if(keyQuery_includeProfileResponse){
        free(keyQuery_includeProfileResponse);
        keyQuery_includeProfileResponse = NULL;
    }
    if(valueQuery_includeProfileResponse){
        free(valueQuery_includeProfileResponse);
        valueQuery_includeProfileResponse = NULL;
    }
    if(keyPairQuery_includeProfileResponse){
        keyValuePair_free(keyPairQuery_includeProfileResponse);
        keyPairQuery_includeProfileResponse = NULL;
    }
    if(keyQuery_appVersion){
        free(keyQuery_appVersion);
        keyQuery_appVersion = NULL;
    }
    if(valueQuery_appVersion){
        free(valueQuery_appVersion);
        valueQuery_appVersion = NULL;
    }
    if(keyPairQuery_appVersion){
        keyValuePair_free(keyPairQuery_appVersion);
        keyPairQuery_appVersion = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Ticket Offers
//
// Get a list offers for tickets owned by sirqul.  Purchasing these will add the number of tickets to the account specified by the offer.
//
ticket_offer_response_t*
TicketAPI_ticketOffers(apiClient_t *apiClient, double version)
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
    char *localVarPath = strdup("/api/{version}/ticket/ticketoffers");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;


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
    ticket_offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TicketAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ticket_offer_response_parseFromJSON(TicketAPIlocalVarJSON);
        cJSON_Delete(TicketAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

