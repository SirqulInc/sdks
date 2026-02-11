#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ScoreAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Score
//
// Create a score.  The response object will contain a series of   coded messages detailing what items were completed, the score registered,   and any tickets allocated.  Scoring a  level could complete the pack it   is in, completing that pack could complete the game, which  in turn could   complete the mission.  This completion chain is indicated to the client   via  a list of {@link MessageResponse}.
//
score_response_t*
ScoreAPI_createScore(apiClient_t *apiClient, long accountId, char *appKey, int *points, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId, int *timeTaken, int *highest)
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
    char *localVarPath = strdup("/score/create");





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
    char *keyQuery_gameId = NULL;
    char * valueQuery_gameId ;
    keyValuePair_t *keyPairQuery_gameId = 0;
    {
        keyQuery_gameId = strdup("gameId");
        valueQuery_gameId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameId, MAX_NUMBER_LENGTH_LONG, "%d", gameId);
        keyPairQuery_gameId = keyValuePair_create(keyQuery_gameId, valueQuery_gameId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameId);
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
    char *keyQuery_gameObjectId = NULL;
    char * valueQuery_gameObjectId ;
    keyValuePair_t *keyPairQuery_gameObjectId = 0;
    {
        keyQuery_gameObjectId = strdup("gameObjectId");
        valueQuery_gameObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameObjectId, MAX_NUMBER_LENGTH_LONG, "%d", gameObjectId);
        keyPairQuery_gameObjectId = keyValuePair_create(keyQuery_gameObjectId, valueQuery_gameObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectId);
    }

    // query parameters
    char *keyQuery_points = NULL;
    char * valueQuery_points = NULL;
    keyValuePair_t *keyPairQuery_points = 0;
    if (points)
    {
        keyQuery_points = strdup("points");
        valueQuery_points = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_points, MAX_NUMBER_LENGTH, "%d", *points);
        keyPairQuery_points = keyValuePair_create(keyQuery_points, valueQuery_points);
        list_addElement(localVarQueryParameters,keyPairQuery_points);
    }

    // query parameters
    char *keyQuery_timeTaken = NULL;
    char * valueQuery_timeTaken = NULL;
    keyValuePair_t *keyPairQuery_timeTaken = 0;
    if (timeTaken)
    {
        keyQuery_timeTaken = strdup("timeTaken");
        valueQuery_timeTaken = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_timeTaken, MAX_NUMBER_LENGTH, "%d", *timeTaken);
        keyPairQuery_timeTaken = keyValuePair_create(keyQuery_timeTaken, valueQuery_timeTaken);
        list_addElement(localVarQueryParameters,keyPairQuery_timeTaken);
    }

    // query parameters
    char *keyQuery_highest = NULL;
    char * valueQuery_highest = NULL;
    keyValuePair_t *keyPairQuery_highest = 0;
    if (highest)
    {
        keyQuery_highest = strdup("highest");
        valueQuery_highest = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_highest, MAX_NUMBER_LENGTH, "%d", *highest);
        keyPairQuery_highest = keyValuePair_create(keyQuery_highest, valueQuery_highest);
        list_addElement(localVarQueryParameters,keyPairQuery_highest);
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
    score_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ScoreAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = score_response_parseFromJSON(ScoreAPIlocalVarJSON);
        cJSON_Delete(ScoreAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_gameId){
        free(keyQuery_gameId);
        keyQuery_gameId = NULL;
    }
    if(keyPairQuery_gameId){
        keyValuePair_free(keyPairQuery_gameId);
        keyPairQuery_gameId = NULL;
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
    if(keyQuery_gameObjectId){
        free(keyQuery_gameObjectId);
        keyQuery_gameObjectId = NULL;
    }
    if(keyPairQuery_gameObjectId){
        keyValuePair_free(keyPairQuery_gameObjectId);
        keyPairQuery_gameObjectId = NULL;
    }
    if(keyQuery_points){
        free(keyQuery_points);
        keyQuery_points = NULL;
    }
    if(valueQuery_points){
        free(valueQuery_points);
        valueQuery_points = NULL;
    }
    if(keyPairQuery_points){
        keyValuePair_free(keyPairQuery_points);
        keyPairQuery_points = NULL;
    }
    if(keyQuery_timeTaken){
        free(keyQuery_timeTaken);
        keyQuery_timeTaken = NULL;
    }
    if(valueQuery_timeTaken){
        free(valueQuery_timeTaken);
        valueQuery_timeTaken = NULL;
    }
    if(keyPairQuery_timeTaken){
        keyValuePair_free(keyPairQuery_timeTaken);
        keyPairQuery_timeTaken = NULL;
    }
    if(keyQuery_highest){
        free(keyQuery_highest);
        keyQuery_highest = NULL;
    }
    if(valueQuery_highest){
        free(valueQuery_highest);
        valueQuery_highest = NULL;
    }
    if(keyPairQuery_highest){
        keyValuePair_free(keyPairQuery_highest);
        keyPairQuery_highest = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Score
//
// Get the high score for an item.  Pass in the full path IDs for the score.
//
score_response_t*
ScoreAPI_getScore(apiClient_t *apiClient, long accountId, char *appKey, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId, char *scoreObjectType, char *scoreStatus)
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
    char *localVarPath = strdup("/score/get");





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
    char *keyQuery_gameId = NULL;
    char * valueQuery_gameId ;
    keyValuePair_t *keyPairQuery_gameId = 0;
    {
        keyQuery_gameId = strdup("gameId");
        valueQuery_gameId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameId, MAX_NUMBER_LENGTH_LONG, "%d", gameId);
        keyPairQuery_gameId = keyValuePair_create(keyQuery_gameId, valueQuery_gameId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameId);
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
    char *keyQuery_gameObjectId = NULL;
    char * valueQuery_gameObjectId ;
    keyValuePair_t *keyPairQuery_gameObjectId = 0;
    {
        keyQuery_gameObjectId = strdup("gameObjectId");
        valueQuery_gameObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameObjectId, MAX_NUMBER_LENGTH_LONG, "%d", gameObjectId);
        keyPairQuery_gameObjectId = keyValuePair_create(keyQuery_gameObjectId, valueQuery_gameObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectId);
    }

    // query parameters
    char *keyQuery_scoreObjectType = NULL;
    char * valueQuery_scoreObjectType = NULL;
    keyValuePair_t *keyPairQuery_scoreObjectType = 0;
    if (scoreObjectType)
    {
        keyQuery_scoreObjectType = strdup("scoreObjectType");
        valueQuery_scoreObjectType = strdup((scoreObjectType));
        keyPairQuery_scoreObjectType = keyValuePair_create(keyQuery_scoreObjectType, valueQuery_scoreObjectType);
        list_addElement(localVarQueryParameters,keyPairQuery_scoreObjectType);
    }

    // query parameters
    char *keyQuery_scoreStatus = NULL;
    char * valueQuery_scoreStatus = NULL;
    keyValuePair_t *keyPairQuery_scoreStatus = 0;
    if (scoreStatus)
    {
        keyQuery_scoreStatus = strdup("scoreStatus");
        valueQuery_scoreStatus = strdup((scoreStatus));
        keyPairQuery_scoreStatus = keyValuePair_create(keyQuery_scoreStatus, valueQuery_scoreStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_scoreStatus);
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
    score_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ScoreAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = score_response_parseFromJSON(ScoreAPIlocalVarJSON);
        cJSON_Delete(ScoreAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_gameId){
        free(keyQuery_gameId);
        keyQuery_gameId = NULL;
    }
    if(keyPairQuery_gameId){
        keyValuePair_free(keyPairQuery_gameId);
        keyPairQuery_gameId = NULL;
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
    if(keyQuery_gameObjectId){
        free(keyQuery_gameObjectId);
        keyQuery_gameObjectId = NULL;
    }
    if(keyPairQuery_gameObjectId){
        keyValuePair_free(keyPairQuery_gameObjectId);
        keyPairQuery_gameObjectId = NULL;
    }
    if(keyQuery_scoreObjectType){
        free(keyQuery_scoreObjectType);
        keyQuery_scoreObjectType = NULL;
    }
    if(valueQuery_scoreObjectType){
        free(valueQuery_scoreObjectType);
        valueQuery_scoreObjectType = NULL;
    }
    if(keyPairQuery_scoreObjectType){
        keyValuePair_free(keyPairQuery_scoreObjectType);
        keyPairQuery_scoreObjectType = NULL;
    }
    if(keyQuery_scoreStatus){
        free(keyQuery_scoreStatus);
        keyQuery_scoreStatus = NULL;
    }
    if(valueQuery_scoreStatus){
        free(valueQuery_scoreStatus);
        valueQuery_scoreStatus = NULL;
    }
    if(keyPairQuery_scoreStatus){
        keyValuePair_free(keyPairQuery_scoreStatus);
        keyPairQuery_scoreStatus = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Score
//
// Search the scores for an item.  Pass in the full path IDs for the scores.
//
list_t*
ScoreAPI_searchScores(apiClient_t *apiClient, long accountId, char *appKey, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId)
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
    char *localVarPath = strdup("/score/search");





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
    char *keyQuery_gameId = NULL;
    char * valueQuery_gameId ;
    keyValuePair_t *keyPairQuery_gameId = 0;
    {
        keyQuery_gameId = strdup("gameId");
        valueQuery_gameId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameId, MAX_NUMBER_LENGTH_LONG, "%d", gameId);
        keyPairQuery_gameId = keyValuePair_create(keyQuery_gameId, valueQuery_gameId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameId);
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
    char *keyQuery_gameObjectId = NULL;
    char * valueQuery_gameObjectId ;
    keyValuePair_t *keyPairQuery_gameObjectId = 0;
    {
        keyQuery_gameObjectId = strdup("gameObjectId");
        valueQuery_gameObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_gameObjectId, MAX_NUMBER_LENGTH_LONG, "%d", gameObjectId);
        keyPairQuery_gameObjectId = keyValuePair_create(keyQuery_gameObjectId, valueQuery_gameObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_gameObjectId);
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
        cJSON *ScoreAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ScoreAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ScoreAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ScoreAPIlocalVarJSON);
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
    if(keyQuery_gameId){
        free(keyQuery_gameId);
        keyQuery_gameId = NULL;
    }
    if(keyPairQuery_gameId){
        keyValuePair_free(keyPairQuery_gameId);
        keyPairQuery_gameId = NULL;
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
    if(keyQuery_gameObjectId){
        free(keyQuery_gameObjectId);
        keyQuery_gameObjectId = NULL;
    }
    if(keyPairQuery_gameObjectId){
        keyValuePair_free(keyPairQuery_gameObjectId);
        keyPairQuery_gameObjectId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

