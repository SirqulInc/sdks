#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "OpenAIAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Generate images with OpenAI
//
// Generate images with OpenAI.
//
wrapped_proxy_item_response_t*
OpenAIAPI_imageGeneration(apiClient_t *apiClient, long accountId, char *postBody, int *returnRawResponse)
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
    char *localVarPath = strdup("/openai/v1/images/generations");





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
    char *keyQuery_postBody = NULL;
    char * valueQuery_postBody = NULL;
    keyValuePair_t *keyPairQuery_postBody = 0;
    if (postBody)
    {
        keyQuery_postBody = strdup("postBody");
        valueQuery_postBody = strdup((postBody));
        keyPairQuery_postBody = keyValuePair_create(keyQuery_postBody, valueQuery_postBody);
        list_addElement(localVarQueryParameters,keyPairQuery_postBody);
    }

    // query parameters
    char *keyQuery_returnRawResponse = NULL;
    char * valueQuery_returnRawResponse = NULL;
    keyValuePair_t *keyPairQuery_returnRawResponse = 0;
    if (returnRawResponse)
    {
        keyQuery_returnRawResponse = strdup("returnRawResponse");
        valueQuery_returnRawResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnRawResponse, MAX_NUMBER_LENGTH, "%d", *returnRawResponse);
        keyPairQuery_returnRawResponse = keyValuePair_create(keyQuery_returnRawResponse, valueQuery_returnRawResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnRawResponse);
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
    wrapped_proxy_item_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *OpenAIAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = wrapped_proxy_item_response_parseFromJSON(OpenAIAPIlocalVarJSON);
        cJSON_Delete(OpenAIAPIlocalVarJSON);
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
    if(keyQuery_postBody){
        free(keyQuery_postBody);
        keyQuery_postBody = NULL;
    }
    if(valueQuery_postBody){
        free(valueQuery_postBody);
        valueQuery_postBody = NULL;
    }
    if(keyPairQuery_postBody){
        keyValuePair_free(keyPairQuery_postBody);
        keyPairQuery_postBody = NULL;
    }
    if(keyQuery_returnRawResponse){
        free(keyQuery_returnRawResponse);
        keyQuery_returnRawResponse = NULL;
    }
    if(valueQuery_returnRawResponse){
        free(valueQuery_returnRawResponse);
        valueQuery_returnRawResponse = NULL;
    }
    if(keyPairQuery_returnRawResponse){
        keyValuePair_free(keyPairQuery_returnRawResponse);
        keyPairQuery_returnRawResponse = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

