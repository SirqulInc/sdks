#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "LikeAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Like
//
// Allows a user to like or dislike accounts, albums, album contests, assets, game levels, notes, and theme descriptors. Multiple likes\\dislikes on the same object will replace the previous one.
//
likable_response_t*
LikeAPI_registerLike(apiClient_t *apiClient, double version, char *likableType, long likableId, char *deviceId, long accountId, char *permissionableType, long permissionableId, int *like, char *app, char *gameType, char *appKey, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/like");



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
    char *keyQuery_likableType = NULL;
    char * valueQuery_likableType = NULL;
    keyValuePair_t *keyPairQuery_likableType = 0;
    if (likableType)
    {
        keyQuery_likableType = strdup("likableType");
        valueQuery_likableType = strdup((likableType));
        keyPairQuery_likableType = keyValuePair_create(keyQuery_likableType, valueQuery_likableType);
        list_addElement(localVarQueryParameters,keyPairQuery_likableType);
    }

    // query parameters
    char *keyQuery_likableId = NULL;
    char * valueQuery_likableId ;
    keyValuePair_t *keyPairQuery_likableId = 0;
    {
        keyQuery_likableId = strdup("likableId");
        valueQuery_likableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_likableId, MAX_NUMBER_LENGTH_LONG, "%d", likableId);
        keyPairQuery_likableId = keyValuePair_create(keyQuery_likableId, valueQuery_likableId);
        list_addElement(localVarQueryParameters,keyPairQuery_likableId);
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
    char *keyQuery_like = NULL;
    char * valueQuery_like = NULL;
    keyValuePair_t *keyPairQuery_like = 0;
    if (like)
    {
        keyQuery_like = strdup("like");
        valueQuery_like = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_like, MAX_NUMBER_LENGTH, "%d", *like);
        keyPairQuery_like = keyValuePair_create(keyQuery_like, valueQuery_like);
        list_addElement(localVarQueryParameters,keyPairQuery_like);
    }

    // query parameters
    char *keyQuery_app = NULL;
    char * valueQuery_app = NULL;
    keyValuePair_t *keyPairQuery_app = 0;
    if (app)
    {
        keyQuery_app = strdup("app");
        valueQuery_app = strdup((app));
        keyPairQuery_app = keyValuePair_create(keyQuery_app, valueQuery_app);
        list_addElement(localVarQueryParameters,keyPairQuery_app);
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
    likable_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LikeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = likable_response_parseFromJSON(LikeAPIlocalVarJSON);
        cJSON_Delete(LikeAPIlocalVarJSON);
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
    if(keyQuery_likableType){
        free(keyQuery_likableType);
        keyQuery_likableType = NULL;
    }
    if(valueQuery_likableType){
        free(valueQuery_likableType);
        valueQuery_likableType = NULL;
    }
    if(keyPairQuery_likableType){
        keyValuePair_free(keyPairQuery_likableType);
        keyPairQuery_likableType = NULL;
    }
    if(keyQuery_likableId){
        free(keyQuery_likableId);
        keyQuery_likableId = NULL;
    }
    if(keyPairQuery_likableId){
        keyValuePair_free(keyPairQuery_likableId);
        keyPairQuery_likableId = NULL;
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
    if(keyQuery_like){
        free(keyQuery_like);
        keyQuery_like = NULL;
    }
    if(valueQuery_like){
        free(valueQuery_like);
        valueQuery_like = NULL;
    }
    if(keyPairQuery_like){
        keyValuePair_free(keyPairQuery_like);
        keyPairQuery_like = NULL;
    }
    if(keyQuery_app){
        free(keyQuery_app);
        keyQuery_app = NULL;
    }
    if(valueQuery_app){
        free(valueQuery_app);
        valueQuery_app = NULL;
    }
    if(keyPairQuery_app){
        keyValuePair_free(keyPairQuery_app);
        keyPairQuery_app = NULL;
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

// Delete Like
//
// Removes a like. This will make the user \"neutral\".
//
likable_response_t*
LikeAPI_removeLike(apiClient_t *apiClient, double version, char *likableType, long likableId, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/like/delete");



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
    char *keyQuery_likableType = NULL;
    char * valueQuery_likableType = NULL;
    keyValuePair_t *keyPairQuery_likableType = 0;
    if (likableType)
    {
        keyQuery_likableType = strdup("likableType");
        valueQuery_likableType = strdup((likableType));
        keyPairQuery_likableType = keyValuePair_create(keyQuery_likableType, valueQuery_likableType);
        list_addElement(localVarQueryParameters,keyPairQuery_likableType);
    }

    // query parameters
    char *keyQuery_likableId = NULL;
    char * valueQuery_likableId ;
    keyValuePair_t *keyPairQuery_likableId = 0;
    {
        keyQuery_likableId = strdup("likableId");
        valueQuery_likableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_likableId, MAX_NUMBER_LENGTH_LONG, "%d", likableId);
        keyPairQuery_likableId = keyValuePair_create(keyQuery_likableId, valueQuery_likableId);
        list_addElement(localVarQueryParameters,keyPairQuery_likableId);
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
    likable_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LikeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = likable_response_parseFromJSON(LikeAPIlocalVarJSON);
        cJSON_Delete(LikeAPIlocalVarJSON);
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
    if(keyQuery_likableType){
        free(keyQuery_likableType);
        keyQuery_likableType = NULL;
    }
    if(valueQuery_likableType){
        free(valueQuery_likableType);
        valueQuery_likableType = NULL;
    }
    if(keyPairQuery_likableType){
        keyValuePair_free(keyPairQuery_likableType);
        keyPairQuery_likableType = NULL;
    }
    if(keyQuery_likableId){
        free(keyQuery_likableId);
        keyQuery_likableId = NULL;
    }
    if(keyPairQuery_likableId){
        keyValuePair_free(keyPairQuery_likableId);
        keyPairQuery_likableId = NULL;
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

// Search Likes
//
// Search for likes on a likable object.
//
search_response_t*
LikeAPI_searchLikes(apiClient_t *apiClient, double version, char *likableType, long likableId, char *deviceId, long accountId, char *connectionAccountIds, char *sortField, int *descending, long updatedSince, long updatedBefore, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/like/search");



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
    char *keyQuery_likableType = NULL;
    char * valueQuery_likableType = NULL;
    keyValuePair_t *keyPairQuery_likableType = 0;
    if (likableType)
    {
        keyQuery_likableType = strdup("likableType");
        valueQuery_likableType = strdup((likableType));
        keyPairQuery_likableType = keyValuePair_create(keyQuery_likableType, valueQuery_likableType);
        list_addElement(localVarQueryParameters,keyPairQuery_likableType);
    }

    // query parameters
    char *keyQuery_likableId = NULL;
    char * valueQuery_likableId ;
    keyValuePair_t *keyPairQuery_likableId = 0;
    {
        keyQuery_likableId = strdup("likableId");
        valueQuery_likableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_likableId, MAX_NUMBER_LENGTH_LONG, "%d", likableId);
        keyPairQuery_likableId = keyValuePair_create(keyQuery_likableId, valueQuery_likableId);
        list_addElement(localVarQueryParameters,keyPairQuery_likableId);
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
    char *keyQuery_updatedSince = NULL;
    char * valueQuery_updatedSince ;
    keyValuePair_t *keyPairQuery_updatedSince = 0;
    {
        keyQuery_updatedSince = strdup("updatedSince");
        valueQuery_updatedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_updatedSince, MAX_NUMBER_LENGTH_LONG, "%d", updatedSince);
        keyPairQuery_updatedSince = keyValuePair_create(keyQuery_updatedSince, valueQuery_updatedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_updatedSince);
    }

    // query parameters
    char *keyQuery_updatedBefore = NULL;
    char * valueQuery_updatedBefore ;
    keyValuePair_t *keyPairQuery_updatedBefore = 0;
    {
        keyQuery_updatedBefore = strdup("updatedBefore");
        valueQuery_updatedBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_updatedBefore, MAX_NUMBER_LENGTH_LONG, "%d", updatedBefore);
        keyPairQuery_updatedBefore = keyValuePair_create(keyQuery_updatedBefore, valueQuery_updatedBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_updatedBefore);
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
    //nonprimitive not container
    search_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LikeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = search_response_parseFromJSON(LikeAPIlocalVarJSON);
        cJSON_Delete(LikeAPIlocalVarJSON);
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
    if(keyQuery_likableType){
        free(keyQuery_likableType);
        keyQuery_likableType = NULL;
    }
    if(valueQuery_likableType){
        free(valueQuery_likableType);
        valueQuery_likableType = NULL;
    }
    if(keyPairQuery_likableType){
        keyValuePair_free(keyPairQuery_likableType);
        keyPairQuery_likableType = NULL;
    }
    if(keyQuery_likableId){
        free(keyQuery_likableId);
        keyQuery_likableId = NULL;
    }
    if(keyPairQuery_likableId){
        keyValuePair_free(keyPairQuery_likableId);
        keyPairQuery_likableId = NULL;
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
    if(keyQuery_updatedSince){
        free(keyQuery_updatedSince);
        keyQuery_updatedSince = NULL;
    }
    if(keyPairQuery_updatedSince){
        keyValuePair_free(keyPairQuery_updatedSince);
        keyPairQuery_updatedSince = NULL;
    }
    if(keyQuery_updatedBefore){
        free(keyQuery_updatedBefore);
        keyQuery_updatedBefore = NULL;
    }
    if(keyPairQuery_updatedBefore){
        keyValuePair_free(keyPairQuery_updatedBefore);
        keyPairQuery_updatedBefore = NULL;
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

