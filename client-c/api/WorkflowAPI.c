#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "WorkflowAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Run Workflow
//
// Runs a published executable workflow
//
sirqul_response_t*
WorkflowAPI_runWorkflow(apiClient_t *apiClient, long accountId, long workflowId, long skuId, int *versionCode, char *parameters)
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
    char *localVarPath = strdup("/workflow/run");





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
    char *keyQuery_workflowId = NULL;
    char * valueQuery_workflowId ;
    keyValuePair_t *keyPairQuery_workflowId = 0;
    {
        keyQuery_workflowId = strdup("workflowId");
        valueQuery_workflowId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_workflowId, MAX_NUMBER_LENGTH_LONG, "%d", workflowId);
        keyPairQuery_workflowId = keyValuePair_create(keyQuery_workflowId, valueQuery_workflowId);
        list_addElement(localVarQueryParameters,keyPairQuery_workflowId);
    }

    // query parameters
    char *keyQuery_skuId = NULL;
    char * valueQuery_skuId ;
    keyValuePair_t *keyPairQuery_skuId = 0;
    {
        keyQuery_skuId = strdup("skuId");
        valueQuery_skuId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_skuId, MAX_NUMBER_LENGTH_LONG, "%d", skuId);
        keyPairQuery_skuId = keyValuePair_create(keyQuery_skuId, valueQuery_skuId);
        list_addElement(localVarQueryParameters,keyPairQuery_skuId);
    }

    // query parameters
    char *keyQuery_versionCode = NULL;
    char * valueQuery_versionCode = NULL;
    keyValuePair_t *keyPairQuery_versionCode = 0;
    if (versionCode)
    {
        keyQuery_versionCode = strdup("versionCode");
        valueQuery_versionCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_versionCode, MAX_NUMBER_LENGTH, "%d", *versionCode);
        keyPairQuery_versionCode = keyValuePair_create(keyQuery_versionCode, valueQuery_versionCode);
        list_addElement(localVarQueryParameters,keyPairQuery_versionCode);
    }

    // query parameters
    char *keyQuery_parameters = NULL;
    char * valueQuery_parameters = NULL;
    keyValuePair_t *keyPairQuery_parameters = 0;
    if (parameters)
    {
        keyQuery_parameters = strdup("parameters");
        valueQuery_parameters = strdup((parameters));
        keyPairQuery_parameters = keyValuePair_create(keyQuery_parameters, valueQuery_parameters);
        list_addElement(localVarQueryParameters,keyPairQuery_parameters);
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
        cJSON *WorkflowAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(WorkflowAPIlocalVarJSON);
        cJSON_Delete(WorkflowAPIlocalVarJSON);
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
    if(keyQuery_workflowId){
        free(keyQuery_workflowId);
        keyQuery_workflowId = NULL;
    }
    if(keyPairQuery_workflowId){
        keyValuePair_free(keyPairQuery_workflowId);
        keyPairQuery_workflowId = NULL;
    }
    if(keyQuery_skuId){
        free(keyQuery_skuId);
        keyQuery_skuId = NULL;
    }
    if(keyPairQuery_skuId){
        keyValuePair_free(keyPairQuery_skuId);
        keyPairQuery_skuId = NULL;
    }
    if(keyQuery_versionCode){
        free(keyQuery_versionCode);
        keyQuery_versionCode = NULL;
    }
    if(valueQuery_versionCode){
        free(valueQuery_versionCode);
        valueQuery_versionCode = NULL;
    }
    if(keyPairQuery_versionCode){
        keyValuePair_free(keyPairQuery_versionCode);
        keyPairQuery_versionCode = NULL;
    }
    if(keyQuery_parameters){
        free(keyQuery_parameters);
        keyQuery_parameters = NULL;
    }
    if(valueQuery_parameters){
        free(valueQuery_parameters);
        valueQuery_parameters = NULL;
    }
    if(keyPairQuery_parameters){
        keyValuePair_free(keyPairQuery_parameters);
        keyPairQuery_parameters = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

