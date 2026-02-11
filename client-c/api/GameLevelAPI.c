#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "GameLevelAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for GameLevelAPI_getGameLevelsByBillableEntity

static char* getGameLevelsByBillableEntity_SORTFIELD_ToString(sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "LEVEL_ACTIVE", "LEVEL_NAME", "LEVEL_DESCRIPTION", "LEVEL_CREATED", "LEVEL_UPDATED", "LEVEL_LIKES", "LEVEL_DISLIKES", "LEVEL_NOTES", "LEVEL_PLAYS", "LEVEL_DOWNLOADS", "LEVEL_QUITS", "LEVEL_COMPLETES", "LEVEL_VERSION", "LEVEL_MISSION_TYPE", "LEVEL_OWNER_DISPLAY", "GAME_OWNER_DISPLAY", "GAME_TITLE", "GAME_DESCRIPTION", "GAME_LIKES", "GAME_DISLIKES", "APP_NAME", "APP_SCORING_TYPE" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e getGameLevelsByBillableEntity_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "LEVEL_ACTIVE", "LEVEL_NAME", "LEVEL_DESCRIPTION", "LEVEL_CREATED", "LEVEL_UPDATED", "LEVEL_LIKES", "LEVEL_DISLIKES", "LEVEL_NOTES", "LEVEL_PLAYS", "LEVEL_DOWNLOADS", "LEVEL_QUITS", "LEVEL_COMPLETES", "LEVEL_VERSION", "LEVEL_MISSION_TYPE", "LEVEL_OWNER_DISPLAY", "GAME_OWNER_DISPLAY", "GAME_TITLE", "GAME_DESCRIPTION", "GAME_LIKES", "GAME_DISLIKES", "APP_NAME", "APP_SCORING_TYPE" };
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
// Function getGameLevelsByBillableEntity_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getGameLevelsByBillableEntity_SORTFIELD_convertToJSON(sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", getGameLevelsByBillableEntity_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getGameLevelsByBillableEntity_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e getGameLevelsByBillableEntity_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = getGameLevelsByBillableEntity_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Create Game Level
//
// Create a game level. Currently does NOT support game objects.
//
game_level_response_t*
GameLevelAPI_createGameLevel(apiClient_t *apiClient, long accountId, char *name, char *gameData, char *gameDataSuffix, char *appKey, char *description, char *difficulty, char *appVersion, long assetImageId, long assetIconId, char *visibility, int *friendGroup, char *connectionIds, char *connectionGroupIds, double balance, int *active, int *allocateTickets, long ticketCount, char *ticketType, long points, char *tutorialTitle, char *tutorialMessage, char *tutorialAlignment, long tutorialImageAssetId, long offerId, char *metaData)
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
    char *localVarPath = strdup("/level/create");





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
    char *keyQuery_difficulty = NULL;
    char * valueQuery_difficulty = NULL;
    keyValuePair_t *keyPairQuery_difficulty = 0;
    if (difficulty)
    {
        keyQuery_difficulty = strdup("difficulty");
        valueQuery_difficulty = strdup((difficulty));
        keyPairQuery_difficulty = keyValuePair_create(keyQuery_difficulty, valueQuery_difficulty);
        list_addElement(localVarQueryParameters,keyPairQuery_difficulty);
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
    char *keyQuery_assetImageId = NULL;
    char * valueQuery_assetImageId ;
    keyValuePair_t *keyPairQuery_assetImageId = 0;
    {
        keyQuery_assetImageId = strdup("assetImageId");
        valueQuery_assetImageId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetImageId, MAX_NUMBER_LENGTH_LONG, "%d", assetImageId);
        keyPairQuery_assetImageId = keyValuePair_create(keyQuery_assetImageId, valueQuery_assetImageId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetImageId);
    }

    // query parameters
    char *keyQuery_assetIconId = NULL;
    char * valueQuery_assetIconId ;
    keyValuePair_t *keyPairQuery_assetIconId = 0;
    {
        keyQuery_assetIconId = strdup("assetIconId");
        valueQuery_assetIconId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetIconId, MAX_NUMBER_LENGTH_LONG, "%d", assetIconId);
        keyPairQuery_assetIconId = keyValuePair_create(keyQuery_assetIconId, valueQuery_assetIconId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetIconId);
    }

    // query parameters
    char *keyQuery_gameData = NULL;
    char * valueQuery_gameData = NULL;
    keyValuePair_t *keyPairQuery_gameData = 0;
    if (gameData)
    {
        keyQuery_gameData = strdup("gameData");
        valueQuery_gameData = strdup((gameData));
        keyPairQuery_gameData = keyValuePair_create(keyQuery_gameData, valueQuery_gameData);
        list_addElement(localVarQueryParameters,keyPairQuery_gameData);
    }

    // query parameters
    char *keyQuery_gameDataSuffix = NULL;
    char * valueQuery_gameDataSuffix = NULL;
    keyValuePair_t *keyPairQuery_gameDataSuffix = 0;
    if (gameDataSuffix)
    {
        keyQuery_gameDataSuffix = strdup("gameDataSuffix");
        valueQuery_gameDataSuffix = strdup((gameDataSuffix));
        keyPairQuery_gameDataSuffix = keyValuePair_create(keyQuery_gameDataSuffix, valueQuery_gameDataSuffix);
        list_addElement(localVarQueryParameters,keyPairQuery_gameDataSuffix);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    char * valueQuery_visibility = NULL;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = strdup((visibility));
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, valueQuery_visibility);
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_friendGroup = NULL;
    char * valueQuery_friendGroup = NULL;
    keyValuePair_t *keyPairQuery_friendGroup = 0;
    if (friendGroup)
    {
        keyQuery_friendGroup = strdup("friendGroup");
        valueQuery_friendGroup = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_friendGroup, MAX_NUMBER_LENGTH, "%d", *friendGroup);
        keyPairQuery_friendGroup = keyValuePair_create(keyQuery_friendGroup, valueQuery_friendGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_friendGroup);
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
    char *keyQuery_connectionGroupIds = NULL;
    char * valueQuery_connectionGroupIds = NULL;
    keyValuePair_t *keyPairQuery_connectionGroupIds = 0;
    if (connectionGroupIds)
    {
        keyQuery_connectionGroupIds = strdup("connectionGroupIds");
        valueQuery_connectionGroupIds = strdup((connectionGroupIds));
        keyPairQuery_connectionGroupIds = keyValuePair_create(keyQuery_connectionGroupIds, valueQuery_connectionGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupIds);
    }

    // query parameters
    char *keyQuery_balance = NULL;
    char * valueQuery_balance = NULL;
    keyValuePair_t *keyPairQuery_balance = 0;
    {
        keyQuery_balance = strdup("balance");
        int s = snprintf(NULL, 0, "%.16e", balance);
        if (s >= 0)
        {
            valueQuery_balance = calloc(1,s+1);
            snprintf(valueQuery_balance, s+1, "%.16e", balance);
        }
        keyPairQuery_balance = keyValuePair_create(keyQuery_balance, valueQuery_balance);
        list_addElement(localVarQueryParameters,keyPairQuery_balance);
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
    char *keyQuery_allocateTickets = NULL;
    char * valueQuery_allocateTickets = NULL;
    keyValuePair_t *keyPairQuery_allocateTickets = 0;
    if (allocateTickets)
    {
        keyQuery_allocateTickets = strdup("allocateTickets");
        valueQuery_allocateTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allocateTickets, MAX_NUMBER_LENGTH, "%d", *allocateTickets);
        keyPairQuery_allocateTickets = keyValuePair_create(keyQuery_allocateTickets, valueQuery_allocateTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_allocateTickets);
    }

    // query parameters
    char *keyQuery_ticketCount = NULL;
    char * valueQuery_ticketCount ;
    keyValuePair_t *keyPairQuery_ticketCount = 0;
    {
        keyQuery_ticketCount = strdup("ticketCount");
        valueQuery_ticketCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketCount, MAX_NUMBER_LENGTH_LONG, "%d", ticketCount);
        keyPairQuery_ticketCount = keyValuePair_create(keyQuery_ticketCount, valueQuery_ticketCount);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketCount);
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
    char *keyQuery_points = NULL;
    char * valueQuery_points ;
    keyValuePair_t *keyPairQuery_points = 0;
    {
        keyQuery_points = strdup("points");
        valueQuery_points = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_points, MAX_NUMBER_LENGTH_LONG, "%d", points);
        keyPairQuery_points = keyValuePair_create(keyQuery_points, valueQuery_points);
        list_addElement(localVarQueryParameters,keyPairQuery_points);
    }

    // query parameters
    char *keyQuery_tutorialTitle = NULL;
    char * valueQuery_tutorialTitle = NULL;
    keyValuePair_t *keyPairQuery_tutorialTitle = 0;
    if (tutorialTitle)
    {
        keyQuery_tutorialTitle = strdup("tutorialTitle");
        valueQuery_tutorialTitle = strdup((tutorialTitle));
        keyPairQuery_tutorialTitle = keyValuePair_create(keyQuery_tutorialTitle, valueQuery_tutorialTitle);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialTitle);
    }

    // query parameters
    char *keyQuery_tutorialMessage = NULL;
    char * valueQuery_tutorialMessage = NULL;
    keyValuePair_t *keyPairQuery_tutorialMessage = 0;
    if (tutorialMessage)
    {
        keyQuery_tutorialMessage = strdup("tutorialMessage");
        valueQuery_tutorialMessage = strdup((tutorialMessage));
        keyPairQuery_tutorialMessage = keyValuePair_create(keyQuery_tutorialMessage, valueQuery_tutorialMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialMessage);
    }

    // query parameters
    char *keyQuery_tutorialAlignment = NULL;
    char * valueQuery_tutorialAlignment = NULL;
    keyValuePair_t *keyPairQuery_tutorialAlignment = 0;
    if (tutorialAlignment)
    {
        keyQuery_tutorialAlignment = strdup("tutorialAlignment");
        valueQuery_tutorialAlignment = strdup((tutorialAlignment));
        keyPairQuery_tutorialAlignment = keyValuePair_create(keyQuery_tutorialAlignment, valueQuery_tutorialAlignment);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialAlignment);
    }

    // query parameters
    char *keyQuery_tutorialImageAssetId = NULL;
    char * valueQuery_tutorialImageAssetId ;
    keyValuePair_t *keyPairQuery_tutorialImageAssetId = 0;
    {
        keyQuery_tutorialImageAssetId = strdup("tutorialImageAssetId");
        valueQuery_tutorialImageAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_tutorialImageAssetId, MAX_NUMBER_LENGTH_LONG, "%d", tutorialImageAssetId);
        keyPairQuery_tutorialImageAssetId = keyValuePair_create(keyQuery_tutorialImageAssetId, valueQuery_tutorialImageAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialImageAssetId);
    }

    // query parameters
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
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
    game_level_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = game_level_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_difficulty){
        free(keyQuery_difficulty);
        keyQuery_difficulty = NULL;
    }
    if(valueQuery_difficulty){
        free(valueQuery_difficulty);
        valueQuery_difficulty = NULL;
    }
    if(keyPairQuery_difficulty){
        keyValuePair_free(keyPairQuery_difficulty);
        keyPairQuery_difficulty = NULL;
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
    if(keyQuery_assetImageId){
        free(keyQuery_assetImageId);
        keyQuery_assetImageId = NULL;
    }
    if(keyPairQuery_assetImageId){
        keyValuePair_free(keyPairQuery_assetImageId);
        keyPairQuery_assetImageId = NULL;
    }
    if(keyQuery_assetIconId){
        free(keyQuery_assetIconId);
        keyQuery_assetIconId = NULL;
    }
    if(keyPairQuery_assetIconId){
        keyValuePair_free(keyPairQuery_assetIconId);
        keyPairQuery_assetIconId = NULL;
    }
    if(keyQuery_gameData){
        free(keyQuery_gameData);
        keyQuery_gameData = NULL;
    }
    if(valueQuery_gameData){
        free(valueQuery_gameData);
        valueQuery_gameData = NULL;
    }
    if(keyPairQuery_gameData){
        keyValuePair_free(keyPairQuery_gameData);
        keyPairQuery_gameData = NULL;
    }
    if(keyQuery_gameDataSuffix){
        free(keyQuery_gameDataSuffix);
        keyQuery_gameDataSuffix = NULL;
    }
    if(valueQuery_gameDataSuffix){
        free(valueQuery_gameDataSuffix);
        valueQuery_gameDataSuffix = NULL;
    }
    if(keyPairQuery_gameDataSuffix){
        keyValuePair_free(keyPairQuery_gameDataSuffix);
        keyPairQuery_gameDataSuffix = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(valueQuery_visibility){
        free(valueQuery_visibility);
        valueQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_friendGroup){
        free(keyQuery_friendGroup);
        keyQuery_friendGroup = NULL;
    }
    if(valueQuery_friendGroup){
        free(valueQuery_friendGroup);
        valueQuery_friendGroup = NULL;
    }
    if(keyPairQuery_friendGroup){
        keyValuePair_free(keyPairQuery_friendGroup);
        keyPairQuery_friendGroup = NULL;
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
    if(keyQuery_connectionGroupIds){
        free(keyQuery_connectionGroupIds);
        keyQuery_connectionGroupIds = NULL;
    }
    if(valueQuery_connectionGroupIds){
        free(valueQuery_connectionGroupIds);
        valueQuery_connectionGroupIds = NULL;
    }
    if(keyPairQuery_connectionGroupIds){
        keyValuePair_free(keyPairQuery_connectionGroupIds);
        keyPairQuery_connectionGroupIds = NULL;
    }
    if(keyQuery_balance){
        free(keyQuery_balance);
        keyQuery_balance = NULL;
    }
    if(keyPairQuery_balance){
        keyValuePair_free(keyPairQuery_balance);
        keyPairQuery_balance = NULL;
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
    if(keyQuery_allocateTickets){
        free(keyQuery_allocateTickets);
        keyQuery_allocateTickets = NULL;
    }
    if(valueQuery_allocateTickets){
        free(valueQuery_allocateTickets);
        valueQuery_allocateTickets = NULL;
    }
    if(keyPairQuery_allocateTickets){
        keyValuePair_free(keyPairQuery_allocateTickets);
        keyPairQuery_allocateTickets = NULL;
    }
    if(keyQuery_ticketCount){
        free(keyQuery_ticketCount);
        keyQuery_ticketCount = NULL;
    }
    if(keyPairQuery_ticketCount){
        keyValuePair_free(keyPairQuery_ticketCount);
        keyPairQuery_ticketCount = NULL;
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
    if(keyQuery_points){
        free(keyQuery_points);
        keyQuery_points = NULL;
    }
    if(keyPairQuery_points){
        keyValuePair_free(keyPairQuery_points);
        keyPairQuery_points = NULL;
    }
    if(keyQuery_tutorialTitle){
        free(keyQuery_tutorialTitle);
        keyQuery_tutorialTitle = NULL;
    }
    if(valueQuery_tutorialTitle){
        free(valueQuery_tutorialTitle);
        valueQuery_tutorialTitle = NULL;
    }
    if(keyPairQuery_tutorialTitle){
        keyValuePair_free(keyPairQuery_tutorialTitle);
        keyPairQuery_tutorialTitle = NULL;
    }
    if(keyQuery_tutorialMessage){
        free(keyQuery_tutorialMessage);
        keyQuery_tutorialMessage = NULL;
    }
    if(valueQuery_tutorialMessage){
        free(valueQuery_tutorialMessage);
        valueQuery_tutorialMessage = NULL;
    }
    if(keyPairQuery_tutorialMessage){
        keyValuePair_free(keyPairQuery_tutorialMessage);
        keyPairQuery_tutorialMessage = NULL;
    }
    if(keyQuery_tutorialAlignment){
        free(keyQuery_tutorialAlignment);
        keyQuery_tutorialAlignment = NULL;
    }
    if(valueQuery_tutorialAlignment){
        free(valueQuery_tutorialAlignment);
        valueQuery_tutorialAlignment = NULL;
    }
    if(keyPairQuery_tutorialAlignment){
        keyValuePair_free(keyPairQuery_tutorialAlignment);
        keyPairQuery_tutorialAlignment = NULL;
    }
    if(keyQuery_tutorialImageAssetId){
        free(keyQuery_tutorialImageAssetId);
        keyQuery_tutorialImageAssetId = NULL;
    }
    if(keyPairQuery_tutorialImageAssetId){
        keyValuePair_free(keyPairQuery_tutorialImageAssetId);
        keyPairQuery_tutorialImageAssetId = NULL;
    }
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
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

// Delete Game Level
//
// Delete a game level. The level and account must be valid and have the appropirate permissions to view the content.
//
sirqul_response_t*
GameLevelAPI_deleteGameLevel(apiClient_t *apiClient, long accountId, long levelId)
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
    char *localVarPath = strdup("/level/delete");





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
    char *keyQuery_levelId = NULL;
    char * valueQuery_levelId ;
    keyValuePair_t *keyPairQuery_levelId = 0;
    {
        keyQuery_levelId = strdup("levelId");
        valueQuery_levelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_levelId, MAX_NUMBER_LENGTH_LONG, "%d", levelId);
        keyPairQuery_levelId = keyValuePair_create(keyQuery_levelId, valueQuery_levelId);
        list_addElement(localVarQueryParameters,keyPairQuery_levelId);
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
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_levelId){
        free(keyQuery_levelId);
        keyQuery_levelId = NULL;
    }
    if(keyPairQuery_levelId){
        keyValuePair_free(keyPairQuery_levelId);
        keyPairQuery_levelId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Game Level
//
// Get a game level. The level and account must be valid and have the appropirate permissions to view the content.
//
game_level_response_t*
GameLevelAPI_getGameLevel(apiClient_t *apiClient, long accountId, long levelId, int *includeGameData)
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
    char *localVarPath = strdup("/level/get");





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
    char *keyQuery_levelId = NULL;
    char * valueQuery_levelId ;
    keyValuePair_t *keyPairQuery_levelId = 0;
    {
        keyQuery_levelId = strdup("levelId");
        valueQuery_levelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_levelId, MAX_NUMBER_LENGTH_LONG, "%d", levelId);
        keyPairQuery_levelId = keyValuePair_create(keyQuery_levelId, valueQuery_levelId);
        list_addElement(localVarQueryParameters,keyPairQuery_levelId);
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
    //nonprimitive not container
    game_level_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = game_level_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_levelId){
        free(keyQuery_levelId);
        keyQuery_levelId = NULL;
    }
    if(keyPairQuery_levelId){
        keyValuePair_free(keyPairQuery_levelId);
        keyPairQuery_levelId = NULL;
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

// Search Game Levels
//
// Get a list of levels for an application, just those the account has permissions to view.
//
game_level_list_response_t*
GameLevelAPI_getGameLevelsByApplication(apiClient_t *apiClient, long accountId, char *appKey, char *keyword, char *sortField, int *descending, int *start, int *limit, char *appVersion, int *includeGameData, char *filters)
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
    char *localVarPath = strdup("/level/search");





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
    char *keyQuery_filters = NULL;
    char * valueQuery_filters = NULL;
    keyValuePair_t *keyPairQuery_filters = 0;
    if (filters)
    {
        keyQuery_filters = strdup("filters");
        valueQuery_filters = strdup((filters));
        keyPairQuery_filters = keyValuePair_create(keyQuery_filters, valueQuery_filters);
        list_addElement(localVarQueryParameters,keyPairQuery_filters);
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
    game_level_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = game_level_list_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_filters){
        free(keyQuery_filters);
        keyQuery_filters = NULL;
    }
    if(valueQuery_filters){
        free(valueQuery_filters);
        valueQuery_filters = NULL;
    }
    if(keyPairQuery_filters){
        keyValuePair_free(keyPairQuery_filters);
        keyPairQuery_filters = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Game Level by Billable Entity
//
// Searches on game levels that the logged in user has access to. A user would have access if the creator of the game level is managed under the same BillableEntity.
//
game_level_response_t*
GameLevelAPI_getGameLevelsByBillableEntity(apiClient_t *apiClient, long accountId, char *appKey, char *keyword, sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e sortField, int *descending, int *activeOnly, long start, long limit)
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
    char *localVarPath = strdup("/level/searchByBillableEntity");





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
    sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(getGameLevelsByBillableEntity_SORTFIELD_ToString(
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
    char * valueQuery_start ;
    keyValuePair_t *keyPairQuery_start = 0;
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH_LONG, "%d", start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit ;
    keyValuePair_t *keyPairQuery_limit = 0;
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH_LONG, "%d", limit);
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
    game_level_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = game_level_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
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

// Get Level Questions
//
// Get questions within a level.
//
question_response_t*
GameLevelAPI_getQuestionsInLevel(apiClient_t *apiClient, long levelId, long accountId)
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
    char *localVarPath = strdup("/level/questions/get");





    // query parameters
    char *keyQuery_levelId = NULL;
    char * valueQuery_levelId ;
    keyValuePair_t *keyPairQuery_levelId = 0;
    {
        keyQuery_levelId = strdup("levelId");
        valueQuery_levelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_levelId, MAX_NUMBER_LENGTH_LONG, "%d", levelId);
        keyPairQuery_levelId = keyValuePair_create(keyQuery_levelId, valueQuery_levelId);
        list_addElement(localVarQueryParameters,keyPairQuery_levelId);
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
    question_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = question_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_levelId){
        free(keyQuery_levelId);
        keyQuery_levelId = NULL;
    }
    if(keyPairQuery_levelId){
        keyValuePair_free(keyPairQuery_levelId);
        keyPairQuery_levelId = NULL;
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

// Get Level Words
//
// Get words within a level.
//
wordz_word_response_t*
GameLevelAPI_getWordsInLevel(apiClient_t *apiClient, long levelId, long accountId)
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
    char *localVarPath = strdup("/level/words/get");





    // query parameters
    char *keyQuery_levelId = NULL;
    char * valueQuery_levelId ;
    keyValuePair_t *keyPairQuery_levelId = 0;
    {
        keyQuery_levelId = strdup("levelId");
        valueQuery_levelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_levelId, MAX_NUMBER_LENGTH_LONG, "%d", levelId);
        keyPairQuery_levelId = keyValuePair_create(keyQuery_levelId, valueQuery_levelId);
        list_addElement(localVarQueryParameters,keyPairQuery_levelId);
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
    wordz_word_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = wordz_word_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_levelId){
        free(keyQuery_levelId);
        keyQuery_levelId = NULL;
    }
    if(keyPairQuery_levelId){
        keyValuePair_free(keyPairQuery_levelId);
        keyPairQuery_levelId = NULL;
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

// Update Game Level
//
// Update a game level. Currently does NOT support game objects.
//
game_level_response_t*
GameLevelAPI_updateGameLevel(apiClient_t *apiClient, long accountId, long levelId, char *appKey, char *name, char *description, char *difficulty, char *appVersion, long assetImageId, long assetIconId, char *gameData, char *gameDataSuffix, char *visibility, int *friendGroup, char *connectionIds, char *connectionGroupIds, double balance, int *active, int *allocateTickets, long ticketCount, char *ticketType, long points, char *tutorialTitle, char *tutorialMessage, char *tutorialAlignment, long tutorialImageAssetId, long offerId, char *metaData)
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
    char *localVarPath = strdup("/level/update");





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
    char *keyQuery_levelId = NULL;
    char * valueQuery_levelId ;
    keyValuePair_t *keyPairQuery_levelId = 0;
    {
        keyQuery_levelId = strdup("levelId");
        valueQuery_levelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_levelId, MAX_NUMBER_LENGTH_LONG, "%d", levelId);
        keyPairQuery_levelId = keyValuePair_create(keyQuery_levelId, valueQuery_levelId);
        list_addElement(localVarQueryParameters,keyPairQuery_levelId);
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
    char *keyQuery_difficulty = NULL;
    char * valueQuery_difficulty = NULL;
    keyValuePair_t *keyPairQuery_difficulty = 0;
    if (difficulty)
    {
        keyQuery_difficulty = strdup("difficulty");
        valueQuery_difficulty = strdup((difficulty));
        keyPairQuery_difficulty = keyValuePair_create(keyQuery_difficulty, valueQuery_difficulty);
        list_addElement(localVarQueryParameters,keyPairQuery_difficulty);
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
    char *keyQuery_assetImageId = NULL;
    char * valueQuery_assetImageId ;
    keyValuePair_t *keyPairQuery_assetImageId = 0;
    {
        keyQuery_assetImageId = strdup("assetImageId");
        valueQuery_assetImageId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetImageId, MAX_NUMBER_LENGTH_LONG, "%d", assetImageId);
        keyPairQuery_assetImageId = keyValuePair_create(keyQuery_assetImageId, valueQuery_assetImageId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetImageId);
    }

    // query parameters
    char *keyQuery_assetIconId = NULL;
    char * valueQuery_assetIconId ;
    keyValuePair_t *keyPairQuery_assetIconId = 0;
    {
        keyQuery_assetIconId = strdup("assetIconId");
        valueQuery_assetIconId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetIconId, MAX_NUMBER_LENGTH_LONG, "%d", assetIconId);
        keyPairQuery_assetIconId = keyValuePair_create(keyQuery_assetIconId, valueQuery_assetIconId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetIconId);
    }

    // query parameters
    char *keyQuery_gameData = NULL;
    char * valueQuery_gameData = NULL;
    keyValuePair_t *keyPairQuery_gameData = 0;
    if (gameData)
    {
        keyQuery_gameData = strdup("gameData");
        valueQuery_gameData = strdup((gameData));
        keyPairQuery_gameData = keyValuePair_create(keyQuery_gameData, valueQuery_gameData);
        list_addElement(localVarQueryParameters,keyPairQuery_gameData);
    }

    // query parameters
    char *keyQuery_gameDataSuffix = NULL;
    char * valueQuery_gameDataSuffix = NULL;
    keyValuePair_t *keyPairQuery_gameDataSuffix = 0;
    if (gameDataSuffix)
    {
        keyQuery_gameDataSuffix = strdup("gameDataSuffix");
        valueQuery_gameDataSuffix = strdup((gameDataSuffix));
        keyPairQuery_gameDataSuffix = keyValuePair_create(keyQuery_gameDataSuffix, valueQuery_gameDataSuffix);
        list_addElement(localVarQueryParameters,keyPairQuery_gameDataSuffix);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    char * valueQuery_visibility = NULL;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = strdup((visibility));
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, valueQuery_visibility);
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_friendGroup = NULL;
    char * valueQuery_friendGroup = NULL;
    keyValuePair_t *keyPairQuery_friendGroup = 0;
    if (friendGroup)
    {
        keyQuery_friendGroup = strdup("friendGroup");
        valueQuery_friendGroup = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_friendGroup, MAX_NUMBER_LENGTH, "%d", *friendGroup);
        keyPairQuery_friendGroup = keyValuePair_create(keyQuery_friendGroup, valueQuery_friendGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_friendGroup);
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
    char *keyQuery_connectionGroupIds = NULL;
    char * valueQuery_connectionGroupIds = NULL;
    keyValuePair_t *keyPairQuery_connectionGroupIds = 0;
    if (connectionGroupIds)
    {
        keyQuery_connectionGroupIds = strdup("connectionGroupIds");
        valueQuery_connectionGroupIds = strdup((connectionGroupIds));
        keyPairQuery_connectionGroupIds = keyValuePair_create(keyQuery_connectionGroupIds, valueQuery_connectionGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupIds);
    }

    // query parameters
    char *keyQuery_balance = NULL;
    char * valueQuery_balance = NULL;
    keyValuePair_t *keyPairQuery_balance = 0;
    {
        keyQuery_balance = strdup("balance");
        int s = snprintf(NULL, 0, "%.16e", balance);
        if (s >= 0)
        {
            valueQuery_balance = calloc(1,s+1);
            snprintf(valueQuery_balance, s+1, "%.16e", balance);
        }
        keyPairQuery_balance = keyValuePair_create(keyQuery_balance, valueQuery_balance);
        list_addElement(localVarQueryParameters,keyPairQuery_balance);
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
    char *keyQuery_allocateTickets = NULL;
    char * valueQuery_allocateTickets = NULL;
    keyValuePair_t *keyPairQuery_allocateTickets = 0;
    if (allocateTickets)
    {
        keyQuery_allocateTickets = strdup("allocateTickets");
        valueQuery_allocateTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allocateTickets, MAX_NUMBER_LENGTH, "%d", *allocateTickets);
        keyPairQuery_allocateTickets = keyValuePair_create(keyQuery_allocateTickets, valueQuery_allocateTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_allocateTickets);
    }

    // query parameters
    char *keyQuery_ticketCount = NULL;
    char * valueQuery_ticketCount ;
    keyValuePair_t *keyPairQuery_ticketCount = 0;
    {
        keyQuery_ticketCount = strdup("ticketCount");
        valueQuery_ticketCount = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ticketCount, MAX_NUMBER_LENGTH_LONG, "%d", ticketCount);
        keyPairQuery_ticketCount = keyValuePair_create(keyQuery_ticketCount, valueQuery_ticketCount);
        list_addElement(localVarQueryParameters,keyPairQuery_ticketCount);
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
    char *keyQuery_points = NULL;
    char * valueQuery_points ;
    keyValuePair_t *keyPairQuery_points = 0;
    {
        keyQuery_points = strdup("points");
        valueQuery_points = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_points, MAX_NUMBER_LENGTH_LONG, "%d", points);
        keyPairQuery_points = keyValuePair_create(keyQuery_points, valueQuery_points);
        list_addElement(localVarQueryParameters,keyPairQuery_points);
    }

    // query parameters
    char *keyQuery_tutorialTitle = NULL;
    char * valueQuery_tutorialTitle = NULL;
    keyValuePair_t *keyPairQuery_tutorialTitle = 0;
    if (tutorialTitle)
    {
        keyQuery_tutorialTitle = strdup("tutorialTitle");
        valueQuery_tutorialTitle = strdup((tutorialTitle));
        keyPairQuery_tutorialTitle = keyValuePair_create(keyQuery_tutorialTitle, valueQuery_tutorialTitle);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialTitle);
    }

    // query parameters
    char *keyQuery_tutorialMessage = NULL;
    char * valueQuery_tutorialMessage = NULL;
    keyValuePair_t *keyPairQuery_tutorialMessage = 0;
    if (tutorialMessage)
    {
        keyQuery_tutorialMessage = strdup("tutorialMessage");
        valueQuery_tutorialMessage = strdup((tutorialMessage));
        keyPairQuery_tutorialMessage = keyValuePair_create(keyQuery_tutorialMessage, valueQuery_tutorialMessage);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialMessage);
    }

    // query parameters
    char *keyQuery_tutorialAlignment = NULL;
    char * valueQuery_tutorialAlignment = NULL;
    keyValuePair_t *keyPairQuery_tutorialAlignment = 0;
    if (tutorialAlignment)
    {
        keyQuery_tutorialAlignment = strdup("tutorialAlignment");
        valueQuery_tutorialAlignment = strdup((tutorialAlignment));
        keyPairQuery_tutorialAlignment = keyValuePair_create(keyQuery_tutorialAlignment, valueQuery_tutorialAlignment);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialAlignment);
    }

    // query parameters
    char *keyQuery_tutorialImageAssetId = NULL;
    char * valueQuery_tutorialImageAssetId ;
    keyValuePair_t *keyPairQuery_tutorialImageAssetId = 0;
    {
        keyQuery_tutorialImageAssetId = strdup("tutorialImageAssetId");
        valueQuery_tutorialImageAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_tutorialImageAssetId, MAX_NUMBER_LENGTH_LONG, "%d", tutorialImageAssetId);
        keyPairQuery_tutorialImageAssetId = keyValuePair_create(keyQuery_tutorialImageAssetId, valueQuery_tutorialImageAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_tutorialImageAssetId);
    }

    // query parameters
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
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
    game_level_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = game_level_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_levelId){
        free(keyQuery_levelId);
        keyQuery_levelId = NULL;
    }
    if(keyPairQuery_levelId){
        keyValuePair_free(keyPairQuery_levelId);
        keyPairQuery_levelId = NULL;
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
    if(keyQuery_difficulty){
        free(keyQuery_difficulty);
        keyQuery_difficulty = NULL;
    }
    if(valueQuery_difficulty){
        free(valueQuery_difficulty);
        valueQuery_difficulty = NULL;
    }
    if(keyPairQuery_difficulty){
        keyValuePair_free(keyPairQuery_difficulty);
        keyPairQuery_difficulty = NULL;
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
    if(keyQuery_assetImageId){
        free(keyQuery_assetImageId);
        keyQuery_assetImageId = NULL;
    }
    if(keyPairQuery_assetImageId){
        keyValuePair_free(keyPairQuery_assetImageId);
        keyPairQuery_assetImageId = NULL;
    }
    if(keyQuery_assetIconId){
        free(keyQuery_assetIconId);
        keyQuery_assetIconId = NULL;
    }
    if(keyPairQuery_assetIconId){
        keyValuePair_free(keyPairQuery_assetIconId);
        keyPairQuery_assetIconId = NULL;
    }
    if(keyQuery_gameData){
        free(keyQuery_gameData);
        keyQuery_gameData = NULL;
    }
    if(valueQuery_gameData){
        free(valueQuery_gameData);
        valueQuery_gameData = NULL;
    }
    if(keyPairQuery_gameData){
        keyValuePair_free(keyPairQuery_gameData);
        keyPairQuery_gameData = NULL;
    }
    if(keyQuery_gameDataSuffix){
        free(keyQuery_gameDataSuffix);
        keyQuery_gameDataSuffix = NULL;
    }
    if(valueQuery_gameDataSuffix){
        free(valueQuery_gameDataSuffix);
        valueQuery_gameDataSuffix = NULL;
    }
    if(keyPairQuery_gameDataSuffix){
        keyValuePair_free(keyPairQuery_gameDataSuffix);
        keyPairQuery_gameDataSuffix = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(valueQuery_visibility){
        free(valueQuery_visibility);
        valueQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_friendGroup){
        free(keyQuery_friendGroup);
        keyQuery_friendGroup = NULL;
    }
    if(valueQuery_friendGroup){
        free(valueQuery_friendGroup);
        valueQuery_friendGroup = NULL;
    }
    if(keyPairQuery_friendGroup){
        keyValuePair_free(keyPairQuery_friendGroup);
        keyPairQuery_friendGroup = NULL;
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
    if(keyQuery_connectionGroupIds){
        free(keyQuery_connectionGroupIds);
        keyQuery_connectionGroupIds = NULL;
    }
    if(valueQuery_connectionGroupIds){
        free(valueQuery_connectionGroupIds);
        valueQuery_connectionGroupIds = NULL;
    }
    if(keyPairQuery_connectionGroupIds){
        keyValuePair_free(keyPairQuery_connectionGroupIds);
        keyPairQuery_connectionGroupIds = NULL;
    }
    if(keyQuery_balance){
        free(keyQuery_balance);
        keyQuery_balance = NULL;
    }
    if(keyPairQuery_balance){
        keyValuePair_free(keyPairQuery_balance);
        keyPairQuery_balance = NULL;
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
    if(keyQuery_allocateTickets){
        free(keyQuery_allocateTickets);
        keyQuery_allocateTickets = NULL;
    }
    if(valueQuery_allocateTickets){
        free(valueQuery_allocateTickets);
        valueQuery_allocateTickets = NULL;
    }
    if(keyPairQuery_allocateTickets){
        keyValuePair_free(keyPairQuery_allocateTickets);
        keyPairQuery_allocateTickets = NULL;
    }
    if(keyQuery_ticketCount){
        free(keyQuery_ticketCount);
        keyQuery_ticketCount = NULL;
    }
    if(keyPairQuery_ticketCount){
        keyValuePair_free(keyPairQuery_ticketCount);
        keyPairQuery_ticketCount = NULL;
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
    if(keyQuery_points){
        free(keyQuery_points);
        keyQuery_points = NULL;
    }
    if(keyPairQuery_points){
        keyValuePair_free(keyPairQuery_points);
        keyPairQuery_points = NULL;
    }
    if(keyQuery_tutorialTitle){
        free(keyQuery_tutorialTitle);
        keyQuery_tutorialTitle = NULL;
    }
    if(valueQuery_tutorialTitle){
        free(valueQuery_tutorialTitle);
        valueQuery_tutorialTitle = NULL;
    }
    if(keyPairQuery_tutorialTitle){
        keyValuePair_free(keyPairQuery_tutorialTitle);
        keyPairQuery_tutorialTitle = NULL;
    }
    if(keyQuery_tutorialMessage){
        free(keyQuery_tutorialMessage);
        keyQuery_tutorialMessage = NULL;
    }
    if(valueQuery_tutorialMessage){
        free(valueQuery_tutorialMessage);
        valueQuery_tutorialMessage = NULL;
    }
    if(keyPairQuery_tutorialMessage){
        keyValuePair_free(keyPairQuery_tutorialMessage);
        keyPairQuery_tutorialMessage = NULL;
    }
    if(keyQuery_tutorialAlignment){
        free(keyQuery_tutorialAlignment);
        keyQuery_tutorialAlignment = NULL;
    }
    if(valueQuery_tutorialAlignment){
        free(valueQuery_tutorialAlignment);
        valueQuery_tutorialAlignment = NULL;
    }
    if(keyPairQuery_tutorialAlignment){
        keyValuePair_free(keyPairQuery_tutorialAlignment);
        keyPairQuery_tutorialAlignment = NULL;
    }
    if(keyQuery_tutorialImageAssetId){
        free(keyQuery_tutorialImageAssetId);
        keyQuery_tutorialImageAssetId = NULL;
    }
    if(keyPairQuery_tutorialImageAssetId){
        keyValuePair_free(keyPairQuery_tutorialImageAssetId);
        keyPairQuery_tutorialImageAssetId = NULL;
    }
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
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

// Update Level Questions
//
// Updates a level with question game objects.
//
sirqul_response_t*
GameLevelAPI_updateQuestionsInLevel(apiClient_t *apiClient, long levelId, long accountId, char *questionIds)
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
    char *localVarPath = strdup("/level/questions/update");





    // query parameters
    char *keyQuery_levelId = NULL;
    char * valueQuery_levelId ;
    keyValuePair_t *keyPairQuery_levelId = 0;
    {
        keyQuery_levelId = strdup("levelId");
        valueQuery_levelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_levelId, MAX_NUMBER_LENGTH_LONG, "%d", levelId);
        keyPairQuery_levelId = keyValuePair_create(keyQuery_levelId, valueQuery_levelId);
        list_addElement(localVarQueryParameters,keyPairQuery_levelId);
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
    char *keyQuery_questionIds = NULL;
    char * valueQuery_questionIds = NULL;
    keyValuePair_t *keyPairQuery_questionIds = 0;
    if (questionIds)
    {
        keyQuery_questionIds = strdup("questionIds");
        valueQuery_questionIds = strdup((questionIds));
        keyPairQuery_questionIds = keyValuePair_create(keyQuery_questionIds, valueQuery_questionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_questionIds);
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
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_levelId){
        free(keyQuery_levelId);
        keyQuery_levelId = NULL;
    }
    if(keyPairQuery_levelId){
        keyValuePair_free(keyPairQuery_levelId);
        keyPairQuery_levelId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_questionIds){
        free(keyQuery_questionIds);
        keyQuery_questionIds = NULL;
    }
    if(valueQuery_questionIds){
        free(valueQuery_questionIds);
        valueQuery_questionIds = NULL;
    }
    if(keyPairQuery_questionIds){
        keyValuePair_free(keyPairQuery_questionIds);
        keyPairQuery_questionIds = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Level Words
//
// Updates a level with word game objects.
//
sirqul_response_t*
GameLevelAPI_updateWordsInLevel(apiClient_t *apiClient, long levelId, long accountId, char *wordIds)
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
    char *localVarPath = strdup("/level/words/update");





    // query parameters
    char *keyQuery_levelId = NULL;
    char * valueQuery_levelId ;
    keyValuePair_t *keyPairQuery_levelId = 0;
    {
        keyQuery_levelId = strdup("levelId");
        valueQuery_levelId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_levelId, MAX_NUMBER_LENGTH_LONG, "%d", levelId);
        keyPairQuery_levelId = keyValuePair_create(keyQuery_levelId, valueQuery_levelId);
        list_addElement(localVarQueryParameters,keyPairQuery_levelId);
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
    char *keyQuery_wordIds = NULL;
    char * valueQuery_wordIds = NULL;
    keyValuePair_t *keyPairQuery_wordIds = 0;
    if (wordIds)
    {
        keyQuery_wordIds = strdup("wordIds");
        valueQuery_wordIds = strdup((wordIds));
        keyPairQuery_wordIds = keyValuePair_create(keyQuery_wordIds, valueQuery_wordIds);
        list_addElement(localVarQueryParameters,keyPairQuery_wordIds);
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
        cJSON *GameLevelAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(GameLevelAPIlocalVarJSON);
        cJSON_Delete(GameLevelAPIlocalVarJSON);
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
    if(keyQuery_levelId){
        free(keyQuery_levelId);
        keyQuery_levelId = NULL;
    }
    if(keyPairQuery_levelId){
        keyValuePair_free(keyPairQuery_levelId);
        keyPairQuery_levelId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_wordIds){
        free(keyQuery_wordIds);
        keyQuery_wordIds = NULL;
    }
    if(valueQuery_wordIds){
        free(valueQuery_wordIds);
        valueQuery_wordIds = NULL;
    }
    if(keyPairQuery_wordIds){
        keyValuePair_free(keyPairQuery_wordIds);
        keyPairQuery_wordIds = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

