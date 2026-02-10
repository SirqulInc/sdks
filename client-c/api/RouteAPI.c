#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "RouteAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Approve Route
//
// Approve a route
//
route_t*
RouteAPI_approveRoute(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/approve");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
    route_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = route_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Copy Route
//
// Make an copy of the given route with optional overriding properties
//
route_t*
RouteAPI_copyRoute(apiClient_t *apiClient, double version, long routeId, route_t *body)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/copy");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);




    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = route_convertToJSON(body);
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
    route_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = route_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Route
//
// Create new route
//
route_t*
RouteAPI_createRoute(apiClient_t *apiClient, double version, route_t *body)
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
    char *localVarPath = strdup("/api/{version}/route");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = route_convertToJSON(body);
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
    route_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = route_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Route Directions
//
// Regenerate the directions of a route
//
list_t*
RouteAPI_createRouteDirections(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/directions");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    free(localVarToReplace_routeId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Route Polyline
//
// Update the polyline of the requested route
//
route_t*
RouteAPI_createRoutePolyline(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/polyline");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
    route_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = route_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Route
//
// Delete an existing route
//
void
RouteAPI_deleteRoute(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
    free(localVarToReplace_routeId);

}

// Disapprove Route
//
// Disapprove a route
//
route_t*
RouteAPI_disapproveRoute(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/disapprove");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
    route_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = route_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Route
//
// Get an existing route
//
route_t*
RouteAPI_getRoute(apiClient_t *apiClient, double version, long routeId, int *showInheritedProperties)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);




    // query parameters
    char *keyQuery_showInheritedProperties = NULL;
    char * valueQuery_showInheritedProperties = NULL;
    keyValuePair_t *keyPairQuery_showInheritedProperties = 0;
    if (showInheritedProperties)
    {
        keyQuery_showInheritedProperties = strdup("showInheritedProperties");
        valueQuery_showInheritedProperties = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showInheritedProperties, MAX_NUMBER_LENGTH, "%d", *showInheritedProperties);
        keyPairQuery_showInheritedProperties = keyValuePair_create(keyQuery_showInheritedProperties, valueQuery_showInheritedProperties);
        list_addElement(localVarQueryParameters,keyPairQuery_showInheritedProperties);
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
    route_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = route_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    if(keyQuery_showInheritedProperties){
        free(keyQuery_showInheritedProperties);
        keyQuery_showInheritedProperties = NULL;
    }
    if(valueQuery_showInheritedProperties){
        free(valueQuery_showInheritedProperties);
        valueQuery_showInheritedProperties = NULL;
    }
    if(keyPairQuery_showInheritedProperties){
        keyValuePair_free(keyPairQuery_showInheritedProperties);
        keyPairQuery_showInheritedProperties = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Route Directions
//
// Get the directions of a route
//
list_t*
RouteAPI_getRouteDirections(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/directions");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    free(localVarToReplace_routeId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Route Shipments
//
// Get the shipments on the requested route
//
list_t*
RouteAPI_getRouteShipments(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/shipments");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    free(localVarToReplace_routeId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Route Stop
//
// Get the specific stop on a route
//
stop_t*
RouteAPI_getRouteStop(apiClient_t *apiClient, double version, long routeId, long stopId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/stop/{stopId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);


    // Path Params
    long sizeOfPathParams_stopId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ stopId }") - 1;
    if(stopId == 0){
        goto end;
    }
    char* localVarToReplace_stopId = malloc(sizeOfPathParams_stopId);
    snprintf(localVarToReplace_stopId, sizeOfPathParams_stopId, "{%s}", "stopId");

    char localVarBuff_stopId[256];
    snprintf(localVarBuff_stopId, sizeof localVarBuff_stopId, "%ld", stopId);

    localVarPath = strReplace(localVarPath, localVarToReplace_stopId, localVarBuff_stopId);



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
    stop_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = stop_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    free(localVarToReplace_stopId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Route Stops
//
// The stops of the route requested
//
list_t*
RouteAPI_getRouteStops(apiClient_t *apiClient, double version, long routeId, int *confirmedOnly)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/stops");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);




    // query parameters
    char *keyQuery_confirmedOnly = NULL;
    char * valueQuery_confirmedOnly = NULL;
    keyValuePair_t *keyPairQuery_confirmedOnly = 0;
    if (confirmedOnly)
    {
        keyQuery_confirmedOnly = strdup("confirmedOnly");
        valueQuery_confirmedOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_confirmedOnly, MAX_NUMBER_LENGTH, "%d", *confirmedOnly);
        keyPairQuery_confirmedOnly = keyValuePair_create(keyQuery_confirmedOnly, valueQuery_confirmedOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_confirmedOnly);
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
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    if(keyQuery_confirmedOnly){
        free(keyQuery_confirmedOnly);
        keyQuery_confirmedOnly = NULL;
    }
    if(valueQuery_confirmedOnly){
        free(valueQuery_confirmedOnly);
        valueQuery_confirmedOnly = NULL;
    }
    if(keyPairQuery_confirmedOnly){
        keyValuePair_free(keyPairQuery_confirmedOnly);
        keyPairQuery_confirmedOnly = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Shipments At Stop
//
// Get the list of shipments on the requested route at a stop
//
list_t*
RouteAPI_getShipmentsAtStop(apiClient_t *apiClient, double version, long routeId, long stopId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/stop/{stopId}/shipments");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);


    // Path Params
    long sizeOfPathParams_stopId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ stopId }") - 1;
    if(stopId == 0){
        goto end;
    }
    char* localVarToReplace_stopId = malloc(sizeOfPathParams_stopId);
    snprintf(localVarToReplace_stopId, sizeOfPathParams_stopId, "{%s}", "stopId");

    char localVarBuff_stopId[256];
    snprintf(localVarBuff_stopId, sizeof localVarBuff_stopId, "%ld", stopId);

    localVarPath = strReplace(localVarPath, localVarToReplace_stopId, localVarBuff_stopId);



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
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    free(localVarToReplace_routeId);
    free(localVarToReplace_stopId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Optimize Route
//
// Optimize a route. The optimization method based on how the server is configured.
//
void
RouteAPI_optimizeRoute(apiClient_t *apiClient, double version, long routeId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/optimize");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);



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
    free(localVarToReplace_routeId);

}

// Delete Stop
//
// Delete a stop on a route
//
void
RouteAPI_removeStop(apiClient_t *apiClient, double version, long routeId, long stopId)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/stop/{stopId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);


    // Path Params
    long sizeOfPathParams_stopId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ stopId }") - 1;
    if(stopId == 0){
        goto end;
    }
    char* localVarToReplace_stopId = malloc(sizeOfPathParams_stopId);
    snprintf(localVarToReplace_stopId, sizeOfPathParams_stopId, "{%s}", "stopId");

    char localVarBuff_stopId[256];
    snprintf(localVarBuff_stopId, sizeof localVarBuff_stopId, "%ld", stopId);

    localVarPath = strReplace(localVarPath, localVarToReplace_stopId, localVarBuff_stopId);



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
    free(localVarToReplace_routeId);
    free(localVarToReplace_stopId);

}

// Reorder Route Stops
//
// Reordering the stops on the route with and update route distance, time, direction, and polyline
//
list_t*
RouteAPI_reorderRouteStopsPatch(apiClient_t *apiClient, double version, long routeId, list_t *body)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/stops/reorder");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);




    // Body Param
    //notstring
    cJSON *localVar_body = NULL;
    cJSON *localVarItemJSON_body = NULL;
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        localVarItemJSON_body = cJSON_CreateObject();
        localVarSingleItemJSON_body = cJSON_AddArrayToObject(localVarItemJSON_body, "body");
        if (localVarSingleItemJSON_body == NULL)
        {
            // nonprimitive container

            goto end;
        }
    }

    listEntry_t *bodyBodyListEntry;
    list_ForEach(bodyBodyListEntry, body)
    {
        localVar_body = stop_convertToJSON(bodyBodyListEntry->data);
        if(localVar_body == NULL)
        {
            goto end;
        }
        cJSON_AddItemToArray(localVarSingleItemJSON_body, localVar_body);
        localVarBodyParameters = cJSON_Print(localVarItemJSON_body);
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
                    "PATCH");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    free(localVarToReplace_routeId);
    if (localVarItemJSON_body) {
        cJSON_Delete(localVarItemJSON_body);
        localVarItemJSON_body = NULL;
    }
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    if (localVar_body) {
        cJSON_Delete(localVar_body);
        localVar_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Reorder Route Stops
//
// Reordering the stops on the route with and update route distance, time, direction, and polyline
//
list_t*
RouteAPI_reorderRouteStopsPost(apiClient_t *apiClient, double version, long routeId, list_t *body)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/stops/reorder");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);




    // Body Param
    //notstring
    cJSON *localVar_body = NULL;
    cJSON *localVarItemJSON_body = NULL;
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        localVarItemJSON_body = cJSON_CreateObject();
        localVarSingleItemJSON_body = cJSON_AddArrayToObject(localVarItemJSON_body, "body");
        if (localVarSingleItemJSON_body == NULL)
        {
            // nonprimitive container

            goto end;
        }
    }

    listEntry_t *bodyBodyListEntry;
    list_ForEach(bodyBodyListEntry, body)
    {
        localVar_body = stop_convertToJSON(bodyBodyListEntry->data);
        if(localVar_body == NULL)
        {
            goto end;
        }
        cJSON_AddItemToArray(localVarSingleItemJSON_body, localVar_body);
        localVarBodyParameters = cJSON_Print(localVarItemJSON_body);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
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
    free(localVarToReplace_routeId);
    if (localVarItemJSON_body) {
        cJSON_Delete(localVarItemJSON_body);
        localVarItemJSON_body = NULL;
    }
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    if (localVar_body) {
        cJSON_Delete(localVar_body);
        localVar_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Routes
//
// Search for routes.
//
list_t*
RouteAPI_searchRoutes(apiClient_t *apiClient, double version, char *sortField, int *descending, int *start, int *limit, int *activeOnly, int *includesEmpty, int *rootOnly, int *showInheritedProperties, long hubId, long programId, long scheduledStart, long scheduledEnd, long updatedStart, long updatedEnd, int *featured, int *seatCount, int *approved, int *started, int *completed, int *valid, long parentId)
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
    char *localVarPath = strdup("/api/{version}/route");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_programId = NULL;
    char * valueQuery_programId ;
    keyValuePair_t *keyPairQuery_programId = 0;
    {
        keyQuery_programId = strdup("programId");
        valueQuery_programId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_programId, MAX_NUMBER_LENGTH_LONG, "%d", programId);
        keyPairQuery_programId = keyValuePair_create(keyQuery_programId, valueQuery_programId);
        list_addElement(localVarQueryParameters,keyPairQuery_programId);
    }

    // query parameters
    char *keyQuery_scheduledStart = NULL;
    char * valueQuery_scheduledStart ;
    keyValuePair_t *keyPairQuery_scheduledStart = 0;
    {
        keyQuery_scheduledStart = strdup("scheduledStart");
        valueQuery_scheduledStart = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledStart, MAX_NUMBER_LENGTH_LONG, "%d", scheduledStart);
        keyPairQuery_scheduledStart = keyValuePair_create(keyQuery_scheduledStart, valueQuery_scheduledStart);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledStart);
    }

    // query parameters
    char *keyQuery_scheduledEnd = NULL;
    char * valueQuery_scheduledEnd ;
    keyValuePair_t *keyPairQuery_scheduledEnd = 0;
    {
        keyQuery_scheduledEnd = strdup("scheduledEnd");
        valueQuery_scheduledEnd = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledEnd, MAX_NUMBER_LENGTH_LONG, "%d", scheduledEnd);
        keyPairQuery_scheduledEnd = keyValuePair_create(keyQuery_scheduledEnd, valueQuery_scheduledEnd);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledEnd);
    }

    // query parameters
    char *keyQuery_updatedStart = NULL;
    char * valueQuery_updatedStart ;
    keyValuePair_t *keyPairQuery_updatedStart = 0;
    {
        keyQuery_updatedStart = strdup("updatedStart");
        valueQuery_updatedStart = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_updatedStart, MAX_NUMBER_LENGTH_LONG, "%d", updatedStart);
        keyPairQuery_updatedStart = keyValuePair_create(keyQuery_updatedStart, valueQuery_updatedStart);
        list_addElement(localVarQueryParameters,keyPairQuery_updatedStart);
    }

    // query parameters
    char *keyQuery_updatedEnd = NULL;
    char * valueQuery_updatedEnd ;
    keyValuePair_t *keyPairQuery_updatedEnd = 0;
    {
        keyQuery_updatedEnd = strdup("updatedEnd");
        valueQuery_updatedEnd = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_updatedEnd, MAX_NUMBER_LENGTH_LONG, "%d", updatedEnd);
        keyPairQuery_updatedEnd = keyValuePair_create(keyQuery_updatedEnd, valueQuery_updatedEnd);
        list_addElement(localVarQueryParameters,keyPairQuery_updatedEnd);
    }

    // query parameters
    char *keyQuery_featured = NULL;
    char * valueQuery_featured = NULL;
    keyValuePair_t *keyPairQuery_featured = 0;
    if (featured)
    {
        keyQuery_featured = strdup("featured");
        valueQuery_featured = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_featured, MAX_NUMBER_LENGTH, "%d", *featured);
        keyPairQuery_featured = keyValuePair_create(keyQuery_featured, valueQuery_featured);
        list_addElement(localVarQueryParameters,keyPairQuery_featured);
    }

    // query parameters
    char *keyQuery_seatCount = NULL;
    char * valueQuery_seatCount = NULL;
    keyValuePair_t *keyPairQuery_seatCount = 0;
    if (seatCount)
    {
        keyQuery_seatCount = strdup("seatCount");
        valueQuery_seatCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_seatCount, MAX_NUMBER_LENGTH, "%d", *seatCount);
        keyPairQuery_seatCount = keyValuePair_create(keyQuery_seatCount, valueQuery_seatCount);
        list_addElement(localVarQueryParameters,keyPairQuery_seatCount);
    }

    // query parameters
    char *keyQuery_approved = NULL;
    char * valueQuery_approved = NULL;
    keyValuePair_t *keyPairQuery_approved = 0;
    if (approved)
    {
        keyQuery_approved = strdup("approved");
        valueQuery_approved = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_approved, MAX_NUMBER_LENGTH, "%d", *approved);
        keyPairQuery_approved = keyValuePair_create(keyQuery_approved, valueQuery_approved);
        list_addElement(localVarQueryParameters,keyPairQuery_approved);
    }

    // query parameters
    char *keyQuery_started = NULL;
    char * valueQuery_started = NULL;
    keyValuePair_t *keyPairQuery_started = 0;
    if (started)
    {
        keyQuery_started = strdup("started");
        valueQuery_started = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_started, MAX_NUMBER_LENGTH, "%d", *started);
        keyPairQuery_started = keyValuePair_create(keyQuery_started, valueQuery_started);
        list_addElement(localVarQueryParameters,keyPairQuery_started);
    }

    // query parameters
    char *keyQuery_completed = NULL;
    char * valueQuery_completed = NULL;
    keyValuePair_t *keyPairQuery_completed = 0;
    if (completed)
    {
        keyQuery_completed = strdup("completed");
        valueQuery_completed = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_completed, MAX_NUMBER_LENGTH, "%d", *completed);
        keyPairQuery_completed = keyValuePair_create(keyQuery_completed, valueQuery_completed);
        list_addElement(localVarQueryParameters,keyPairQuery_completed);
    }

    // query parameters
    char *keyQuery_valid = NULL;
    char * valueQuery_valid = NULL;
    keyValuePair_t *keyPairQuery_valid = 0;
    if (valid)
    {
        keyQuery_valid = strdup("valid");
        valueQuery_valid = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_valid, MAX_NUMBER_LENGTH, "%d", *valid);
        keyPairQuery_valid = keyValuePair_create(keyQuery_valid, valueQuery_valid);
        list_addElement(localVarQueryParameters,keyPairQuery_valid);
    }

    // query parameters
    char *keyQuery_parentId = NULL;
    char * valueQuery_parentId ;
    keyValuePair_t *keyPairQuery_parentId = 0;
    {
        keyQuery_parentId = strdup("parentId");
        valueQuery_parentId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentId, MAX_NUMBER_LENGTH_LONG, "%d", parentId);
        keyPairQuery_parentId = keyValuePair_create(keyQuery_parentId, valueQuery_parentId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentId);
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

    // query parameters
    char *keyQuery_includesEmpty = NULL;
    char * valueQuery_includesEmpty = NULL;
    keyValuePair_t *keyPairQuery_includesEmpty = 0;
    if (includesEmpty)
    {
        keyQuery_includesEmpty = strdup("includesEmpty");
        valueQuery_includesEmpty = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includesEmpty, MAX_NUMBER_LENGTH, "%d", *includesEmpty);
        keyPairQuery_includesEmpty = keyValuePair_create(keyQuery_includesEmpty, valueQuery_includesEmpty);
        list_addElement(localVarQueryParameters,keyPairQuery_includesEmpty);
    }

    // query parameters
    char *keyQuery_rootOnly = NULL;
    char * valueQuery_rootOnly = NULL;
    keyValuePair_t *keyPairQuery_rootOnly = 0;
    if (rootOnly)
    {
        keyQuery_rootOnly = strdup("rootOnly");
        valueQuery_rootOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rootOnly, MAX_NUMBER_LENGTH, "%d", *rootOnly);
        keyPairQuery_rootOnly = keyValuePair_create(keyQuery_rootOnly, valueQuery_rootOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_rootOnly);
    }

    // query parameters
    char *keyQuery_showInheritedProperties = NULL;
    char * valueQuery_showInheritedProperties = NULL;
    keyValuePair_t *keyPairQuery_showInheritedProperties = 0;
    if (showInheritedProperties)
    {
        keyQuery_showInheritedProperties = strdup("showInheritedProperties");
        valueQuery_showInheritedProperties = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showInheritedProperties, MAX_NUMBER_LENGTH, "%d", *showInheritedProperties);
        keyPairQuery_showInheritedProperties = keyValuePair_create(keyQuery_showInheritedProperties, valueQuery_showInheritedProperties);
        list_addElement(localVarQueryParameters,keyPairQuery_showInheritedProperties);
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
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RouteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RouteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RouteAPIlocalVarJSON);
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
    if(keyQuery_hubId){
        free(keyQuery_hubId);
        keyQuery_hubId = NULL;
    }
    if(keyPairQuery_hubId){
        keyValuePair_free(keyPairQuery_hubId);
        keyPairQuery_hubId = NULL;
    }
    if(keyQuery_programId){
        free(keyQuery_programId);
        keyQuery_programId = NULL;
    }
    if(keyPairQuery_programId){
        keyValuePair_free(keyPairQuery_programId);
        keyPairQuery_programId = NULL;
    }
    if(keyQuery_scheduledStart){
        free(keyQuery_scheduledStart);
        keyQuery_scheduledStart = NULL;
    }
    if(keyPairQuery_scheduledStart){
        keyValuePair_free(keyPairQuery_scheduledStart);
        keyPairQuery_scheduledStart = NULL;
    }
    if(keyQuery_scheduledEnd){
        free(keyQuery_scheduledEnd);
        keyQuery_scheduledEnd = NULL;
    }
    if(keyPairQuery_scheduledEnd){
        keyValuePair_free(keyPairQuery_scheduledEnd);
        keyPairQuery_scheduledEnd = NULL;
    }
    if(keyQuery_updatedStart){
        free(keyQuery_updatedStart);
        keyQuery_updatedStart = NULL;
    }
    if(keyPairQuery_updatedStart){
        keyValuePair_free(keyPairQuery_updatedStart);
        keyPairQuery_updatedStart = NULL;
    }
    if(keyQuery_updatedEnd){
        free(keyQuery_updatedEnd);
        keyQuery_updatedEnd = NULL;
    }
    if(keyPairQuery_updatedEnd){
        keyValuePair_free(keyPairQuery_updatedEnd);
        keyPairQuery_updatedEnd = NULL;
    }
    if(keyQuery_featured){
        free(keyQuery_featured);
        keyQuery_featured = NULL;
    }
    if(valueQuery_featured){
        free(valueQuery_featured);
        valueQuery_featured = NULL;
    }
    if(keyPairQuery_featured){
        keyValuePair_free(keyPairQuery_featured);
        keyPairQuery_featured = NULL;
    }
    if(keyQuery_seatCount){
        free(keyQuery_seatCount);
        keyQuery_seatCount = NULL;
    }
    if(valueQuery_seatCount){
        free(valueQuery_seatCount);
        valueQuery_seatCount = NULL;
    }
    if(keyPairQuery_seatCount){
        keyValuePair_free(keyPairQuery_seatCount);
        keyPairQuery_seatCount = NULL;
    }
    if(keyQuery_approved){
        free(keyQuery_approved);
        keyQuery_approved = NULL;
    }
    if(valueQuery_approved){
        free(valueQuery_approved);
        valueQuery_approved = NULL;
    }
    if(keyPairQuery_approved){
        keyValuePair_free(keyPairQuery_approved);
        keyPairQuery_approved = NULL;
    }
    if(keyQuery_started){
        free(keyQuery_started);
        keyQuery_started = NULL;
    }
    if(valueQuery_started){
        free(valueQuery_started);
        valueQuery_started = NULL;
    }
    if(keyPairQuery_started){
        keyValuePair_free(keyPairQuery_started);
        keyPairQuery_started = NULL;
    }
    if(keyQuery_completed){
        free(keyQuery_completed);
        keyQuery_completed = NULL;
    }
    if(valueQuery_completed){
        free(valueQuery_completed);
        valueQuery_completed = NULL;
    }
    if(keyPairQuery_completed){
        keyValuePair_free(keyPairQuery_completed);
        keyPairQuery_completed = NULL;
    }
    if(keyQuery_valid){
        free(keyQuery_valid);
        keyQuery_valid = NULL;
    }
    if(valueQuery_valid){
        free(valueQuery_valid);
        valueQuery_valid = NULL;
    }
    if(keyPairQuery_valid){
        keyValuePair_free(keyPairQuery_valid);
        keyPairQuery_valid = NULL;
    }
    if(keyQuery_parentId){
        free(keyQuery_parentId);
        keyQuery_parentId = NULL;
    }
    if(keyPairQuery_parentId){
        keyValuePair_free(keyPairQuery_parentId);
        keyPairQuery_parentId = NULL;
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
    if(keyQuery_includesEmpty){
        free(keyQuery_includesEmpty);
        keyQuery_includesEmpty = NULL;
    }
    if(valueQuery_includesEmpty){
        free(valueQuery_includesEmpty);
        valueQuery_includesEmpty = NULL;
    }
    if(keyPairQuery_includesEmpty){
        keyValuePair_free(keyPairQuery_includesEmpty);
        keyPairQuery_includesEmpty = NULL;
    }
    if(keyQuery_rootOnly){
        free(keyQuery_rootOnly);
        keyQuery_rootOnly = NULL;
    }
    if(valueQuery_rootOnly){
        free(valueQuery_rootOnly);
        valueQuery_rootOnly = NULL;
    }
    if(keyPairQuery_rootOnly){
        keyValuePair_free(keyPairQuery_rootOnly);
        keyPairQuery_rootOnly = NULL;
    }
    if(keyQuery_showInheritedProperties){
        free(keyQuery_showInheritedProperties);
        keyQuery_showInheritedProperties = NULL;
    }
    if(valueQuery_showInheritedProperties){
        free(valueQuery_showInheritedProperties);
        valueQuery_showInheritedProperties = NULL;
    }
    if(keyPairQuery_showInheritedProperties){
        keyValuePair_free(keyPairQuery_showInheritedProperties);
        keyPairQuery_showInheritedProperties = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Set Driver
//
// Update the driver of the route.
//
void
RouteAPI_setDriver(apiClient_t *apiClient, double version, long id, long driverId)
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
    char *localVarPath = strdup("/api/{version}/route/{id}/driver/{driverId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(id)+3 + sizeof(driverId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_id =  + sizeof(id)+3 + sizeof(driverId)+3 + sizeof("{ id }") - 1;
    if(id == 0){
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    snprintf(localVarToReplace_id, sizeOfPathParams_id, "{%s}", "id");

    char localVarBuff_id[256];
    snprintf(localVarBuff_id, sizeof localVarBuff_id, "%ld", id);

    localVarPath = strReplace(localVarPath, localVarToReplace_id, localVarBuff_id);


    // Path Params
    long sizeOfPathParams_driverId =  + sizeof(id)+3 + sizeof(driverId)+3 + sizeof("{ driverId }") - 1;
    if(driverId == 0){
        goto end;
    }
    char* localVarToReplace_driverId = malloc(sizeOfPathParams_driverId);
    snprintf(localVarToReplace_driverId, sizeOfPathParams_driverId, "{%s}", "driverId");

    char localVarBuff_driverId[256];
    snprintf(localVarBuff_driverId, sizeof localVarBuff_driverId, "%ld", driverId);

    localVarPath = strReplace(localVarPath, localVarToReplace_driverId, localVarBuff_driverId);



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
    free(localVarToReplace_id);
    free(localVarToReplace_driverId);

}

// Update Route
//
// Update an existing route
//
route_t*
RouteAPI_updateRoute(apiClient_t *apiClient, double version, long routeId, route_t *body)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);




    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = route_convertToJSON(body);
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
    route_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RouteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = route_parseFromJSON(RouteAPIlocalVarJSON);
        cJSON_Delete(RouteAPIlocalVarJSON);
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
    free(localVarToReplace_routeId);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Route Stop
//
// Update a stop on a specified route
//
void
RouteAPI_updateRouteStop(apiClient_t *apiClient, double version, long routeId, long stopId, stop_t *body)
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
    char *localVarPath = strdup("/api/{version}/route/{routeId}/stop/{stopId}");



    // Path Params
    long sizeOfPathParams_version =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ version }") - 1;

    // Path Params
    long sizeOfPathParams_routeId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ routeId }") - 1;
    if(routeId == 0){
        goto end;
    }
    char* localVarToReplace_routeId = malloc(sizeOfPathParams_routeId);
    snprintf(localVarToReplace_routeId, sizeOfPathParams_routeId, "{%s}", "routeId");

    char localVarBuff_routeId[256];
    snprintf(localVarBuff_routeId, sizeof localVarBuff_routeId, "%ld", routeId);

    localVarPath = strReplace(localVarPath, localVarToReplace_routeId, localVarBuff_routeId);


    // Path Params
    long sizeOfPathParams_stopId =  + sizeof(routeId)+3 + sizeof(stopId)+3 + sizeof("{ stopId }") - 1;
    if(stopId == 0){
        goto end;
    }
    char* localVarToReplace_stopId = malloc(sizeOfPathParams_stopId);
    snprintf(localVarToReplace_stopId, sizeOfPathParams_stopId, "{%s}", "stopId");

    char localVarBuff_stopId[256];
    snprintf(localVarBuff_stopId, sizeof localVarBuff_stopId, "%ld", stopId);

    localVarPath = strReplace(localVarPath, localVarToReplace_stopId, localVarBuff_stopId);




    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = stop_convertToJSON(body);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_body);
        localVarBodyLength = strlen(localVarBodyParameters);
    }
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
    free(localVarToReplace_routeId);
    free(localVarToReplace_stopId);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);

}

