#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "CreativeAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Add Preview
//
// Enable this ad for preview for this account.
//
sirqul_response_t*
CreativeAPI_addPreview(apiClient_t *apiClient, double version, long accountId, long creativeId)
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
    char *localVarPath = strdup("/api/{version}/creative/addpreview");



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
    char *keyQuery_creativeId = NULL;
    char * valueQuery_creativeId ;
    keyValuePair_t *keyPairQuery_creativeId = 0;
    {
        keyQuery_creativeId = strdup("creativeId");
        valueQuery_creativeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creativeId, MAX_NUMBER_LENGTH_LONG, "%d", creativeId);
        keyPairQuery_creativeId = keyValuePair_create(keyQuery_creativeId, valueQuery_creativeId);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeId);
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
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(CreativeAPIlocalVarJSON);
        cJSON_Delete(CreativeAPIlocalVarJSON);
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
    if(keyQuery_creativeId){
        free(keyQuery_creativeId);
        keyQuery_creativeId = NULL;
    }
    if(keyPairQuery_creativeId){
        keyValuePair_free(keyPairQuery_creativeId);
        keyPairQuery_creativeId = NULL;
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
list_t*
CreativeAPI_adsFind(apiClient_t *apiClient, double version, char *appKey, int *randomize, int *targetedAdsOnly, char *type, long accountId, char *appVersion, double latitude, double longitude, char *device, long deviceIdentifier, char *deviceVersion, int *start, int *limit, int *includeAudiences, int *allocatesTickets, char *missionIds)
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
    char *localVarPath = strdup("/api/{version}/ads/find");



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
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(CreativeAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, CreativeAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( CreativeAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Creative
//
// Create a creative
//
creative_response_t*
CreativeAPI_createCreative(apiClient_t *apiClient, double version, long accountId, char *name, int *active, int *waitForAsset, char *description, long assetImageId, char *action, char *data, char *suffix, char *type, double balance, long referenceId, char *appVersion, long missionId, long offerId)
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
    char *localVarPath = strdup("/api/{version}/creative/create");



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
    char *keyQuery_action = NULL;
    char * valueQuery_action = NULL;
    keyValuePair_t *keyPairQuery_action = 0;
    if (action)
    {
        keyQuery_action = strdup("action");
        valueQuery_action = strdup((action));
        keyPairQuery_action = keyValuePair_create(keyQuery_action, valueQuery_action);
        list_addElement(localVarQueryParameters,keyPairQuery_action);
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
    char *keyQuery_referenceId = NULL;
    char * valueQuery_referenceId ;
    keyValuePair_t *keyPairQuery_referenceId = 0;
    {
        keyQuery_referenceId = strdup("referenceId");
        valueQuery_referenceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_referenceId, MAX_NUMBER_LENGTH_LONG, "%d", referenceId);
        keyPairQuery_referenceId = keyValuePair_create(keyQuery_referenceId, valueQuery_referenceId);
        list_addElement(localVarQueryParameters,keyPairQuery_referenceId);
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
    char *keyQuery_waitForAsset = NULL;
    char * valueQuery_waitForAsset = NULL;
    keyValuePair_t *keyPairQuery_waitForAsset = 0;
    if (waitForAsset)
    {
        keyQuery_waitForAsset = strdup("waitForAsset");
        valueQuery_waitForAsset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_waitForAsset, MAX_NUMBER_LENGTH, "%d", *waitForAsset);
        keyPairQuery_waitForAsset = keyValuePair_create(keyQuery_waitForAsset, valueQuery_waitForAsset);
        list_addElement(localVarQueryParameters,keyPairQuery_waitForAsset);
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
    creative_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = creative_response_parseFromJSON(CreativeAPIlocalVarJSON);
        cJSON_Delete(CreativeAPIlocalVarJSON);
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
    if(keyQuery_assetImageId){
        free(keyQuery_assetImageId);
        keyQuery_assetImageId = NULL;
    }
    if(keyPairQuery_assetImageId){
        keyValuePair_free(keyPairQuery_assetImageId);
        keyPairQuery_assetImageId = NULL;
    }
    if(keyQuery_action){
        free(keyQuery_action);
        keyQuery_action = NULL;
    }
    if(valueQuery_action){
        free(valueQuery_action);
        valueQuery_action = NULL;
    }
    if(keyPairQuery_action){
        keyValuePair_free(keyPairQuery_action);
        keyPairQuery_action = NULL;
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
    if(keyQuery_referenceId){
        free(keyQuery_referenceId);
        keyQuery_referenceId = NULL;
    }
    if(keyPairQuery_referenceId){
        keyValuePair_free(keyPairQuery_referenceId);
        keyPairQuery_referenceId = NULL;
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
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_waitForAsset){
        free(keyQuery_waitForAsset);
        keyQuery_waitForAsset = NULL;
    }
    if(valueQuery_waitForAsset){
        free(valueQuery_waitForAsset);
        valueQuery_waitForAsset = NULL;
    }
    if(keyPairQuery_waitForAsset){
        keyValuePair_free(keyPairQuery_waitForAsset);
        keyPairQuery_waitForAsset = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Creative
//
// Delete a creative
//
sirqul_response_t*
CreativeAPI_deleteCreative(apiClient_t *apiClient, double version, long accountId, long creativeId)
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
    char *localVarPath = strdup("/api/{version}/creative/delete");



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
    char *keyQuery_creativeId = NULL;
    char * valueQuery_creativeId ;
    keyValuePair_t *keyPairQuery_creativeId = 0;
    {
        keyQuery_creativeId = strdup("creativeId");
        valueQuery_creativeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creativeId, MAX_NUMBER_LENGTH_LONG, "%d", creativeId);
        keyPairQuery_creativeId = keyValuePair_create(keyQuery_creativeId, valueQuery_creativeId);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeId);
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
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(CreativeAPIlocalVarJSON);
        cJSON_Delete(CreativeAPIlocalVarJSON);
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
    if(keyQuery_creativeId){
        free(keyQuery_creativeId);
        keyQuery_creativeId = NULL;
    }
    if(keyPairQuery_creativeId){
        keyValuePair_free(keyPairQuery_creativeId);
        keyPairQuery_creativeId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Creative
//
// Get a creative
//
creative_response_t*
CreativeAPI_getCreative(apiClient_t *apiClient, double version, long accountId, long creativeId)
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
    char *localVarPath = strdup("/api/{version}/creative/get");



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
    char *keyQuery_creativeId = NULL;
    char * valueQuery_creativeId ;
    keyValuePair_t *keyPairQuery_creativeId = 0;
    {
        keyQuery_creativeId = strdup("creativeId");
        valueQuery_creativeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creativeId, MAX_NUMBER_LENGTH_LONG, "%d", creativeId);
        keyPairQuery_creativeId = keyValuePair_create(keyQuery_creativeId, valueQuery_creativeId);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeId);
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
    creative_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = creative_response_parseFromJSON(CreativeAPIlocalVarJSON);
        cJSON_Delete(CreativeAPIlocalVarJSON);
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
    if(keyQuery_creativeId){
        free(keyQuery_creativeId);
        keyQuery_creativeId = NULL;
    }
    if(keyPairQuery_creativeId){
        keyValuePair_free(keyPairQuery_creativeId);
        keyPairQuery_creativeId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Creatives
//
// Get a list of levels for an application, just those the account has permissions to view.
//
list_t*
CreativeAPI_getCreativesByApplication(apiClient_t *apiClient, double version, long accountId, char *appKey, int *start, int *limit, long missionId, char *keyword)
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
    char *localVarPath = strdup("/api/{version}/creative/search");



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
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(CreativeAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, CreativeAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( CreativeAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Remove Preview
//
// Remove this ad for preview for this account.
//
sirqul_response_t*
CreativeAPI_removePreview(apiClient_t *apiClient, double version, long accountId, long creativeId)
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
    char *localVarPath = strdup("/api/{version}/creative/removepreview");



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
    char *keyQuery_creativeId = NULL;
    char * valueQuery_creativeId ;
    keyValuePair_t *keyPairQuery_creativeId = 0;
    {
        keyQuery_creativeId = strdup("creativeId");
        valueQuery_creativeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creativeId, MAX_NUMBER_LENGTH_LONG, "%d", creativeId);
        keyPairQuery_creativeId = keyValuePair_create(keyQuery_creativeId, valueQuery_creativeId);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeId);
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
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(CreativeAPIlocalVarJSON);
        cJSON_Delete(CreativeAPIlocalVarJSON);
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
    if(keyQuery_creativeId){
        free(keyQuery_creativeId);
        keyQuery_creativeId = NULL;
    }
    if(keyPairQuery_creativeId){
        keyValuePair_free(keyPairQuery_creativeId);
        keyPairQuery_creativeId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Creative
//
// Update a creative
//
creative_response_t*
CreativeAPI_updateCreative(apiClient_t *apiClient, double version, long accountId, long creativeId, char *name, char *description, long assetImageId, char *action, char *data, char *suffix, char *type, double balance, int *active, long referenceId, char *appVersion, long missionId)
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
    char *localVarPath = strdup("/api/{version}/creative/update");



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
    char *keyQuery_creativeId = NULL;
    char * valueQuery_creativeId ;
    keyValuePair_t *keyPairQuery_creativeId = 0;
    {
        keyQuery_creativeId = strdup("creativeId");
        valueQuery_creativeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creativeId, MAX_NUMBER_LENGTH_LONG, "%d", creativeId);
        keyPairQuery_creativeId = keyValuePair_create(keyQuery_creativeId, valueQuery_creativeId);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeId);
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
    char *keyQuery_action = NULL;
    char * valueQuery_action = NULL;
    keyValuePair_t *keyPairQuery_action = 0;
    if (action)
    {
        keyQuery_action = strdup("action");
        valueQuery_action = strdup((action));
        keyPairQuery_action = keyValuePair_create(keyQuery_action, valueQuery_action);
        list_addElement(localVarQueryParameters,keyPairQuery_action);
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
    char *keyQuery_referenceId = NULL;
    char * valueQuery_referenceId ;
    keyValuePair_t *keyPairQuery_referenceId = 0;
    {
        keyQuery_referenceId = strdup("referenceId");
        valueQuery_referenceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_referenceId, MAX_NUMBER_LENGTH_LONG, "%d", referenceId);
        keyPairQuery_referenceId = keyValuePair_create(keyQuery_referenceId, valueQuery_referenceId);
        list_addElement(localVarQueryParameters,keyPairQuery_referenceId);
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
    creative_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CreativeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = creative_response_parseFromJSON(CreativeAPIlocalVarJSON);
        cJSON_Delete(CreativeAPIlocalVarJSON);
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
    if(keyQuery_creativeId){
        free(keyQuery_creativeId);
        keyQuery_creativeId = NULL;
    }
    if(keyPairQuery_creativeId){
        keyValuePair_free(keyPairQuery_creativeId);
        keyPairQuery_creativeId = NULL;
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
    if(keyQuery_assetImageId){
        free(keyQuery_assetImageId);
        keyQuery_assetImageId = NULL;
    }
    if(keyPairQuery_assetImageId){
        keyValuePair_free(keyPairQuery_assetImageId);
        keyPairQuery_assetImageId = NULL;
    }
    if(keyQuery_action){
        free(keyQuery_action);
        keyQuery_action = NULL;
    }
    if(valueQuery_action){
        free(valueQuery_action);
        valueQuery_action = NULL;
    }
    if(keyPairQuery_action){
        keyValuePair_free(keyPairQuery_action);
        keyPairQuery_action = NULL;
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
    if(keyQuery_referenceId){
        free(keyQuery_referenceId);
        keyQuery_referenceId = NULL;
    }
    if(keyPairQuery_referenceId){
        keyValuePair_free(keyPairQuery_referenceId);
        keyPairQuery_referenceId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

