#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "MissionAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum ADSIZE for MissionAPI_importMission

static char* importMission_ADSIZE_ToString(sirqul_iot_platform_importMission_adSize_e ADSIZE){
    char *ADSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return ADSIZEArray[ADSIZE];
}

static sirqul_iot_platform_importMission_adSize_e importMission_ADSIZE_FromString(char* ADSIZE){
    int stringToReturn = 0;
    char *ADSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(ADSIZEArray) / sizeof(ADSIZEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(ADSIZE, ADSIZEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function importMission_ADSIZE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *importMission_ADSIZE_convertToJSON(sirqul_iot_platform_importMission_adSize_e ADSIZE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "adSize", importMission_ADSIZE_ToString(ADSIZE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function importMission_ADSIZE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_importMission_adSize_e importMission_ADSIZE_parseFromJSON(cJSON* ADSIZEJSON) {
    sirqul_iot_platform_importMission_adSize_e ADSIZEVariable = 0;
    cJSON *ADSIZEVar = cJSON_GetObjectItemCaseSensitive(ADSIZEJSON, "adSize");
    if(!cJSON_IsString(ADSIZEVar) || (ADSIZEVar->valuestring == NULL))
    {
        goto end;
    }
    ADSIZEVariable = importMission_ADSIZE_FromString(ADSIZEVar->valuestring);
    return ADSIZEVariable;
end:
    return 0;
}
*/


// Create Mission
//
// Create a user defined mission.
//
mission_response_t*
MissionAPI_createMission(apiClient_t *apiClient, double version, long accountId, char *title, char *description, char *subType, long startDate, long endDate, int *active, char *gameLevelIds, char *creativeIds, char *audienceIds, char *missionTask, char *formatType, long offerId, double balance, int *advancedReporting, int *allocateTickets, long ticketCount, char *ticketType, long points, char *metaData, char *applicationIds, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius)
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
    char *localVarPath = strdup("/api/{version}/mission/create");



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
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
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
    char *keyQuery_creativeIds = NULL;
    char * valueQuery_creativeIds = NULL;
    keyValuePair_t *keyPairQuery_creativeIds = 0;
    if (creativeIds)
    {
        keyQuery_creativeIds = strdup("creativeIds");
        valueQuery_creativeIds = strdup((creativeIds));
        keyPairQuery_creativeIds = keyValuePair_create(keyQuery_creativeIds, valueQuery_creativeIds);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeIds);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }

    // query parameters
    char *keyQuery_missionTask = NULL;
    char * valueQuery_missionTask = NULL;
    keyValuePair_t *keyPairQuery_missionTask = 0;
    if (missionTask)
    {
        keyQuery_missionTask = strdup("missionTask");
        valueQuery_missionTask = strdup((missionTask));
        keyPairQuery_missionTask = keyValuePair_create(keyQuery_missionTask, valueQuery_missionTask);
        list_addElement(localVarQueryParameters,keyPairQuery_missionTask);
    }

    // query parameters
    char *keyQuery_formatType = NULL;
    char * valueQuery_formatType = NULL;
    keyValuePair_t *keyPairQuery_formatType = 0;
    if (formatType)
    {
        keyQuery_formatType = strdup("formatType");
        valueQuery_formatType = strdup((formatType));
        keyPairQuery_formatType = keyValuePair_create(keyQuery_formatType, valueQuery_formatType);
        list_addElement(localVarQueryParameters,keyPairQuery_formatType);
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
    char *keyQuery_advancedReporting = NULL;
    char * valueQuery_advancedReporting = NULL;
    keyValuePair_t *keyPairQuery_advancedReporting = 0;
    if (advancedReporting)
    {
        keyQuery_advancedReporting = strdup("advancedReporting");
        valueQuery_advancedReporting = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_advancedReporting, MAX_NUMBER_LENGTH, "%d", *advancedReporting);
        keyPairQuery_advancedReporting = keyValuePair_create(keyQuery_advancedReporting, valueQuery_advancedReporting);
        list_addElement(localVarQueryParameters,keyPairQuery_advancedReporting);
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

    // query parameters
    char *keyQuery_applicationIds = NULL;
    char * valueQuery_applicationIds = NULL;
    keyValuePair_t *keyPairQuery_applicationIds = 0;
    if (applicationIds)
    {
        keyQuery_applicationIds = strdup("applicationIds");
        valueQuery_applicationIds = strdup((applicationIds));
        keyPairQuery_applicationIds = keyValuePair_create(keyQuery_applicationIds, valueQuery_applicationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_applicationIds);
    }

    // query parameters
    char *keyQuery_devices = NULL;
    char * valueQuery_devices = NULL;
    keyValuePair_t *keyPairQuery_devices = 0;
    if (devices)
    {
        keyQuery_devices = strdup("devices");
        valueQuery_devices = strdup((devices));
        keyPairQuery_devices = keyValuePair_create(keyQuery_devices, valueQuery_devices);
        list_addElement(localVarQueryParameters,keyPairQuery_devices);
    }

    // query parameters
    char *keyQuery_deviceIds = NULL;
    char * valueQuery_deviceIds = NULL;
    keyValuePair_t *keyPairQuery_deviceIds = 0;
    if (deviceIds)
    {
        keyQuery_deviceIds = strdup("deviceIds");
        valueQuery_deviceIds = strdup((deviceIds));
        keyPairQuery_deviceIds = keyValuePair_create(keyQuery_deviceIds, valueQuery_deviceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIds);
    }

    // query parameters
    char *keyQuery_deviceVersions = NULL;
    char * valueQuery_deviceVersions = NULL;
    keyValuePair_t *keyPairQuery_deviceVersions = 0;
    if (deviceVersions)
    {
        keyQuery_deviceVersions = strdup("deviceVersions");
        valueQuery_deviceVersions = strdup((deviceVersions));
        keyPairQuery_deviceVersions = keyValuePair_create(keyQuery_deviceVersions, valueQuery_deviceVersions);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceVersions);
    }

    // query parameters
    char *keyQuery_locations = NULL;
    char * valueQuery_locations = NULL;
    keyValuePair_t *keyPairQuery_locations = 0;
    if (locations)
    {
        keyQuery_locations = strdup("locations");
        valueQuery_locations = strdup((locations));
        keyPairQuery_locations = keyValuePair_create(keyQuery_locations, valueQuery_locations);
        list_addElement(localVarQueryParameters,keyPairQuery_locations);
    }

    // query parameters
    char *keyQuery_radius = NULL;
    char * valueQuery_radius = NULL;
    keyValuePair_t *keyPairQuery_radius = 0;
    if (radius)
    {
        keyQuery_radius = strdup("radius");
        valueQuery_radius = strdup((radius));
        keyPairQuery_radius = keyValuePair_create(keyQuery_radius, valueQuery_radius);
        list_addElement(localVarQueryParameters,keyPairQuery_radius);
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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_response_parseFromJSON(MissionAPIlocalVarJSON);
        cJSON_Delete(MissionAPIlocalVarJSON);
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
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
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
    if(keyQuery_creativeIds){
        free(keyQuery_creativeIds);
        keyQuery_creativeIds = NULL;
    }
    if(valueQuery_creativeIds){
        free(valueQuery_creativeIds);
        valueQuery_creativeIds = NULL;
    }
    if(keyPairQuery_creativeIds){
        keyValuePair_free(keyPairQuery_creativeIds);
        keyPairQuery_creativeIds = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_missionTask){
        free(keyQuery_missionTask);
        keyQuery_missionTask = NULL;
    }
    if(valueQuery_missionTask){
        free(valueQuery_missionTask);
        valueQuery_missionTask = NULL;
    }
    if(keyPairQuery_missionTask){
        keyValuePair_free(keyPairQuery_missionTask);
        keyPairQuery_missionTask = NULL;
    }
    if(keyQuery_formatType){
        free(keyQuery_formatType);
        keyQuery_formatType = NULL;
    }
    if(valueQuery_formatType){
        free(valueQuery_formatType);
        valueQuery_formatType = NULL;
    }
    if(keyPairQuery_formatType){
        keyValuePair_free(keyPairQuery_formatType);
        keyPairQuery_formatType = NULL;
    }
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_balance){
        free(keyQuery_balance);
        keyQuery_balance = NULL;
    }
    if(keyPairQuery_balance){
        keyValuePair_free(keyPairQuery_balance);
        keyPairQuery_balance = NULL;
    }
    if(keyQuery_advancedReporting){
        free(keyQuery_advancedReporting);
        keyQuery_advancedReporting = NULL;
    }
    if(valueQuery_advancedReporting){
        free(valueQuery_advancedReporting);
        valueQuery_advancedReporting = NULL;
    }
    if(keyPairQuery_advancedReporting){
        keyValuePair_free(keyPairQuery_advancedReporting);
        keyPairQuery_advancedReporting = NULL;
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
    if(keyQuery_applicationIds){
        free(keyQuery_applicationIds);
        keyQuery_applicationIds = NULL;
    }
    if(valueQuery_applicationIds){
        free(valueQuery_applicationIds);
        valueQuery_applicationIds = NULL;
    }
    if(keyPairQuery_applicationIds){
        keyValuePair_free(keyPairQuery_applicationIds);
        keyPairQuery_applicationIds = NULL;
    }
    if(keyQuery_devices){
        free(keyQuery_devices);
        keyQuery_devices = NULL;
    }
    if(valueQuery_devices){
        free(valueQuery_devices);
        valueQuery_devices = NULL;
    }
    if(keyPairQuery_devices){
        keyValuePair_free(keyPairQuery_devices);
        keyPairQuery_devices = NULL;
    }
    if(keyQuery_deviceIds){
        free(keyQuery_deviceIds);
        keyQuery_deviceIds = NULL;
    }
    if(valueQuery_deviceIds){
        free(valueQuery_deviceIds);
        valueQuery_deviceIds = NULL;
    }
    if(keyPairQuery_deviceIds){
        keyValuePair_free(keyPairQuery_deviceIds);
        keyPairQuery_deviceIds = NULL;
    }
    if(keyQuery_deviceVersions){
        free(keyQuery_deviceVersions);
        keyQuery_deviceVersions = NULL;
    }
    if(valueQuery_deviceVersions){
        free(valueQuery_deviceVersions);
        valueQuery_deviceVersions = NULL;
    }
    if(keyPairQuery_deviceVersions){
        keyValuePair_free(keyPairQuery_deviceVersions);
        keyPairQuery_deviceVersions = NULL;
    }
    if(keyQuery_locations){
        free(keyQuery_locations);
        keyQuery_locations = NULL;
    }
    if(valueQuery_locations){
        free(valueQuery_locations);
        valueQuery_locations = NULL;
    }
    if(keyPairQuery_locations){
        keyValuePair_free(keyPairQuery_locations);
        keyPairQuery_locations = NULL;
    }
    if(keyQuery_radius){
        free(keyQuery_radius);
        keyQuery_radius = NULL;
    }
    if(valueQuery_radius){
        free(valueQuery_radius);
        valueQuery_radius = NULL;
    }
    if(keyPairQuery_radius){
        keyValuePair_free(keyPairQuery_radius);
        keyPairQuery_radius = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Mission
//
// Delete a mission.
//
sirqul_response_t*
MissionAPI_deleteMission(apiClient_t *apiClient, double version, long accountId, long missionId)
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
    char *localVarPath = strdup("/api/{version}/mission/delete");



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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(MissionAPIlocalVarJSON);
        cJSON_Delete(MissionAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Find Missions
//
// Get a set of ad filtered by the parameters provided.
//
mission_response_t*
MissionAPI_findMissions(apiClient_t *apiClient, double version, char *appKey, char *suffix, char *type, long accountId, char *appVersion, double latitude, double longitude, char *device, long deviceIdentifier, char *deviceVersion, int *start, int *limit, int *includeGameData, int *includeAudiences, int *allocatesTickets, int *randomize, int *targetedAdsOnly, char *missionIds, char *audienceOperator)
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
    char *localVarPath = strdup("/api/{version}/mission/find");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_suffix = NULL;
    char * valueQuery_suffix = NULL;
    keyValuePair_t *keyPairQuery_suffix = 0;
    if (suffix)
    {
        keyQuery_suffix = strdup("suffix");
        valueQuery_suffix = strdup((suffix));
        keyPairQuery_suffix = keyValuePair_create(keyQuery_suffix, valueQuery_suffix);
        list_addElement(localVarQueryParameters,keyPairQuery_suffix);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
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
    char *keyQuery_device = NULL;
    char * valueQuery_device = NULL;
    keyValuePair_t *keyPairQuery_device = 0;
    if (device)
    {
        keyQuery_device = strdup("device");
        valueQuery_device = strdup((device));
        keyPairQuery_device = keyValuePair_create(keyQuery_device, valueQuery_device);
        list_addElement(localVarQueryParameters,keyPairQuery_device);
    }

    // query parameters
    char *keyQuery_deviceIdentifier = NULL;
    char * valueQuery_deviceIdentifier ;
    keyValuePair_t *keyPairQuery_deviceIdentifier = 0;
    {
        keyQuery_deviceIdentifier = strdup("deviceIdentifier");
        valueQuery_deviceIdentifier = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_deviceIdentifier, MAX_NUMBER_LENGTH_LONG, "%d", deviceIdentifier);
        keyPairQuery_deviceIdentifier = keyValuePair_create(keyQuery_deviceIdentifier, valueQuery_deviceIdentifier);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIdentifier);
    }

    // query parameters
    char *keyQuery_deviceVersion = NULL;
    char * valueQuery_deviceVersion = NULL;
    keyValuePair_t *keyPairQuery_deviceVersion = 0;
    if (deviceVersion)
    {
        keyQuery_deviceVersion = strdup("deviceVersion");
        valueQuery_deviceVersion = strdup((deviceVersion));
        keyPairQuery_deviceVersion = keyValuePair_create(keyQuery_deviceVersion, valueQuery_deviceVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceVersion);
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
    char *keyQuery_includeAudiences = NULL;
    char * valueQuery_includeAudiences = NULL;
    keyValuePair_t *keyPairQuery_includeAudiences = 0;
    if (includeAudiences)
    {
        keyQuery_includeAudiences = strdup("includeAudiences");
        valueQuery_includeAudiences = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAudiences, MAX_NUMBER_LENGTH, "%d", *includeAudiences);
        keyPairQuery_includeAudiences = keyValuePair_create(keyQuery_includeAudiences, valueQuery_includeAudiences);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAudiences);
    }

    // query parameters
    char *keyQuery_allocatesTickets = NULL;
    char * valueQuery_allocatesTickets = NULL;
    keyValuePair_t *keyPairQuery_allocatesTickets = 0;
    if (allocatesTickets)
    {
        keyQuery_allocatesTickets = strdup("allocatesTickets");
        valueQuery_allocatesTickets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allocatesTickets, MAX_NUMBER_LENGTH, "%d", *allocatesTickets);
        keyPairQuery_allocatesTickets = keyValuePair_create(keyQuery_allocatesTickets, valueQuery_allocatesTickets);
        list_addElement(localVarQueryParameters,keyPairQuery_allocatesTickets);
    }

    // query parameters
    char *keyQuery_randomize = NULL;
    char * valueQuery_randomize = NULL;
    keyValuePair_t *keyPairQuery_randomize = 0;
    if (randomize)
    {
        keyQuery_randomize = strdup("randomize");
        valueQuery_randomize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_randomize, MAX_NUMBER_LENGTH, "%d", *randomize);
        keyPairQuery_randomize = keyValuePair_create(keyQuery_randomize, valueQuery_randomize);
        list_addElement(localVarQueryParameters,keyPairQuery_randomize);
    }

    // query parameters
    char *keyQuery_targetedAdsOnly = NULL;
    char * valueQuery_targetedAdsOnly = NULL;
    keyValuePair_t *keyPairQuery_targetedAdsOnly = 0;
    if (targetedAdsOnly)
    {
        keyQuery_targetedAdsOnly = strdup("targetedAdsOnly");
        valueQuery_targetedAdsOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_targetedAdsOnly, MAX_NUMBER_LENGTH, "%d", *targetedAdsOnly);
        keyPairQuery_targetedAdsOnly = keyValuePair_create(keyQuery_targetedAdsOnly, valueQuery_targetedAdsOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_targetedAdsOnly);
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
    char *keyQuery_audienceOperator = NULL;
    char * valueQuery_audienceOperator = NULL;
    keyValuePair_t *keyPairQuery_audienceOperator = 0;
    if (audienceOperator)
    {
        keyQuery_audienceOperator = strdup("audienceOperator");
        valueQuery_audienceOperator = strdup((audienceOperator));
        keyPairQuery_audienceOperator = keyValuePair_create(keyQuery_audienceOperator, valueQuery_audienceOperator);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceOperator);
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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_response_parseFromJSON(MissionAPIlocalVarJSON);
        cJSON_Delete(MissionAPIlocalVarJSON);
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
    if(keyQuery_suffix){
        free(keyQuery_suffix);
        keyQuery_suffix = NULL;
    }
    if(valueQuery_suffix){
        free(valueQuery_suffix);
        valueQuery_suffix = NULL;
    }
    if(keyPairQuery_suffix){
        keyValuePair_free(keyPairQuery_suffix);
        keyPairQuery_suffix = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
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
    if(keyQuery_device){
        free(keyQuery_device);
        keyQuery_device = NULL;
    }
    if(valueQuery_device){
        free(valueQuery_device);
        valueQuery_device = NULL;
    }
    if(keyPairQuery_device){
        keyValuePair_free(keyPairQuery_device);
        keyPairQuery_device = NULL;
    }
    if(keyQuery_deviceIdentifier){
        free(keyQuery_deviceIdentifier);
        keyQuery_deviceIdentifier = NULL;
    }
    if(keyPairQuery_deviceIdentifier){
        keyValuePair_free(keyPairQuery_deviceIdentifier);
        keyPairQuery_deviceIdentifier = NULL;
    }
    if(keyQuery_deviceVersion){
        free(keyQuery_deviceVersion);
        keyQuery_deviceVersion = NULL;
    }
    if(valueQuery_deviceVersion){
        free(valueQuery_deviceVersion);
        valueQuery_deviceVersion = NULL;
    }
    if(keyPairQuery_deviceVersion){
        keyValuePair_free(keyPairQuery_deviceVersion);
        keyPairQuery_deviceVersion = NULL;
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
    if(keyQuery_includeAudiences){
        free(keyQuery_includeAudiences);
        keyQuery_includeAudiences = NULL;
    }
    if(valueQuery_includeAudiences){
        free(valueQuery_includeAudiences);
        valueQuery_includeAudiences = NULL;
    }
    if(keyPairQuery_includeAudiences){
        keyValuePair_free(keyPairQuery_includeAudiences);
        keyPairQuery_includeAudiences = NULL;
    }
    if(keyQuery_allocatesTickets){
        free(keyQuery_allocatesTickets);
        keyQuery_allocatesTickets = NULL;
    }
    if(valueQuery_allocatesTickets){
        free(valueQuery_allocatesTickets);
        valueQuery_allocatesTickets = NULL;
    }
    if(keyPairQuery_allocatesTickets){
        keyValuePair_free(keyPairQuery_allocatesTickets);
        keyPairQuery_allocatesTickets = NULL;
    }
    if(keyQuery_randomize){
        free(keyQuery_randomize);
        keyQuery_randomize = NULL;
    }
    if(valueQuery_randomize){
        free(valueQuery_randomize);
        valueQuery_randomize = NULL;
    }
    if(keyPairQuery_randomize){
        keyValuePair_free(keyPairQuery_randomize);
        keyPairQuery_randomize = NULL;
    }
    if(keyQuery_targetedAdsOnly){
        free(keyQuery_targetedAdsOnly);
        keyQuery_targetedAdsOnly = NULL;
    }
    if(valueQuery_targetedAdsOnly){
        free(valueQuery_targetedAdsOnly);
        valueQuery_targetedAdsOnly = NULL;
    }
    if(keyPairQuery_targetedAdsOnly){
        keyValuePair_free(keyPairQuery_targetedAdsOnly);
        keyPairQuery_targetedAdsOnly = NULL;
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
    if(keyQuery_audienceOperator){
        free(keyQuery_audienceOperator);
        keyQuery_audienceOperator = NULL;
    }
    if(valueQuery_audienceOperator){
        free(valueQuery_audienceOperator);
        valueQuery_audienceOperator = NULL;
    }
    if(keyPairQuery_audienceOperator){
        keyValuePair_free(keyPairQuery_audienceOperator);
        keyPairQuery_audienceOperator = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Mission
//
// Get a mission.
//
mission_response_t*
MissionAPI_getMission(apiClient_t *apiClient, double version, long accountId, long missionId, int *returnCreative)
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
    char *localVarPath = strdup("/api/{version}/mission/get");



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
    char *keyQuery_returnCreative = NULL;
    char * valueQuery_returnCreative = NULL;
    keyValuePair_t *keyPairQuery_returnCreative = 0;
    if (returnCreative)
    {
        keyQuery_returnCreative = strdup("returnCreative");
        valueQuery_returnCreative = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnCreative, MAX_NUMBER_LENGTH, "%d", *returnCreative);
        keyPairQuery_returnCreative = keyValuePair_create(keyQuery_returnCreative, valueQuery_returnCreative);
        list_addElement(localVarQueryParameters,keyPairQuery_returnCreative);
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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_response_parseFromJSON(MissionAPIlocalVarJSON);
        cJSON_Delete(MissionAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
    }
    if(keyQuery_returnCreative){
        free(keyQuery_returnCreative);
        keyQuery_returnCreative = NULL;
    }
    if(valueQuery_returnCreative){
        free(valueQuery_returnCreative);
        valueQuery_returnCreative = NULL;
    }
    if(keyPairQuery_returnCreative){
        keyValuePair_free(keyPairQuery_returnCreative);
        keyPairQuery_returnCreative = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Import Mission
//
// Create a mission using a source item such as an offer location.
//
sirqul_response_t*
MissionAPI_importMission(apiClient_t *apiClient, double version, long accountId, double latitude, double longitude, char *appKey, char *keyword, int *start, int *limit, sirqul_iot_platform_importMission_adSize_e adSize)
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
    char *localVarPath = strdup("/api/{version}/mission/import");



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
    char *keyQuery_adSize = NULL;
    sirqul_iot_platform_importMission_adSize_e valueQuery_adSize ;
    keyValuePair_t *keyPairQuery_adSize = 0;
    if (adSize)
    {
        keyQuery_adSize = strdup("adSize");
        valueQuery_adSize = (adSize);
        keyPairQuery_adSize = keyValuePair_create(keyQuery_adSize, strdup(importMission_ADSIZE_ToString(
        valueQuery_adSize)));
        list_addElement(localVarQueryParameters,keyPairQuery_adSize);
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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(MissionAPIlocalVarJSON);
        cJSON_Delete(MissionAPIlocalVarJSON);
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
    if(keyQuery_adSize){
        free(keyQuery_adSize);
        keyQuery_adSize = NULL;
    }
    if(keyPairQuery_adSize){
        keyValuePair_free(keyPairQuery_adSize);
        keyPairQuery_adSize = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Mission Formats
//
// Searches on pre-defined mission formats
//
list_t*
MissionAPI_searchMissionFormats(apiClient_t *apiClient, double version, int *start, int *limit, int *activeOnly)
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
    char *localVarPath = strdup("/api/{version}/mission/format/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MissionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MissionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MissionAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Missions
//
// Get the list missions available to the account.  
//
list_t*
MissionAPI_searchMissions(apiClient_t *apiClient, double version, long accountId, char *keyword, char *subType, int *start, int *limit, int *includeGameData, int *includeAudiences, int *includeInactive, char *suffix, char *sortField, int *descending)
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
    char *localVarPath = strdup("/api/{version}/mission/search");



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
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
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
    char *keyQuery_includeAudiences = NULL;
    char * valueQuery_includeAudiences = NULL;
    keyValuePair_t *keyPairQuery_includeAudiences = 0;
    if (includeAudiences)
    {
        keyQuery_includeAudiences = strdup("includeAudiences");
        valueQuery_includeAudiences = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAudiences, MAX_NUMBER_LENGTH, "%d", *includeAudiences);
        keyPairQuery_includeAudiences = keyValuePair_create(keyQuery_includeAudiences, valueQuery_includeAudiences);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAudiences);
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
    char *keyQuery_suffix = NULL;
    char * valueQuery_suffix = NULL;
    keyValuePair_t *keyPairQuery_suffix = 0;
    if (suffix)
    {
        keyQuery_suffix = strdup("suffix");
        valueQuery_suffix = strdup((suffix));
        keyPairQuery_suffix = keyValuePair_create(keyQuery_suffix, valueQuery_suffix);
        list_addElement(localVarQueryParameters,keyPairQuery_suffix);
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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MissionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MissionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MissionAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
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
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
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
    if(keyQuery_includeAudiences){
        free(keyQuery_includeAudiences);
        keyQuery_includeAudiences = NULL;
    }
    if(valueQuery_includeAudiences){
        free(valueQuery_includeAudiences);
        valueQuery_includeAudiences = NULL;
    }
    if(keyPairQuery_includeAudiences){
        keyValuePair_free(keyPairQuery_includeAudiences);
        keyPairQuery_includeAudiences = NULL;
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
    if(keyQuery_suffix){
        free(keyQuery_suffix);
        keyQuery_suffix = NULL;
    }
    if(valueQuery_suffix){
        free(valueQuery_suffix);
        valueQuery_suffix = NULL;
    }
    if(keyPairQuery_suffix){
        keyValuePair_free(keyPairQuery_suffix);
        keyPairQuery_suffix = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Missions by Billable Entity
//
// Use the accountId to determine the associated BillableEntity.  From there get a list of all accounts associated as managers.  Get the list missions owned by all associated managers.
//
list_t*
MissionAPI_searchMissionsByBillableEntity(apiClient_t *apiClient, double version, long accountId, char *keyword, int *start, int *limit, int *includeGameData, int *includeAudiences, int *includeInactive, char *suffix, char *sortField, int *descending)
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
    char *localVarPath = strdup("/api/{version}/mission/searchByBillableEntity");



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
    char *keyQuery_includeAudiences = NULL;
    char * valueQuery_includeAudiences = NULL;
    keyValuePair_t *keyPairQuery_includeAudiences = 0;
    if (includeAudiences)
    {
        keyQuery_includeAudiences = strdup("includeAudiences");
        valueQuery_includeAudiences = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAudiences, MAX_NUMBER_LENGTH, "%d", *includeAudiences);
        keyPairQuery_includeAudiences = keyValuePair_create(keyQuery_includeAudiences, valueQuery_includeAudiences);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAudiences);
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
    char *keyQuery_suffix = NULL;
    char * valueQuery_suffix = NULL;
    keyValuePair_t *keyPairQuery_suffix = 0;
    if (suffix)
    {
        keyQuery_suffix = strdup("suffix");
        valueQuery_suffix = strdup((suffix));
        keyPairQuery_suffix = keyValuePair_create(keyQuery_suffix, valueQuery_suffix);
        list_addElement(localVarQueryParameters,keyPairQuery_suffix);
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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(MissionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, MissionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( MissionAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
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
    if(keyQuery_includeAudiences){
        free(keyQuery_includeAudiences);
        keyQuery_includeAudiences = NULL;
    }
    if(valueQuery_includeAudiences){
        free(valueQuery_includeAudiences);
        valueQuery_includeAudiences = NULL;
    }
    if(keyPairQuery_includeAudiences){
        keyValuePair_free(keyPairQuery_includeAudiences);
        keyPairQuery_includeAudiences = NULL;
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
    if(keyQuery_suffix){
        free(keyQuery_suffix);
        keyQuery_suffix = NULL;
    }
    if(valueQuery_suffix){
        free(valueQuery_suffix);
        valueQuery_suffix = NULL;
    }
    if(keyPairQuery_suffix){
        keyValuePair_free(keyPairQuery_suffix);
        keyPairQuery_suffix = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Mission
//
// Update a mission.
//
mission_response_t*
MissionAPI_updateMission(apiClient_t *apiClient, double version, long accountId, long missionId, char *title, char *description, char *subType, char *metaData, long startDate, long endDate, int *active, char *gameLevelIds, char *creativeIds, char *audienceIds, long offerId, double balance, int *advancedReporting, int *allocateTickets, long ticketCount, char *ticketType, long points, char *applicationIds, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius)
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
    char *localVarPath = strdup("/api/{version}/mission/update");



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
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
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
    char *keyQuery_creativeIds = NULL;
    char * valueQuery_creativeIds = NULL;
    keyValuePair_t *keyPairQuery_creativeIds = 0;
    if (creativeIds)
    {
        keyQuery_creativeIds = strdup("creativeIds");
        valueQuery_creativeIds = strdup((creativeIds));
        keyPairQuery_creativeIds = keyValuePair_create(keyQuery_creativeIds, valueQuery_creativeIds);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeIds);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
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
    char *keyQuery_advancedReporting = NULL;
    char * valueQuery_advancedReporting = NULL;
    keyValuePair_t *keyPairQuery_advancedReporting = 0;
    if (advancedReporting)
    {
        keyQuery_advancedReporting = strdup("advancedReporting");
        valueQuery_advancedReporting = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_advancedReporting, MAX_NUMBER_LENGTH, "%d", *advancedReporting);
        keyPairQuery_advancedReporting = keyValuePair_create(keyQuery_advancedReporting, valueQuery_advancedReporting);
        list_addElement(localVarQueryParameters,keyPairQuery_advancedReporting);
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
    char *keyQuery_applicationIds = NULL;
    char * valueQuery_applicationIds = NULL;
    keyValuePair_t *keyPairQuery_applicationIds = 0;
    if (applicationIds)
    {
        keyQuery_applicationIds = strdup("applicationIds");
        valueQuery_applicationIds = strdup((applicationIds));
        keyPairQuery_applicationIds = keyValuePair_create(keyQuery_applicationIds, valueQuery_applicationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_applicationIds);
    }

    // query parameters
    char *keyQuery_devices = NULL;
    char * valueQuery_devices = NULL;
    keyValuePair_t *keyPairQuery_devices = 0;
    if (devices)
    {
        keyQuery_devices = strdup("devices");
        valueQuery_devices = strdup((devices));
        keyPairQuery_devices = keyValuePair_create(keyQuery_devices, valueQuery_devices);
        list_addElement(localVarQueryParameters,keyPairQuery_devices);
    }

    // query parameters
    char *keyQuery_deviceIds = NULL;
    char * valueQuery_deviceIds = NULL;
    keyValuePair_t *keyPairQuery_deviceIds = 0;
    if (deviceIds)
    {
        keyQuery_deviceIds = strdup("deviceIds");
        valueQuery_deviceIds = strdup((deviceIds));
        keyPairQuery_deviceIds = keyValuePair_create(keyQuery_deviceIds, valueQuery_deviceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIds);
    }

    // query parameters
    char *keyQuery_deviceVersions = NULL;
    char * valueQuery_deviceVersions = NULL;
    keyValuePair_t *keyPairQuery_deviceVersions = 0;
    if (deviceVersions)
    {
        keyQuery_deviceVersions = strdup("deviceVersions");
        valueQuery_deviceVersions = strdup((deviceVersions));
        keyPairQuery_deviceVersions = keyValuePair_create(keyQuery_deviceVersions, valueQuery_deviceVersions);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceVersions);
    }

    // query parameters
    char *keyQuery_locations = NULL;
    char * valueQuery_locations = NULL;
    keyValuePair_t *keyPairQuery_locations = 0;
    if (locations)
    {
        keyQuery_locations = strdup("locations");
        valueQuery_locations = strdup((locations));
        keyPairQuery_locations = keyValuePair_create(keyQuery_locations, valueQuery_locations);
        list_addElement(localVarQueryParameters,keyPairQuery_locations);
    }

    // query parameters
    char *keyQuery_radius = NULL;
    char * valueQuery_radius = NULL;
    keyValuePair_t *keyPairQuery_radius = 0;
    if (radius)
    {
        keyQuery_radius = strdup("radius");
        valueQuery_radius = strdup((radius));
        keyPairQuery_radius = keyValuePair_create(keyQuery_radius, valueQuery_radius);
        list_addElement(localVarQueryParameters,keyPairQuery_radius);
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
        cJSON *MissionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = mission_response_parseFromJSON(MissionAPIlocalVarJSON);
        cJSON_Delete(MissionAPIlocalVarJSON);
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
    if(keyQuery_missionId){
        free(keyQuery_missionId);
        keyQuery_missionId = NULL;
    }
    if(keyPairQuery_missionId){
        keyValuePair_free(keyPairQuery_missionId);
        keyPairQuery_missionId = NULL;
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
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
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
    if(keyQuery_creativeIds){
        free(keyQuery_creativeIds);
        keyQuery_creativeIds = NULL;
    }
    if(valueQuery_creativeIds){
        free(valueQuery_creativeIds);
        valueQuery_creativeIds = NULL;
    }
    if(keyPairQuery_creativeIds){
        keyValuePair_free(keyPairQuery_creativeIds);
        keyPairQuery_creativeIds = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_balance){
        free(keyQuery_balance);
        keyQuery_balance = NULL;
    }
    if(keyPairQuery_balance){
        keyValuePair_free(keyPairQuery_balance);
        keyPairQuery_balance = NULL;
    }
    if(keyQuery_advancedReporting){
        free(keyQuery_advancedReporting);
        keyQuery_advancedReporting = NULL;
    }
    if(valueQuery_advancedReporting){
        free(valueQuery_advancedReporting);
        valueQuery_advancedReporting = NULL;
    }
    if(keyPairQuery_advancedReporting){
        keyValuePair_free(keyPairQuery_advancedReporting);
        keyPairQuery_advancedReporting = NULL;
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
    if(keyQuery_applicationIds){
        free(keyQuery_applicationIds);
        keyQuery_applicationIds = NULL;
    }
    if(valueQuery_applicationIds){
        free(valueQuery_applicationIds);
        valueQuery_applicationIds = NULL;
    }
    if(keyPairQuery_applicationIds){
        keyValuePair_free(keyPairQuery_applicationIds);
        keyPairQuery_applicationIds = NULL;
    }
    if(keyQuery_devices){
        free(keyQuery_devices);
        keyQuery_devices = NULL;
    }
    if(valueQuery_devices){
        free(valueQuery_devices);
        valueQuery_devices = NULL;
    }
    if(keyPairQuery_devices){
        keyValuePair_free(keyPairQuery_devices);
        keyPairQuery_devices = NULL;
    }
    if(keyQuery_deviceIds){
        free(keyQuery_deviceIds);
        keyQuery_deviceIds = NULL;
    }
    if(valueQuery_deviceIds){
        free(valueQuery_deviceIds);
        valueQuery_deviceIds = NULL;
    }
    if(keyPairQuery_deviceIds){
        keyValuePair_free(keyPairQuery_deviceIds);
        keyPairQuery_deviceIds = NULL;
    }
    if(keyQuery_deviceVersions){
        free(keyQuery_deviceVersions);
        keyQuery_deviceVersions = NULL;
    }
    if(valueQuery_deviceVersions){
        free(valueQuery_deviceVersions);
        valueQuery_deviceVersions = NULL;
    }
    if(keyPairQuery_deviceVersions){
        keyValuePair_free(keyPairQuery_deviceVersions);
        keyPairQuery_deviceVersions = NULL;
    }
    if(keyQuery_locations){
        free(keyQuery_locations);
        keyQuery_locations = NULL;
    }
    if(valueQuery_locations){
        free(valueQuery_locations);
        valueQuery_locations = NULL;
    }
    if(keyPairQuery_locations){
        keyValuePair_free(keyPairQuery_locations);
        keyPairQuery_locations = NULL;
    }
    if(keyQuery_radius){
        free(keyQuery_radius);
        keyQuery_radius = NULL;
    }
    if(valueQuery_radius){
        free(valueQuery_radius);
        valueQuery_radius = NULL;
    }
    if(keyPairQuery_radius){
        keyValuePair_free(keyPairQuery_radius);
        keyPairQuery_radius = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

