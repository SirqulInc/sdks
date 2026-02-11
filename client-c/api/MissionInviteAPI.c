#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "MissionInviteAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Mission Invite
//
// Create the mission invite. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
//
mission_response_t*
MissionInviteAPI_createMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, long missionId, char *joinCode, int *includeGameData)
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
    char *localVarPath = strdup("/mission/invite/create");





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
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_joinCode = NULL;
    char * valueQuery_joinCode = NULL;
    keyValuePair_t *keyPairQuery_joinCode = 0;
    if (joinCode)
    {
        keyQuery_joinCode = strdup("joinCode");
        valueQuery_joinCode = strdup((joinCode));
        keyPairQuery_joinCode = keyValuePair_create(keyQuery_joinCode, valueQuery_joinCode);
        list_addElement(localVarQueryParameters,keyPairQuery_joinCode);
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
    mission_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MissionInviteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_response_parseFromJSON(MissionInviteAPIlocalVarJSON);
        cJSON_Delete(MissionInviteAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_joinCode){
        free(keyQuery_joinCode);
        keyQuery_joinCode = NULL;
    }
    if(valueQuery_joinCode){
        free(valueQuery_joinCode);
        valueQuery_joinCode = NULL;
    }
    if(keyPairQuery_joinCode){
        keyValuePair_free(keyPairQuery_joinCode);
        keyPairQuery_joinCode = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Mission Invite
//
// Update the mission invite status to quit.
//
sirqul_response_t*
MissionInviteAPI_deleteMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, long missionId, long missionInviteId, int *includeGameData)
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
    char *localVarPath = strdup("/mission/invite/delete");





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
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_missionInviteId = NULL;
    char * valueQuery_missionInviteId ;
    keyValuePair_t *keyPairQuery_missionInviteId = 0;
    {
        keyQuery_missionInviteId = strdup("missionInviteId");
        valueQuery_missionInviteId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionInviteId, MAX_NUMBER_LENGTH_LONG, "%d", missionInviteId);
        keyPairQuery_missionInviteId = keyValuePair_create(keyQuery_missionInviteId, valueQuery_missionInviteId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionInviteId);
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
        cJSON *MissionInviteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(MissionInviteAPIlocalVarJSON);
        cJSON_Delete(MissionInviteAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_missionInviteId){
        free(keyQuery_missionInviteId);
        keyQuery_missionInviteId = NULL;
    }
    if(keyPairQuery_missionInviteId){
        keyValuePair_free(keyPairQuery_missionInviteId);
        keyPairQuery_missionInviteId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Mission Invite
//
// Get the mission invite. An account can only be invited to a mission one time.
//
mission_response_t*
MissionInviteAPI_getMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, long missionId, long missionInviteId, int *includeGameData, char *includeScores)
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
    char *localVarPath = strdup("/mission/invite/get");





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
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_missionInviteId = NULL;
    char * valueQuery_missionInviteId ;
    keyValuePair_t *keyPairQuery_missionInviteId = 0;
    {
        keyQuery_missionInviteId = strdup("missionInviteId");
        valueQuery_missionInviteId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionInviteId, MAX_NUMBER_LENGTH_LONG, "%d", missionInviteId);
        keyPairQuery_missionInviteId = keyValuePair_create(keyQuery_missionInviteId, valueQuery_missionInviteId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionInviteId);
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
    char *keyQuery_includeScores = NULL;
    char * valueQuery_includeScores = NULL;
    keyValuePair_t *keyPairQuery_includeScores = 0;
    if (includeScores)
    {
        keyQuery_includeScores = strdup("includeScores");
        valueQuery_includeScores = strdup((includeScores));
        keyPairQuery_includeScores = keyValuePair_create(keyQuery_includeScores, valueQuery_includeScores);
        list_addElement(localVarQueryParameters,keyPairQuery_includeScores);
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
    mission_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MissionInviteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_response_parseFromJSON(MissionInviteAPIlocalVarJSON);
        cJSON_Delete(MissionInviteAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_missionInviteId){
        free(keyQuery_missionInviteId);
        keyQuery_missionInviteId = NULL;
    }
    if(keyPairQuery_missionInviteId){
        keyValuePair_free(keyPairQuery_missionInviteId);
        keyPairQuery_missionInviteId = NULL;
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
    if(keyQuery_includeScores){
        free(keyQuery_includeScores);
        keyQuery_includeScores = NULL;
    }
    if(valueQuery_includeScores){
        free(valueQuery_includeScores);
        valueQuery_includeScores = NULL;
    }
    if(keyPairQuery_includeScores){
        keyValuePair_free(keyPairQuery_includeScores);
        keyPairQuery_includeScores = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Mission Invites
//
// Get a list of mission invites that the account has.
//
list_t*
MissionInviteAPI_searchMissionInvites(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, char *appVersion, long missionId, char *status, long lastUpdated, int *start, int *limit, char *keyword, char *missionTypes, int *filterByBillable, int *includeGameData)
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
    char *localVarPath = strdup("/mission/invite/search");





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
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_status = NULL;
    char * valueQuery_status = NULL;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = strdup((status));
        keyPairQuery_status = keyValuePair_create(keyQuery_status, valueQuery_status);
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_lastUpdated = NULL;
    char * valueQuery_lastUpdated ;
    keyValuePair_t *keyPairQuery_lastUpdated = 0;
    {
        keyQuery_lastUpdated = strdup("lastUpdated");
        valueQuery_lastUpdated = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_lastUpdated, MAX_NUMBER_LENGTH_LONG, "%d", lastUpdated);
        keyPairQuery_lastUpdated = keyValuePair_create(keyQuery_lastUpdated, valueQuery_lastUpdated);
        list_addElement(localVarQueryParameters,keyPairQuery_lastUpdated);
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
    char *keyQuery_missionTypes = NULL;
    char * valueQuery_missionTypes = NULL;
    keyValuePair_t *keyPairQuery_missionTypes = 0;
    if (missionTypes)
    {
        keyQuery_missionTypes = strdup("missionTypes");
        valueQuery_missionTypes = strdup((missionTypes));
        keyPairQuery_missionTypes = keyValuePair_create(keyQuery_missionTypes, valueQuery_missionTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_missionTypes);
    }

    // query parameters
    char *keyQuery_filterByBillable = NULL;
    char * valueQuery_filterByBillable = NULL;
    keyValuePair_t *keyPairQuery_filterByBillable = 0;
    if (filterByBillable)
    {
        keyQuery_filterByBillable = strdup("filterByBillable");
        valueQuery_filterByBillable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_filterByBillable, MAX_NUMBER_LENGTH, "%d", *filterByBillable);
        keyPairQuery_filterByBillable = keyValuePair_create(keyQuery_filterByBillable, valueQuery_filterByBillable);
        list_addElement(localVarQueryParameters,keyPairQuery_filterByBillable);
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
        cJSON *MissionInviteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MissionInviteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MissionInviteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MissionInviteAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(valueQuery_status){
        free(valueQuery_status);
        valueQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_lastUpdated){
        free(keyQuery_lastUpdated);
        keyQuery_lastUpdated = NULL;
    }
    if(keyPairQuery_lastUpdated){
        keyValuePair_free(keyPairQuery_lastUpdated);
        keyPairQuery_lastUpdated = NULL;
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
    if(keyQuery_missionTypes){
        free(keyQuery_missionTypes);
        keyQuery_missionTypes = NULL;
    }
    if(valueQuery_missionTypes){
        free(valueQuery_missionTypes);
        valueQuery_missionTypes = NULL;
    }
    if(keyPairQuery_missionTypes){
        keyValuePair_free(keyPairQuery_missionTypes);
        keyPairQuery_missionTypes = NULL;
    }
    if(keyQuery_filterByBillable){
        free(keyQuery_filterByBillable);
        keyQuery_filterByBillable = NULL;
    }
    if(valueQuery_filterByBillable){
        free(valueQuery_filterByBillable);
        valueQuery_filterByBillable = NULL;
    }
    if(keyPairQuery_filterByBillable){
        keyValuePair_free(keyPairQuery_filterByBillable);
        keyPairQuery_filterByBillable = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Mission Invite
//
// Update the mission invite status. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
//
mission_response_t*
MissionInviteAPI_updateMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, long missionId, long missionInviteId, long packId, long gameLevelId, char *status, char *permissionableType, long permissionableId, int *includeGameData)
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
    char *localVarPath = strdup("/mission/invite/update");





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
    char *keyQuery_missionId = NULL;
    char * valueQuery_missionId ;
    keyValuePair_t *keyPairQuery_missionId = 0;
    {
        keyQuery_missionId = strdup("missionId");
        valueQuery_missionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionId, MAX_NUMBER_LENGTH_LONG, "%d", missionId);
        keyPairQuery_missionId = keyValuePair_create(keyQuery_missionId, valueQuery_missionId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionId);
    }

    // query parameters
    char *keyQuery_missionInviteId = NULL;
    char * valueQuery_missionInviteId ;
    keyValuePair_t *keyPairQuery_missionInviteId = 0;
    {
        keyQuery_missionInviteId = strdup("missionInviteId");
        valueQuery_missionInviteId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_missionInviteId, MAX_NUMBER_LENGTH_LONG, "%d", missionInviteId);
        keyPairQuery_missionInviteId = keyValuePair_create(keyQuery_missionInviteId, valueQuery_missionInviteId);
        list_addElement(localVarQueryParameters,keyPairQuery_missionInviteId);
    }

    // query parameters
    char *keyQuery_packId = NULL;
    char * valueQuery_packId ;
    keyValuePair_t *keyPairQuery_packId = 0;
    {
        keyQuery_packId = strdup("packId");
        valueQuery_packId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_packId, MAX_NUMBER_LENGTH_LONG, "%d", packId);
        keyPairQuery_packId = keyValuePair_create(keyQuery_packId, valueQuery_packId);
        list_addElement(localVarQueryParameters,keyPairQuery_packId);
    }

    // query parameters
    char *keyQuery_gameLevelId = NULL;
    char * valueQuery_gameLevelId ;
    keyValuePair_t *keyPairQuery_gameLevelId = 0;
    {
        keyQuery_gameLevelId = strdup("gameLevelId");
        valueQuery_gameLevelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameLevelId, MAX_NUMBER_LENGTH_LONG, "%d", gameLevelId);
        keyPairQuery_gameLevelId = keyValuePair_create(keyQuery_gameLevelId, valueQuery_gameLevelId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameLevelId);
    }

    // query parameters
    char *keyQuery_status = NULL;
    char * valueQuery_status = NULL;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = strdup((status));
        keyPairQuery_status = keyValuePair_create(keyQuery_status, valueQuery_status);
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_permissionableType = NULL;
    char * valueQuery_permissionableType = NULL;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = strdup((permissionableType));
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, valueQuery_permissionableType);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
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
    mission_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *MissionInviteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_response_parseFromJSON(MissionInviteAPIlocalVarJSON);
        cJSON_Delete(MissionInviteAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_missionInviteId){
        free(keyQuery_missionInviteId);
        keyQuery_missionInviteId = NULL;
    }
    if(keyPairQuery_missionInviteId){
        keyValuePair_free(keyPairQuery_missionInviteId);
        keyPairQuery_missionInviteId = NULL;
    }
    if(keyQuery_packId){
        free(keyQuery_packId);
        keyQuery_packId = NULL;
    }
    if(keyPairQuery_packId){
        keyValuePair_free(keyPairQuery_packId);
        keyPairQuery_packId = NULL;
    }
    if(keyQuery_gameLevelId){
        free(keyQuery_gameLevelId);
        keyQuery_gameLevelId = NULL;
    }
    if(keyPairQuery_gameLevelId){
        keyValuePair_free(keyPairQuery_gameLevelId);
        keyPairQuery_gameLevelId = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(valueQuery_status){
        free(valueQuery_status);
        valueQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(valueQuery_permissionableType){
        free(valueQuery_permissionableType);
        valueQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

