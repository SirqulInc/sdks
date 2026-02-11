#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "PathingAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum UNITS for PathingAPI_computePath

static char* computePath_UNITS_ToString(sirqul_iot_platform_computePath_units_e UNITS){
    char *UNITSArray[] =  { "NULL", "METRIC", "IMPERIAL" };
    return UNITSArray[UNITS];
}

static sirqul_iot_platform_computePath_units_e computePath_UNITS_FromString(char* UNITS){
    int stringToReturn = 0;
    char *UNITSArray[] =  { "NULL", "METRIC", "IMPERIAL" };
    size_t sizeofArray = sizeof(UNITSArray) / sizeof(UNITSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(UNITS, UNITSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function computePath_UNITS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *computePath_UNITS_convertToJSON(sirqul_iot_platform_computePath_units_e UNITS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "units", computePath_UNITS_ToString(UNITS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function computePath_UNITS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_computePath_units_e computePath_UNITS_parseFromJSON(cJSON* UNITSJSON) {
    sirqul_iot_platform_computePath_units_e UNITSVariable = 0;
    cJSON *UNITSVar = cJSON_GetObjectItemCaseSensitive(UNITSJSON, "units");
    if(!cJSON_IsString(UNITSVar) || (UNITSVar->valuestring == NULL))
    {
        goto end;
    }
    UNITSVariable = computePath_UNITS_FromString(UNITSVar->valuestring);
    return UNITSVariable;
end:
    return 0;
}
*/


// Calculate Path
//
// Calculates the shortest path from point to point on a grid
//
pathing_response_t*
PathingAPI_computePath(apiClient_t *apiClient, char *data, sirqul_iot_platform_computePath_units_e units, int *reducePath, int *directions)
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
    char *localVarPath = strdup("/pathing/compute");





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
    char *keyQuery_units = NULL;
    sirqul_iot_platform_computePath_units_e valueQuery_units ;
    keyValuePair_t *keyPairQuery_units = 0;
    if (units)
    {
        keyQuery_units = strdup("units");
        valueQuery_units = (units);
        keyPairQuery_units = keyValuePair_create(keyQuery_units, strdup(computePath_UNITS_ToString(
        valueQuery_units)));
        list_addElement(localVarQueryParameters,keyPairQuery_units);
    }

    // query parameters
    char *keyQuery_reducePath = NULL;
    char * valueQuery_reducePath = NULL;
    keyValuePair_t *keyPairQuery_reducePath = 0;
    if (reducePath)
    {
        keyQuery_reducePath = strdup("reducePath");
        valueQuery_reducePath = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_reducePath, MAX_NUMBER_LENGTH, "%d", *reducePath);
        keyPairQuery_reducePath = keyValuePair_create(keyQuery_reducePath, valueQuery_reducePath);
        list_addElement(localVarQueryParameters,keyPairQuery_reducePath);
    }

    // query parameters
    char *keyQuery_directions = NULL;
    char * valueQuery_directions = NULL;
    keyValuePair_t *keyPairQuery_directions = 0;
    if (directions)
    {
        keyQuery_directions = strdup("directions");
        valueQuery_directions = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_directions, MAX_NUMBER_LENGTH, "%d", *directions);
        keyPairQuery_directions = keyValuePair_create(keyQuery_directions, valueQuery_directions);
        list_addElement(localVarQueryParameters,keyPairQuery_directions);
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
    pathing_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PathingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = pathing_response_parseFromJSON(PathingAPIlocalVarJSON);
        cJSON_Delete(PathingAPIlocalVarJSON);
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
    if(keyQuery_units){
        free(keyQuery_units);
        keyQuery_units = NULL;
    }
    if(keyPairQuery_units){
        keyValuePair_free(keyPairQuery_units);
        keyPairQuery_units = NULL;
    }
    if(keyQuery_reducePath){
        free(keyQuery_reducePath);
        keyQuery_reducePath = NULL;
    }
    if(valueQuery_reducePath){
        free(valueQuery_reducePath);
        valueQuery_reducePath = NULL;
    }
    if(keyPairQuery_reducePath){
        keyValuePair_free(keyPairQuery_reducePath);
        keyPairQuery_reducePath = NULL;
    }
    if(keyQuery_directions){
        free(keyQuery_directions);
        keyQuery_directions = NULL;
    }
    if(valueQuery_directions){
        free(valueQuery_directions);
        valueQuery_directions = NULL;
    }
    if(keyPairQuery_directions){
        keyValuePair_free(keyPairQuery_directions);
        keyPairQuery_directions = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

