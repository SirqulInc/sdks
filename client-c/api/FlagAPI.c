#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "FlagAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Flag
//
// Allows a user to flag an object that the user deems inappropriate or offensive. Flagable objects include accounts, albums, album contests, assets, game levels, and theme descriptors
//
sirqul_response_t*
FlagAPI_createFlag(apiClient_t *apiClient, char *flagableType, long flagableId, char *deviceId, long accountId, char *flagDescription, double latitude, double longitude)
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
    char *localVarPath = strdup("/flag/create");





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
    char *keyQuery_flagableType = NULL;
    char * valueQuery_flagableType = NULL;
    keyValuePair_t *keyPairQuery_flagableType = 0;
    if (flagableType)
    {
        keyQuery_flagableType = strdup("flagableType");
        valueQuery_flagableType = strdup((flagableType));
        keyPairQuery_flagableType = keyValuePair_create(keyQuery_flagableType, valueQuery_flagableType);
        list_addElement(localVarQueryParameters,keyPairQuery_flagableType);
    }

    // query parameters
    char *keyQuery_flagableId = NULL;
    char * valueQuery_flagableId ;
    keyValuePair_t *keyPairQuery_flagableId = 0;
    {
        keyQuery_flagableId = strdup("flagableId");
        valueQuery_flagableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_flagableId, MAX_NUMBER_LENGTH_LONG, "%d", flagableId);
        keyPairQuery_flagableId = keyValuePair_create(keyQuery_flagableId, valueQuery_flagableId);
        list_addElement(localVarQueryParameters,keyPairQuery_flagableId);
    }

    // query parameters
    char *keyQuery_flagDescription = NULL;
    char * valueQuery_flagDescription = NULL;
    keyValuePair_t *keyPairQuery_flagDescription = 0;
    if (flagDescription)
    {
        keyQuery_flagDescription = strdup("flagDescription");
        valueQuery_flagDescription = strdup((flagDescription));
        keyPairQuery_flagDescription = keyValuePair_create(keyQuery_flagDescription, valueQuery_flagDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_flagDescription);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
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
        cJSON *FlagAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(FlagAPIlocalVarJSON);
        cJSON_Delete(FlagAPIlocalVarJSON);
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
    if(keyQuery_flagableType){
        free(keyQuery_flagableType);
        keyQuery_flagableType = NULL;
    }
    if(valueQuery_flagableType){
        free(valueQuery_flagableType);
        valueQuery_flagableType = NULL;
    }
    if(keyPairQuery_flagableType){
        keyValuePair_free(keyPairQuery_flagableType);
        keyPairQuery_flagableType = NULL;
    }
    if(keyQuery_flagableId){
        free(keyQuery_flagableId);
        keyQuery_flagableId = NULL;
    }
    if(keyPairQuery_flagableId){
        keyValuePair_free(keyPairQuery_flagableId);
        keyPairQuery_flagableId = NULL;
    }
    if(keyQuery_flagDescription){
        free(keyQuery_flagDescription);
        keyQuery_flagDescription = NULL;
    }
    if(valueQuery_flagDescription){
        free(valueQuery_flagDescription);
        valueQuery_flagDescription = NULL;
    }
    if(keyPairQuery_flagDescription){
        keyValuePair_free(keyPairQuery_flagDescription);
        keyPairQuery_flagDescription = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Flag
//
// Deletes a flag.
//
sirqul_response_t*
FlagAPI_deleteFlag(apiClient_t *apiClient, char *deviceId, long accountId, char *itemBeingFlaggedType, long itemBeingFlaggedId, char *flagableType, long flagableId)
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
    char *localVarPath = strdup("/flag/delete");





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
    char *keyQuery_itemBeingFlaggedType = NULL;
    char * valueQuery_itemBeingFlaggedType = NULL;
    keyValuePair_t *keyPairQuery_itemBeingFlaggedType = 0;
    if (itemBeingFlaggedType)
    {
        keyQuery_itemBeingFlaggedType = strdup("itemBeingFlaggedType");
        valueQuery_itemBeingFlaggedType = strdup((itemBeingFlaggedType));
        keyPairQuery_itemBeingFlaggedType = keyValuePair_create(keyQuery_itemBeingFlaggedType, valueQuery_itemBeingFlaggedType);
        list_addElement(localVarQueryParameters,keyPairQuery_itemBeingFlaggedType);
    }

    // query parameters
    char *keyQuery_itemBeingFlaggedId = NULL;
    char * valueQuery_itemBeingFlaggedId ;
    keyValuePair_t *keyPairQuery_itemBeingFlaggedId = 0;
    {
        keyQuery_itemBeingFlaggedId = strdup("itemBeingFlaggedId");
        valueQuery_itemBeingFlaggedId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_itemBeingFlaggedId, MAX_NUMBER_LENGTH_LONG, "%d", itemBeingFlaggedId);
        keyPairQuery_itemBeingFlaggedId = keyValuePair_create(keyQuery_itemBeingFlaggedId, valueQuery_itemBeingFlaggedId);
        list_addElement(localVarQueryParameters,keyPairQuery_itemBeingFlaggedId);
    }

    // query parameters
    char *keyQuery_flagableType = NULL;
    char * valueQuery_flagableType = NULL;
    keyValuePair_t *keyPairQuery_flagableType = 0;
    if (flagableType)
    {
        keyQuery_flagableType = strdup("flagableType");
        valueQuery_flagableType = strdup((flagableType));
        keyPairQuery_flagableType = keyValuePair_create(keyQuery_flagableType, valueQuery_flagableType);
        list_addElement(localVarQueryParameters,keyPairQuery_flagableType);
    }

    // query parameters
    char *keyQuery_flagableId = NULL;
    char * valueQuery_flagableId ;
    keyValuePair_t *keyPairQuery_flagableId = 0;
    {
        keyQuery_flagableId = strdup("flagableId");
        valueQuery_flagableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_flagableId, MAX_NUMBER_LENGTH_LONG, "%d", flagableId);
        keyPairQuery_flagableId = keyValuePair_create(keyQuery_flagableId, valueQuery_flagableId);
        list_addElement(localVarQueryParameters,keyPairQuery_flagableId);
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
        cJSON *FlagAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(FlagAPIlocalVarJSON);
        cJSON_Delete(FlagAPIlocalVarJSON);
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
    if(keyQuery_itemBeingFlaggedType){
        free(keyQuery_itemBeingFlaggedType);
        keyQuery_itemBeingFlaggedType = NULL;
    }
    if(valueQuery_itemBeingFlaggedType){
        free(valueQuery_itemBeingFlaggedType);
        valueQuery_itemBeingFlaggedType = NULL;
    }
    if(keyPairQuery_itemBeingFlaggedType){
        keyValuePair_free(keyPairQuery_itemBeingFlaggedType);
        keyPairQuery_itemBeingFlaggedType = NULL;
    }
    if(keyQuery_itemBeingFlaggedId){
        free(keyQuery_itemBeingFlaggedId);
        keyQuery_itemBeingFlaggedId = NULL;
    }
    if(keyPairQuery_itemBeingFlaggedId){
        keyValuePair_free(keyPairQuery_itemBeingFlaggedId);
        keyPairQuery_itemBeingFlaggedId = NULL;
    }
    if(keyQuery_flagableType){
        free(keyQuery_flagableType);
        keyQuery_flagableType = NULL;
    }
    if(valueQuery_flagableType){
        free(valueQuery_flagableType);
        valueQuery_flagableType = NULL;
    }
    if(keyPairQuery_flagableType){
        keyValuePair_free(keyPairQuery_flagableType);
        keyPairQuery_flagableType = NULL;
    }
    if(keyQuery_flagableId){
        free(keyQuery_flagableId);
        keyQuery_flagableId = NULL;
    }
    if(keyPairQuery_flagableId){
        keyValuePair_free(keyPairQuery_flagableId);
        keyPairQuery_flagableId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Flag
//
// Gets the details on whether the user has flagged a particular flagable object.
//
flag_response_t*
FlagAPI_getFlag(apiClient_t *apiClient, char *flagableType, long flagableId, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/flag/get");





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
    char *keyQuery_flagableType = NULL;
    char * valueQuery_flagableType = NULL;
    keyValuePair_t *keyPairQuery_flagableType = 0;
    if (flagableType)
    {
        keyQuery_flagableType = strdup("flagableType");
        valueQuery_flagableType = strdup((flagableType));
        keyPairQuery_flagableType = keyValuePair_create(keyQuery_flagableType, valueQuery_flagableType);
        list_addElement(localVarQueryParameters,keyPairQuery_flagableType);
    }

    // query parameters
    char *keyQuery_flagableId = NULL;
    char * valueQuery_flagableId ;
    keyValuePair_t *keyPairQuery_flagableId = 0;
    {
        keyQuery_flagableId = strdup("flagableId");
        valueQuery_flagableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_flagableId, MAX_NUMBER_LENGTH_LONG, "%d", flagableId);
        keyPairQuery_flagableId = keyValuePair_create(keyQuery_flagableId, valueQuery_flagableId);
        list_addElement(localVarQueryParameters,keyPairQuery_flagableId);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
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
    flag_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *FlagAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = flag_response_parseFromJSON(FlagAPIlocalVarJSON);
        cJSON_Delete(FlagAPIlocalVarJSON);
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
    if(keyQuery_flagableType){
        free(keyQuery_flagableType);
        keyQuery_flagableType = NULL;
    }
    if(valueQuery_flagableType){
        free(valueQuery_flagableType);
        valueQuery_flagableType = NULL;
    }
    if(keyPairQuery_flagableType){
        keyValuePair_free(keyPairQuery_flagableType);
        keyPairQuery_flagableType = NULL;
    }
    if(keyQuery_flagableId){
        free(keyQuery_flagableId);
        keyQuery_flagableId = NULL;
    }
    if(keyPairQuery_flagableId){
        keyValuePair_free(keyPairQuery_flagableId);
        keyPairQuery_flagableId = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Flag Threshold
//
// Get the flag threshold value on an object type for a particular application.
//
count_response_t*
FlagAPI_getFlagThreshold(apiClient_t *apiClient, char *itemBeingFlaggedType, char *appKey)
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
    char *localVarPath = strdup("/flag/threshold/get");





    // query parameters
    char *keyQuery_itemBeingFlaggedType = NULL;
    char * valueQuery_itemBeingFlaggedType = NULL;
    keyValuePair_t *keyPairQuery_itemBeingFlaggedType = 0;
    if (itemBeingFlaggedType)
    {
        keyQuery_itemBeingFlaggedType = strdup("itemBeingFlaggedType");
        valueQuery_itemBeingFlaggedType = strdup((itemBeingFlaggedType));
        keyPairQuery_itemBeingFlaggedType = keyValuePair_create(keyQuery_itemBeingFlaggedType, valueQuery_itemBeingFlaggedType);
        list_addElement(localVarQueryParameters,keyPairQuery_itemBeingFlaggedType);
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
    count_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *FlagAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = count_response_parseFromJSON(FlagAPIlocalVarJSON);
        cJSON_Delete(FlagAPIlocalVarJSON);
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
    if(keyQuery_itemBeingFlaggedType){
        free(keyQuery_itemBeingFlaggedType);
        keyQuery_itemBeingFlaggedType = NULL;
    }
    if(valueQuery_itemBeingFlaggedType){
        free(valueQuery_itemBeingFlaggedType);
        valueQuery_itemBeingFlaggedType = NULL;
    }
    if(keyPairQuery_itemBeingFlaggedType){
        keyValuePair_free(keyPairQuery_itemBeingFlaggedType);
        keyPairQuery_itemBeingFlaggedType = NULL;
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

// Update Flag Threshold
//
// Update the flag threshold on an object type for a particular application.
//
count_response_t*
FlagAPI_updateFlagThreshold(apiClient_t *apiClient, char *itemBeingFlaggedType, long threshold, char *appKey, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/flag/threshold/update");





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
    char *keyQuery_itemBeingFlaggedType = NULL;
    char * valueQuery_itemBeingFlaggedType = NULL;
    keyValuePair_t *keyPairQuery_itemBeingFlaggedType = 0;
    if (itemBeingFlaggedType)
    {
        keyQuery_itemBeingFlaggedType = strdup("itemBeingFlaggedType");
        valueQuery_itemBeingFlaggedType = strdup((itemBeingFlaggedType));
        keyPairQuery_itemBeingFlaggedType = keyValuePair_create(keyQuery_itemBeingFlaggedType, valueQuery_itemBeingFlaggedType);
        list_addElement(localVarQueryParameters,keyPairQuery_itemBeingFlaggedType);
    }

    // query parameters
    char *keyQuery_threshold = NULL;
    char * valueQuery_threshold ;
    keyValuePair_t *keyPairQuery_threshold = 0;
    {
        keyQuery_threshold = strdup("threshold");
        valueQuery_threshold = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_threshold, MAX_NUMBER_LENGTH_LONG, "%d", threshold);
        keyPairQuery_threshold = keyValuePair_create(keyQuery_threshold, valueQuery_threshold);
        list_addElement(localVarQueryParameters,keyPairQuery_threshold);
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
    count_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *FlagAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = count_response_parseFromJSON(FlagAPIlocalVarJSON);
        cJSON_Delete(FlagAPIlocalVarJSON);
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
    if(keyQuery_itemBeingFlaggedType){
        free(keyQuery_itemBeingFlaggedType);
        keyQuery_itemBeingFlaggedType = NULL;
    }
    if(valueQuery_itemBeingFlaggedType){
        free(valueQuery_itemBeingFlaggedType);
        valueQuery_itemBeingFlaggedType = NULL;
    }
    if(keyPairQuery_itemBeingFlaggedType){
        keyValuePair_free(keyPairQuery_itemBeingFlaggedType);
        keyPairQuery_itemBeingFlaggedType = NULL;
    }
    if(keyQuery_threshold){
        free(keyQuery_threshold);
        keyQuery_threshold = NULL;
    }
    if(keyPairQuery_threshold){
        keyValuePair_free(keyPairQuery_threshold);
        keyPairQuery_threshold = NULL;
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

