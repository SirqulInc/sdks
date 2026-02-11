#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "VatomAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create following
//
// Create following.
//
void
VatomAPI_createFollowing(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/rels/following/create");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Create Vatom Space
//
// Create a Vatom space.
//
void
VatomAPI_createSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/spaces/create");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Create Vatom Event
//
// Create a Vatom event.
//
void
VatomAPI_createVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/events/create");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Delete following
//
// Delete following.
//
void
VatomAPI_deleteFollowing(apiClient_t *apiClient, long accountId, char *vatomRelsKey, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/rels/following/delete");





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
    char *keyQuery_vatomRelsKey = NULL;
    char * valueQuery_vatomRelsKey = NULL;
    keyValuePair_t *keyPairQuery_vatomRelsKey = 0;
    if (vatomRelsKey)
    {
        keyQuery_vatomRelsKey = strdup("vatomRelsKey");
        valueQuery_vatomRelsKey = strdup((vatomRelsKey));
        keyPairQuery_vatomRelsKey = keyValuePair_create(keyQuery_vatomRelsKey, valueQuery_vatomRelsKey);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomRelsKey);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomRelsKey){
        free(keyQuery_vatomRelsKey);
        keyQuery_vatomRelsKey = NULL;
    }
    if(valueQuery_vatomRelsKey){
        free(valueQuery_vatomRelsKey);
        valueQuery_vatomRelsKey = NULL;
    }
    if(keyPairQuery_vatomRelsKey){
        keyValuePair_free(keyPairQuery_vatomRelsKey);
        keyPairQuery_vatomRelsKey = NULL;
    }
    if(keyQuery_vatomRelsKey){
        free(keyQuery_vatomRelsKey);
        keyQuery_vatomRelsKey = NULL;
    }
    if(keyPairQuery_vatomRelsKey){
        keyValuePair_free(keyPairQuery_vatomRelsKey);
        keyPairQuery_vatomRelsKey = NULL;
    }

}

// Reset All Points Balance
//
// Reset All Points Balance.
//
void
VatomAPI_deletePointsBalance(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign/points/delete");





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
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }

}

// Delete Vatom Space
//
// Delete a Vatom space.
//
void
VatomAPI_deleteSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomSpaceId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/spaces/delete");





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
    char *keyQuery_vatomSpaceId = NULL;
    char * valueQuery_vatomSpaceId = NULL;
    keyValuePair_t *keyPairQuery_vatomSpaceId = 0;
    if (vatomSpaceId)
    {
        keyQuery_vatomSpaceId = strdup("vatomSpaceId");
        valueQuery_vatomSpaceId = strdup((vatomSpaceId));
        keyPairQuery_vatomSpaceId = keyValuePair_create(keyQuery_vatomSpaceId, valueQuery_vatomSpaceId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomSpaceId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomSpaceId){
        free(keyQuery_vatomSpaceId);
        keyQuery_vatomSpaceId = NULL;
    }
    if(valueQuery_vatomSpaceId){
        free(valueQuery_vatomSpaceId);
        valueQuery_vatomSpaceId = NULL;
    }
    if(keyPairQuery_vatomSpaceId){
        keyValuePair_free(keyPairQuery_vatomSpaceId);
        keyPairQuery_vatomSpaceId = NULL;
    }
    if(keyQuery_vatomSpaceId){
        free(keyQuery_vatomSpaceId);
        keyQuery_vatomSpaceId = NULL;
    }
    if(keyPairQuery_vatomSpaceId){
        keyValuePair_free(keyPairQuery_vatomSpaceId);
        keyPairQuery_vatomSpaceId = NULL;
    }

}

