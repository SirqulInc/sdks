#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ConnectionAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for ConnectionAPI_groupSearch

static char* groupSearch_SORTFIELD_ToString(sirqul_iot_platform_groupSearch_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "ACTIVE", "NAME", "DESCRIPTION", "CAN_VIEW_PROFILE_INFO", "CAN_VIEW_GAME_INFO", "CAN_VIEW_FRIEND_INFO", "INVITE_CODE", "OWNER_DISPLAY", "OWNER_USERNAME" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_groupSearch_sortField_e groupSearch_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "CREATED", "UPDATED", "ACTIVE", "NAME", "DESCRIPTION", "CAN_VIEW_PROFILE_INFO", "CAN_VIEW_GAME_INFO", "CAN_VIEW_FRIEND_INFO", "INVITE_CODE", "OWNER_DISPLAY", "OWNER_USERNAME" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function groupSearch_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *groupSearch_SORTFIELD_convertToJSON(sirqul_iot_platform_groupSearch_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", groupSearch_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function groupSearch_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_groupSearch_sortField_e groupSearch_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_groupSearch_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = groupSearch_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Add Connection
//
// Adds a connection to a group.
//
sirqul_response_t*
ConnectionAPI_addConnectionToGroup(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *deviceId, long accountId, long connectionId, long connectionAccountId, long pendingId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/group/addConnection");



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
    char *keyQuery_connectionId = NULL;
    char * valueQuery_connectionId ;
    keyValuePair_t *keyPairQuery_connectionId = 0;
    {
        keyQuery_connectionId = strdup("connectionId");
        valueQuery_connectionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionId, MAX_NUMBER_LENGTH_LONG, "%d", connectionId);
        keyPairQuery_connectionId = keyValuePair_create(keyQuery_connectionId, valueQuery_connectionId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionId);
    }

    // query parameters
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
    }

    // query parameters
    char *keyQuery_pendingId = NULL;
    char * valueQuery_pendingId ;
    keyValuePair_t *keyPairQuery_pendingId = 0;
    {
        keyQuery_pendingId = strdup("pendingId");
        valueQuery_pendingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_pendingId, MAX_NUMBER_LENGTH_LONG, "%d", pendingId);
        keyPairQuery_pendingId = keyValuePair_create(keyQuery_pendingId, valueQuery_pendingId);
        list_addElement(localVarQueryParameters,keyPairQuery_pendingId);
    }

    // query parameters
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionId){
        free(keyQuery_connectionId);
        keyQuery_connectionId = NULL;
    }
    if(keyPairQuery_connectionId){
        keyValuePair_free(keyPairQuery_connectionId);
        keyPairQuery_connectionId = NULL;
    }
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_pendingId){
        free(keyQuery_pendingId);
        keyQuery_pendingId = NULL;
    }
    if(keyPairQuery_pendingId){
        keyValuePair_free(keyPairQuery_pendingId);
        keyPairQuery_pendingId = NULL;
    }
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
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

