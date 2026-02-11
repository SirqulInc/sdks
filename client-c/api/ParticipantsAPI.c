#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ParticipantsAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Process All Participant Feeds
//
// Processes all supported participant feeds.
//
sirqul_response_t*
ParticipantsAPI_processAllParticipants(apiClient_t *apiClient, long accountId, char *appKey, int *useShortNameAsID)
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
    char *localVarPath = strdup("/participant/process/all");





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
    char *keyQuery_useShortNameAsID = NULL;
    char * valueQuery_useShortNameAsID = NULL;
    keyValuePair_t *keyPairQuery_useShortNameAsID = 0;
    if (useShortNameAsID)
    {
        keyQuery_useShortNameAsID = strdup("useShortNameAsID");
        valueQuery_useShortNameAsID = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useShortNameAsID, MAX_NUMBER_LENGTH, "%d", *useShortNameAsID);
        keyPairQuery_useShortNameAsID = keyValuePair_create(keyQuery_useShortNameAsID, valueQuery_useShortNameAsID);
        list_addElement(localVarQueryParameters,keyPairQuery_useShortNameAsID);
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
        cJSON *ParticipantsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ParticipantsAPIlocalVarJSON);
        cJSON_Delete(ParticipantsAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
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
    if(keyQuery_useShortNameAsID){
        free(keyQuery_useShortNameAsID);
        keyQuery_useShortNameAsID = NULL;
    }
    if(valueQuery_useShortNameAsID){
        free(valueQuery_useShortNameAsID);
        valueQuery_useShortNameAsID = NULL;
    }
    if(keyPairQuery_useShortNameAsID){
        keyValuePair_free(keyPairQuery_useShortNameAsID);
        keyPairQuery_useShortNameAsID = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Process Participants Feed
//
// Processes a participant feed or uploaded file for a specific league.
//
sirqul_response_t*
ParticipantsAPI_processParticipants(apiClient_t *apiClient, long accountId, char *league, char *appKey, int *useShortNameAsID, binary_t* file)
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
    char *localVarPath = strdup("/participant/process");





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
    char *keyQuery_league = NULL;
    char * valueQuery_league = NULL;
    keyValuePair_t *keyPairQuery_league = 0;
    if (league)
    {
        keyQuery_league = strdup("league");
        valueQuery_league = strdup((league));
        keyPairQuery_league = keyValuePair_create(keyQuery_league, valueQuery_league);
        list_addElement(localVarQueryParameters,keyPairQuery_league);
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
    char *keyQuery_useShortNameAsID = NULL;
    char * valueQuery_useShortNameAsID = NULL;
    keyValuePair_t *keyPairQuery_useShortNameAsID = 0;
    if (useShortNameAsID)
    {
        keyQuery_useShortNameAsID = strdup("useShortNameAsID");
        valueQuery_useShortNameAsID = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useShortNameAsID, MAX_NUMBER_LENGTH, "%d", *useShortNameAsID);
        keyPairQuery_useShortNameAsID = keyValuePair_create(keyQuery_useShortNameAsID, valueQuery_useShortNameAsID);
        list_addElement(localVarQueryParameters,keyPairQuery_useShortNameAsID);
    }

    // query parameters
    char *keyQuery_file = NULL;
    binary_t* valueQuery_file ;
    keyValuePair_t *keyPairQuery_file = 0;
    if (file)
    {
        keyQuery_file = strdup("file");
        valueQuery_file = (file);
        keyPairQuery_file = keyValuePair_create(keyQuery_file, &valueQuery_file);
        list_addElement(localVarQueryParameters,keyPairQuery_file);
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
        cJSON *ParticipantsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ParticipantsAPIlocalVarJSON);
        cJSON_Delete(ParticipantsAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_league){
        free(keyQuery_league);
        keyQuery_league = NULL;
    }
    if(valueQuery_league){
        free(valueQuery_league);
        valueQuery_league = NULL;
    }
    if(keyPairQuery_league){
        keyValuePair_free(keyPairQuery_league);
        keyPairQuery_league = NULL;
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
    if(keyQuery_useShortNameAsID){
        free(keyQuery_useShortNameAsID);
        keyQuery_useShortNameAsID = NULL;
    }
    if(valueQuery_useShortNameAsID){
        free(valueQuery_useShortNameAsID);
        valueQuery_useShortNameAsID = NULL;
    }
    if(keyPairQuery_useShortNameAsID){
        keyValuePair_free(keyPairQuery_useShortNameAsID);
        keyPairQuery_useShortNameAsID = NULL;
    }
    if(keyQuery_file){
        free(keyQuery_file);
        keyQuery_file = NULL;
    }
    if(keyPairQuery_file){
        keyValuePair_free(keyPairQuery_file);
        keyPairQuery_file = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