// Delete Vatom Event
//
// Delete a Vatom event.
//
void
VatomAPI_deleteVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/events/delete");





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
    char *keyQuery_vatomEventId = NULL;
    char * valueQuery_vatomEventId = NULL;
    keyValuePair_t *keyPairQuery_vatomEventId = 0;
    if (vatomEventId)
    {
        keyQuery_vatomEventId = strdup("vatomEventId");
        valueQuery_vatomEventId = strdup((vatomEventId));
        keyPairQuery_vatomEventId = keyValuePair_create(keyQuery_vatomEventId, valueQuery_vatomEventId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomEventId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(valueQuery_vatomEventId){
        free(valueQuery_vatomEventId);
        valueQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }

}

// Delete Vatom NFT
//
// Delete Vatom NFT
//
void
VatomAPI_deleteVatomNFT(apiClient_t *apiClient, long accountId, char *vatomId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/vatoms/delete");





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
    char *keyQuery_vatomId = NULL;
    char * valueQuery_vatomId = NULL;
    keyValuePair_t *keyPairQuery_vatomId = 0;
    if (vatomId)
    {
        keyQuery_vatomId = strdup("vatomId");
        valueQuery_vatomId = strdup((vatomId));
        keyPairQuery_vatomId = keyValuePair_create(keyQuery_vatomId, valueQuery_vatomId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(valueQuery_vatomId){
        free(valueQuery_vatomId);
        valueQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }

}

// Execute Action on NFT
//
// Execute Action on NFT.
//
void
VatomAPI_executeActionOnNFT(apiClient_t *apiClient, long accountId, char *vatomId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/vatoms/execute-action");





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
    char *keyQuery_vatomId = NULL;
    char * valueQuery_vatomId = NULL;
    keyValuePair_t *keyPairQuery_vatomId = 0;
    if (vatomId)
    {
        keyQuery_vatomId = strdup("vatomId");
        valueQuery_vatomId = strdup((vatomId));
        keyPairQuery_vatomId = keyValuePair_create(keyQuery_vatomId, valueQuery_vatomId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(valueQuery_vatomId){
        free(valueQuery_vatomId);
        valueQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Search Vatom Geo Map
//
// Search Vatom Geo Map
//
void
VatomAPI_geomapSearch(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/vatoms/geo-map/search");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Get Vatom Business Behaviors
//
// Gets the behaviors of a business.
//
void
VatomAPI_getBusinessBehaviors(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/behaviors");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }

}

// Get the coins for a Business
//
// Get the coins for a Businesss.
//
void
VatomAPI_getBusinessCoinsBalance(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/coins/get");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }

}

// Get the user business ids
//
// Get the business ids the logged in user has access to.
//
void
VatomAPI_getBusinessIds(apiClient_t *apiClient, long accountId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/businesses");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// Get Vatom Business Info
//
// Gets the business info tied to this account.
//
void
VatomAPI_getBusinessInfo(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/get");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Get Vatom Business Users
//
// Gets the users of a business.
//
void
VatomAPI_getBusinessUsers(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/users");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }

}

// Get Campaign Group Entities
//
// Get campaign group entities.
//
void
VatomAPI_getCampaignGroupEntities(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign-groups/entities");





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
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }

}

// Get Campaign Group Rules
//
// Get campaign group rules.
//
void
VatomAPI_getCampaignGroupRules(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign-groups/rules");





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
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }

}

// Get Campaign Group Stats
//
// Get campaign group stats.
//
void
VatomAPI_getCampaignGroupStats(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign-groups/stats");





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
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }

}

// Get Campaign Info
//
// Gets the info on a campaign.
//
void
VatomAPI_getCampaignInfo(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign-groups/get");





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
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }

}

// Get Vatom Event Guest List
//
// Gets the guest list of an event.
//
void
VatomAPI_getEventGuestList(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/events/guests/get");





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
    char *keyQuery_vatomEventId = NULL;
    char * valueQuery_vatomEventId = NULL;
    keyValuePair_t *keyPairQuery_vatomEventId = 0;
    if (vatomEventId)
    {
        keyQuery_vatomEventId = strdup("vatomEventId");
        valueQuery_vatomEventId = strdup((vatomEventId));
        keyPairQuery_vatomEventId = keyValuePair_create(keyQuery_vatomEventId, valueQuery_vatomEventId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomEventId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(valueQuery_vatomEventId){
        free(valueQuery_vatomEventId);
        valueQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }

}

// Get Vatom User's Inventory
//
// Gets the logged in user's Vatom Inventory.
//
void
VatomAPI_getInventory(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/inventory");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Get following
//
// Get following.
//
void
VatomAPI_getMyFollowing(apiClient_t *apiClient, long accountId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/rels/following");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// Get Points Balance
//
// Gets the points balance of a Vatom user.
//
void
VatomAPI_getPointsBalance(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomCampaignId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/u/campaign/points/get");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
    }

    // query parameters
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }

}

// Get Points Balance as Business
//
// Gets the points balance of a Vatom user.
//
void
VatomAPI_getPointsBalanceAsBusiness(apiClient_t *apiClient, long accountId, char *appKey, char *vatomUserId, char *vatomCampaignId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign/u/points/get");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
    }

    // query parameters
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }

}

// Get Vatom Space
//
// Gets the details of a space.
//
void
VatomAPI_getSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomSpaceId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/spaces/get");





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
    char *keyQuery_vatomSpaceId = NULL;
    char * valueQuery_vatomSpaceId = NULL;
    keyValuePair_t *keyPairQuery_vatomSpaceId = 0;
    if (vatomSpaceId)
    {
        keyQuery_vatomSpaceId = strdup("vatomSpaceId");
        valueQuery_vatomSpaceId = strdup((vatomSpaceId));
        keyPairQuery_vatomSpaceId = keyValuePair_create(keyQuery_vatomSpaceId, valueQuery_vatomSpaceId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomSpaceId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomSpaceId){
        free(keyQuery_vatomSpaceId);
        keyQuery_vatomSpaceId = NULL;
    }
    if(valueQuery_vatomSpaceId){
        free(valueQuery_vatomSpaceId);
        valueQuery_vatomSpaceId = NULL;
    }
    if(keyPairQuery_vatomSpaceId){
        keyValuePair_free(keyPairQuery_vatomSpaceId);
        keyPairQuery_vatomSpaceId = NULL;
    }
    if(keyQuery_vatomSpaceId){
        free(keyQuery_vatomSpaceId);
        keyQuery_vatomSpaceId = NULL;
    }
    if(keyPairQuery_vatomSpaceId){
        keyValuePair_free(keyPairQuery_vatomSpaceId);
        keyPairQuery_vatomSpaceId = NULL;
    }

}

// Get the coins for a user (as a Business)
//
// Get the coins for a user (as a Business).
//
void
VatomAPI_getUserCoinsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/users/coins/get");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }

}

// Gets the coins balance for a Vatom User
//
// Gets the coins balance for a Vatom User.
//
void
VatomAPI_getUserCoinsBalance(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/u/coins/get");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Get user followers
//
// Get user followers.
//
void
VatomAPI_getUserFollowers(apiClient_t *apiClient, long accountId, char *vatomUserId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/users/rels/followers");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }

}

// Get user following
//
// Get user following.
//
void
VatomAPI_getUserFollowing(apiClient_t *apiClient, long accountId, char *vatomUserId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/users/rels/following");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }

}

// Get User Info
//
// Get a User's Info.
//
void
VatomAPI_getUserInfo(apiClient_t *apiClient, long accountId, char *vatomUserId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/user/get");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }

}

// Get Vatom User Profile
//
// Gets the logged in user's profile in Vatom.
//
void
VatomAPI_getUserProfile(apiClient_t *apiClient, long accountId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/get");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// Get Vatom Event
//
// Gets the details of a event.
//
void
VatomAPI_getVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/events/get");





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
    char *keyQuery_vatomEventId = NULL;
    char * valueQuery_vatomEventId = NULL;
    keyValuePair_t *keyPairQuery_vatomEventId = 0;
    if (vatomEventId)
    {
        keyQuery_vatomEventId = strdup("vatomEventId");
        valueQuery_vatomEventId = strdup((vatomEventId));
        keyPairQuery_vatomEventId = keyValuePair_create(keyQuery_vatomEventId, valueQuery_vatomEventId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomEventId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(valueQuery_vatomEventId){
        free(valueQuery_vatomEventId);
        valueQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }

}

// Get Vatom NFT Details
//
// Get Vatom NFT Details
//
void
VatomAPI_getVatomNFT(apiClient_t *apiClient, long accountId, char *vatomId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/vatoms/get");





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
    char *keyQuery_vatomId = NULL;
    char * valueQuery_vatomId = NULL;
    keyValuePair_t *keyPairQuery_vatomId = 0;
    if (vatomId)
    {
        keyQuery_vatomId = strdup("vatomId");
        valueQuery_vatomId = strdup((vatomId));
        keyPairQuery_vatomId = keyValuePair_create(keyQuery_vatomId, valueQuery_vatomId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomId);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(valueQuery_vatomId){
        free(valueQuery_vatomId);
        valueQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }

}

// List Vatom Communities
//
// Gets the communities tied to a business.
//
void
VatomAPI_listCommunities(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/communities/search");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// List Vatom Events
//
// Gets the events tied to a business.
//
void
VatomAPI_listEvents(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/events/search");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// List Vatom Spaces
//
// Gets the spaces tied to a business.
//
void
VatomAPI_listSpaces(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/spaces/search");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// List Coin Transactions for a Vatom User
//
// Gets the logged in user's Vatom coin transactions.
//
void
VatomAPI_listUserCoinTransactions(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/u/coins/txns/search");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// List coin transactions for a user (as a Business)
//
// List coin transactions for a user (as a Business).
//
void
VatomAPI_listUserCoinTransactionsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/users/coins/txns/search");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Perform Action on NFT
//
// Perform Action on NFT.
//
void
VatomAPI_performActionOnNFT(apiClient_t *apiClient, long accountId, char *vatomId, char *vatomAction, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/vatoms/actions");





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
    char *keyQuery_vatomId = NULL;
    char * valueQuery_vatomId = NULL;
    keyValuePair_t *keyPairQuery_vatomId = 0;
    if (vatomId)
    {
        keyQuery_vatomId = strdup("vatomId");
        valueQuery_vatomId = strdup((vatomId));
        keyPairQuery_vatomId = keyValuePair_create(keyQuery_vatomId, valueQuery_vatomId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomId);
    }

    // query parameters
    char *keyQuery_vatomAction = NULL;
    char * valueQuery_vatomAction = NULL;
    keyValuePair_t *keyPairQuery_vatomAction = 0;
    if (vatomAction)
    {
        keyQuery_vatomAction = strdup("vatomAction");
        valueQuery_vatomAction = strdup((vatomAction));
        keyPairQuery_vatomAction = keyValuePair_create(keyQuery_vatomAction, valueQuery_vatomAction);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomAction);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(valueQuery_vatomId){
        free(valueQuery_vatomId);
        valueQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }
    if(keyQuery_vatomId){
        free(keyQuery_vatomId);
        keyQuery_vatomId = NULL;
    }
    if(keyPairQuery_vatomId){
        keyValuePair_free(keyPairQuery_vatomId);
        keyPairQuery_vatomId = NULL;
    }
    if(keyQuery_vatomAction){
        free(keyQuery_vatomAction);
        keyQuery_vatomAction = NULL;
    }
    if(valueQuery_vatomAction){
        free(valueQuery_vatomAction);
        valueQuery_vatomAction = NULL;
    }
    if(keyPairQuery_vatomAction){
        keyValuePair_free(keyPairQuery_vatomAction);
        keyPairQuery_vatomAction = NULL;
    }
    if(keyQuery_vatomAction){
        free(keyQuery_vatomAction);
        keyQuery_vatomAction = NULL;
    }
    if(keyPairQuery_vatomAction){
        keyValuePair_free(keyPairQuery_vatomAction);
        keyPairQuery_vatomAction = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Redeem NFT
//
// Redeem an NFT.
//
void
VatomAPI_redeemNFT(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/redemptions");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Redeem the coins for a user (as a Business)
//
// Redeem the coins for a user (as a Business).
//
void
VatomAPI_redeemUserCoinsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/users/coins/redeem");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Search for Vatom Businesses
//
// Searches for Vatom businesses.
//
void
VatomAPI_searchBusinesses(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/search");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Search Campaign Groups
//
// Search campaign groups.
//
void
VatomAPI_searchCampaignGroups(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign-groups/search");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }

}

// Search User Identities
//
// Search User Identities.
//
void
VatomAPI_searchIdentities(apiClient_t *apiClient, long accountId, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/identities/search");





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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);

}

// Search Vatom User's Inventory
//
// Searches the logged in user's Vatom Inventory.
//
void
VatomAPI_searchInventory(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/user-inventory/search");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Send NFT
//
// Send an NFT.
//
void
VatomAPI_sendNFT(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaigns/send");





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
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Set Points Balance as Business
//
// Sets the points balance of a Vatom user.
//
void
VatomAPI_setPointsBalanceAsBusiness(apiClient_t *apiClient, long accountId, char *appKey, char *vatomUserId, char *vatomCampaignId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/campaign/u/points/update");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
    }

    // query parameters
    char *keyQuery_vatomCampaignId = NULL;
    char * valueQuery_vatomCampaignId = NULL;
    keyValuePair_t *keyPairQuery_vatomCampaignId = 0;
    if (vatomCampaignId)
    {
        keyQuery_vatomCampaignId = strdup("vatomCampaignId");
        valueQuery_vatomCampaignId = strdup((vatomCampaignId));
        keyPairQuery_vatomCampaignId = keyValuePair_create(keyQuery_vatomCampaignId, valueQuery_vatomCampaignId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomCampaignId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(valueQuery_vatomCampaignId){
        free(valueQuery_vatomCampaignId);
        valueQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomCampaignId){
        free(keyQuery_vatomCampaignId);
        keyQuery_vatomCampaignId = NULL;
    }
    if(keyPairQuery_vatomCampaignId){
        keyValuePair_free(keyPairQuery_vatomCampaignId);
        keyPairQuery_vatomCampaignId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Transfer coins from Vatom Users
//
// Transfer coins from Vatom Users.
//
void
VatomAPI_transferUserCoins(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/u/coins/transfer");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Fund coins for a Business
//
// Fund/update coins for a Businesss.
//
void
VatomAPI_updateBusinessCoins(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/coins/update");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Update Vatom Event Guest List
//
// Update the guest list of an event.
//
void
VatomAPI_updateEventGuestList(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/events/guests/update");





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
    char *keyQuery_vatomEventId = NULL;
    char * valueQuery_vatomEventId = NULL;
    keyValuePair_t *keyPairQuery_vatomEventId = 0;
    if (vatomEventId)
    {
        keyQuery_vatomEventId = strdup("vatomEventId");
        valueQuery_vatomEventId = strdup((vatomEventId));
        keyPairQuery_vatomEventId = keyValuePair_create(keyQuery_vatomEventId, valueQuery_vatomEventId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomEventId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(valueQuery_vatomEventId){
        free(valueQuery_vatomEventId);
        valueQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Update Vatom Space
//
// Update a Vatom space.
//
void
VatomAPI_updateSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomSpaceId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/spaces/update");





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
    char *keyQuery_vatomSpaceId = NULL;
    char * valueQuery_vatomSpaceId = NULL;
    keyValuePair_t *keyPairQuery_vatomSpaceId = 0;
    if (vatomSpaceId)
    {
        keyQuery_vatomSpaceId = strdup("vatomSpaceId");
        valueQuery_vatomSpaceId = strdup((vatomSpaceId));
        keyPairQuery_vatomSpaceId = keyValuePair_create(keyQuery_vatomSpaceId, valueQuery_vatomSpaceId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomSpaceId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomSpaceId){
        free(keyQuery_vatomSpaceId);
        keyQuery_vatomSpaceId = NULL;
    }
    if(valueQuery_vatomSpaceId){
        free(valueQuery_vatomSpaceId);
        valueQuery_vatomSpaceId = NULL;
    }
    if(keyPairQuery_vatomSpaceId){
        keyValuePair_free(keyPairQuery_vatomSpaceId);
        keyPairQuery_vatomSpaceId = NULL;
    }
    if(keyQuery_vatomSpaceId){
        free(keyQuery_vatomSpaceId);
        keyQuery_vatomSpaceId = NULL;
    }
    if(keyPairQuery_vatomSpaceId){
        keyValuePair_free(keyPairQuery_vatomSpaceId);
        keyPairQuery_vatomSpaceId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Update the coins for a user (as a Business)
//
// Update the coins for a user (as a Business).
//
void
VatomAPI_updateUserCoinsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/users/coins/update");





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
    char *keyQuery_vatomUserId = NULL;
    char * valueQuery_vatomUserId = NULL;
    keyValuePair_t *keyPairQuery_vatomUserId = 0;
    if (vatomUserId)
    {
        keyQuery_vatomUserId = strdup("vatomUserId");
        valueQuery_vatomUserId = strdup((vatomUserId));
        keyPairQuery_vatomUserId = keyValuePair_create(keyQuery_vatomUserId, valueQuery_vatomUserId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomUserId);
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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(valueQuery_vatomUserId){
        free(valueQuery_vatomUserId);
        valueQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
    }
    if(keyQuery_vatomUserId){
        free(keyQuery_vatomUserId);
        keyQuery_vatomUserId = NULL;
    }
    if(keyPairQuery_vatomUserId){
        keyValuePair_free(keyPairQuery_vatomUserId);
        keyPairQuery_vatomUserId = NULL;
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Update Vatom User Profile
//
// Gets the logged in user's profile in Vatom.
//
void
VatomAPI_updateUserProfile(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/me/update");





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
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

// Update Vatom Event
//
// Update a Vatom event.
//
void
VatomAPI_updateVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, char *vatomParameters, int *returnRawResponse)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/vatom/b/events/update");





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
    char *keyQuery_vatomEventId = NULL;
    char * valueQuery_vatomEventId = NULL;
    keyValuePair_t *keyPairQuery_vatomEventId = 0;
    if (vatomEventId)
    {
        keyQuery_vatomEventId = strdup("vatomEventId");
        valueQuery_vatomEventId = strdup((vatomEventId));
        keyPairQuery_vatomEventId = keyValuePair_create(keyQuery_vatomEventId, valueQuery_vatomEventId);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomEventId);
    }

    // query parameters
    char *keyQuery_vatomParameters = NULL;
    char * valueQuery_vatomParameters = NULL;
    keyValuePair_t *keyPairQuery_vatomParameters = 0;
    if (vatomParameters)
    {
        keyQuery_vatomParameters = strdup("vatomParameters");
        valueQuery_vatomParameters = strdup((vatomParameters));
        keyPairQuery_vatomParameters = keyValuePair_create(keyQuery_vatomParameters, valueQuery_vatomParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_vatomParameters);
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
    free(localVarPath);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(valueQuery_vatomEventId){
        free(valueQuery_vatomEventId);
        valueQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }
    if(keyQuery_vatomEventId){
        free(keyQuery_vatomEventId);
        keyQuery_vatomEventId = NULL;
    }
    if(keyPairQuery_vatomEventId){
        keyValuePair_free(keyPairQuery_vatomEventId);
        keyPairQuery_vatomEventId = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(valueQuery_vatomParameters){
        free(valueQuery_vatomParameters);
        valueQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }
    if(keyQuery_vatomParameters){
        free(keyQuery_vatomParameters);
        keyQuery_vatomParameters = NULL;
    }
    if(keyPairQuery_vatomParameters){
        keyValuePair_free(keyPairQuery_vatomParameters);
        keyPairQuery_vatomParameters = NULL;
    }

}

