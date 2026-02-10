#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "LeaderboardAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
leaderboard_response_t*
LeaderboardAPI_createLeaderboard(apiClient_t *apiClient, double version, long accountId, char *appKey, char *rankType, char *leaderboardMode, binary_t* iconMedia, long iconAssetId, binary_t* bannerMedia, long bannerAssetId, int *limitation, char *sortField, char *title, char *description, char *metaData)
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
    char *localVarPath = strdup("/api/{version}/leaderboard/create");



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
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
    }

    // query parameters
    char *keyQuery_leaderboardMode = NULL;
    char * valueQuery_leaderboardMode = NULL;
    keyValuePair_t *keyPairQuery_leaderboardMode = 0;
    if (leaderboardMode)
    {
        keyQuery_leaderboardMode = strdup("leaderboardMode");
        valueQuery_leaderboardMode = strdup((leaderboardMode));
        keyPairQuery_leaderboardMode = keyValuePair_create(keyQuery_leaderboardMode, valueQuery_leaderboardMode);
        list_addElement(localVarQueryParameters,keyPairQuery_leaderboardMode);
    }

    // query parameters
    char *keyQuery_iconMedia = NULL;
    binary_t* valueQuery_iconMedia ;
    keyValuePair_t *keyPairQuery_iconMedia = 0;
    if (iconMedia)
    {
        keyQuery_iconMedia = strdup("iconMedia");
        valueQuery_iconMedia = (iconMedia);
        keyPairQuery_iconMedia = keyValuePair_create(keyQuery_iconMedia, &valueQuery_iconMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_iconMedia);
    }

    // query parameters
    char *keyQuery_iconAssetId = NULL;
    char * valueQuery_iconAssetId ;
    keyValuePair_t *keyPairQuery_iconAssetId = 0;
    {
        keyQuery_iconAssetId = strdup("iconAssetId");
        valueQuery_iconAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_iconAssetId, MAX_NUMBER_LENGTH_LONG, "%d", iconAssetId);
        keyPairQuery_iconAssetId = keyValuePair_create(keyQuery_iconAssetId, valueQuery_iconAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_iconAssetId);
    }

    // query parameters
    char *keyQuery_bannerMedia = NULL;
    binary_t* valueQuery_bannerMedia ;
    keyValuePair_t *keyPairQuery_bannerMedia = 0;
    if (bannerMedia)
    {
        keyQuery_bannerMedia = strdup("bannerMedia");
        valueQuery_bannerMedia = (bannerMedia);
        keyPairQuery_bannerMedia = keyValuePair_create(keyQuery_bannerMedia, &valueQuery_bannerMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_bannerMedia);
    }

    // query parameters
    char *keyQuery_bannerAssetId = NULL;
    char * valueQuery_bannerAssetId ;
    keyValuePair_t *keyPairQuery_bannerAssetId = 0;
    {
        keyQuery_bannerAssetId = strdup("bannerAssetId");
        valueQuery_bannerAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_bannerAssetId, MAX_NUMBER_LENGTH_LONG, "%d", bannerAssetId);
        keyPairQuery_bannerAssetId = keyValuePair_create(keyQuery_bannerAssetId, valueQuery_bannerAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_bannerAssetId);
    }

    // query parameters
    char *keyQuery_limitation = NULL;
    char * valueQuery_limitation = NULL;
    keyValuePair_t *keyPairQuery_limitation = 0;
    if (limitation)
    {
        keyQuery_limitation = strdup("limitation");
        valueQuery_limitation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limitation, MAX_NUMBER_LENGTH, "%d", *limitation);
        keyPairQuery_limitation = keyValuePair_create(keyQuery_limitation, valueQuery_limitation);
        list_addElement(localVarQueryParameters,keyPairQuery_limitation);
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
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
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
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
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
    leaderboard_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LeaderboardAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = leaderboard_response_parseFromJSON(LeaderboardAPIlocalVarJSON);
        cJSON_Delete(LeaderboardAPIlocalVarJSON);
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
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
    }
    if(keyQuery_leaderboardMode){
        free(keyQuery_leaderboardMode);
        keyQuery_leaderboardMode = NULL;
    }
    if(valueQuery_leaderboardMode){
        free(valueQuery_leaderboardMode);
        valueQuery_leaderboardMode = NULL;
    }
    if(keyPairQuery_leaderboardMode){
        keyValuePair_free(keyPairQuery_leaderboardMode);
        keyPairQuery_leaderboardMode = NULL;
    }
    if(keyQuery_iconMedia){
        free(keyQuery_iconMedia);
        keyQuery_iconMedia = NULL;
    }
    if(keyPairQuery_iconMedia){
        keyValuePair_free(keyPairQuery_iconMedia);
        keyPairQuery_iconMedia = NULL;
    }
    if(keyQuery_iconAssetId){
        free(keyQuery_iconAssetId);
        keyQuery_iconAssetId = NULL;
    }
    if(keyPairQuery_iconAssetId){
        keyValuePair_free(keyPairQuery_iconAssetId);
        keyPairQuery_iconAssetId = NULL;
    }
    if(keyQuery_bannerMedia){
        free(keyQuery_bannerMedia);
        keyQuery_bannerMedia = NULL;
    }
    if(keyPairQuery_bannerMedia){
        keyValuePair_free(keyPairQuery_bannerMedia);
        keyPairQuery_bannerMedia = NULL;
    }
    if(keyQuery_bannerAssetId){
        free(keyQuery_bannerAssetId);
        keyQuery_bannerAssetId = NULL;
    }
    if(keyPairQuery_bannerAssetId){
        keyValuePair_free(keyPairQuery_bannerAssetId);
        keyPairQuery_bannerAssetId = NULL;
    }
    if(keyQuery_limitation){
        free(keyQuery_limitation);
        keyQuery_limitation = NULL;
    }
    if(valueQuery_limitation){
        free(valueQuery_limitation);
        valueQuery_limitation = NULL;
    }
    if(keyPairQuery_limitation){
        keyValuePair_free(keyPairQuery_limitation);
        keyPairQuery_limitation = NULL;
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
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
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
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete the Leader Board
//
// Removes a leader board id.
//
sirqul_response_t*
LeaderboardAPI_deleteLeaderboard(apiClient_t *apiClient, double version, long leaderboardId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/leaderboard/delete");



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
    char *keyQuery_leaderboardId = NULL;
    char * valueQuery_leaderboardId ;
    keyValuePair_t *keyPairQuery_leaderboardId = 0;
    {
        keyQuery_leaderboardId = strdup("leaderboardId");
        valueQuery_leaderboardId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_leaderboardId, MAX_NUMBER_LENGTH_LONG, "%d", leaderboardId);
        keyPairQuery_leaderboardId = keyValuePair_create(keyQuery_leaderboardId, valueQuery_leaderboardId);
        list_addElement(localVarQueryParameters,keyPairQuery_leaderboardId);
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
        cJSON *LeaderboardAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(LeaderboardAPIlocalVarJSON);
        cJSON_Delete(LeaderboardAPIlocalVarJSON);
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
    if(keyQuery_leaderboardId){
        free(keyQuery_leaderboardId);
        keyQuery_leaderboardId = NULL;
    }
    if(keyPairQuery_leaderboardId){
        keyValuePair_free(keyPairQuery_leaderboardId);
        keyPairQuery_leaderboardId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Read a leaderboard by id and retrieve the matching ranking list
//
// Read a leaderboard by id and retrieve the matching ranking list
//
leaderboard_response_t*
LeaderboardAPI_getLeaderboard(apiClient_t *apiClient, double version, long leaderboardId, long accountId, int *includeFullRankingList)
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
    char *localVarPath = strdup("/api/{version}/leaderboard/get");



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
    char *keyQuery_leaderboardId = NULL;
    char * valueQuery_leaderboardId ;
    keyValuePair_t *keyPairQuery_leaderboardId = 0;
    {
        keyQuery_leaderboardId = strdup("leaderboardId");
        valueQuery_leaderboardId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_leaderboardId, MAX_NUMBER_LENGTH_LONG, "%d", leaderboardId);
        keyPairQuery_leaderboardId = keyValuePair_create(keyQuery_leaderboardId, valueQuery_leaderboardId);
        list_addElement(localVarQueryParameters,keyPairQuery_leaderboardId);
    }

    // query parameters
    char *keyQuery_includeFullRankingList = NULL;
    char * valueQuery_includeFullRankingList = NULL;
    keyValuePair_t *keyPairQuery_includeFullRankingList = 0;
    if (includeFullRankingList)
    {
        keyQuery_includeFullRankingList = strdup("includeFullRankingList");
        valueQuery_includeFullRankingList = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFullRankingList, MAX_NUMBER_LENGTH, "%d", *includeFullRankingList);
        keyPairQuery_includeFullRankingList = keyValuePair_create(keyQuery_includeFullRankingList, valueQuery_includeFullRankingList);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFullRankingList);
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
    leaderboard_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LeaderboardAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = leaderboard_response_parseFromJSON(LeaderboardAPIlocalVarJSON);
        cJSON_Delete(LeaderboardAPIlocalVarJSON);
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
    if(keyQuery_leaderboardId){
        free(keyQuery_leaderboardId);
        keyQuery_leaderboardId = NULL;
    }
    if(keyPairQuery_leaderboardId){
        keyValuePair_free(keyPairQuery_leaderboardId);
        keyPairQuery_leaderboardId = NULL;
    }
    if(keyQuery_includeFullRankingList){
        free(keyQuery_includeFullRankingList);
        keyQuery_includeFullRankingList = NULL;
    }
    if(valueQuery_includeFullRankingList){
        free(valueQuery_includeFullRankingList);
        valueQuery_includeFullRankingList = NULL;
    }
    if(keyPairQuery_includeFullRankingList){
        keyValuePair_free(keyPairQuery_includeFullRankingList);
        keyPairQuery_includeFullRankingList = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search leaderboard and retrieve the matching ranking list
//
// Search leaderboard and retrieve the matching ranking list
//
leaderboard_response_t*
LeaderboardAPI_searchLeaderboards(apiClient_t *apiClient, double version, long accountId, char *appKey, int *globalOnly, char *keyword, char *leaderboardIds, char *rankTypes, char *sortField, int *descending, int *includeInactive, int *includeAppResponse, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/leaderboard/search");



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
    char *keyQuery_globalOnly = NULL;
    char * valueQuery_globalOnly = NULL;
    keyValuePair_t *keyPairQuery_globalOnly = 0;
    if (globalOnly)
    {
        keyQuery_globalOnly = strdup("globalOnly");
        valueQuery_globalOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_globalOnly, MAX_NUMBER_LENGTH, "%d", *globalOnly);
        keyPairQuery_globalOnly = keyValuePair_create(keyQuery_globalOnly, valueQuery_globalOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_globalOnly);
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
    char *keyQuery_leaderboardIds = NULL;
    char * valueQuery_leaderboardIds = NULL;
    keyValuePair_t *keyPairQuery_leaderboardIds = 0;
    if (leaderboardIds)
    {
        keyQuery_leaderboardIds = strdup("leaderboardIds");
        valueQuery_leaderboardIds = strdup((leaderboardIds));
        keyPairQuery_leaderboardIds = keyValuePair_create(keyQuery_leaderboardIds, valueQuery_leaderboardIds);
        list_addElement(localVarQueryParameters,keyPairQuery_leaderboardIds);
    }

    // query parameters
    char *keyQuery_rankTypes = NULL;
    char * valueQuery_rankTypes = NULL;
    keyValuePair_t *keyPairQuery_rankTypes = 0;
    if (rankTypes)
    {
        keyQuery_rankTypes = strdup("rankTypes");
        valueQuery_rankTypes = strdup((rankTypes));
        keyPairQuery_rankTypes = keyValuePair_create(keyQuery_rankTypes, valueQuery_rankTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_rankTypes);
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
    char *keyQuery_includeInactive = NULL;
    char * valueQuery_includeInactive = NULL;
    keyValuePair_t *keyPairQuery_includeInactive = 0;
    if (includeInactive)
    {
        keyQuery_includeInactive = strdup("includeInactive");
        valueQuery_includeInactive = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeInactive, MAX_NUMBER_LENGTH, "%d", *includeInactive);
        keyPairQuery_includeInactive = keyValuePair_create(keyQuery_includeInactive, valueQuery_includeInactive);
        list_addElement(localVarQueryParameters,keyPairQuery_includeInactive);
    }

    // query parameters
    char *keyQuery_includeAppResponse = NULL;
    char * valueQuery_includeAppResponse = NULL;
    keyValuePair_t *keyPairQuery_includeAppResponse = 0;
    if (includeAppResponse)
    {
        keyQuery_includeAppResponse = strdup("includeAppResponse");
        valueQuery_includeAppResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAppResponse, MAX_NUMBER_LENGTH, "%d", *includeAppResponse);
        keyPairQuery_includeAppResponse = keyValuePair_create(keyQuery_includeAppResponse, valueQuery_includeAppResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAppResponse);
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
    leaderboard_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LeaderboardAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = leaderboard_response_parseFromJSON(LeaderboardAPIlocalVarJSON);
        cJSON_Delete(LeaderboardAPIlocalVarJSON);
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
    if(keyQuery_globalOnly){
        free(keyQuery_globalOnly);
        keyQuery_globalOnly = NULL;
    }
    if(valueQuery_globalOnly){
        free(valueQuery_globalOnly);
        valueQuery_globalOnly = NULL;
    }
    if(keyPairQuery_globalOnly){
        keyValuePair_free(keyPairQuery_globalOnly);
        keyPairQuery_globalOnly = NULL;
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
    if(keyQuery_leaderboardIds){
        free(keyQuery_leaderboardIds);
        keyQuery_leaderboardIds = NULL;
    }
    if(valueQuery_leaderboardIds){
        free(valueQuery_leaderboardIds);
        valueQuery_leaderboardIds = NULL;
    }
    if(keyPairQuery_leaderboardIds){
        keyValuePair_free(keyPairQuery_leaderboardIds);
        keyPairQuery_leaderboardIds = NULL;
    }
    if(keyQuery_rankTypes){
        free(keyQuery_rankTypes);
        keyQuery_rankTypes = NULL;
    }
    if(valueQuery_rankTypes){
        free(valueQuery_rankTypes);
        valueQuery_rankTypes = NULL;
    }
    if(keyPairQuery_rankTypes){
        keyValuePair_free(keyPairQuery_rankTypes);
        keyPairQuery_rankTypes = NULL;
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
    if(keyQuery_includeInactive){
        free(keyQuery_includeInactive);
        keyQuery_includeInactive = NULL;
    }
    if(valueQuery_includeInactive){
        free(valueQuery_includeInactive);
        valueQuery_includeInactive = NULL;
    }
    if(keyPairQuery_includeInactive){
        keyValuePair_free(keyPairQuery_includeInactive);
        keyPairQuery_includeInactive = NULL;
    }
    if(keyQuery_includeAppResponse){
        free(keyQuery_includeAppResponse);
        keyQuery_includeAppResponse = NULL;
    }
    if(valueQuery_includeAppResponse){
        free(valueQuery_includeAppResponse);
        valueQuery_includeAppResponse = NULL;
    }
    if(keyPairQuery_includeAppResponse){
        keyValuePair_free(keyPairQuery_includeAppResponse);
        keyPairQuery_includeAppResponse = NULL;
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

// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
leaderboard_response_t*
LeaderboardAPI_updateLeaderboard(apiClient_t *apiClient, double version, long leaderboardId, long accountId, char *appKey, char *rankType, char *leaderboardMode, char *sortField, binary_t* iconMedia, long iconAssetId, binary_t* bannerMedia, long bannerAssetId, int *limitation, int *active, char *title, char *description, char *metaData)
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
    char *localVarPath = strdup("/api/{version}/leaderboard/update");



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
    char *keyQuery_leaderboardId = NULL;
    char * valueQuery_leaderboardId ;
    keyValuePair_t *keyPairQuery_leaderboardId = 0;
    {
        keyQuery_leaderboardId = strdup("leaderboardId");
        valueQuery_leaderboardId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_leaderboardId, MAX_NUMBER_LENGTH_LONG, "%d", leaderboardId);
        keyPairQuery_leaderboardId = keyValuePair_create(keyQuery_leaderboardId, valueQuery_leaderboardId);
        list_addElement(localVarQueryParameters,keyPairQuery_leaderboardId);
    }

    // query parameters
    char *keyQuery_rankType = NULL;
    char * valueQuery_rankType = NULL;
    keyValuePair_t *keyPairQuery_rankType = 0;
    if (rankType)
    {
        keyQuery_rankType = strdup("rankType");
        valueQuery_rankType = strdup((rankType));
        keyPairQuery_rankType = keyValuePair_create(keyQuery_rankType, valueQuery_rankType);
        list_addElement(localVarQueryParameters,keyPairQuery_rankType);
    }

    // query parameters
    char *keyQuery_leaderboardMode = NULL;
    char * valueQuery_leaderboardMode = NULL;
    keyValuePair_t *keyPairQuery_leaderboardMode = 0;
    if (leaderboardMode)
    {
        keyQuery_leaderboardMode = strdup("leaderboardMode");
        valueQuery_leaderboardMode = strdup((leaderboardMode));
        keyPairQuery_leaderboardMode = keyValuePair_create(keyQuery_leaderboardMode, valueQuery_leaderboardMode);
        list_addElement(localVarQueryParameters,keyPairQuery_leaderboardMode);
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
    char *keyQuery_iconMedia = NULL;
    binary_t* valueQuery_iconMedia ;
    keyValuePair_t *keyPairQuery_iconMedia = 0;
    if (iconMedia)
    {
        keyQuery_iconMedia = strdup("iconMedia");
        valueQuery_iconMedia = (iconMedia);
        keyPairQuery_iconMedia = keyValuePair_create(keyQuery_iconMedia, &valueQuery_iconMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_iconMedia);
    }

    // query parameters
    char *keyQuery_iconAssetId = NULL;
    char * valueQuery_iconAssetId ;
    keyValuePair_t *keyPairQuery_iconAssetId = 0;
    {
        keyQuery_iconAssetId = strdup("iconAssetId");
        valueQuery_iconAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_iconAssetId, MAX_NUMBER_LENGTH_LONG, "%d", iconAssetId);
        keyPairQuery_iconAssetId = keyValuePair_create(keyQuery_iconAssetId, valueQuery_iconAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_iconAssetId);
    }

    // query parameters
    char *keyQuery_bannerMedia = NULL;
    binary_t* valueQuery_bannerMedia ;
    keyValuePair_t *keyPairQuery_bannerMedia = 0;
    if (bannerMedia)
    {
        keyQuery_bannerMedia = strdup("bannerMedia");
        valueQuery_bannerMedia = (bannerMedia);
        keyPairQuery_bannerMedia = keyValuePair_create(keyQuery_bannerMedia, &valueQuery_bannerMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_bannerMedia);
    }

    // query parameters
    char *keyQuery_bannerAssetId = NULL;
    char * valueQuery_bannerAssetId ;
    keyValuePair_t *keyPairQuery_bannerAssetId = 0;
    {
        keyQuery_bannerAssetId = strdup("bannerAssetId");
        valueQuery_bannerAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_bannerAssetId, MAX_NUMBER_LENGTH_LONG, "%d", bannerAssetId);
        keyPairQuery_bannerAssetId = keyValuePair_create(keyQuery_bannerAssetId, valueQuery_bannerAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_bannerAssetId);
    }

    // query parameters
    char *keyQuery_limitation = NULL;
    char * valueQuery_limitation = NULL;
    keyValuePair_t *keyPairQuery_limitation = 0;
    if (limitation)
    {
        keyQuery_limitation = strdup("limitation");
        valueQuery_limitation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limitation, MAX_NUMBER_LENGTH, "%d", *limitation);
        keyPairQuery_limitation = keyValuePair_create(keyQuery_limitation, valueQuery_limitation);
        list_addElement(localVarQueryParameters,keyPairQuery_limitation);
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
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
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
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
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
    leaderboard_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LeaderboardAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = leaderboard_response_parseFromJSON(LeaderboardAPIlocalVarJSON);
        cJSON_Delete(LeaderboardAPIlocalVarJSON);
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
    if(keyQuery_leaderboardId){
        free(keyQuery_leaderboardId);
        keyQuery_leaderboardId = NULL;
    }
    if(keyPairQuery_leaderboardId){
        keyValuePair_free(keyPairQuery_leaderboardId);
        keyPairQuery_leaderboardId = NULL;
    }
    if(keyQuery_rankType){
        free(keyQuery_rankType);
        keyQuery_rankType = NULL;
    }
    if(valueQuery_rankType){
        free(valueQuery_rankType);
        valueQuery_rankType = NULL;
    }
    if(keyPairQuery_rankType){
        keyValuePair_free(keyPairQuery_rankType);
        keyPairQuery_rankType = NULL;
    }
    if(keyQuery_leaderboardMode){
        free(keyQuery_leaderboardMode);
        keyQuery_leaderboardMode = NULL;
    }
    if(valueQuery_leaderboardMode){
        free(valueQuery_leaderboardMode);
        valueQuery_leaderboardMode = NULL;
    }
    if(keyPairQuery_leaderboardMode){
        keyValuePair_free(keyPairQuery_leaderboardMode);
        keyPairQuery_leaderboardMode = NULL;
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
    if(keyQuery_iconMedia){
        free(keyQuery_iconMedia);
        keyQuery_iconMedia = NULL;
    }
    if(keyPairQuery_iconMedia){
        keyValuePair_free(keyPairQuery_iconMedia);
        keyPairQuery_iconMedia = NULL;
    }
    if(keyQuery_iconAssetId){
        free(keyQuery_iconAssetId);
        keyQuery_iconAssetId = NULL;
    }
    if(keyPairQuery_iconAssetId){
        keyValuePair_free(keyPairQuery_iconAssetId);
        keyPairQuery_iconAssetId = NULL;
    }
    if(keyQuery_bannerMedia){
        free(keyQuery_bannerMedia);
        keyQuery_bannerMedia = NULL;
    }
    if(keyPairQuery_bannerMedia){
        keyValuePair_free(keyPairQuery_bannerMedia);
        keyPairQuery_bannerMedia = NULL;
    }
    if(keyQuery_bannerAssetId){
        free(keyQuery_bannerAssetId);
        keyQuery_bannerAssetId = NULL;
    }
    if(keyPairQuery_bannerAssetId){
        keyValuePair_free(keyPairQuery_bannerAssetId);
        keyPairQuery_bannerAssetId = NULL;
    }
    if(keyQuery_limitation){
        free(keyQuery_limitation);
        keyQuery_limitation = NULL;
    }
    if(valueQuery_limitation){
        free(valueQuery_limitation);
        valueQuery_limitation = NULL;
    }
    if(keyPairQuery_limitation){
        keyValuePair_free(keyPairQuery_limitation);
        keyPairQuery_limitation = NULL;
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
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
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
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

