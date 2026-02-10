#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "SimulationAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Routing Simulation
//
// Simulates routing requests.
//
sirqul_response_t*
SimulationAPI_simulation(apiClient_t *apiClient, double version, char *data, int *realTime)
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
    char *localVarPath = strdup("/api/{version}/simulation/routing");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_realTime = NULL;
    char * valueQuery_realTime = NULL;
    keyValuePair_t *keyPairQuery_realTime = 0;
    if (realTime)
    {
        keyQuery_realTime = strdup("realTime");
        valueQuery_realTime = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_realTime, MAX_NUMBER_LENGTH, "%d", *realTime);
        keyPairQuery_realTime = keyValuePair_create(keyQuery_realTime, valueQuery_realTime);
        list_addElement(localVarQueryParameters,keyPairQuery_realTime);
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
        cJSON *SimulationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(SimulationAPIlocalVarJSON);
        cJSON_Delete(SimulationAPIlocalVarJSON);
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
    if(keyQuery_realTime){
        free(keyQuery_realTime);
        keyQuery_realTime = NULL;
    }
    if(valueQuery_realTime){
        free(valueQuery_realTime);
        valueQuery_realTime = NULL;
    }
    if(keyPairQuery_realTime){
        keyValuePair_free(keyPairQuery_realTime);
        keyPairQuery_realTime = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

