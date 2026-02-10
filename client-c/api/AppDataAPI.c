#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AppDataAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Get App Data
//
// Get the application data structure.  The basic structure is a   node tree, with the root node being a AppResponse.  The response contains   the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.     Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application.
//
app_response_t*
AppDataAPI_getAppData(apiClient_t *apiClient, double version, int *start, int *limit, char *deviceId, long accountId, char *gameType, int *includeGameData, char *q, char *keyword, char *sortField, int *descending, int *_i, int *_l, int *gameObjectCount, char *filter, long dateCreated, long ownerId, char *missionIds, char *gameIds, char *packIds, char *gameLevelIds, char *appVersion, int *includeHigherVersionPacks, int *includeHigherVersionLevels, char *responseGroups, char *purchaseType)
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
    char *localVarPath = strdup("/api/{version}/app/get");



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
    char *keyQuery_includeGameData = NULL;
    char * valueQuery_includeGameData = NULL;
    keyValuePair_t *keyPairQuery_includeGameData = 0;
    if (includeGameData)
    {
        keyQuery_includeGameData = strdup("includeGameData");
        valueQuery_includeGameData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeGameData, MAX_NUMBER_LENGTH, "%d", *includeGameData);
        keyPairQuery_includeGameData = keyValuePair_create(keyQuery_includeGameData, valueQuery_includeGameData);
        list_addElement(localVarQueryParameters,keyPairQuery_includeGameData);
    }

    // query parameters
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
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
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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

    // query parameters
    char *keyQuery_gameObjectCount = NULL;
    char * valueQuery_gameObjectCount = NULL;
    keyValuePair_t *keyPairQuery_gameObjectCount = 0;
    if (gameObjectCount)
    {
        keyQuery_gameObjectCount = strdup("gameObjectCount");
        valueQuery_gameObjectCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_gameObjectCount, MAX_NUMBER_LENGTH, "%d", *gameObjectCount);
        keyPairQuery_gameObjectCount = keyValuePair_create(keyQuery_gameObjectCount, valueQuery_gameObjectCount);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectCount);
    }

    // query parameters
    char *keyQuery_filter = NULL;
    char * valueQuery_filter = NULL;
    keyValuePair_t *keyPairQuery_filter = 0;
    if (filter)
    {
        keyQuery_filter = strdup("filter");
        valueQuery_filter = strdup((filter));
        keyPairQuery_filter = keyValuePair_create(keyQuery_filter, valueQuery_filter);
        list_addElement(localVarQueryParameters,keyPairQuery_filter);
    }

    // query parameters
    char *keyQuery_dateCreated = NULL;
    char * valueQuery_dateCreated ;
    keyValuePair_t *keyPairQuery_dateCreated = 0;
    {
        keyQuery_dateCreated = strdup("dateCreated");
        valueQuery_dateCreated = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dateCreated, MAX_NUMBER_LENGTH_LONG, "%d", dateCreated);
        keyPairQuery_dateCreated = keyValuePair_create(keyQuery_dateCreated, valueQuery_dateCreated);
        list_addElement(localVarQueryParameters,keyPairQuery_dateCreated);
    }

    // query parameters
    char *keyQuery_ownerId = NULL;
    char * valueQuery_ownerId ;
    keyValuePair_t *keyPairQuery_ownerId = 0;
    {
        keyQuery_ownerId = strdup("ownerId");
        valueQuery_ownerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ownerId, MAX_NUMBER_LENGTH_LONG, "%d", ownerId);
        keyPairQuery_ownerId = keyValuePair_create(keyQuery_ownerId, valueQuery_ownerId);
        list_addElement(localVarQueryParameters,keyPairQuery_ownerId);
    }

    // query parameters
    char *keyQuery_missionIds = NULL;
    char * valueQuery_missionIds = NULL;
    keyValuePair_t *keyPairQuery_missionIds = 0;
    if (missionIds)
    {
        keyQuery_missionIds = strdup("missionIds");
        valueQuery_missionIds = strdup((missionIds));
        keyPairQuery_missionIds = keyValuePair_create(keyQuery_missionIds, valueQuery_missionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_missionIds);
    }

    // query parameters
    char *keyQuery_gameIds = NULL;
    char * valueQuery_gameIds = NULL;
    keyValuePair_t *keyPairQuery_gameIds = 0;
    if (gameIds)
    {
        keyQuery_gameIds = strdup("gameIds");
        valueQuery_gameIds = strdup((gameIds));
        keyPairQuery_gameIds = keyValuePair_create(keyQuery_gameIds, valueQuery_gameIds);
        list_addElement(localVarQueryParameters,keyPairQuery_gameIds);
    }

    // query parameters
    char *keyQuery_packIds = NULL;
    char * valueQuery_packIds = NULL;
    keyValuePair_t *keyPairQuery_packIds = 0;
    if (packIds)
    {
        keyQuery_packIds = strdup("packIds");
        valueQuery_packIds = strdup((packIds));
        keyPairQuery_packIds = keyValuePair_create(keyQuery_packIds, valueQuery_packIds);
        list_addElement(localVarQueryParameters,keyPairQuery_packIds);
    }

    // query parameters
    char *keyQuery_gameLevelIds = NULL;
    char * valueQuery_gameLevelIds = NULL;
    keyValuePair_t *keyPairQuery_gameLevelIds = 0;
    if (gameLevelIds)
    {
        keyQuery_gameLevelIds = strdup("gameLevelIds");
        valueQuery_gameLevelIds = strdup((gameLevelIds));
        keyPairQuery_gameLevelIds = keyValuePair_create(keyQuery_gameLevelIds, valueQuery_gameLevelIds);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelIds);
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

    // query parameters
    char *keyQuery_includeHigherVersionPacks = NULL;
    char * valueQuery_includeHigherVersionPacks = NULL;
    keyValuePair_t *keyPairQuery_includeHigherVersionPacks = 0;
    if (includeHigherVersionPacks)
    {
        keyQuery_includeHigherVersionPacks = strdup("includeHigherVersionPacks");
        valueQuery_includeHigherVersionPacks = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeHigherVersionPacks, MAX_NUMBER_LENGTH, "%d", *includeHigherVersionPacks);
        keyPairQuery_includeHigherVersionPacks = keyValuePair_create(keyQuery_includeHigherVersionPacks, valueQuery_includeHigherVersionPacks);
        list_addElement(localVarQueryParameters,keyPairQuery_includeHigherVersionPacks);
    }

    // query parameters
    char *keyQuery_includeHigherVersionLevels = NULL;
    char * valueQuery_includeHigherVersionLevels = NULL;
    keyValuePair_t *keyPairQuery_includeHigherVersionLevels = 0;
    if (includeHigherVersionLevels)
    {
        keyQuery_includeHigherVersionLevels = strdup("includeHigherVersionLevels");
        valueQuery_includeHigherVersionLevels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeHigherVersionLevels, MAX_NUMBER_LENGTH, "%d", *includeHigherVersionLevels);
        keyPairQuery_includeHigherVersionLevels = keyValuePair_create(keyQuery_includeHigherVersionLevels, valueQuery_includeHigherVersionLevels);
        list_addElement(localVarQueryParameters,keyPairQuery_includeHigherVersionLevels);
    }

    // query parameters
    char *keyQuery_responseGroups = NULL;
    char * valueQuery_responseGroups = NULL;
    keyValuePair_t *keyPairQuery_responseGroups = 0;
    if (responseGroups)
    {
        keyQuery_responseGroups = strdup("responseGroups");
        valueQuery_responseGroups = strdup((responseGroups));
        keyPairQuery_responseGroups = keyValuePair_create(keyQuery_responseGroups, valueQuery_responseGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_responseGroups);
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
    app_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AppDataAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = app_response_parseFromJSON(AppDataAPIlocalVarJSON);
        cJSON_Delete(AppDataAPIlocalVarJSON);
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
    if(keyQuery_includeGameData){
        free(keyQuery_includeGameData);
        keyQuery_includeGameData = NULL;
    }
    if(valueQuery_includeGameData){
        free(valueQuery_includeGameData);
        valueQuery_includeGameData = NULL;
    }
    if(keyPairQuery_includeGameData){
        keyValuePair_free(keyPairQuery_includeGameData);
        keyPairQuery_includeGameData = NULL;
    }
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
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
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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
    if(keyQuery_gameObjectCount){
        free(keyQuery_gameObjectCount);
        keyQuery_gameObjectCount = NULL;
    }
    if(valueQuery_gameObjectCount){
        free(valueQuery_gameObjectCount);
        valueQuery_gameObjectCount = NULL;
    }
    if(keyPairQuery_gameObjectCount){
        keyValuePair_free(keyPairQuery_gameObjectCount);
        keyPairQuery_gameObjectCount = NULL;
    }
    if(keyQuery_filter){
        free(keyQuery_filter);
        keyQuery_filter = NULL;
    }
    if(valueQuery_filter){
        free(valueQuery_filter);
        valueQuery_filter = NULL;
    }
    if(keyPairQuery_filter){
        keyValuePair_free(keyPairQuery_filter);
        keyPairQuery_filter = NULL;
    }
    if(keyQuery_dateCreated){
        free(keyQuery_dateCreated);
        keyQuery_dateCreated = NULL;
    }
    if(keyPairQuery_dateCreated){
        keyValuePair_free(keyPairQuery_dateCreated);
        keyPairQuery_dateCreated = NULL;
    }
    if(keyQuery_ownerId){
        free(keyQuery_ownerId);
        keyQuery_ownerId = NULL;
    }
    if(keyPairQuery_ownerId){
        keyValuePair_free(keyPairQuery_ownerId);
        keyPairQuery_ownerId = NULL;
    }
    if(keyQuery_missionIds){
        free(keyQuery_missionIds);
        keyQuery_missionIds = NULL;
    }
    if(valueQuery_missionIds){
        free(valueQuery_missionIds);
        valueQuery_missionIds = NULL;
    }
    if(keyPairQuery_missionIds){
        keyValuePair_free(keyPairQuery_missionIds);
        keyPairQuery_missionIds = NULL;
    }
    if(keyQuery_gameIds){
        free(keyQuery_gameIds);
        keyQuery_gameIds = NULL;
    }
    if(valueQuery_gameIds){
        free(valueQuery_gameIds);
        valueQuery_gameIds = NULL;
    }
    if(keyPairQuery_gameIds){
        keyValuePair_free(keyPairQuery_gameIds);
        keyPairQuery_gameIds = NULL;
    }
    if(keyQuery_packIds){
        free(keyQuery_packIds);
        keyQuery_packIds = NULL;
    }
    if(valueQuery_packIds){
        free(valueQuery_packIds);
        valueQuery_packIds = NULL;
    }
    if(keyPairQuery_packIds){
        keyValuePair_free(keyPairQuery_packIds);
        keyPairQuery_packIds = NULL;
    }
    if(keyQuery_gameLevelIds){
        free(keyQuery_gameLevelIds);
        keyQuery_gameLevelIds = NULL;
    }
    if(valueQuery_gameLevelIds){
        free(valueQuery_gameLevelIds);
        valueQuery_gameLevelIds = NULL;
    }
    if(keyPairQuery_gameLevelIds){
        keyValuePair_free(keyPairQuery_gameLevelIds);
        keyPairQuery_gameLevelIds = NULL;
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
    if(keyQuery_includeHigherVersionPacks){
        free(keyQuery_includeHigherVersionPacks);
        keyQuery_includeHigherVersionPacks = NULL;
    }
    if(valueQuery_includeHigherVersionPacks){
        free(valueQuery_includeHigherVersionPacks);
        valueQuery_includeHigherVersionPacks = NULL;
    }
    if(keyPairQuery_includeHigherVersionPacks){
        keyValuePair_free(keyPairQuery_includeHigherVersionPacks);
        keyPairQuery_includeHigherVersionPacks = NULL;
    }
    if(keyQuery_includeHigherVersionLevels){
        free(keyQuery_includeHigherVersionLevels);
        keyQuery_includeHigherVersionLevels = NULL;
    }
    if(valueQuery_includeHigherVersionLevels){
        free(valueQuery_includeHigherVersionLevels);
        valueQuery_includeHigherVersionLevels = NULL;
    }
    if(keyPairQuery_includeHigherVersionLevels){
        keyValuePair_free(keyPairQuery_includeHigherVersionLevels);
        keyPairQuery_includeHigherVersionLevels = NULL;
    }
    if(keyQuery_responseGroups){
        free(keyQuery_responseGroups);
        keyQuery_responseGroups = NULL;
    }
    if(valueQuery_responseGroups){
        free(valueQuery_responseGroups);
        valueQuery_responseGroups = NULL;
    }
    if(keyPairQuery_responseGroups){
        keyValuePair_free(keyPairQuery_responseGroups);
        keyPairQuery_responseGroups = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create App Data
//
// Publish the application data structure.  Can be used to save levels   and scores.  It then returns the application data structure.  The basic   structure is a node tree, with the root node being a AppResponse.  The response   contains the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.      Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application
//
app_response_t*
AppDataAPI_postAppData(apiClient_t *apiClient, double version, char *gameType, int *start, int *limit, char *data, char *deviceId, long accountId, int *includeGameData, char *q, char *keyword, char *sortField, int *descending, int *_i, int *_l, int *gameObjectCount, char *filter, long dateCreated, long ownerId, char *missionIds, char *gameIds, char *packIds, char *gameLevelIds, char *appVersion, int *includeHigherVersionPacks, int *includeHigherVersionLevels, char *responseGroups, char *purchaseType)
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
    char *localVarPath = strdup("/api/{version}/app/post");



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
    char *keyQuery_includeGameData = NULL;
    char * valueQuery_includeGameData = NULL;
    keyValuePair_t *keyPairQuery_includeGameData = 0;
    if (includeGameData)
    {
        keyQuery_includeGameData = strdup("includeGameData");
        valueQuery_includeGameData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeGameData, MAX_NUMBER_LENGTH, "%d", *includeGameData);
        keyPairQuery_includeGameData = keyValuePair_create(keyQuery_includeGameData, valueQuery_includeGameData);
        list_addElement(localVarQueryParameters,keyPairQuery_includeGameData);
    }

    // query parameters
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
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
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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

    // query parameters
    char *keyQuery_gameObjectCount = NULL;
    char * valueQuery_gameObjectCount = NULL;
    keyValuePair_t *keyPairQuery_gameObjectCount = 0;
    if (gameObjectCount)
    {
        keyQuery_gameObjectCount = strdup("gameObjectCount");
        valueQuery_gameObjectCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_gameObjectCount, MAX_NUMBER_LENGTH, "%d", *gameObjectCount);
        keyPairQuery_gameObjectCount = keyValuePair_create(keyQuery_gameObjectCount, valueQuery_gameObjectCount);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectCount);
    }

    // query parameters
    char *keyQuery_filter = NULL;
    char * valueQuery_filter = NULL;
    keyValuePair_t *keyPairQuery_filter = 0;
    if (filter)
    {
        keyQuery_filter = strdup("filter");
        valueQuery_filter = strdup((filter));
        keyPairQuery_filter = keyValuePair_create(keyQuery_filter, valueQuery_filter);
        list_addElement(localVarQueryParameters,keyPairQuery_filter);
    }

    // query parameters
    char *keyQuery_dateCreated = NULL;
    char * valueQuery_dateCreated ;
    keyValuePair_t *keyPairQuery_dateCreated = 0;
    {
        keyQuery_dateCreated = strdup("dateCreated");
        valueQuery_dateCreated = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dateCreated, MAX_NUMBER_LENGTH_LONG, "%d", dateCreated);
        keyPairQuery_dateCreated = keyValuePair_create(keyQuery_dateCreated, valueQuery_dateCreated);
        list_addElement(localVarQueryParameters,keyPairQuery_dateCreated);
    }

    // query parameters
    char *keyQuery_ownerId = NULL;
    char * valueQuery_ownerId ;
    keyValuePair_t *keyPairQuery_ownerId = 0;
    {
        keyQuery_ownerId = strdup("ownerId");
        valueQuery_ownerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ownerId, MAX_NUMBER_LENGTH_LONG, "%d", ownerId);
        keyPairQuery_ownerId = keyValuePair_create(keyQuery_ownerId, valueQuery_ownerId);
        list_addElement(localVarQueryParameters,keyPairQuery_ownerId);
    }

    // query parameters
    char *keyQuery_missionIds = NULL;
    char * valueQuery_missionIds = NULL;
    keyValuePair_t *keyPairQuery_missionIds = 0;
    if (missionIds)
    {
        keyQuery_missionIds = strdup("missionIds");
        valueQuery_missionIds = strdup((missionIds));
        keyPairQuery_missionIds = keyValuePair_create(keyQuery_missionIds, valueQuery_missionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_missionIds);
    }

    // query parameters
    char *keyQuery_gameIds = NULL;
    char * valueQuery_gameIds = NULL;
    keyValuePair_t *keyPairQuery_gameIds = 0;
    if (gameIds)
    {
        keyQuery_gameIds = strdup("gameIds");
        valueQuery_gameIds = strdup((gameIds));
        keyPairQuery_gameIds = keyValuePair_create(keyQuery_gameIds, valueQuery_gameIds);
        list_addElement(localVarQueryParameters,keyPairQuery_gameIds);
    }

    // query parameters
    char *keyQuery_packIds = NULL;
    char * valueQuery_packIds = NULL;
    keyValuePair_t *keyPairQuery_packIds = 0;
    if (packIds)
    {
        keyQuery_packIds = strdup("packIds");
        valueQuery_packIds = strdup((packIds));
        keyPairQuery_packIds = keyValuePair_create(keyQuery_packIds, valueQuery_packIds);
        list_addElement(localVarQueryParameters,keyPairQuery_packIds);
    }

    // query parameters
    char *keyQuery_gameLevelIds = NULL;
    char * valueQuery_gameLevelIds = NULL;
    keyValuePair_t *keyPairQuery_gameLevelIds = 0;
    if (gameLevelIds)
    {
        keyQuery_gameLevelIds = strdup("gameLevelIds");
        valueQuery_gameLevelIds = strdup((gameLevelIds));
        keyPairQuery_gameLevelIds = keyValuePair_create(keyQuery_gameLevelIds, valueQuery_gameLevelIds);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelIds);
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

    // query parameters
    char *keyQuery_includeHigherVersionPacks = NULL;
    char * valueQuery_includeHigherVersionPacks = NULL;
    keyValuePair_t *keyPairQuery_includeHigherVersionPacks = 0;
    if (includeHigherVersionPacks)
    {
        keyQuery_includeHigherVersionPacks = strdup("includeHigherVersionPacks");
        valueQuery_includeHigherVersionPacks = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeHigherVersionPacks, MAX_NUMBER_LENGTH, "%d", *includeHigherVersionPacks);
        keyPairQuery_includeHigherVersionPacks = keyValuePair_create(keyQuery_includeHigherVersionPacks, valueQuery_includeHigherVersionPacks);
        list_addElement(localVarQueryParameters,keyPairQuery_includeHigherVersionPacks);
    }

    // query parameters
    char *keyQuery_includeHigherVersionLevels = NULL;
    char * valueQuery_includeHigherVersionLevels = NULL;
    keyValuePair_t *keyPairQuery_includeHigherVersionLevels = 0;
    if (includeHigherVersionLevels)
    {
        keyQuery_includeHigherVersionLevels = strdup("includeHigherVersionLevels");
        valueQuery_includeHigherVersionLevels = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeHigherVersionLevels, MAX_NUMBER_LENGTH, "%d", *includeHigherVersionLevels);
        keyPairQuery_includeHigherVersionLevels = keyValuePair_create(keyQuery_includeHigherVersionLevels, valueQuery_includeHigherVersionLevels);
        list_addElement(localVarQueryParameters,keyPairQuery_includeHigherVersionLevels);
    }

    // query parameters
    char *keyQuery_responseGroups = NULL;
    char * valueQuery_responseGroups = NULL;
    keyValuePair_t *keyPairQuery_responseGroups = 0;
    if (responseGroups)
    {
        keyQuery_responseGroups = strdup("responseGroups");
        valueQuery_responseGroups = strdup((responseGroups));
        keyPairQuery_responseGroups = keyValuePair_create(keyQuery_responseGroups, valueQuery_responseGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_responseGroups);
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
    char *keyQuery_data = NULL;
    char * valueQuery_data = NULL;
    keyValuePair_t *keyPairQuery_data = 0;
    if (data)
    {
        keyQuery_data = strdup("data");
        valueQuery_data = strdup((data));
        keyPairQuery_data = keyValuePair_create(keyQuery_data, valueQuery_data);
        list_addElement(localVarQueryParameters,keyPairQuery_data);
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
    app_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AppDataAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = app_response_parseFromJSON(AppDataAPIlocalVarJSON);
        cJSON_Delete(AppDataAPIlocalVarJSON);
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
    if(keyQuery_includeGameData){
        free(keyQuery_includeGameData);
        keyQuery_includeGameData = NULL;
    }
    if(valueQuery_includeGameData){
        free(valueQuery_includeGameData);
        valueQuery_includeGameData = NULL;
    }
    if(keyPairQuery_includeGameData){
        keyValuePair_free(keyPairQuery_includeGameData);
        keyPairQuery_includeGameData = NULL;
    }
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
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
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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
    if(keyQuery_gameObjectCount){
        free(keyQuery_gameObjectCount);
        keyQuery_gameObjectCount = NULL;
    }
    if(valueQuery_gameObjectCount){
        free(valueQuery_gameObjectCount);
        valueQuery_gameObjectCount = NULL;
    }
    if(keyPairQuery_gameObjectCount){
        keyValuePair_free(keyPairQuery_gameObjectCount);
        keyPairQuery_gameObjectCount = NULL;
    }
    if(keyQuery_filter){
        free(keyQuery_filter);
        keyQuery_filter = NULL;
    }
    if(valueQuery_filter){
        free(valueQuery_filter);
        valueQuery_filter = NULL;
    }
    if(keyPairQuery_filter){
        keyValuePair_free(keyPairQuery_filter);
        keyPairQuery_filter = NULL;
    }
    if(keyQuery_dateCreated){
        free(keyQuery_dateCreated);
        keyQuery_dateCreated = NULL;
    }
    if(keyPairQuery_dateCreated){
        keyValuePair_free(keyPairQuery_dateCreated);
        keyPairQuery_dateCreated = NULL;
    }
    if(keyQuery_ownerId){
        free(keyQuery_ownerId);
        keyQuery_ownerId = NULL;
    }
    if(keyPairQuery_ownerId){
        keyValuePair_free(keyPairQuery_ownerId);
        keyPairQuery_ownerId = NULL;
    }
    if(keyQuery_missionIds){
        free(keyQuery_missionIds);
        keyQuery_missionIds = NULL;
    }
    if(valueQuery_missionIds){
        free(valueQuery_missionIds);
        valueQuery_missionIds = NULL;
    }
    if(keyPairQuery_missionIds){
        keyValuePair_free(keyPairQuery_missionIds);
        keyPairQuery_missionIds = NULL;
    }
    if(keyQuery_gameIds){
        free(keyQuery_gameIds);
        keyQuery_gameIds = NULL;
    }
    if(valueQuery_gameIds){
        free(valueQuery_gameIds);
        valueQuery_gameIds = NULL;
    }
    if(keyPairQuery_gameIds){
        keyValuePair_free(keyPairQuery_gameIds);
        keyPairQuery_gameIds = NULL;
    }
    if(keyQuery_packIds){
        free(keyQuery_packIds);
        keyQuery_packIds = NULL;
    }
    if(valueQuery_packIds){
        free(valueQuery_packIds);
        valueQuery_packIds = NULL;
    }
    if(keyPairQuery_packIds){
        keyValuePair_free(keyPairQuery_packIds);
        keyPairQuery_packIds = NULL;
    }
    if(keyQuery_gameLevelIds){
        free(keyQuery_gameLevelIds);
        keyQuery_gameLevelIds = NULL;
    }
    if(valueQuery_gameLevelIds){
        free(valueQuery_gameLevelIds);
        valueQuery_gameLevelIds = NULL;
    }
    if(keyPairQuery_gameLevelIds){
        keyValuePair_free(keyPairQuery_gameLevelIds);
        keyPairQuery_gameLevelIds = NULL;
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
    if(keyQuery_includeHigherVersionPacks){
        free(keyQuery_includeHigherVersionPacks);
        keyQuery_includeHigherVersionPacks = NULL;
    }
    if(valueQuery_includeHigherVersionPacks){
        free(valueQuery_includeHigherVersionPacks);
        valueQuery_includeHigherVersionPacks = NULL;
    }
    if(keyPairQuery_includeHigherVersionPacks){
        keyValuePair_free(keyPairQuery_includeHigherVersionPacks);
        keyPairQuery_includeHigherVersionPacks = NULL;
    }
    if(keyQuery_includeHigherVersionLevels){
        free(keyQuery_includeHigherVersionLevels);
        keyQuery_includeHigherVersionLevels = NULL;
    }
    if(valueQuery_includeHigherVersionLevels){
        free(valueQuery_includeHigherVersionLevels);
        valueQuery_includeHigherVersionLevels = NULL;
    }
    if(keyPairQuery_includeHigherVersionLevels){
        keyValuePair_free(keyPairQuery_includeHigherVersionLevels);
        keyPairQuery_includeHigherVersionLevels = NULL;
    }
    if(keyQuery_responseGroups){
        free(keyQuery_responseGroups);
        keyQuery_responseGroups = NULL;
    }
    if(valueQuery_responseGroups){
        free(valueQuery_responseGroups);
        valueQuery_responseGroups = NULL;
    }
    if(keyPairQuery_responseGroups){
        keyValuePair_free(keyPairQuery_responseGroups);
        keyPairQuery_responseGroups = NULL;
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
    if(keyQuery_data){
        free(keyQuery_data);
        keyQuery_data = NULL;
    }
    if(valueQuery_data){
        free(valueQuery_data);
        valueQuery_data = NULL;
    }
    if(keyPairQuery_data){
        keyValuePair_free(keyPairQuery_data);
        keyPairQuery_data = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Regenerate App Data
//
// Regenerate the app data cache for apps
//
sirqul_response_t*
AppDataAPI_regenAppData(apiClient_t *apiClient, double version, long accountId, char *appKey, char *buildVersion, char *apiVersion)
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
    char *localVarPath = strdup("/api/{version}/app/regen");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_buildVersion = NULL;
    char * valueQuery_buildVersion = NULL;
    keyValuePair_t *keyPairQuery_buildVersion = 0;
    if (buildVersion)
    {
        keyQuery_buildVersion = strdup("buildVersion");
        valueQuery_buildVersion = strdup((buildVersion));
        keyPairQuery_buildVersion = keyValuePair_create(keyQuery_buildVersion, valueQuery_buildVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_buildVersion);
    }

    // query parameters
    char *keyQuery_apiVersion = NULL;
    char * valueQuery_apiVersion = NULL;
    keyValuePair_t *keyPairQuery_apiVersion = 0;
    if (apiVersion)
    {
        keyQuery_apiVersion = strdup("apiVersion");
        valueQuery_apiVersion = strdup((apiVersion));
        keyPairQuery_apiVersion = keyValuePair_create(keyQuery_apiVersion, valueQuery_apiVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_apiVersion);
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
        cJSON *AppDataAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AppDataAPIlocalVarJSON);
        cJSON_Delete(AppDataAPIlocalVarJSON);
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
    if(keyQuery_buildVersion){
        free(keyQuery_buildVersion);
        keyQuery_buildVersion = NULL;
    }
    if(valueQuery_buildVersion){
        free(valueQuery_buildVersion);
        valueQuery_buildVersion = NULL;
    }
    if(keyPairQuery_buildVersion){
        keyValuePair_free(keyPairQuery_buildVersion);
        keyPairQuery_buildVersion = NULL;
    }
    if(keyQuery_apiVersion){
        free(keyQuery_apiVersion);
        keyQuery_apiVersion = NULL;
    }
    if(valueQuery_apiVersion){
        free(valueQuery_apiVersion);
        valueQuery_apiVersion = NULL;
    }
    if(keyPairQuery_apiVersion){
        keyValuePair_free(keyPairQuery_apiVersion);
        keyPairQuery_apiVersion = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