// Add Connections
//
// Adds a list of connections to a group.
//
sirqul_response_t*
ConnectionAPI_addConnectionsToGroup(apiClient_t *apiClient, double version, long connectionGroupId, char *deviceId, long accountId, char *connectionIds, char *connectionAccountIds, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/connection/group/addConnections");



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
    char *keyQuery_connectionIds = NULL;
    char * valueQuery_connectionIds = NULL;
    keyValuePair_t *keyPairQuery_connectionIds = 0;
    if (connectionIds)
    {
        keyQuery_connectionIds = strdup("connectionIds");
        valueQuery_connectionIds = strdup((connectionIds));
        keyPairQuery_connectionIds = keyValuePair_create(keyQuery_connectionIds, valueQuery_connectionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionIds);
    }

    // query parameters
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
    }

    // query parameters
    char *keyQuery_connectionGroupId = NULL;
    char * valueQuery_connectionGroupId ;
    keyValuePair_t *keyPairQuery_connectionGroupId = 0;
    {
        keyQuery_connectionGroupId = strdup("connectionGroupId");
        valueQuery_connectionGroupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionGroupId, MAX_NUMBER_LENGTH_LONG, "%d", connectionGroupId);
        keyPairQuery_connectionGroupId = keyValuePair_create(keyQuery_connectionGroupId, valueQuery_connectionGroupId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionIds){
        free(keyQuery_connectionIds);
        keyQuery_connectionIds = NULL;
    }
    if(valueQuery_connectionIds){
        free(valueQuery_connectionIds);
        valueQuery_connectionIds = NULL;
    }
    if(keyPairQuery_connectionIds){
        keyValuePair_free(keyPairQuery_connectionIds);
        keyPairQuery_connectionIds = NULL;
    }
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
    }
    if(keyQuery_connectionGroupId){
        free(keyQuery_connectionGroupId);
        keyQuery_connectionGroupId = NULL;
    }
    if(keyPairQuery_connectionGroupId){
        keyValuePair_free(keyPairQuery_connectionGroupId);
        keyPairQuery_connectionGroupId = NULL;
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

// Add Connection Groups
//
// Add sub groups to a group.
//
connection_group_response_t*
ConnectionAPI_addSubGroups(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *subGroupIds, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/group/addSubGroup");



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
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
    }

    // query parameters
    char *keyQuery_subGroupIds = NULL;
    char * valueQuery_subGroupIds = NULL;
    keyValuePair_t *keyPairQuery_subGroupIds = 0;
    if (subGroupIds)
    {
        keyQuery_subGroupIds = strdup("subGroupIds");
        valueQuery_subGroupIds = strdup((subGroupIds));
        keyPairQuery_subGroupIds = keyValuePair_create(keyQuery_subGroupIds, valueQuery_subGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_subGroupIds);
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
    connection_group_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = connection_group_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
    }
    if(keyQuery_subGroupIds){
        free(keyQuery_subGroupIds);
        keyQuery_subGroupIds = NULL;
    }
    if(valueQuery_subGroupIds){
        free(valueQuery_subGroupIds);
        valueQuery_subGroupIds = NULL;
    }
    if(keyPairQuery_subGroupIds){
        keyValuePair_free(keyPairQuery_subGroupIds);
        keyPairQuery_subGroupIds = NULL;
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

// Create or Update Connection
//
// Creates or updates the connection of the user and another account. Allows a user to follow, block, mark as trusted, and/or add someone to a group.
//
connection_response_t*
ConnectionAPI_createOrUpdateConnection(apiClient_t *apiClient, double version, char *deviceId, long accountId, long connectionId, long connectionAccountId, long pendingId, long groupId, char *gameType, char *appKey, int *isTrusted, int *ignoreFriendRequest, int *isContact, int *isBlocked, int *isFollowing, int *connectionResponse)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/add");



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
    char *keyQuery_connectionId = NULL;
    char * valueQuery_connectionId ;
    keyValuePair_t *keyPairQuery_connectionId = 0;
    {
        keyQuery_connectionId = strdup("connectionId");
        valueQuery_connectionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionId, MAX_NUMBER_LENGTH_LONG, "%d", connectionId);
        keyPairQuery_connectionId = keyValuePair_create(keyQuery_connectionId, valueQuery_connectionId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionId);
    }

    // query parameters
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
    }

    // query parameters
    char *keyQuery_pendingId = NULL;
    char * valueQuery_pendingId ;
    keyValuePair_t *keyPairQuery_pendingId = 0;
    {
        keyQuery_pendingId = strdup("pendingId");
        valueQuery_pendingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_pendingId, MAX_NUMBER_LENGTH_LONG, "%d", pendingId);
        keyPairQuery_pendingId = keyValuePair_create(keyQuery_pendingId, valueQuery_pendingId);
        list_addElement(localVarQueryParameters,keyPairQuery_pendingId);
    }

    // query parameters
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
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
    char *keyQuery_isTrusted = NULL;
    char * valueQuery_isTrusted = NULL;
    keyValuePair_t *keyPairQuery_isTrusted = 0;
    if (isTrusted)
    {
        keyQuery_isTrusted = strdup("isTrusted");
        valueQuery_isTrusted = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_isTrusted, MAX_NUMBER_LENGTH, "%d", *isTrusted);
        keyPairQuery_isTrusted = keyValuePair_create(keyQuery_isTrusted, valueQuery_isTrusted);
        list_addElement(localVarQueryParameters,keyPairQuery_isTrusted);
    }

    // query parameters
    char *keyQuery_ignoreFriendRequest = NULL;
    char * valueQuery_ignoreFriendRequest = NULL;
    keyValuePair_t *keyPairQuery_ignoreFriendRequest = 0;
    if (ignoreFriendRequest)
    {
        keyQuery_ignoreFriendRequest = strdup("ignoreFriendRequest");
        valueQuery_ignoreFriendRequest = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ignoreFriendRequest, MAX_NUMBER_LENGTH, "%d", *ignoreFriendRequest);
        keyPairQuery_ignoreFriendRequest = keyValuePair_create(keyQuery_ignoreFriendRequest, valueQuery_ignoreFriendRequest);
        list_addElement(localVarQueryParameters,keyPairQuery_ignoreFriendRequest);
    }

    // query parameters
    char *keyQuery_isContact = NULL;
    char * valueQuery_isContact = NULL;
    keyValuePair_t *keyPairQuery_isContact = 0;
    if (isContact)
    {
        keyQuery_isContact = strdup("isContact");
        valueQuery_isContact = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_isContact, MAX_NUMBER_LENGTH, "%d", *isContact);
        keyPairQuery_isContact = keyValuePair_create(keyQuery_isContact, valueQuery_isContact);
        list_addElement(localVarQueryParameters,keyPairQuery_isContact);
    }

    // query parameters
    char *keyQuery_isBlocked = NULL;
    char * valueQuery_isBlocked = NULL;
    keyValuePair_t *keyPairQuery_isBlocked = 0;
    if (isBlocked)
    {
        keyQuery_isBlocked = strdup("isBlocked");
        valueQuery_isBlocked = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_isBlocked, MAX_NUMBER_LENGTH, "%d", *isBlocked);
        keyPairQuery_isBlocked = keyValuePair_create(keyQuery_isBlocked, valueQuery_isBlocked);
        list_addElement(localVarQueryParameters,keyPairQuery_isBlocked);
    }

    // query parameters
    char *keyQuery_isFollowing = NULL;
    char * valueQuery_isFollowing = NULL;
    keyValuePair_t *keyPairQuery_isFollowing = 0;
    if (isFollowing)
    {
        keyQuery_isFollowing = strdup("isFollowing");
        valueQuery_isFollowing = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_isFollowing, MAX_NUMBER_LENGTH, "%d", *isFollowing);
        keyPairQuery_isFollowing = keyValuePair_create(keyQuery_isFollowing, valueQuery_isFollowing);
        list_addElement(localVarQueryParameters,keyPairQuery_isFollowing);
    }

    // query parameters
    char *keyQuery_connectionResponse = NULL;
    char * valueQuery_connectionResponse = NULL;
    keyValuePair_t *keyPairQuery_connectionResponse = 0;
    if (connectionResponse)
    {
        keyQuery_connectionResponse = strdup("connectionResponse");
        valueQuery_connectionResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_connectionResponse, MAX_NUMBER_LENGTH, "%d", *connectionResponse);
        keyPairQuery_connectionResponse = keyValuePair_create(keyQuery_connectionResponse, valueQuery_connectionResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionResponse);
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
    connection_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = connection_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionId){
        free(keyQuery_connectionId);
        keyQuery_connectionId = NULL;
    }
    if(keyPairQuery_connectionId){
        keyValuePair_free(keyPairQuery_connectionId);
        keyPairQuery_connectionId = NULL;
    }
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_pendingId){
        free(keyQuery_pendingId);
        keyQuery_pendingId = NULL;
    }
    if(keyPairQuery_pendingId){
        keyValuePair_free(keyPairQuery_pendingId);
        keyPairQuery_pendingId = NULL;
    }
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
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
    if(keyQuery_isTrusted){
        free(keyQuery_isTrusted);
        keyQuery_isTrusted = NULL;
    }
    if(valueQuery_isTrusted){
        free(valueQuery_isTrusted);
        valueQuery_isTrusted = NULL;
    }
    if(keyPairQuery_isTrusted){
        keyValuePair_free(keyPairQuery_isTrusted);
        keyPairQuery_isTrusted = NULL;
    }
    if(keyQuery_ignoreFriendRequest){
        free(keyQuery_ignoreFriendRequest);
        keyQuery_ignoreFriendRequest = NULL;
    }
    if(valueQuery_ignoreFriendRequest){
        free(valueQuery_ignoreFriendRequest);
        valueQuery_ignoreFriendRequest = NULL;
    }
    if(keyPairQuery_ignoreFriendRequest){
        keyValuePair_free(keyPairQuery_ignoreFriendRequest);
        keyPairQuery_ignoreFriendRequest = NULL;
    }
    if(keyQuery_isContact){
        free(keyQuery_isContact);
        keyQuery_isContact = NULL;
    }
    if(valueQuery_isContact){
        free(valueQuery_isContact);
        valueQuery_isContact = NULL;
    }
    if(keyPairQuery_isContact){
        keyValuePair_free(keyPairQuery_isContact);
        keyPairQuery_isContact = NULL;
    }
    if(keyQuery_isBlocked){
        free(keyQuery_isBlocked);
        keyQuery_isBlocked = NULL;
    }
    if(valueQuery_isBlocked){
        free(valueQuery_isBlocked);
        valueQuery_isBlocked = NULL;
    }
    if(keyPairQuery_isBlocked){
        keyValuePair_free(keyPairQuery_isBlocked);
        keyPairQuery_isBlocked = NULL;
    }
    if(keyQuery_isFollowing){
        free(keyQuery_isFollowing);
        keyQuery_isFollowing = NULL;
    }
    if(valueQuery_isFollowing){
        free(valueQuery_isFollowing);
        valueQuery_isFollowing = NULL;
    }
    if(keyPairQuery_isFollowing){
        keyValuePair_free(keyPairQuery_isFollowing);
        keyPairQuery_isFollowing = NULL;
    }
    if(keyQuery_connectionResponse){
        free(keyQuery_connectionResponse);
        keyQuery_connectionResponse = NULL;
    }
    if(valueQuery_connectionResponse){
        free(valueQuery_connectionResponse);
        valueQuery_connectionResponse = NULL;
    }
    if(keyPairQuery_connectionResponse){
        keyValuePair_free(keyPairQuery_connectionResponse);
        keyPairQuery_connectionResponse = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create or Update Connection Group
//
// Creates a new private group.
//
sirqul_response_t*
ConnectionAPI_createOrUpdateGroup(apiClient_t *apiClient, double version, int *returnNulls, char *deviceId, long accountId, char *name, long groupId, long assetId, char *connections, char *description, int *canViewProfileInfo, int *canViewGameInfo, int *canViewFriendInfo, int *active, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/group");



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
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
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
    char *keyQuery_connections = NULL;
    char * valueQuery_connections = NULL;
    keyValuePair_t *keyPairQuery_connections = 0;
    if (connections)
    {
        keyQuery_connections = strdup("connections");
        valueQuery_connections = strdup((connections));
        keyPairQuery_connections = keyValuePair_create(keyQuery_connections, valueQuery_connections);
        list_addElement(localVarQueryParameters,keyPairQuery_connections);
    }

    // query parameters
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_canViewProfileInfo = NULL;
    char * valueQuery_canViewProfileInfo = NULL;
    keyValuePair_t *keyPairQuery_canViewProfileInfo = 0;
    if (canViewProfileInfo)
    {
        keyQuery_canViewProfileInfo = strdup("canViewProfileInfo");
        valueQuery_canViewProfileInfo = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_canViewProfileInfo, MAX_NUMBER_LENGTH, "%d", *canViewProfileInfo);
        keyPairQuery_canViewProfileInfo = keyValuePair_create(keyQuery_canViewProfileInfo, valueQuery_canViewProfileInfo);
        list_addElement(localVarQueryParameters,keyPairQuery_canViewProfileInfo);
    }

    // query parameters
    char *keyQuery_canViewGameInfo = NULL;
    char * valueQuery_canViewGameInfo = NULL;
    keyValuePair_t *keyPairQuery_canViewGameInfo = 0;
    if (canViewGameInfo)
    {
        keyQuery_canViewGameInfo = strdup("canViewGameInfo");
        valueQuery_canViewGameInfo = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_canViewGameInfo, MAX_NUMBER_LENGTH, "%d", *canViewGameInfo);
        keyPairQuery_canViewGameInfo = keyValuePair_create(keyQuery_canViewGameInfo, valueQuery_canViewGameInfo);
        list_addElement(localVarQueryParameters,keyPairQuery_canViewGameInfo);
    }

    // query parameters
    char *keyQuery_canViewFriendInfo = NULL;
    char * valueQuery_canViewFriendInfo = NULL;
    keyValuePair_t *keyPairQuery_canViewFriendInfo = 0;
    if (canViewFriendInfo)
    {
        keyQuery_canViewFriendInfo = strdup("canViewFriendInfo");
        valueQuery_canViewFriendInfo = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_canViewFriendInfo, MAX_NUMBER_LENGTH, "%d", *canViewFriendInfo);
        keyPairQuery_canViewFriendInfo = keyValuePair_create(keyQuery_canViewFriendInfo, valueQuery_canViewFriendInfo);
        list_addElement(localVarQueryParameters,keyPairQuery_canViewFriendInfo);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_connections){
        free(keyQuery_connections);
        keyQuery_connections = NULL;
    }
    if(valueQuery_connections){
        free(valueQuery_connections);
        valueQuery_connections = NULL;
    }
    if(keyPairQuery_connections){
        keyValuePair_free(keyPairQuery_connections);
        keyPairQuery_connections = NULL;
    }
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_canViewProfileInfo){
        free(keyQuery_canViewProfileInfo);
        keyQuery_canViewProfileInfo = NULL;
    }
    if(valueQuery_canViewProfileInfo){
        free(valueQuery_canViewProfileInfo);
        valueQuery_canViewProfileInfo = NULL;
    }
    if(keyPairQuery_canViewProfileInfo){
        keyValuePair_free(keyPairQuery_canViewProfileInfo);
        keyPairQuery_canViewProfileInfo = NULL;
    }
    if(keyQuery_canViewGameInfo){
        free(keyQuery_canViewGameInfo);
        keyQuery_canViewGameInfo = NULL;
    }
    if(valueQuery_canViewGameInfo){
        free(valueQuery_canViewGameInfo);
        valueQuery_canViewGameInfo = NULL;
    }
    if(keyPairQuery_canViewGameInfo){
        keyValuePair_free(keyPairQuery_canViewGameInfo);
        keyPairQuery_canViewGameInfo = NULL;
    }
    if(keyQuery_canViewFriendInfo){
        free(keyQuery_canViewFriendInfo);
        keyQuery_canViewFriendInfo = NULL;
    }
    if(valueQuery_canViewFriendInfo){
        free(valueQuery_canViewFriendInfo);
        valueQuery_canViewFriendInfo = NULL;
    }
    if(keyPairQuery_canViewFriendInfo){
        keyValuePair_free(keyPairQuery_canViewFriendInfo);
        keyPairQuery_canViewFriendInfo = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
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

// Accept Follow Request
//
// Accept someone's follow request.
//
sirqul_response_t*
ConnectionAPI_followAccept(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/consumer/follow/accept");



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
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
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

// Reject Follow Request
//
// Reject someone's follow request or remove them as a follower.
//
sirqul_response_t*
ConnectionAPI_followReject(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/consumer/follow/reject");



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
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
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

// Remove Follower / Unfollow
//
// Unfollow someone you are following or remove them as a follower.
//
sirqul_response_t*
ConnectionAPI_followRemove(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/consumer/follow/remove");



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
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
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

// Send Follow Request
//
// Send a request to follow someone.
//
sirqul_response_t*
ConnectionAPI_followRequest(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey, int *approvalNeeded)
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
    char *localVarPath = strdup("/api/{version}/consumer/follow/request");



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
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
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
    char *keyQuery_approvalNeeded = NULL;
    char * valueQuery_approvalNeeded = NULL;
    keyValuePair_t *keyPairQuery_approvalNeeded = 0;
    if (approvalNeeded)
    {
        keyQuery_approvalNeeded = strdup("approvalNeeded");
        valueQuery_approvalNeeded = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_approvalNeeded, MAX_NUMBER_LENGTH, "%d", *approvalNeeded);
        keyPairQuery_approvalNeeded = keyValuePair_create(keyQuery_approvalNeeded, valueQuery_approvalNeeded);
        list_addElement(localVarQueryParameters,keyPairQuery_approvalNeeded);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
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
    if(keyQuery_approvalNeeded){
        free(keyQuery_approvalNeeded);
        keyQuery_approvalNeeded = NULL;
    }
    if(valueQuery_approvalNeeded){
        free(valueQuery_approvalNeeded);
        valueQuery_approvalNeeded = NULL;
    }
    if(keyPairQuery_approvalNeeded){
        keyValuePair_free(keyPairQuery_approvalNeeded);
        keyPairQuery_approvalNeeded = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Accept Friend
//
// Accept a friend request and optionally sends a notification.
//
sirqul_response_t*
ConnectionAPI_friendAccept(apiClient_t *apiClient, double version, long friendAccountId, int *notifyFriend, char *deviceId, long accountId, char *gameType, char *appKey, char *notificationMessage)
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
    char *localVarPath = strdup("/api/{version}/consumer/friend/accept");



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
    char *keyQuery_friendAccountId = NULL;
    char * valueQuery_friendAccountId ;
    keyValuePair_t *keyPairQuery_friendAccountId = 0;
    {
        keyQuery_friendAccountId = strdup("friendAccountId");
        valueQuery_friendAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_friendAccountId, MAX_NUMBER_LENGTH_LONG, "%d", friendAccountId);
        keyPairQuery_friendAccountId = keyValuePair_create(keyQuery_friendAccountId, valueQuery_friendAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_friendAccountId);
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
    char *keyQuery_notifyFriend = NULL;
    char * valueQuery_notifyFriend = NULL;
    keyValuePair_t *keyPairQuery_notifyFriend = 0;
    if (notifyFriend)
    {
        keyQuery_notifyFriend = strdup("notifyFriend");
        valueQuery_notifyFriend = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_notifyFriend, MAX_NUMBER_LENGTH, "%d", *notifyFriend);
        keyPairQuery_notifyFriend = keyValuePair_create(keyQuery_notifyFriend, valueQuery_notifyFriend);
        list_addElement(localVarQueryParameters,keyPairQuery_notifyFriend);
    }

    // query parameters
    char *keyQuery_notificationMessage = NULL;
    char * valueQuery_notificationMessage = NULL;
    keyValuePair_t *keyPairQuery_notificationMessage = 0;
    if (notificationMessage)
    {
        keyQuery_notificationMessage = strdup("notificationMessage");
        valueQuery_notificationMessage = strdup((notificationMessage));
        keyPairQuery_notificationMessage = keyValuePair_create(keyQuery_notificationMessage, valueQuery_notificationMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_notificationMessage);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_friendAccountId){
        free(keyQuery_friendAccountId);
        keyQuery_friendAccountId = NULL;
    }
    if(keyPairQuery_friendAccountId){
        keyValuePair_free(keyPairQuery_friendAccountId);
        keyPairQuery_friendAccountId = NULL;
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
    if(keyQuery_notifyFriend){
        free(keyQuery_notifyFriend);
        keyQuery_notifyFriend = NULL;
    }
    if(valueQuery_notifyFriend){
        free(valueQuery_notifyFriend);
        valueQuery_notifyFriend = NULL;
    }
    if(keyPairQuery_notifyFriend){
        keyValuePair_free(keyPairQuery_notifyFriend);
        keyPairQuery_notifyFriend = NULL;
    }
    if(keyQuery_notificationMessage){
        free(keyQuery_notificationMessage);
        keyQuery_notificationMessage = NULL;
    }
    if(valueQuery_notificationMessage){
        free(valueQuery_notificationMessage);
        valueQuery_notificationMessage = NULL;
    }
    if(keyPairQuery_notificationMessage){
        keyValuePair_free(keyPairQuery_notificationMessage);
        keyPairQuery_notificationMessage = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Decline Friend
//
// Request a friend request and optionally sends a notification.
//
sirqul_response_t*
ConnectionAPI_friendReject(apiClient_t *apiClient, double version, long friendAccountId, char *deviceId, long accountId, char *gameType, char *appKey, int *notifyFriend, char *notificationMessage)
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
    char *localVarPath = strdup("/api/{version}/consumer/friend/reject");



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
    char *keyQuery_friendAccountId = NULL;
    char * valueQuery_friendAccountId ;
    keyValuePair_t *keyPairQuery_friendAccountId = 0;
    {
        keyQuery_friendAccountId = strdup("friendAccountId");
        valueQuery_friendAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_friendAccountId, MAX_NUMBER_LENGTH_LONG, "%d", friendAccountId);
        keyPairQuery_friendAccountId = keyValuePair_create(keyQuery_friendAccountId, valueQuery_friendAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_friendAccountId);
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
    char *keyQuery_notifyFriend = NULL;
    char * valueQuery_notifyFriend = NULL;
    keyValuePair_t *keyPairQuery_notifyFriend = 0;
    if (notifyFriend)
    {
        keyQuery_notifyFriend = strdup("notifyFriend");
        valueQuery_notifyFriend = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_notifyFriend, MAX_NUMBER_LENGTH, "%d", *notifyFriend);
        keyPairQuery_notifyFriend = keyValuePair_create(keyQuery_notifyFriend, valueQuery_notifyFriend);
        list_addElement(localVarQueryParameters,keyPairQuery_notifyFriend);
    }

    // query parameters
    char *keyQuery_notificationMessage = NULL;
    char * valueQuery_notificationMessage = NULL;
    keyValuePair_t *keyPairQuery_notificationMessage = 0;
    if (notificationMessage)
    {
        keyQuery_notificationMessage = strdup("notificationMessage");
        valueQuery_notificationMessage = strdup((notificationMessage));
        keyPairQuery_notificationMessage = keyValuePair_create(keyQuery_notificationMessage, valueQuery_notificationMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_notificationMessage);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_friendAccountId){
        free(keyQuery_friendAccountId);
        keyQuery_friendAccountId = NULL;
    }
    if(keyPairQuery_friendAccountId){
        keyValuePair_free(keyPairQuery_friendAccountId);
        keyPairQuery_friendAccountId = NULL;
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
    if(keyQuery_notifyFriend){
        free(keyQuery_notifyFriend);
        keyQuery_notifyFriend = NULL;
    }
    if(valueQuery_notifyFriend){
        free(valueQuery_notifyFriend);
        valueQuery_notifyFriend = NULL;
    }
    if(keyPairQuery_notifyFriend){
        keyValuePair_free(keyPairQuery_notifyFriend);
        keyPairQuery_notifyFriend = NULL;
    }
    if(keyQuery_notificationMessage){
        free(keyQuery_notificationMessage);
        keyQuery_notificationMessage = NULL;
    }
    if(valueQuery_notificationMessage){
        free(valueQuery_notificationMessage);
        valueQuery_notificationMessage = NULL;
    }
    if(keyPairQuery_notificationMessage){
        keyValuePair_free(keyPairQuery_notificationMessage);
        keyPairQuery_notificationMessage = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Friend
//
// Removes a friend from the user's friends list.
//
sirqul_response_t*
ConnectionAPI_friendRemove(apiClient_t *apiClient, double version, long friendAccountId, char *deviceId, long accountId, int *notifyFriend, int *removeFromGroups)
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
    char *localVarPath = strdup("/api/{version}/consumer/friend/remove");



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
    char *keyQuery_friendAccountId = NULL;
    char * valueQuery_friendAccountId ;
    keyValuePair_t *keyPairQuery_friendAccountId = 0;
    {
        keyQuery_friendAccountId = strdup("friendAccountId");
        valueQuery_friendAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_friendAccountId, MAX_NUMBER_LENGTH_LONG, "%d", friendAccountId);
        keyPairQuery_friendAccountId = keyValuePair_create(keyQuery_friendAccountId, valueQuery_friendAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_friendAccountId);
    }

    // query parameters
    char *keyQuery_notifyFriend = NULL;
    char * valueQuery_notifyFriend = NULL;
    keyValuePair_t *keyPairQuery_notifyFriend = 0;
    if (notifyFriend)
    {
        keyQuery_notifyFriend = strdup("notifyFriend");
        valueQuery_notifyFriend = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_notifyFriend, MAX_NUMBER_LENGTH, "%d", *notifyFriend);
        keyPairQuery_notifyFriend = keyValuePair_create(keyQuery_notifyFriend, valueQuery_notifyFriend);
        list_addElement(localVarQueryParameters,keyPairQuery_notifyFriend);
    }

    // query parameters
    char *keyQuery_removeFromGroups = NULL;
    char * valueQuery_removeFromGroups = NULL;
    keyValuePair_t *keyPairQuery_removeFromGroups = 0;
    if (removeFromGroups)
    {
        keyQuery_removeFromGroups = strdup("removeFromGroups");
        valueQuery_removeFromGroups = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeFromGroups, MAX_NUMBER_LENGTH, "%d", *removeFromGroups);
        keyPairQuery_removeFromGroups = keyValuePair_create(keyQuery_removeFromGroups, valueQuery_removeFromGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_removeFromGroups);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_friendAccountId){
        free(keyQuery_friendAccountId);
        keyQuery_friendAccountId = NULL;
    }
    if(keyPairQuery_friendAccountId){
        keyValuePair_free(keyPairQuery_friendAccountId);
        keyPairQuery_friendAccountId = NULL;
    }
    if(keyQuery_notifyFriend){
        free(keyQuery_notifyFriend);
        keyQuery_notifyFriend = NULL;
    }
    if(valueQuery_notifyFriend){
        free(valueQuery_notifyFriend);
        valueQuery_notifyFriend = NULL;
    }
    if(keyPairQuery_notifyFriend){
        keyValuePair_free(keyPairQuery_notifyFriend);
        keyPairQuery_notifyFriend = NULL;
    }
    if(keyQuery_removeFromGroups){
        free(keyQuery_removeFromGroups);
        keyQuery_removeFromGroups = NULL;
    }
    if(valueQuery_removeFromGroups){
        free(valueQuery_removeFromGroups);
        valueQuery_removeFromGroups = NULL;
    }
    if(keyPairQuery_removeFromGroups){
        keyValuePair_free(keyPairQuery_removeFromGroups);
        keyPairQuery_removeFromGroups = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Request Friend
//
// Sends a friend request notification to another user.
//
sirqul_response_t*
ConnectionAPI_friendRequest(apiClient_t *apiClient, double version, long friendAccountId, char *deviceId, long accountId, char *gameType, char *appKey, char *notificationMessage)
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
    char *localVarPath = strdup("/api/{version}/consumer/friend/request");



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
    char *keyQuery_friendAccountId = NULL;
    char * valueQuery_friendAccountId ;
    keyValuePair_t *keyPairQuery_friendAccountId = 0;
    {
        keyQuery_friendAccountId = strdup("friendAccountId");
        valueQuery_friendAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_friendAccountId, MAX_NUMBER_LENGTH_LONG, "%d", friendAccountId);
        keyPairQuery_friendAccountId = keyValuePair_create(keyQuery_friendAccountId, valueQuery_friendAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_friendAccountId);
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
    char *keyQuery_notificationMessage = NULL;
    char * valueQuery_notificationMessage = NULL;
    keyValuePair_t *keyPairQuery_notificationMessage = 0;
    if (notificationMessage)
    {
        keyQuery_notificationMessage = strdup("notificationMessage");
        valueQuery_notificationMessage = strdup((notificationMessage));
        keyPairQuery_notificationMessage = keyValuePair_create(keyQuery_notificationMessage, valueQuery_notificationMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_notificationMessage);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_friendAccountId){
        free(keyQuery_friendAccountId);
        keyQuery_friendAccountId = NULL;
    }
    if(keyPairQuery_friendAccountId){
        keyValuePair_free(keyPairQuery_friendAccountId);
        keyPairQuery_friendAccountId = NULL;
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
    if(keyQuery_notificationMessage){
        free(keyQuery_notificationMessage);
        keyQuery_notificationMessage = NULL;
    }
    if(valueQuery_notificationMessage){
        free(valueQuery_notificationMessage);
        valueQuery_notificationMessage = NULL;
    }
    if(keyPairQuery_notificationMessage){
        keyValuePair_free(keyPairQuery_notificationMessage);
        keyPairQuery_notificationMessage = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Sent Friend Requests
//
// Gets the connection sent friend requests.
//
connection_list_response_t*
ConnectionAPI_getConnectionSentFriendRequests(apiClient_t *apiClient, double version, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/getRequested");



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
    connection_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = connection_list_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Connections
//
// Gets the connections.
//
connection_list_response_t*
ConnectionAPI_getConnections(apiClient_t *apiClient, double version, int *returnNulls, char *filter, char *sortField, int *descending, int *start, int *limit, char *deviceId, long accountId, long connectionAccountId, char *q, char *keyword, int *_i, int *_l, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/get");



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
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
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
    connection_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = connection_list_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
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

// Get Connection Group
//
connection_group_response_t*
ConnectionAPI_getGroupDetails(apiClient_t *apiClient, double version, int *combineConnections, char *deviceId, long accountId, long groupId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/group/details/get");



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
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
    }

    // query parameters
    char *keyQuery_combineConnections = NULL;
    char * valueQuery_combineConnections = NULL;
    keyValuePair_t *keyPairQuery_combineConnections = 0;
    if (combineConnections)
    {
        keyQuery_combineConnections = strdup("combineConnections");
        valueQuery_combineConnections = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_combineConnections, MAX_NUMBER_LENGTH, "%d", *combineConnections);
        keyPairQuery_combineConnections = keyValuePair_create(keyQuery_combineConnections, valueQuery_combineConnections);
        list_addElement(localVarQueryParameters,keyPairQuery_combineConnections);
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
    connection_group_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = connection_group_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
    }
    if(keyQuery_combineConnections){
        free(keyQuery_combineConnections);
        keyQuery_combineConnections = NULL;
    }
    if(valueQuery_combineConnections){
        free(valueQuery_combineConnections);
        valueQuery_combineConnections = NULL;
    }
    if(keyPairQuery_combineConnections){
        keyValuePair_free(keyPairQuery_combineConnections);
        keyPairQuery_combineConnections = NULL;
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

// Search Connection Groups
//
// Gets a user's private groups and default groups.
//
list_t*
ConnectionAPI_groupSearch(apiClient_t *apiClient, double version, sirqul_iot_platform_groupSearch_sortField_e sortField, int *descending, int *activeOnly, int *start, int *limit, char *deviceId, long accountId, double latitude, double longitude, char *keyword)
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
    char *localVarPath = strdup("/api/{version}/connection/group/search");



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
    sirqul_iot_platform_groupSearch_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(groupSearch_SORTFIELD_ToString(
        valueQuery_sortField)));
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
    char *keyQuery_activeOnly = NULL;
    char * valueQuery_activeOnly = NULL;
    keyValuePair_t *keyPairQuery_activeOnly = 0;
    if (activeOnly)
    {
        keyQuery_activeOnly = strdup("activeOnly");
        valueQuery_activeOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_activeOnly, MAX_NUMBER_LENGTH, "%d", *activeOnly);
        keyPairQuery_activeOnly = keyValuePair_create(keyQuery_activeOnly, valueQuery_activeOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_activeOnly);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ConnectionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ConnectionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ConnectionAPIlocalVarJSON);
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
    if(keyQuery_activeOnly){
        free(keyQuery_activeOnly);
        keyQuery_activeOnly = NULL;
    }
    if(valueQuery_activeOnly){
        free(valueQuery_activeOnly);
        valueQuery_activeOnly = NULL;
    }
    if(keyPairQuery_activeOnly){
        keyValuePair_free(keyPairQuery_activeOnly);
        keyPairQuery_activeOnly = NULL;
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

// Delete Connection
//
// Removes the connection from group.
//
sirqul_response_t*
ConnectionAPI_removeConnectionFromGroup(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *deviceId, long accountId, long connectionId, long connectionAccountId, long pendingId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/group/removeConnection");



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
    char *keyQuery_connectionId = NULL;
    char * valueQuery_connectionId ;
    keyValuePair_t *keyPairQuery_connectionId = 0;
    {
        keyQuery_connectionId = strdup("connectionId");
        valueQuery_connectionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionId, MAX_NUMBER_LENGTH_LONG, "%d", connectionId);
        keyPairQuery_connectionId = keyValuePair_create(keyQuery_connectionId, valueQuery_connectionId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionId);
    }

    // query parameters
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
    }

    // query parameters
    char *keyQuery_pendingId = NULL;
    char * valueQuery_pendingId ;
    keyValuePair_t *keyPairQuery_pendingId = 0;
    {
        keyQuery_pendingId = strdup("pendingId");
        valueQuery_pendingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_pendingId, MAX_NUMBER_LENGTH_LONG, "%d", pendingId);
        keyPairQuery_pendingId = keyValuePair_create(keyQuery_pendingId, valueQuery_pendingId);
        list_addElement(localVarQueryParameters,keyPairQuery_pendingId);
    }

    // query parameters
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionId){
        free(keyQuery_connectionId);
        keyQuery_connectionId = NULL;
    }
    if(keyPairQuery_connectionId){
        keyValuePair_free(keyPairQuery_connectionId);
        keyPairQuery_connectionId = NULL;
    }
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_pendingId){
        free(keyQuery_pendingId);
        keyQuery_pendingId = NULL;
    }
    if(keyPairQuery_pendingId){
        keyValuePair_free(keyPairQuery_pendingId);
        keyPairQuery_pendingId = NULL;
    }
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
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

// Remove Connections
//
// Remove a list of connections from a group.
//
sirqul_response_t*
ConnectionAPI_removeConnectionsFromGroup(apiClient_t *apiClient, double version, long connectionGroupId, char *deviceId, long accountId, char *connectionIds, char *connectionAccountIds, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/connection/group/removeConnections");



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
    char *keyQuery_connectionIds = NULL;
    char * valueQuery_connectionIds = NULL;
    keyValuePair_t *keyPairQuery_connectionIds = 0;
    if (connectionIds)
    {
        keyQuery_connectionIds = strdup("connectionIds");
        valueQuery_connectionIds = strdup((connectionIds));
        keyPairQuery_connectionIds = keyValuePair_create(keyQuery_connectionIds, valueQuery_connectionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionIds);
    }

    // query parameters
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
    }

    // query parameters
    char *keyQuery_connectionGroupId = NULL;
    char * valueQuery_connectionGroupId ;
    keyValuePair_t *keyPairQuery_connectionGroupId = 0;
    {
        keyQuery_connectionGroupId = strdup("connectionGroupId");
        valueQuery_connectionGroupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionGroupId, MAX_NUMBER_LENGTH_LONG, "%d", connectionGroupId);
        keyPairQuery_connectionGroupId = keyValuePair_create(keyQuery_connectionGroupId, valueQuery_connectionGroupId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_connectionIds){
        free(keyQuery_connectionIds);
        keyQuery_connectionIds = NULL;
    }
    if(valueQuery_connectionIds){
        free(valueQuery_connectionIds);
        valueQuery_connectionIds = NULL;
    }
    if(keyPairQuery_connectionIds){
        keyValuePair_free(keyPairQuery_connectionIds);
        keyPairQuery_connectionIds = NULL;
    }
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
    }
    if(keyQuery_connectionGroupId){
        free(keyQuery_connectionGroupId);
        keyQuery_connectionGroupId = NULL;
    }
    if(keyPairQuery_connectionGroupId){
        keyValuePair_free(keyPairQuery_connectionGroupId);
        keyPairQuery_connectionGroupId = NULL;
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

// Delete Connection Group
//
// Remove a user's group.
//
sirqul_response_t*
ConnectionAPI_removeGroup(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/group/remove");



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
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
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

// Remove Connection Groups
//
// Remove sub groups from a group
//
sirqul_response_t*
ConnectionAPI_removeSubGroups(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *subGroupIds, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/connection/group/removeSubGroup");



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
    char *keyQuery_groupId = NULL;
    char * valueQuery_groupId ;
    keyValuePair_t *keyPairQuery_groupId = 0;
    {
        keyQuery_groupId = strdup("groupId");
        valueQuery_groupId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_groupId, MAX_NUMBER_LENGTH_LONG, "%d", groupId);
        keyPairQuery_groupId = keyValuePair_create(keyQuery_groupId, valueQuery_groupId);
        list_addElement(localVarQueryParameters,keyPairQuery_groupId);
    }

    // query parameters
    char *keyQuery_subGroupIds = NULL;
    char * valueQuery_subGroupIds = NULL;
    keyValuePair_t *keyPairQuery_subGroupIds = 0;
    if (subGroupIds)
    {
        keyQuery_subGroupIds = strdup("subGroupIds");
        valueQuery_subGroupIds = strdup((subGroupIds));
        keyPairQuery_subGroupIds = keyValuePair_create(keyQuery_subGroupIds, valueQuery_subGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_subGroupIds);
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
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_groupId){
        free(keyQuery_groupId);
        keyQuery_groupId = NULL;
    }
    if(keyPairQuery_groupId){
        keyValuePair_free(keyPairQuery_groupId);
        keyPairQuery_groupId = NULL;
    }
    if(keyQuery_subGroupIds){
        free(keyQuery_subGroupIds);
        keyQuery_subGroupIds = NULL;
    }
    if(valueQuery_subGroupIds){
        free(valueQuery_subGroupIds);
        valueQuery_subGroupIds = NULL;
    }
    if(keyPairQuery_subGroupIds){
        keyValuePair_free(keyPairQuery_subGroupIds);
        keyPairQuery_subGroupIds = NULL;
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

// Search Possible Connections
//
// Search for accounts that the user may not have a connection with.
//
connection_list_response_t*
ConnectionAPI_searchConnections(apiClient_t *apiClient, double version, int *returnNulls, int *start, int *limit, char *deviceId, long accountId, char *q, char *keyword, double latitude, double longitude, char *gameType, char *appKey, int *_i, int *_l, char *sortField, int *hasLocation)
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
    char *localVarPath = strdup("/api/{version}/connection/search");



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
    char *keyQuery_hasLocation = NULL;
    char * valueQuery_hasLocation = NULL;
    keyValuePair_t *keyPairQuery_hasLocation = 0;
    if (hasLocation)
    {
        keyQuery_hasLocation = strdup("hasLocation");
        valueQuery_hasLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasLocation, MAX_NUMBER_LENGTH, "%d", *hasLocation);
        keyPairQuery_hasLocation = keyValuePair_create(keyQuery_hasLocation, valueQuery_hasLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_hasLocation);
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
    connection_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ConnectionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = connection_list_response_parseFromJSON(ConnectionAPIlocalVarJSON);
        cJSON_Delete(ConnectionAPIlocalVarJSON);
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
    if(keyQuery_hasLocation){
        free(keyQuery_hasLocation);
        keyQuery_hasLocation = NULL;
    }
    if(valueQuery_hasLocation){
        free(valueQuery_hasLocation);
        valueQuery_hasLocation = NULL;
    }
    if(keyPairQuery_hasLocation){
        keyValuePair_free(keyPairQuery_hasLocation);
        keyPairQuery_hasLocation = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

