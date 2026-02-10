#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "VehicleTypeAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Vehicle Type
//
// Create a new vehicle type
//
vehicle_type_t*
VehicleTypeAPI_createVehicleType(apiClient_t *apiClient, double version, char *vehicleType, vehicle_type_t *body)
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
    char *localVarPath = strdup("/api/{version}/vehicle/type");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_vehicleType = NULL;
    char * valueQuery_vehicleType = NULL;
    keyValuePair_t *keyPairQuery_vehicleType = 0;
    if (vehicleType)
    {
        keyQuery_vehicleType = strdup("vehicleType");
        valueQuery_vehicleType = strdup((vehicleType));
        keyPairQuery_vehicleType = keyValuePair_create(keyQuery_vehicleType, valueQuery_vehicleType);
        list_addElement(localVarQueryParameters,keyPairQuery_vehicleType);
    }

    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = vehicle_type_convertToJSON(body);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_body);
        localVarBodyLength = strlen(localVarBodyParameters);
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
    vehicle_type_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *VehicleTypeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = vehicle_type_parseFromJSON(VehicleTypeAPIlocalVarJSON);
        cJSON_Delete(VehicleTypeAPIlocalVarJSON);
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
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    if(keyQuery_vehicleType){
        free(keyQuery_vehicleType);
        keyQuery_vehicleType = NULL;
    }
    if(valueQuery_vehicleType){
        free(valueQuery_vehicleType);
        valueQuery_vehicleType = NULL;
    }
    if(keyPairQuery_vehicleType){
        keyValuePair_free(keyPairQuery_vehicleType);
        keyPairQuery_vehicleType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Vehicle Type
//
// Delete a vehicle type
//
void
VehicleTypeAPI_deleteVehicleType(apiClient_t *apiClient, double version, long vehicleTypeId)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/vehicle/type/{vehicleTypeId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(vehicleTypeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_vehicleTypeId =  + sizeof(vehicleTypeId)+3 + sizeof("{ vehicleTypeId }") - 1;
    if(vehicleTypeId == 0){
        goto end;
    }
    char* localVarToReplace_vehicleTypeId = malloc(sizeOfPathParams_vehicleTypeId);
    snprintf(localVarToReplace_vehicleTypeId, sizeOfPathParams_vehicleTypeId, "{%s}", "vehicleTypeId");

    char localVarBuff_vehicleTypeId[256];
    snprintf(localVarBuff_vehicleTypeId, sizeof localVarBuff_vehicleTypeId, "%ld", vehicleTypeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_vehicleTypeId, localVarBuff_vehicleTypeId);



    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "DELETE");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 0) {
    //    printf("%s\n","successful operation");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    
    
    free(localVarPath);
    free(localVarToReplace_version);
    free(localVarToReplace_vehicleTypeId);

}

// Get Vehicle Type
//
// Get a vehicle type
//
vehicle_type_t*
VehicleTypeAPI_getVehicleType(apiClient_t *apiClient, double version, long vehicleTypeId)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/vehicle/type/{vehicleTypeId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(vehicleTypeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_vehicleTypeId =  + sizeof(vehicleTypeId)+3 + sizeof("{ vehicleTypeId }") - 1;
    if(vehicleTypeId == 0){
        goto end;
    }
    char* localVarToReplace_vehicleTypeId = malloc(sizeOfPathParams_vehicleTypeId);
    snprintf(localVarToReplace_vehicleTypeId, sizeOfPathParams_vehicleTypeId, "{%s}", "vehicleTypeId");

    char localVarBuff_vehicleTypeId[256];
    snprintf(localVarBuff_vehicleTypeId, sizeof localVarBuff_vehicleTypeId, "%ld", vehicleTypeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_vehicleTypeId, localVarBuff_vehicleTypeId);



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
    vehicle_type_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *VehicleTypeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = vehicle_type_parseFromJSON(VehicleTypeAPIlocalVarJSON);
        cJSON_Delete(VehicleTypeAPIlocalVarJSON);
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
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    free(localVarToReplace_vehicleTypeId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Vehicle Type
//
// Search for types of vehicles
//
list_t*
VehicleTypeAPI_searchVehicleTypes(apiClient_t *apiClient, double version, char *sortField, int *descending, int *start, int *limit, int *activeOnly, long retailerId, long hubId)
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
    char *localVarPath = strdup("/api/{version}/vehicle/type");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
    }

    // query parameters
    char *keyQuery_hubId = NULL;
    char * valueQuery_hubId ;
    keyValuePair_t *keyPairQuery_hubId = 0;
    {
        keyQuery_hubId = strdup("hubId");
        valueQuery_hubId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_hubId, MAX_NUMBER_LENGTH_LONG, "%d", hubId);
        keyPairQuery_hubId = keyValuePair_create(keyQuery_hubId, valueQuery_hubId);
        list_addElement(localVarQueryParameters,keyPairQuery_hubId);
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
        cJSON *VehicleTypeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(VehicleTypeAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, VehicleTypeAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( VehicleTypeAPIlocalVarJSON);
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
    }
    if(keyQuery_hubId){
        free(keyQuery_hubId);
        keyQuery_hubId = NULL;
    }
    if(keyPairQuery_hubId){
        keyValuePair_free(keyPairQuery_hubId);
        keyPairQuery_hubId = NULL;
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

// Update Vehicle Type
//
// Update a vehicle type
//
vehicle_type_t*
VehicleTypeAPI_updateVehicleType(apiClient_t *apiClient, double version, long vehicleTypeId, char *vehicleType, vehicle_type_t *body)
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
    char *localVarPath = strdup("/api/{version}/vehicle/type/{vehicleTypeId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(vehicleTypeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_vehicleTypeId =  + sizeof(vehicleTypeId)+3 + sizeof("{ vehicleTypeId }") - 1;
    if(vehicleTypeId == 0){
        goto end;
    }
    char* localVarToReplace_vehicleTypeId = malloc(sizeOfPathParams_vehicleTypeId);
    snprintf(localVarToReplace_vehicleTypeId, sizeOfPathParams_vehicleTypeId, "{%s}", "vehicleTypeId");

    char localVarBuff_vehicleTypeId[256];
    snprintf(localVarBuff_vehicleTypeId, sizeof localVarBuff_vehicleTypeId, "%ld", vehicleTypeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_vehicleTypeId, localVarBuff_vehicleTypeId);




    // query parameters
    char *keyQuery_vehicleType = NULL;
    char * valueQuery_vehicleType = NULL;
    keyValuePair_t *keyPairQuery_vehicleType = 0;
    if (vehicleType)
    {
        keyQuery_vehicleType = strdup("vehicleType");
        valueQuery_vehicleType = strdup((vehicleType));
        keyPairQuery_vehicleType = keyValuePair_create(keyQuery_vehicleType, valueQuery_vehicleType);
        list_addElement(localVarQueryParameters,keyPairQuery_vehicleType);
    }

    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = vehicle_type_convertToJSON(body);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_body);
        localVarBodyLength = strlen(localVarBodyParameters);
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
                    "PUT");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    vehicle_type_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *VehicleTypeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = vehicle_type_parseFromJSON(VehicleTypeAPIlocalVarJSON);
        cJSON_Delete(VehicleTypeAPIlocalVarJSON);
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
    free(localVarToReplace_vehicleTypeId);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    if(keyQuery_vehicleType){
        free(keyQuery_vehicleType);
        keyQuery_vehicleType = NULL;
    }
    if(valueQuery_vehicleType){
        free(valueQuery_vehicleType);
        valueQuery_vehicleType = NULL;
    }
    if(keyPairQuery_vehicleType){
        keyValuePair_free(keyPairQuery_vehicleType);
        keyPairQuery_vehicleType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

