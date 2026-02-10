#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "RankingAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Search Historical Rankings
//
// Get historical leaderboard rankings by time-frame.
//
rank_full_response_t*
RankingAPI_getHistoricalRankings(apiClient_t *apiClient, double version, char *appKey, char *rankType, long startDate, long endDate, char *deviceId, long accountId, char *sortField, int *descending, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/ranking/historical/search");



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
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
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
    //nonprimitive not container
    rank_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RankingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = rank_full_response_parseFromJSON(RankingAPIlocalVarJSON);
        cJSON_Delete(RankingAPIlocalVarJSON);
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
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
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

// Search Rankings
//
// Get leader board rankings. This is an all in one endpoint that can return multiple ranking types and also the current user rank.
//
rank_full_response_t*
RankingAPI_getRankings(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *gameType, char *appKey, char *q, char *keyword, char *rankType, char *leaderboardMode, char *withinAccountIds, int *returnUserRank, long albumId, long audienceId, char *sortField, int *descending, int *_i, int *start, int *_l, int *limit)
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
    char *localVarPath = strdup("/api/{version}/ranking/search");



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
    char *keyQuery_withinAccountIds = NULL;
    char * valueQuery_withinAccountIds = NULL;
    keyValuePair_t *keyPairQuery_withinAccountIds = 0;
    if (withinAccountIds)
    {
        keyQuery_withinAccountIds = strdup("withinAccountIds");
        valueQuery_withinAccountIds = strdup((withinAccountIds));
        keyPairQuery_withinAccountIds = keyValuePair_create(keyQuery_withinAccountIds, valueQuery_withinAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_withinAccountIds);
    }

    // query parameters
    char *keyQuery_returnUserRank = NULL;
    char * valueQuery_returnUserRank = NULL;
    keyValuePair_t *keyPairQuery_returnUserRank = 0;
    if (returnUserRank)
    {
        keyQuery_returnUserRank = strdup("returnUserRank");
        valueQuery_returnUserRank = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnUserRank, MAX_NUMBER_LENGTH, "%d", *returnUserRank);
        keyPairQuery_returnUserRank = keyValuePair_create(keyQuery_returnUserRank, valueQuery_returnUserRank);
        list_addElement(localVarQueryParameters,keyPairQuery_returnUserRank);
    }

    // query parameters
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
    }

    // query parameters
    char *keyQuery_audienceId = NULL;
    char * valueQuery_audienceId ;
    keyValuePair_t *keyPairQuery_audienceId = 0;
    {
        keyQuery_audienceId = strdup("audienceId");
        valueQuery_audienceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_audienceId, MAX_NUMBER_LENGTH_LONG, "%d", audienceId);
        keyPairQuery_audienceId = keyValuePair_create(keyQuery_audienceId, valueQuery_audienceId);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceId);
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
    rank_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RankingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = rank_full_response_parseFromJSON(RankingAPIlocalVarJSON);
        cJSON_Delete(RankingAPIlocalVarJSON);
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
    if(keyQuery_withinAccountIds){
        free(keyQuery_withinAccountIds);
        keyQuery_withinAccountIds = NULL;
    }
    if(valueQuery_withinAccountIds){
        free(valueQuery_withinAccountIds);
        valueQuery_withinAccountIds = NULL;
    }
    if(keyPairQuery_withinAccountIds){
        keyValuePair_free(keyPairQuery_withinAccountIds);
        keyPairQuery_withinAccountIds = NULL;
    }
    if(keyQuery_returnUserRank){
        free(keyQuery_returnUserRank);
        keyQuery_returnUserRank = NULL;
    }
    if(valueQuery_returnUserRank){
        free(valueQuery_returnUserRank);
        valueQuery_returnUserRank = NULL;
    }
    if(keyPairQuery_returnUserRank){
        keyValuePair_free(keyPairQuery_returnUserRank);
        keyPairQuery_returnUserRank = NULL;
    }
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_audienceId){
        free(keyQuery_audienceId);
        keyQuery_audienceId = NULL;
    }
    if(keyPairQuery_audienceId){
        keyValuePair_free(keyPairQuery_audienceId);
        keyPairQuery_audienceId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Personal Rankings
//
// Returns the user's ranks for one or more rank types and modes.
//
object_t*
RankingAPI_getUserRank(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *appKey, char *rankType, int *returnUserRank, char *leaderboardMode, char *sortField, char *keyword, int *descending, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/ranking/personal/ranks");



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
    char *keyQuery_returnUserRank = NULL;
    char * valueQuery_returnUserRank = NULL;
    keyValuePair_t *keyPairQuery_returnUserRank = 0;
    if (returnUserRank)
    {
        keyQuery_returnUserRank = strdup("returnUserRank");
        valueQuery_returnUserRank = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnUserRank, MAX_NUMBER_LENGTH, "%d", *returnUserRank);
        keyPairQuery_returnUserRank = keyValuePair_create(keyQuery_returnUserRank, valueQuery_returnUserRank);
        list_addElement(localVarQueryParameters,keyPairQuery_returnUserRank);
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    object_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RankingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = object_parseFromJSON(RankingAPIlocalVarJSON);
        cJSON_Delete(RankingAPIlocalVarJSON);
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
    if(keyQuery_returnUserRank){
        free(keyQuery_returnUserRank);
        keyQuery_returnUserRank = NULL;
    }
    if(valueQuery_returnUserRank){
        free(valueQuery_returnUserRank);
        valueQuery_returnUserRank = NULL;
    }
    if(keyPairQuery_returnUserRank){
        keyValuePair_free(keyPairQuery_returnUserRank);
        keyPairQuery_returnUserRank = NULL;
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

// Override User Rank
//
// Allows an admin of an application to override a user's scores for a leaderboard.
//
sirqul_response_t*
RankingAPI_overrideUserRank(apiClient_t *apiClient, double version, long accountId, long ownerAccountId, char *appKey, char *rankType, long totalScore, long totalCount, long totalTime, long dailyScore, long dailyCount, long dailyTime, long weeklyScore, long weeklyCount, long weeklyTime, long monthlyScore, long monthlyCount, long monthlyTime, long topScore, long lowestScore, long streakCount, long streakBestCount, long startDate, long endDate)
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
    char *localVarPath = strdup("/api/{version}/ranking/override");



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
    char *keyQuery_ownerAccountId = NULL;
    char * valueQuery_ownerAccountId ;
    keyValuePair_t *keyPairQuery_ownerAccountId = 0;
    {
        keyQuery_ownerAccountId = strdup("ownerAccountId");
        valueQuery_ownerAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ownerAccountId, MAX_NUMBER_LENGTH_LONG, "%d", ownerAccountId);
        keyPairQuery_ownerAccountId = keyValuePair_create(keyQuery_ownerAccountId, valueQuery_ownerAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_ownerAccountId);
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
    char *keyQuery_totalScore = NULL;
    char * valueQuery_totalScore ;
    keyValuePair_t *keyPairQuery_totalScore = 0;
    {
        keyQuery_totalScore = strdup("totalScore");
        valueQuery_totalScore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_totalScore, MAX_NUMBER_LENGTH_LONG, "%d", totalScore);
        keyPairQuery_totalScore = keyValuePair_create(keyQuery_totalScore, valueQuery_totalScore);
        list_addElement(localVarQueryParameters,keyPairQuery_totalScore);
    }

    // query parameters
    char *keyQuery_totalCount = NULL;
    char * valueQuery_totalCount ;
    keyValuePair_t *keyPairQuery_totalCount = 0;
    {
        keyQuery_totalCount = strdup("totalCount");
        valueQuery_totalCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_totalCount, MAX_NUMBER_LENGTH_LONG, "%d", totalCount);
        keyPairQuery_totalCount = keyValuePair_create(keyQuery_totalCount, valueQuery_totalCount);
        list_addElement(localVarQueryParameters,keyPairQuery_totalCount);
    }

    // query parameters
    char *keyQuery_totalTime = NULL;
    char * valueQuery_totalTime ;
    keyValuePair_t *keyPairQuery_totalTime = 0;
    {
        keyQuery_totalTime = strdup("totalTime");
        valueQuery_totalTime = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_totalTime, MAX_NUMBER_LENGTH_LONG, "%d", totalTime);
        keyPairQuery_totalTime = keyValuePair_create(keyQuery_totalTime, valueQuery_totalTime);
        list_addElement(localVarQueryParameters,keyPairQuery_totalTime);
    }

    // query parameters
    char *keyQuery_dailyScore = NULL;
    char * valueQuery_dailyScore ;
    keyValuePair_t *keyPairQuery_dailyScore = 0;
    {
        keyQuery_dailyScore = strdup("dailyScore");
        valueQuery_dailyScore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dailyScore, MAX_NUMBER_LENGTH_LONG, "%d", dailyScore);
        keyPairQuery_dailyScore = keyValuePair_create(keyQuery_dailyScore, valueQuery_dailyScore);
        list_addElement(localVarQueryParameters,keyPairQuery_dailyScore);
    }

    // query parameters
    char *keyQuery_dailyCount = NULL;
    char * valueQuery_dailyCount ;
    keyValuePair_t *keyPairQuery_dailyCount = 0;
    {
        keyQuery_dailyCount = strdup("dailyCount");
        valueQuery_dailyCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dailyCount, MAX_NUMBER_LENGTH_LONG, "%d", dailyCount);
        keyPairQuery_dailyCount = keyValuePair_create(keyQuery_dailyCount, valueQuery_dailyCount);
        list_addElement(localVarQueryParameters,keyPairQuery_dailyCount);
    }

    // query parameters
    char *keyQuery_dailyTime = NULL;
    char * valueQuery_dailyTime ;
    keyValuePair_t *keyPairQuery_dailyTime = 0;
    {
        keyQuery_dailyTime = strdup("dailyTime");
        valueQuery_dailyTime = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dailyTime, MAX_NUMBER_LENGTH_LONG, "%d", dailyTime);
        keyPairQuery_dailyTime = keyValuePair_create(keyQuery_dailyTime, valueQuery_dailyTime);
        list_addElement(localVarQueryParameters,keyPairQuery_dailyTime);
    }

    // query parameters
    char *keyQuery_weeklyScore = NULL;
    char * valueQuery_weeklyScore ;
    keyValuePair_t *keyPairQuery_weeklyScore = 0;
    {
        keyQuery_weeklyScore = strdup("weeklyScore");
        valueQuery_weeklyScore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_weeklyScore, MAX_NUMBER_LENGTH_LONG, "%d", weeklyScore);
        keyPairQuery_weeklyScore = keyValuePair_create(keyQuery_weeklyScore, valueQuery_weeklyScore);
        list_addElement(localVarQueryParameters,keyPairQuery_weeklyScore);
    }

    // query parameters
    char *keyQuery_weeklyCount = NULL;
    char * valueQuery_weeklyCount ;
    keyValuePair_t *keyPairQuery_weeklyCount = 0;
    {
        keyQuery_weeklyCount = strdup("weeklyCount");
        valueQuery_weeklyCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_weeklyCount, MAX_NUMBER_LENGTH_LONG, "%d", weeklyCount);
        keyPairQuery_weeklyCount = keyValuePair_create(keyQuery_weeklyCount, valueQuery_weeklyCount);
        list_addElement(localVarQueryParameters,keyPairQuery_weeklyCount);
    }

    // query parameters
    char *keyQuery_weeklyTime = NULL;
    char * valueQuery_weeklyTime ;
    keyValuePair_t *keyPairQuery_weeklyTime = 0;
    {
        keyQuery_weeklyTime = strdup("weeklyTime");
        valueQuery_weeklyTime = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_weeklyTime, MAX_NUMBER_LENGTH_LONG, "%d", weeklyTime);
        keyPairQuery_weeklyTime = keyValuePair_create(keyQuery_weeklyTime, valueQuery_weeklyTime);
        list_addElement(localVarQueryParameters,keyPairQuery_weeklyTime);
    }

    // query parameters
    char *keyQuery_monthlyScore = NULL;
    char * valueQuery_monthlyScore ;
    keyValuePair_t *keyPairQuery_monthlyScore = 0;
    {
        keyQuery_monthlyScore = strdup("monthlyScore");
        valueQuery_monthlyScore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_monthlyScore, MAX_NUMBER_LENGTH_LONG, "%d", monthlyScore);
        keyPairQuery_monthlyScore = keyValuePair_create(keyQuery_monthlyScore, valueQuery_monthlyScore);
        list_addElement(localVarQueryParameters,keyPairQuery_monthlyScore);
    }

    // query parameters
    char *keyQuery_monthlyCount = NULL;
    char * valueQuery_monthlyCount ;
    keyValuePair_t *keyPairQuery_monthlyCount = 0;
    {
        keyQuery_monthlyCount = strdup("monthlyCount");
        valueQuery_monthlyCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_monthlyCount, MAX_NUMBER_LENGTH_LONG, "%d", monthlyCount);
        keyPairQuery_monthlyCount = keyValuePair_create(keyQuery_monthlyCount, valueQuery_monthlyCount);
        list_addElement(localVarQueryParameters,keyPairQuery_monthlyCount);
    }

    // query parameters
    char *keyQuery_monthlyTime = NULL;
    char * valueQuery_monthlyTime ;
    keyValuePair_t *keyPairQuery_monthlyTime = 0;
    {
        keyQuery_monthlyTime = strdup("monthlyTime");
        valueQuery_monthlyTime = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_monthlyTime, MAX_NUMBER_LENGTH_LONG, "%d", monthlyTime);
        keyPairQuery_monthlyTime = keyValuePair_create(keyQuery_monthlyTime, valueQuery_monthlyTime);
        list_addElement(localVarQueryParameters,keyPairQuery_monthlyTime);
    }

    // query parameters
    char *keyQuery_topScore = NULL;
    char * valueQuery_topScore ;
    keyValuePair_t *keyPairQuery_topScore = 0;
    {
        keyQuery_topScore = strdup("topScore");
        valueQuery_topScore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_topScore, MAX_NUMBER_LENGTH_LONG, "%d", topScore);
        keyPairQuery_topScore = keyValuePair_create(keyQuery_topScore, valueQuery_topScore);
        list_addElement(localVarQueryParameters,keyPairQuery_topScore);
    }

    // query parameters
    char *keyQuery_lowestScore = NULL;
    char * valueQuery_lowestScore ;
    keyValuePair_t *keyPairQuery_lowestScore = 0;
    {
        keyQuery_lowestScore = strdup("lowestScore");
        valueQuery_lowestScore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_lowestScore, MAX_NUMBER_LENGTH_LONG, "%d", lowestScore);
        keyPairQuery_lowestScore = keyValuePair_create(keyQuery_lowestScore, valueQuery_lowestScore);
        list_addElement(localVarQueryParameters,keyPairQuery_lowestScore);
    }

    // query parameters
    char *keyQuery_streakCount = NULL;
    char * valueQuery_streakCount ;
    keyValuePair_t *keyPairQuery_streakCount = 0;
    {
        keyQuery_streakCount = strdup("streakCount");
        valueQuery_streakCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_streakCount, MAX_NUMBER_LENGTH_LONG, "%d", streakCount);
        keyPairQuery_streakCount = keyValuePair_create(keyQuery_streakCount, valueQuery_streakCount);
        list_addElement(localVarQueryParameters,keyPairQuery_streakCount);
    }

    // query parameters
    char *keyQuery_streakBestCount = NULL;
    char * valueQuery_streakBestCount ;
    keyValuePair_t *keyPairQuery_streakBestCount = 0;
    {
        keyQuery_streakBestCount = strdup("streakBestCount");
        valueQuery_streakBestCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_streakBestCount, MAX_NUMBER_LENGTH_LONG, "%d", streakBestCount);
        keyPairQuery_streakBestCount = keyValuePair_create(keyQuery_streakBestCount, valueQuery_streakBestCount);
        list_addElement(localVarQueryParameters,keyPairQuery_streakBestCount);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
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
        cJSON *RankingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(RankingAPIlocalVarJSON);
        cJSON_Delete(RankingAPIlocalVarJSON);
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
    if(keyQuery_ownerAccountId){
        free(keyQuery_ownerAccountId);
        keyQuery_ownerAccountId = NULL;
    }
    if(keyPairQuery_ownerAccountId){
        keyValuePair_free(keyPairQuery_ownerAccountId);
        keyPairQuery_ownerAccountId = NULL;
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
    if(keyQuery_totalScore){
        free(keyQuery_totalScore);
        keyQuery_totalScore = NULL;
    }
    if(keyPairQuery_totalScore){
        keyValuePair_free(keyPairQuery_totalScore);
        keyPairQuery_totalScore = NULL;
    }
    if(keyQuery_totalCount){
        free(keyQuery_totalCount);
        keyQuery_totalCount = NULL;
    }
    if(keyPairQuery_totalCount){
        keyValuePair_free(keyPairQuery_totalCount);
        keyPairQuery_totalCount = NULL;
    }
    if(keyQuery_totalTime){
        free(keyQuery_totalTime);
        keyQuery_totalTime = NULL;
    }
    if(keyPairQuery_totalTime){
        keyValuePair_free(keyPairQuery_totalTime);
        keyPairQuery_totalTime = NULL;
    }
    if(keyQuery_dailyScore){
        free(keyQuery_dailyScore);
        keyQuery_dailyScore = NULL;
    }
    if(keyPairQuery_dailyScore){
        keyValuePair_free(keyPairQuery_dailyScore);
        keyPairQuery_dailyScore = NULL;
    }
    if(keyQuery_dailyCount){
        free(keyQuery_dailyCount);
        keyQuery_dailyCount = NULL;
    }
    if(keyPairQuery_dailyCount){
        keyValuePair_free(keyPairQuery_dailyCount);
        keyPairQuery_dailyCount = NULL;
    }
    if(keyQuery_dailyTime){
        free(keyQuery_dailyTime);
        keyQuery_dailyTime = NULL;
    }
    if(keyPairQuery_dailyTime){
        keyValuePair_free(keyPairQuery_dailyTime);
        keyPairQuery_dailyTime = NULL;
    }
    if(keyQuery_weeklyScore){
        free(keyQuery_weeklyScore);
        keyQuery_weeklyScore = NULL;
    }
    if(keyPairQuery_weeklyScore){
        keyValuePair_free(keyPairQuery_weeklyScore);
        keyPairQuery_weeklyScore = NULL;
    }
    if(keyQuery_weeklyCount){
        free(keyQuery_weeklyCount);
        keyQuery_weeklyCount = NULL;
    }
    if(keyPairQuery_weeklyCount){
        keyValuePair_free(keyPairQuery_weeklyCount);
        keyPairQuery_weeklyCount = NULL;
    }
    if(keyQuery_weeklyTime){
        free(keyQuery_weeklyTime);
        keyQuery_weeklyTime = NULL;
    }
    if(keyPairQuery_weeklyTime){
        keyValuePair_free(keyPairQuery_weeklyTime);
        keyPairQuery_weeklyTime = NULL;
    }
    if(keyQuery_monthlyScore){
        free(keyQuery_monthlyScore);
        keyQuery_monthlyScore = NULL;
    }
    if(keyPairQuery_monthlyScore){
        keyValuePair_free(keyPairQuery_monthlyScore);
        keyPairQuery_monthlyScore = NULL;
    }
    if(keyQuery_monthlyCount){
        free(keyQuery_monthlyCount);
        keyQuery_monthlyCount = NULL;
    }
    if(keyPairQuery_monthlyCount){
        keyValuePair_free(keyPairQuery_monthlyCount);
        keyPairQuery_monthlyCount = NULL;
    }
    if(keyQuery_monthlyTime){
        free(keyQuery_monthlyTime);
        keyQuery_monthlyTime = NULL;
    }
    if(keyPairQuery_monthlyTime){
        keyValuePair_free(keyPairQuery_monthlyTime);
        keyPairQuery_monthlyTime = NULL;
    }
    if(keyQuery_topScore){
        free(keyQuery_topScore);
        keyQuery_topScore = NULL;
    }
    if(keyPairQuery_topScore){
        keyValuePair_free(keyPairQuery_topScore);
        keyPairQuery_topScore = NULL;
    }
    if(keyQuery_lowestScore){
        free(keyQuery_lowestScore);
        keyQuery_lowestScore = NULL;
    }
    if(keyPairQuery_lowestScore){
        keyValuePair_free(keyPairQuery_lowestScore);
        keyPairQuery_lowestScore = NULL;
    }
    if(keyQuery_streakCount){
        free(keyQuery_streakCount);
        keyQuery_streakCount = NULL;
    }
    if(keyPairQuery_streakCount){
        keyValuePair_free(keyPairQuery_streakCount);
        keyPairQuery_streakCount = NULL;
    }
    if(keyQuery_streakBestCount){
        free(keyQuery_streakBestCount);
        keyQuery_streakBestCount = NULL;
    }
    if(keyPairQuery_streakBestCount){
        keyValuePair_free(keyPairQuery_streakBestCount);
        keyPairQuery_streakBestCount = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Ranking
//
// Update the rank value 
//
sirqul_response_t*
RankingAPI_updateRankings(apiClient_t *apiClient, double version, long accountId, char *appKey, char *rankType, long increment, long timeIncrement, char *tag, long startDate, long endDate, int *updateGlobal, int *createLeaderboard)
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
    char *localVarPath = strdup("/api/{version}/ranking/update");



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
    char *keyQuery_increment = NULL;
    char * valueQuery_increment ;
    keyValuePair_t *keyPairQuery_increment = 0;
    {
        keyQuery_increment = strdup("increment");
        valueQuery_increment = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_increment, MAX_NUMBER_LENGTH_LONG, "%d", increment);
        keyPairQuery_increment = keyValuePair_create(keyQuery_increment, valueQuery_increment);
        list_addElement(localVarQueryParameters,keyPairQuery_increment);
    }

    // query parameters
    char *keyQuery_timeIncrement = NULL;
    char * valueQuery_timeIncrement ;
    keyValuePair_t *keyPairQuery_timeIncrement = 0;
    {
        keyQuery_timeIncrement = strdup("timeIncrement");
        valueQuery_timeIncrement = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_timeIncrement, MAX_NUMBER_LENGTH_LONG, "%d", timeIncrement);
        keyPairQuery_timeIncrement = keyValuePair_create(keyQuery_timeIncrement, valueQuery_timeIncrement);
        list_addElement(localVarQueryParameters,keyPairQuery_timeIncrement);
    }

    // query parameters
    char *keyQuery_tag = NULL;
    char * valueQuery_tag = NULL;
    keyValuePair_t *keyPairQuery_tag = 0;
    if (tag)
    {
        keyQuery_tag = strdup("tag");
        valueQuery_tag = strdup((tag));
        keyPairQuery_tag = keyValuePair_create(keyQuery_tag, valueQuery_tag);
        list_addElement(localVarQueryParameters,keyPairQuery_tag);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_updateGlobal = NULL;
    char * valueQuery_updateGlobal = NULL;
    keyValuePair_t *keyPairQuery_updateGlobal = 0;
    if (updateGlobal)
    {
        keyQuery_updateGlobal = strdup("updateGlobal");
        valueQuery_updateGlobal = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateGlobal, MAX_NUMBER_LENGTH, "%d", *updateGlobal);
        keyPairQuery_updateGlobal = keyValuePair_create(keyQuery_updateGlobal, valueQuery_updateGlobal);
        list_addElement(localVarQueryParameters,keyPairQuery_updateGlobal);
    }

    // query parameters
    char *keyQuery_createLeaderboard = NULL;
    char * valueQuery_createLeaderboard = NULL;
    keyValuePair_t *keyPairQuery_createLeaderboard = 0;
    if (createLeaderboard)
    {
        keyQuery_createLeaderboard = strdup("createLeaderboard");
        valueQuery_createLeaderboard = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_createLeaderboard, MAX_NUMBER_LENGTH, "%d", *createLeaderboard);
        keyPairQuery_createLeaderboard = keyValuePair_create(keyQuery_createLeaderboard, valueQuery_createLeaderboard);
        list_addElement(localVarQueryParameters,keyPairQuery_createLeaderboard);
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
        cJSON *RankingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(RankingAPIlocalVarJSON);
        cJSON_Delete(RankingAPIlocalVarJSON);
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
    if(keyQuery_increment){
        free(keyQuery_increment);
        keyQuery_increment = NULL;
    }
    if(keyPairQuery_increment){
        keyValuePair_free(keyPairQuery_increment);
        keyPairQuery_increment = NULL;
    }
    if(keyQuery_timeIncrement){
        free(keyQuery_timeIncrement);
        keyQuery_timeIncrement = NULL;
    }
    if(keyPairQuery_timeIncrement){
        keyValuePair_free(keyPairQuery_timeIncrement);
        keyPairQuery_timeIncrement = NULL;
    }
    if(keyQuery_tag){
        free(keyQuery_tag);
        keyQuery_tag = NULL;
    }
    if(valueQuery_tag){
        free(valueQuery_tag);
        valueQuery_tag = NULL;
    }
    if(keyPairQuery_tag){
        keyValuePair_free(keyPairQuery_tag);
        keyPairQuery_tag = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_updateGlobal){
        free(keyQuery_updateGlobal);
        keyQuery_updateGlobal = NULL;
    }
    if(valueQuery_updateGlobal){
        free(valueQuery_updateGlobal);
        valueQuery_updateGlobal = NULL;
    }
    if(keyPairQuery_updateGlobal){
        keyValuePair_free(keyPairQuery_updateGlobal);
        keyPairQuery_updateGlobal = NULL;
    }
    if(keyQuery_createLeaderboard){
        free(keyQuery_createLeaderboard);
        keyQuery_createLeaderboard = NULL;
    }
    if(valueQuery_createLeaderboard){
        free(valueQuery_createLeaderboard);
        valueQuery_createLeaderboard = NULL;
    }
    if(keyPairQuery_createLeaderboard){
        keyValuePair_free(keyPairQuery_createLeaderboard);
        keyPairQuery_createLeaderboard = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

