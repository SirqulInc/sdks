#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "TrackingAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum DISTANCEUNIT for TrackingAPI_getPredictedLocations

static char* getPredictedLocations_DISTANCEUNIT_ToString(sirqul_iot_platform_getPredictedLocations_distanceUnit_e DISTANCEUNIT){
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    return DISTANCEUNITArray[DISTANCEUNIT];
}

static sirqul_iot_platform_getPredictedLocations_distanceUnit_e getPredictedLocations_DISTANCEUNIT_FromString(char* DISTANCEUNIT){
    int stringToReturn = 0;
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    size_t sizeofArray = sizeof(DISTANCEUNITArray) / sizeof(DISTANCEUNITArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DISTANCEUNIT, DISTANCEUNITArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getPredictedLocations_DISTANCEUNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getPredictedLocations_DISTANCEUNIT_convertToJSON(sirqul_iot_platform_getPredictedLocations_distanceUnit_e DISTANCEUNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distanceUnit", getPredictedLocations_DISTANCEUNIT_ToString(DISTANCEUNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getPredictedLocations_DISTANCEUNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getPredictedLocations_distanceUnit_e getPredictedLocations_DISTANCEUNIT_parseFromJSON(cJSON* DISTANCEUNITJSON) {
    sirqul_iot_platform_getPredictedLocations_distanceUnit_e DISTANCEUNITVariable = 0;
    cJSON *DISTANCEUNITVar = cJSON_GetObjectItemCaseSensitive(DISTANCEUNITJSON, "distanceUnit");
    if(!cJSON_IsString(DISTANCEUNITVar) || (DISTANCEUNITVar->valuestring == NULL))
    {
        goto end;
    }
    DISTANCEUNITVariable = getPredictedLocations_DISTANCEUNIT_FromString(DISTANCEUNITVar->valuestring);
    return DISTANCEUNITVariable;
end:
    return 0;
}
*/

// Functions for enum SORTORDER for TrackingAPI_getPredictedLocations

static char* getPredictedLocations_SORTORDER_ToString(sirqul_iot_platform_getPredictedLocations_sortOrder_e SORTORDER){
    char *SORTORDERArray[] =  { "NULL", "MATCHES", "DISTANCE", "WEIGHTED" };
    return SORTORDERArray[SORTORDER];
}

static sirqul_iot_platform_getPredictedLocations_sortOrder_e getPredictedLocations_SORTORDER_FromString(char* SORTORDER){
    int stringToReturn = 0;
    char *SORTORDERArray[] =  { "NULL", "MATCHES", "DISTANCE", "WEIGHTED" };
    size_t sizeofArray = sizeof(SORTORDERArray) / sizeof(SORTORDERArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTORDER, SORTORDERArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getPredictedLocations_SORTORDER_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getPredictedLocations_SORTORDER_convertToJSON(sirqul_iot_platform_getPredictedLocations_sortOrder_e SORTORDER) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortOrder", getPredictedLocations_SORTORDER_ToString(SORTORDER)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getPredictedLocations_SORTORDER_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getPredictedLocations_sortOrder_e getPredictedLocations_SORTORDER_parseFromJSON(cJSON* SORTORDERJSON) {
    sirqul_iot_platform_getPredictedLocations_sortOrder_e SORTORDERVariable = 0;
    cJSON *SORTORDERVar = cJSON_GetObjectItemCaseSensitive(SORTORDERJSON, "sortOrder");
    if(!cJSON_IsString(SORTORDERVar) || (SORTORDERVar->valuestring == NULL))
    {
        goto end;
    }
    SORTORDERVariable = getPredictedLocations_SORTORDER_FromString(SORTORDERVar->valuestring);
    return SORTORDERVariable;
end:
    return 0;
}
*/

// Functions for enum DISTANCEUNIT for TrackingAPI_getPreferredLocations

static char* getPreferredLocations_DISTANCEUNIT_ToString(sirqul_iot_platform_getPreferredLocations_distanceUnit_e DISTANCEUNIT){
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    return DISTANCEUNITArray[DISTANCEUNIT];
}

static sirqul_iot_platform_getPreferredLocations_distanceUnit_e getPreferredLocations_DISTANCEUNIT_FromString(char* DISTANCEUNIT){
    int stringToReturn = 0;
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    size_t sizeofArray = sizeof(DISTANCEUNITArray) / sizeof(DISTANCEUNITArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DISTANCEUNIT, DISTANCEUNITArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getPreferredLocations_DISTANCEUNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getPreferredLocations_DISTANCEUNIT_convertToJSON(sirqul_iot_platform_getPreferredLocations_distanceUnit_e DISTANCEUNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distanceUnit", getPreferredLocations_DISTANCEUNIT_ToString(DISTANCEUNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getPreferredLocations_DISTANCEUNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getPreferredLocations_distanceUnit_e getPreferredLocations_DISTANCEUNIT_parseFromJSON(cJSON* DISTANCEUNITJSON) {
    sirqul_iot_platform_getPreferredLocations_distanceUnit_e DISTANCEUNITVariable = 0;
    cJSON *DISTANCEUNITVar = cJSON_GetObjectItemCaseSensitive(DISTANCEUNITJSON, "distanceUnit");
    if(!cJSON_IsString(DISTANCEUNITVar) || (DISTANCEUNITVar->valuestring == NULL))
    {
        goto end;
    }
    DISTANCEUNITVariable = getPreferredLocations_DISTANCEUNIT_FromString(DISTANCEUNITVar->valuestring);
    return DISTANCEUNITVariable;
end:
    return 0;
}
*/


// Create Batch Tracking
//
// Batch create tracking legs
//
list_t*
TrackingAPI_batchSaveTracking(apiClient_t *apiClient, double version, char *data, char *deviceId, long accountId, int *generateAccounts, int *updateAccountLocations, char *defaultTag, char *slaveUID)
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
    char *localVarPath = strdup("/api/{version}/tracking/batch/create");



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
    char *keyQuery_generateAccounts = NULL;
    char * valueQuery_generateAccounts = NULL;
    keyValuePair_t *keyPairQuery_generateAccounts = 0;
    if (generateAccounts)
    {
        keyQuery_generateAccounts = strdup("generateAccounts");
        valueQuery_generateAccounts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_generateAccounts, MAX_NUMBER_LENGTH, "%d", *generateAccounts);
        keyPairQuery_generateAccounts = keyValuePair_create(keyQuery_generateAccounts, valueQuery_generateAccounts);
        list_addElement(localVarQueryParameters,keyPairQuery_generateAccounts);
    }

    // query parameters
    char *keyQuery_updateAccountLocations = NULL;
    char * valueQuery_updateAccountLocations = NULL;
    keyValuePair_t *keyPairQuery_updateAccountLocations = 0;
    if (updateAccountLocations)
    {
        keyQuery_updateAccountLocations = strdup("updateAccountLocations");
        valueQuery_updateAccountLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateAccountLocations, MAX_NUMBER_LENGTH, "%d", *updateAccountLocations);
        keyPairQuery_updateAccountLocations = keyValuePair_create(keyQuery_updateAccountLocations, valueQuery_updateAccountLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_updateAccountLocations);
    }

    // query parameters
    char *keyQuery_defaultTag = NULL;
    char * valueQuery_defaultTag = NULL;
    keyValuePair_t *keyPairQuery_defaultTag = 0;
    if (defaultTag)
    {
        keyQuery_defaultTag = strdup("defaultTag");
        valueQuery_defaultTag = strdup((defaultTag));
        keyPairQuery_defaultTag = keyValuePair_create(keyQuery_defaultTag, valueQuery_defaultTag);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultTag);
    }

    // query parameters
    char *keyQuery_slaveUID = NULL;
    char * valueQuery_slaveUID = NULL;
    keyValuePair_t *keyPairQuery_slaveUID = 0;
    if (slaveUID)
    {
        keyQuery_slaveUID = strdup("slaveUID");
        valueQuery_slaveUID = strdup((slaveUID));
        keyPairQuery_slaveUID = keyValuePair_create(keyQuery_slaveUID, valueQuery_slaveUID);
        list_addElement(localVarQueryParameters,keyPairQuery_slaveUID);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(TrackingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, TrackingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( TrackingAPIlocalVarJSON);
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
    if(keyQuery_generateAccounts){
        free(keyQuery_generateAccounts);
        keyQuery_generateAccounts = NULL;
    }
    if(valueQuery_generateAccounts){
        free(valueQuery_generateAccounts);
        valueQuery_generateAccounts = NULL;
    }
    if(keyPairQuery_generateAccounts){
        keyValuePair_free(keyPairQuery_generateAccounts);
        keyPairQuery_generateAccounts = NULL;
    }
    if(keyQuery_updateAccountLocations){
        free(keyQuery_updateAccountLocations);
        keyQuery_updateAccountLocations = NULL;
    }
    if(valueQuery_updateAccountLocations){
        free(valueQuery_updateAccountLocations);
        valueQuery_updateAccountLocations = NULL;
    }
    if(keyPairQuery_updateAccountLocations){
        keyValuePair_free(keyPairQuery_updateAccountLocations);
        keyPairQuery_updateAccountLocations = NULL;
    }
    if(keyQuery_defaultTag){
        free(keyQuery_defaultTag);
        keyQuery_defaultTag = NULL;
    }
    if(valueQuery_defaultTag){
        free(valueQuery_defaultTag);
        valueQuery_defaultTag = NULL;
    }
    if(keyPairQuery_defaultTag){
        keyValuePair_free(keyPairQuery_defaultTag);
        keyPairQuery_defaultTag = NULL;
    }
    if(keyQuery_slaveUID){
        free(keyQuery_slaveUID);
        keyQuery_slaveUID = NULL;
    }
    if(valueQuery_slaveUID){
        free(valueQuery_slaveUID);
        valueQuery_slaveUID = NULL;
    }
    if(keyPairQuery_slaveUID){
        keyValuePair_free(keyPairQuery_slaveUID);
        keyPairQuery_slaveUID = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Predicted Locations
//
// Get the predicted location for a customer based on previous behavior.  If a customer resides in a place for a period of time this is marked as a preferred location.  We look back over the previous few days and the previous days of the week from the day specified.  If for instance the day was a Wednesday then this would check the days before, including: Tuesday, Monday, Sunday, etc. It will also check some number of previous Wednesdays in the past few weeks.
//
predicted_location_response_t*
TrackingAPI_getPredictedLocations(apiClient_t *apiClient, double version, long accountId, double latitude, double longitude, long dateCheck, char *hourCheck, long threshold, sirqul_iot_platform_getPredictedLocations_distanceUnit_e distanceUnit, double searchRange, sirqul_iot_platform_getPredictedLocations_sortOrder_e sortOrder)
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
    char *localVarPath = strdup("/api/{version}/tracking/predicted/get");



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
    char *keyQuery_dateCheck = NULL;
    char * valueQuery_dateCheck ;
    keyValuePair_t *keyPairQuery_dateCheck = 0;
    {
        keyQuery_dateCheck = strdup("dateCheck");
        valueQuery_dateCheck = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dateCheck, MAX_NUMBER_LENGTH_LONG, "%d", dateCheck);
        keyPairQuery_dateCheck = keyValuePair_create(keyQuery_dateCheck, valueQuery_dateCheck);
        list_addElement(localVarQueryParameters,keyPairQuery_dateCheck);
    }

    // query parameters
    char *keyQuery_hourCheck = NULL;
    char * valueQuery_hourCheck = NULL;
    keyValuePair_t *keyPairQuery_hourCheck = 0;
    if (hourCheck)
    {
        keyQuery_hourCheck = strdup("hourCheck");
        valueQuery_hourCheck = strdup((hourCheck));
        keyPairQuery_hourCheck = keyValuePair_create(keyQuery_hourCheck, valueQuery_hourCheck);
        list_addElement(localVarQueryParameters,keyPairQuery_hourCheck);
    }

    // query parameters
    char *keyQuery_threshold = NULL;
    char * valueQuery_threshold ;
    keyValuePair_t *keyPairQuery_threshold = 0;
    {
        keyQuery_threshold = strdup("threshold");
        valueQuery_threshold = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_threshold, MAX_NUMBER_LENGTH_LONG, "%d", threshold);
        keyPairQuery_threshold = keyValuePair_create(keyQuery_threshold, valueQuery_threshold);
        list_addElement(localVarQueryParameters,keyPairQuery_threshold);
    }

    // query parameters
    char *keyQuery_distanceUnit = NULL;
    sirqul_iot_platform_getPredictedLocations_distanceUnit_e valueQuery_distanceUnit ;
    keyValuePair_t *keyPairQuery_distanceUnit = 0;
    if (distanceUnit)
    {
        keyQuery_distanceUnit = strdup("distanceUnit");
        valueQuery_distanceUnit = (distanceUnit);
        keyPairQuery_distanceUnit = keyValuePair_create(keyQuery_distanceUnit, strdup(getPredictedLocations_DISTANCEUNIT_ToString(
        valueQuery_distanceUnit)));
        list_addElement(localVarQueryParameters,keyPairQuery_distanceUnit);
    }

    // query parameters
    char *keyQuery_searchRange = NULL;
    char * valueQuery_searchRange = NULL;
    keyValuePair_t *keyPairQuery_searchRange = 0;
    {
        keyQuery_searchRange = strdup("searchRange");
        int s = snprintf(NULL, 0, "%.16e", searchRange);
        if (s >= 0)
        {
            valueQuery_searchRange = calloc(1,s+1);
            snprintf(valueQuery_searchRange, s+1, "%.16e", searchRange);
        }
        keyPairQuery_searchRange = keyValuePair_create(keyQuery_searchRange, valueQuery_searchRange);
        list_addElement(localVarQueryParameters,keyPairQuery_searchRange);
    }

    // query parameters
    char *keyQuery_sortOrder = NULL;
    sirqul_iot_platform_getPredictedLocations_sortOrder_e valueQuery_sortOrder ;
    keyValuePair_t *keyPairQuery_sortOrder = 0;
    if (sortOrder)
    {
        keyQuery_sortOrder = strdup("sortOrder");
        valueQuery_sortOrder = (sortOrder);
        keyPairQuery_sortOrder = keyValuePair_create(keyQuery_sortOrder, strdup(getPredictedLocations_SORTORDER_ToString(
        valueQuery_sortOrder)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortOrder);
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
    predicted_location_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = predicted_location_response_parseFromJSON(TrackingAPIlocalVarJSON);
        cJSON_Delete(TrackingAPIlocalVarJSON);
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
    if(keyQuery_dateCheck){
        free(keyQuery_dateCheck);
        keyQuery_dateCheck = NULL;
    }
    if(keyPairQuery_dateCheck){
        keyValuePair_free(keyPairQuery_dateCheck);
        keyPairQuery_dateCheck = NULL;
    }
    if(keyQuery_hourCheck){
        free(keyQuery_hourCheck);
        keyQuery_hourCheck = NULL;
    }
    if(valueQuery_hourCheck){
        free(valueQuery_hourCheck);
        valueQuery_hourCheck = NULL;
    }
    if(keyPairQuery_hourCheck){
        keyValuePair_free(keyPairQuery_hourCheck);
        keyPairQuery_hourCheck = NULL;
    }
    if(keyQuery_threshold){
        free(keyQuery_threshold);
        keyQuery_threshold = NULL;
    }
    if(keyPairQuery_threshold){
        keyValuePair_free(keyPairQuery_threshold);
        keyPairQuery_threshold = NULL;
    }
    if(keyQuery_distanceUnit){
        free(keyQuery_distanceUnit);
        keyQuery_distanceUnit = NULL;
    }
    if(keyPairQuery_distanceUnit){
        keyValuePair_free(keyPairQuery_distanceUnit);
        keyPairQuery_distanceUnit = NULL;
    }
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
    }
    if(keyQuery_sortOrder){
        free(keyQuery_sortOrder);
        keyQuery_sortOrder = NULL;
    }
    if(keyPairQuery_sortOrder){
        keyValuePair_free(keyPairQuery_sortOrder);
        keyPairQuery_sortOrder = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Tracking Path
//
// Get the path (lat/long coordinates) between 2 steps previously logged for a customer.
//
list_t*
TrackingAPI_getPredictedPath(apiClient_t *apiClient, double version, long accountId, long startStepId, long endStepId)
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
    char *localVarPath = strdup("/api/{version}/tracking/path/get");



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
    char *keyQuery_startStepId = NULL;
    char * valueQuery_startStepId ;
    keyValuePair_t *keyPairQuery_startStepId = 0;
    {
        keyQuery_startStepId = strdup("startStepId");
        valueQuery_startStepId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startStepId, MAX_NUMBER_LENGTH_LONG, "%d", startStepId);
        keyPairQuery_startStepId = keyValuePair_create(keyQuery_startStepId, valueQuery_startStepId);
        list_addElement(localVarQueryParameters,keyPairQuery_startStepId);
    }

    // query parameters
    char *keyQuery_endStepId = NULL;
    char * valueQuery_endStepId ;
    keyValuePair_t *keyPairQuery_endStepId = 0;
    {
        keyQuery_endStepId = strdup("endStepId");
        valueQuery_endStepId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endStepId, MAX_NUMBER_LENGTH_LONG, "%d", endStepId);
        keyPairQuery_endStepId = keyValuePair_create(keyQuery_endStepId, valueQuery_endStepId);
        list_addElement(localVarQueryParameters,keyPairQuery_endStepId);
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
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(TrackingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, TrackingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( TrackingAPIlocalVarJSON);
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
    if(keyQuery_startStepId){
        free(keyQuery_startStepId);
        keyQuery_startStepId = NULL;
    }
    if(keyPairQuery_startStepId){
        keyValuePair_free(keyPairQuery_startStepId);
        keyPairQuery_startStepId = NULL;
    }
    if(keyQuery_endStepId){
        free(keyQuery_endStepId);
        keyQuery_endStepId = NULL;
    }
    if(keyPairQuery_endStepId){
        keyValuePair_free(keyPairQuery_endStepId);
        keyPairQuery_endStepId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Preferred Locations
//
// Search on preferred locations for a user, which is created when a customer resides in a place for a period of time.
//
list_t*
TrackingAPI_getPreferredLocations(apiClient_t *apiClient, double version, long accountId, double latitude, double longitude, long dateCheck, char *hourCheck, char *sortField, int *descending, int *start, int *limit, double searchRange, sirqul_iot_platform_getPreferredLocations_distanceUnit_e distanceUnit)
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
    char *localVarPath = strdup("/api/{version}/tracking/preferred/search");



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
    char *keyQuery_dateCheck = NULL;
    char * valueQuery_dateCheck ;
    keyValuePair_t *keyPairQuery_dateCheck = 0;
    {
        keyQuery_dateCheck = strdup("dateCheck");
        valueQuery_dateCheck = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dateCheck, MAX_NUMBER_LENGTH_LONG, "%d", dateCheck);
        keyPairQuery_dateCheck = keyValuePair_create(keyQuery_dateCheck, valueQuery_dateCheck);
        list_addElement(localVarQueryParameters,keyPairQuery_dateCheck);
    }

    // query parameters
    char *keyQuery_hourCheck = NULL;
    char * valueQuery_hourCheck = NULL;
    keyValuePair_t *keyPairQuery_hourCheck = 0;
    if (hourCheck)
    {
        keyQuery_hourCheck = strdup("hourCheck");
        valueQuery_hourCheck = strdup((hourCheck));
        keyPairQuery_hourCheck = keyValuePair_create(keyQuery_hourCheck, valueQuery_hourCheck);
        list_addElement(localVarQueryParameters,keyPairQuery_hourCheck);
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
    char *keyQuery_searchRange = NULL;
    char * valueQuery_searchRange = NULL;
    keyValuePair_t *keyPairQuery_searchRange = 0;
    {
        keyQuery_searchRange = strdup("searchRange");
        int s = snprintf(NULL, 0, "%.16e", searchRange);
        if (s >= 0)
        {
            valueQuery_searchRange = calloc(1,s+1);
            snprintf(valueQuery_searchRange, s+1, "%.16e", searchRange);
        }
        keyPairQuery_searchRange = keyValuePair_create(keyQuery_searchRange, valueQuery_searchRange);
        list_addElement(localVarQueryParameters,keyPairQuery_searchRange);
    }

    // query parameters
    char *keyQuery_distanceUnit = NULL;
    sirqul_iot_platform_getPreferredLocations_distanceUnit_e valueQuery_distanceUnit ;
    keyValuePair_t *keyPairQuery_distanceUnit = 0;
    if (distanceUnit)
    {
        keyQuery_distanceUnit = strdup("distanceUnit");
        valueQuery_distanceUnit = (distanceUnit);
        keyPairQuery_distanceUnit = keyValuePair_create(keyQuery_distanceUnit, strdup(getPreferredLocations_DISTANCEUNIT_ToString(
        valueQuery_distanceUnit)));
        list_addElement(localVarQueryParameters,keyPairQuery_distanceUnit);
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
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(TrackingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, TrackingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( TrackingAPIlocalVarJSON);
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
    if(keyQuery_dateCheck){
        free(keyQuery_dateCheck);
        keyQuery_dateCheck = NULL;
    }
    if(keyPairQuery_dateCheck){
        keyValuePair_free(keyPairQuery_dateCheck);
        keyPairQuery_dateCheck = NULL;
    }
    if(keyQuery_hourCheck){
        free(keyQuery_hourCheck);
        keyQuery_hourCheck = NULL;
    }
    if(valueQuery_hourCheck){
        free(valueQuery_hourCheck);
        valueQuery_hourCheck = NULL;
    }
    if(keyPairQuery_hourCheck){
        keyValuePair_free(keyPairQuery_hourCheck);
        keyPairQuery_hourCheck = NULL;
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
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
    }
    if(keyQuery_distanceUnit){
        free(keyQuery_distanceUnit);
        keyQuery_distanceUnit = NULL;
    }
    if(keyPairQuery_distanceUnit){
        keyValuePair_free(keyPairQuery_distanceUnit);
        keyPairQuery_distanceUnit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Tracking
//
// Retrieve tracking data to be able to show where a user has been.
//
list_t*
TrackingAPI_getTrackingLegs(apiClient_t *apiClient, double version, char *deviceId, long accountId, long ownerId, char *trackingDeviceId, long startDate, long endDate, char *tags, int *getLastPoint)
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
    char *localVarPath = strdup("/api/{version}/tracking/search");



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
    char *keyQuery_trackingDeviceId = NULL;
    char * valueQuery_trackingDeviceId = NULL;
    keyValuePair_t *keyPairQuery_trackingDeviceId = 0;
    if (trackingDeviceId)
    {
        keyQuery_trackingDeviceId = strdup("trackingDeviceId");
        valueQuery_trackingDeviceId = strdup((trackingDeviceId));
        keyPairQuery_trackingDeviceId = keyValuePair_create(keyQuery_trackingDeviceId, valueQuery_trackingDeviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_trackingDeviceId);
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
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
    }

    // query parameters
    char *keyQuery_getLastPoint = NULL;
    char * valueQuery_getLastPoint = NULL;
    keyValuePair_t *keyPairQuery_getLastPoint = 0;
    if (getLastPoint)
    {
        keyQuery_getLastPoint = strdup("getLastPoint");
        valueQuery_getLastPoint = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_getLastPoint, MAX_NUMBER_LENGTH, "%d", *getLastPoint);
        keyPairQuery_getLastPoint = keyValuePair_create(keyQuery_getLastPoint, valueQuery_getLastPoint);
        list_addElement(localVarQueryParameters,keyPairQuery_getLastPoint);
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
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(TrackingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, TrackingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( TrackingAPIlocalVarJSON);
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
    if(keyQuery_ownerId){
        free(keyQuery_ownerId);
        keyQuery_ownerId = NULL;
    }
    if(keyPairQuery_ownerId){
        keyValuePair_free(keyPairQuery_ownerId);
        keyPairQuery_ownerId = NULL;
    }
    if(keyQuery_trackingDeviceId){
        free(keyQuery_trackingDeviceId);
        keyQuery_trackingDeviceId = NULL;
    }
    if(valueQuery_trackingDeviceId){
        free(valueQuery_trackingDeviceId);
        valueQuery_trackingDeviceId = NULL;
    }
    if(keyPairQuery_trackingDeviceId){
        keyValuePair_free(keyPairQuery_trackingDeviceId);
        keyPairQuery_trackingDeviceId = NULL;
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
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    if(keyQuery_getLastPoint){
        free(keyQuery_getLastPoint);
        keyQuery_getLastPoint = NULL;
    }
    if(valueQuery_getLastPoint){
        free(valueQuery_getLastPoint);
        valueQuery_getLastPoint = NULL;
    }
    if(keyPairQuery_getLastPoint){
        keyValuePair_free(keyPairQuery_getLastPoint);
        keyPairQuery_getLastPoint = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Tracking Leg
//
// Send tracking points to be able to generate pathing data
//
sirqul_response_t*
TrackingAPI_saveTrackingLeg(apiClient_t *apiClient, double version, double startLat, double startLng, long startDate, double endLat, double endLng, long endDate, char *deviceId, long accountId, double distance, long duration, char *steps, char *tags)
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
    char *localVarPath = strdup("/api/{version}/tracking/leg/create");



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
    char *keyQuery_distance = NULL;
    char * valueQuery_distance = NULL;
    keyValuePair_t *keyPairQuery_distance = 0;
    {
        keyQuery_distance = strdup("distance");
        int s = snprintf(NULL, 0, "%.16e", distance);
        if (s >= 0)
        {
            valueQuery_distance = calloc(1,s+1);
            snprintf(valueQuery_distance, s+1, "%.16e", distance);
        }
        keyPairQuery_distance = keyValuePair_create(keyQuery_distance, valueQuery_distance);
        list_addElement(localVarQueryParameters,keyPairQuery_distance);
    }

    // query parameters
    char *keyQuery_duration = NULL;
    char * valueQuery_duration ;
    keyValuePair_t *keyPairQuery_duration = 0;
    {
        keyQuery_duration = strdup("duration");
        valueQuery_duration = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_duration, MAX_NUMBER_LENGTH_LONG, "%d", duration);
        keyPairQuery_duration = keyValuePair_create(keyQuery_duration, valueQuery_duration);
        list_addElement(localVarQueryParameters,keyPairQuery_duration);
    }

    // query parameters
    char *keyQuery_startLat = NULL;
    char * valueQuery_startLat = NULL;
    keyValuePair_t *keyPairQuery_startLat = 0;
    {
        keyQuery_startLat = strdup("startLat");
        int s = snprintf(NULL, 0, "%.16e", startLat);
        if (s >= 0)
        {
            valueQuery_startLat = calloc(1,s+1);
            snprintf(valueQuery_startLat, s+1, "%.16e", startLat);
        }
        keyPairQuery_startLat = keyValuePair_create(keyQuery_startLat, valueQuery_startLat);
        list_addElement(localVarQueryParameters,keyPairQuery_startLat);
    }

    // query parameters
    char *keyQuery_startLng = NULL;
    char * valueQuery_startLng = NULL;
    keyValuePair_t *keyPairQuery_startLng = 0;
    {
        keyQuery_startLng = strdup("startLng");
        int s = snprintf(NULL, 0, "%.16e", startLng);
        if (s >= 0)
        {
            valueQuery_startLng = calloc(1,s+1);
            snprintf(valueQuery_startLng, s+1, "%.16e", startLng);
        }
        keyPairQuery_startLng = keyValuePair_create(keyQuery_startLng, valueQuery_startLng);
        list_addElement(localVarQueryParameters,keyPairQuery_startLng);
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
    char *keyQuery_endLat = NULL;
    char * valueQuery_endLat = NULL;
    keyValuePair_t *keyPairQuery_endLat = 0;
    {
        keyQuery_endLat = strdup("endLat");
        int s = snprintf(NULL, 0, "%.16e", endLat);
        if (s >= 0)
        {
            valueQuery_endLat = calloc(1,s+1);
            snprintf(valueQuery_endLat, s+1, "%.16e", endLat);
        }
        keyPairQuery_endLat = keyValuePair_create(keyQuery_endLat, valueQuery_endLat);
        list_addElement(localVarQueryParameters,keyPairQuery_endLat);
    }

    // query parameters
    char *keyQuery_endLng = NULL;
    char * valueQuery_endLng = NULL;
    keyValuePair_t *keyPairQuery_endLng = 0;
    {
        keyQuery_endLng = strdup("endLng");
        int s = snprintf(NULL, 0, "%.16e", endLng);
        if (s >= 0)
        {
            valueQuery_endLng = calloc(1,s+1);
            snprintf(valueQuery_endLng, s+1, "%.16e", endLng);
        }
        keyPairQuery_endLng = keyValuePair_create(keyQuery_endLng, valueQuery_endLng);
        list_addElement(localVarQueryParameters,keyPairQuery_endLng);
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
    char *keyQuery_steps = NULL;
    char * valueQuery_steps = NULL;
    keyValuePair_t *keyPairQuery_steps = 0;
    if (steps)
    {
        keyQuery_steps = strdup("steps");
        valueQuery_steps = strdup((steps));
        keyPairQuery_steps = keyValuePair_create(keyQuery_steps, valueQuery_steps);
        list_addElement(localVarQueryParameters,keyPairQuery_steps);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
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
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TrackingAPIlocalVarJSON);
        cJSON_Delete(TrackingAPIlocalVarJSON);
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
    if(keyQuery_distance){
        free(keyQuery_distance);
        keyQuery_distance = NULL;
    }
    if(keyPairQuery_distance){
        keyValuePair_free(keyPairQuery_distance);
        keyPairQuery_distance = NULL;
    }
    if(keyQuery_duration){
        free(keyQuery_duration);
        keyQuery_duration = NULL;
    }
    if(keyPairQuery_duration){
        keyValuePair_free(keyPairQuery_duration);
        keyPairQuery_duration = NULL;
    }
    if(keyQuery_startLat){
        free(keyQuery_startLat);
        keyQuery_startLat = NULL;
    }
    if(keyPairQuery_startLat){
        keyValuePair_free(keyPairQuery_startLat);
        keyPairQuery_startLat = NULL;
    }
    if(keyQuery_startLng){
        free(keyQuery_startLng);
        keyQuery_startLng = NULL;
    }
    if(keyPairQuery_startLng){
        keyValuePair_free(keyPairQuery_startLng);
        keyPairQuery_startLng = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endLat){
        free(keyQuery_endLat);
        keyQuery_endLat = NULL;
    }
    if(keyPairQuery_endLat){
        keyValuePair_free(keyPairQuery_endLat);
        keyPairQuery_endLat = NULL;
    }
    if(keyQuery_endLng){
        free(keyQuery_endLng);
        keyQuery_endLng = NULL;
    }
    if(keyPairQuery_endLng){
        keyValuePair_free(keyPairQuery_endLng);
        keyPairQuery_endLng = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_steps){
        free(keyQuery_steps);
        keyQuery_steps = NULL;
    }
    if(valueQuery_steps){
        free(valueQuery_steps);
        valueQuery_steps = NULL;
    }
    if(keyPairQuery_steps){
        keyValuePair_free(keyPairQuery_steps);
        keyPairQuery_steps = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Tracking Step
//
// Send tracking points to be able to generate pathing data
//
sirqul_response_t*
TrackingAPI_saveTrackingStep(apiClient_t *apiClient, double version, long legId, double startLat, double startLng, long startDate, double endLat, double endLng, long endDate, char *deviceId, long accountId, double distance, long duration)
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
    char *localVarPath = strdup("/api/{version}/tracking/step/create");



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
    char *keyQuery_legId = NULL;
    char * valueQuery_legId ;
    keyValuePair_t *keyPairQuery_legId = 0;
    {
        keyQuery_legId = strdup("legId");
        valueQuery_legId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_legId, MAX_NUMBER_LENGTH_LONG, "%d", legId);
        keyPairQuery_legId = keyValuePair_create(keyQuery_legId, valueQuery_legId);
        list_addElement(localVarQueryParameters,keyPairQuery_legId);
    }

    // query parameters
    char *keyQuery_distance = NULL;
    char * valueQuery_distance = NULL;
    keyValuePair_t *keyPairQuery_distance = 0;
    {
        keyQuery_distance = strdup("distance");
        int s = snprintf(NULL, 0, "%.16e", distance);
        if (s >= 0)
        {
            valueQuery_distance = calloc(1,s+1);
            snprintf(valueQuery_distance, s+1, "%.16e", distance);
        }
        keyPairQuery_distance = keyValuePair_create(keyQuery_distance, valueQuery_distance);
        list_addElement(localVarQueryParameters,keyPairQuery_distance);
    }

    // query parameters
    char *keyQuery_duration = NULL;
    char * valueQuery_duration ;
    keyValuePair_t *keyPairQuery_duration = 0;
    {
        keyQuery_duration = strdup("duration");
        valueQuery_duration = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_duration, MAX_NUMBER_LENGTH_LONG, "%d", duration);
        keyPairQuery_duration = keyValuePair_create(keyQuery_duration, valueQuery_duration);
        list_addElement(localVarQueryParameters,keyPairQuery_duration);
    }

    // query parameters
    char *keyQuery_startLat = NULL;
    char * valueQuery_startLat = NULL;
    keyValuePair_t *keyPairQuery_startLat = 0;
    {
        keyQuery_startLat = strdup("startLat");
        int s = snprintf(NULL, 0, "%.16e", startLat);
        if (s >= 0)
        {
            valueQuery_startLat = calloc(1,s+1);
            snprintf(valueQuery_startLat, s+1, "%.16e", startLat);
        }
        keyPairQuery_startLat = keyValuePair_create(keyQuery_startLat, valueQuery_startLat);
        list_addElement(localVarQueryParameters,keyPairQuery_startLat);
    }

    // query parameters
    char *keyQuery_startLng = NULL;
    char * valueQuery_startLng = NULL;
    keyValuePair_t *keyPairQuery_startLng = 0;
    {
        keyQuery_startLng = strdup("startLng");
        int s = snprintf(NULL, 0, "%.16e", startLng);
        if (s >= 0)
        {
            valueQuery_startLng = calloc(1,s+1);
            snprintf(valueQuery_startLng, s+1, "%.16e", startLng);
        }
        keyPairQuery_startLng = keyValuePair_create(keyQuery_startLng, valueQuery_startLng);
        list_addElement(localVarQueryParameters,keyPairQuery_startLng);
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
    char *keyQuery_endLat = NULL;
    char * valueQuery_endLat = NULL;
    keyValuePair_t *keyPairQuery_endLat = 0;
    {
        keyQuery_endLat = strdup("endLat");
        int s = snprintf(NULL, 0, "%.16e", endLat);
        if (s >= 0)
        {
            valueQuery_endLat = calloc(1,s+1);
            snprintf(valueQuery_endLat, s+1, "%.16e", endLat);
        }
        keyPairQuery_endLat = keyValuePair_create(keyQuery_endLat, valueQuery_endLat);
        list_addElement(localVarQueryParameters,keyPairQuery_endLat);
    }

    // query parameters
    char *keyQuery_endLng = NULL;
    char * valueQuery_endLng = NULL;
    keyValuePair_t *keyPairQuery_endLng = 0;
    {
        keyQuery_endLng = strdup("endLng");
        int s = snprintf(NULL, 0, "%.16e", endLng);
        if (s >= 0)
        {
            valueQuery_endLng = calloc(1,s+1);
            snprintf(valueQuery_endLng, s+1, "%.16e", endLng);
        }
        keyPairQuery_endLng = keyValuePair_create(keyQuery_endLng, valueQuery_endLng);
        list_addElement(localVarQueryParameters,keyPairQuery_endLng);
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
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TrackingAPIlocalVarJSON);
        cJSON_Delete(TrackingAPIlocalVarJSON);
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
    if(keyQuery_legId){
        free(keyQuery_legId);
        keyQuery_legId = NULL;
    }
    if(keyPairQuery_legId){
        keyValuePair_free(keyPairQuery_legId);
        keyPairQuery_legId = NULL;
    }
    if(keyQuery_distance){
        free(keyQuery_distance);
        keyQuery_distance = NULL;
    }
    if(keyPairQuery_distance){
        keyValuePair_free(keyPairQuery_distance);
        keyPairQuery_distance = NULL;
    }
    if(keyQuery_duration){
        free(keyQuery_duration);
        keyQuery_duration = NULL;
    }
    if(keyPairQuery_duration){
        keyValuePair_free(keyPairQuery_duration);
        keyPairQuery_duration = NULL;
    }
    if(keyQuery_startLat){
        free(keyQuery_startLat);
        keyQuery_startLat = NULL;
    }
    if(keyPairQuery_startLat){
        keyValuePair_free(keyPairQuery_startLat);
        keyPairQuery_startLat = NULL;
    }
    if(keyQuery_startLng){
        free(keyQuery_startLng);
        keyQuery_startLng = NULL;
    }
    if(keyPairQuery_startLng){
        keyValuePair_free(keyPairQuery_startLng);
        keyPairQuery_startLng = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endLat){
        free(keyQuery_endLat);
        keyQuery_endLat = NULL;
    }
    if(keyPairQuery_endLat){
        keyValuePair_free(keyPairQuery_endLat);
        keyPairQuery_endLat = NULL;
    }
    if(keyQuery_endLng){
        free(keyQuery_endLng);
        keyQuery_endLng = NULL;
    }
    if(keyPairQuery_endLng){
        keyValuePair_free(keyPairQuery_endLng);
        keyPairQuery_endLng = NULL;
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

// List Tracking
//
// Search for all accounts that have tracking legs data by the given constraints.
//
list_t*
TrackingAPI_searchAccountsWithTrackingLegs(apiClient_t *apiClient, double version, long accountId, char *keyword, long startDate, long endDate, char *tags, char *audienceIds, double latitude, double longitude, double range, char *sortField, int *descending, int *start, int *limit, int *activeOnly)
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
    char *localVarPath = strdup("/api/{version}/tracking/list");



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
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
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
    char *keyQuery_range = NULL;
    char * valueQuery_range = NULL;
    keyValuePair_t *keyPairQuery_range = 0;
    {
        keyQuery_range = strdup("range");
        int s = snprintf(NULL, 0, "%.16e", range);
        if (s >= 0)
        {
            valueQuery_range = calloc(1,s+1);
            snprintf(valueQuery_range, s+1, "%.16e", range);
        }
        keyPairQuery_range = keyValuePair_create(keyQuery_range, valueQuery_range);
        list_addElement(localVarQueryParameters,keyPairQuery_range);
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
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(TrackingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, TrackingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( TrackingAPIlocalVarJSON);
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
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
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
    if(keyQuery_range){
        free(keyQuery_range);
        keyQuery_range = NULL;
    }
    if(keyPairQuery_range){
        keyValuePair_free(keyPairQuery_range);
        keyPairQuery_range = NULL;
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

// Search Tracking (Billable)
//
// Retrieve tracking data for billable/account scoped queries.
//
list_t*
TrackingAPI_searchTrackingLegs(apiClient_t *apiClient, double version, long accountId, char *appKey, char *trackingDeviceId, long startDate, long endDate, char *tags, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/tracking/searchByBillable");



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
    char *keyQuery_trackingDeviceId = NULL;
    char * valueQuery_trackingDeviceId = NULL;
    keyValuePair_t *keyPairQuery_trackingDeviceId = 0;
    if (trackingDeviceId)
    {
        keyQuery_trackingDeviceId = strdup("trackingDeviceId");
        valueQuery_trackingDeviceId = strdup((trackingDeviceId));
        keyPairQuery_trackingDeviceId = keyValuePair_create(keyQuery_trackingDeviceId, valueQuery_trackingDeviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_trackingDeviceId);
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
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
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
        cJSON *TrackingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(TrackingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, TrackingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( TrackingAPIlocalVarJSON);
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
    if(keyQuery_trackingDeviceId){
        free(keyQuery_trackingDeviceId);
        keyQuery_trackingDeviceId = NULL;
    }
    if(valueQuery_trackingDeviceId){
        free(valueQuery_trackingDeviceId);
        valueQuery_trackingDeviceId = NULL;
    }
    if(keyPairQuery_trackingDeviceId){
        keyValuePair_free(keyPairQuery_trackingDeviceId);
        keyPairQuery_trackingDeviceId = NULL;
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
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
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

