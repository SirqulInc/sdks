#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "DependentAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Dependent
//
// Create dependent of the account
//
sirqul_response_t*
DependentAPI_create(apiClient_t *apiClient, long accountId, account_t *body)
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
    char *localVarPath = strdup("/cargo/dependent/{accountId}");



    // Path Params
    long sizeOfPathParams_accountId = sizeof(accountId)+3 + sizeof("{ accountId }") - 1;
    if(accountId == 0){
        goto end;
    }
    char* localVarToReplace_accountId = malloc(sizeOfPathParams_accountId);
    snprintf(localVarToReplace_accountId, sizeOfPathParams_accountId, "{%s}", "accountId");

    char localVarBuff_accountId[256];
    snprintf(localVarBuff_accountId, sizeof localVarBuff_accountId, "%ld", accountId);

    localVarPath = strReplace(localVarPath, localVarToReplace_accountId, localVarBuff_accountId);




    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = account_convertToJSON(body);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DependentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(DependentAPIlocalVarJSON);
        cJSON_Delete(DependentAPIlocalVarJSON);
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
    free(localVarToReplace_accountId);
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

// Get dependent list of an account
//
// Get the dependent list of an account
//
sirqul_response_t*
DependentAPI_getDependents(apiClient_t *apiClient, long accountId)
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
    char *localVarPath = strdup("/cargo/dependent/{accountId}");



    // Path Params
    long sizeOfPathParams_accountId = sizeof(accountId)+3 + sizeof("{ accountId }") - 1;
    if(accountId == 0){
        goto end;
    }
    char* localVarToReplace_accountId = malloc(sizeOfPathParams_accountId);
    snprintf(localVarToReplace_accountId, sizeOfPathParams_accountId, "{%s}", "accountId");

    char localVarBuff_accountId[256];
    snprintf(localVarBuff_accountId, sizeof localVarBuff_accountId, "%ld", accountId);

    localVarPath = strReplace(localVarPath, localVarToReplace_accountId, localVarBuff_accountId);



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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DependentAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(DependentAPIlocalVarJSON);
        cJSON_Delete(DependentAPIlocalVarJSON);
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
    free(localVarToReplace_accountId);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Dependent
//
// Delete the Dependent
//
void
DependentAPI_removeDependent(apiClient_t *apiClient, long accountId, long dependentId)
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
    char *localVarPath = strdup("/cargo/dependent/{accountId}");



    // Path Params
    long sizeOfPathParams_accountId = sizeof(accountId)+3 + sizeof(dependentId)+3 + sizeof("{ accountId }") - 1;
    if(accountId == 0){
        goto end;
    }
    char* localVarToReplace_accountId = malloc(sizeOfPathParams_accountId);
    snprintf(localVarToReplace_accountId, sizeOfPathParams_accountId, "{%s}", "accountId");

    char localVarBuff_accountId[256];
    snprintf(localVarBuff_accountId, sizeof localVarBuff_accountId, "%ld", accountId);

    localVarPath = strReplace(localVarPath, localVarToReplace_accountId, localVarBuff_accountId);


    // Path Params
    long sizeOfPathParams_dependentId = sizeof(accountId)+3 + sizeof(dependentId)+3 + sizeof("{ dependentId }") - 1;
    if(dependentId == 0){
        goto end;
    }
    char* localVarToReplace_dependentId = malloc(sizeOfPathParams_dependentId);
    snprintf(localVarToReplace_dependentId, sizeOfPathParams_dependentId, "{%s}", "dependentId");

    char localVarBuff_dependentId[256];
    snprintf(localVarBuff_dependentId, sizeof localVarBuff_dependentId, "%ld", dependentId);

    localVarPath = strReplace(localVarPath, localVarToReplace_dependentId, localVarBuff_dependentId);



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
    free(localVarToReplace_accountId);
    free(localVarToReplace_dependentId);

}

