#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "SubscriptionAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Subscription
//
// Create a subscription for a billable entity.  Provide a planId, if not provided then the base plan will be assigned.
//
subscription_response_t*
SubscriptionAPI_createSubscription(apiClient_t *apiClient, double version, long accountId, long planId, char *promoCode)
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
    char *localVarPath = strdup("/api/{version}/subscription/create");



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
    char *keyQuery_planId = NULL;
    char * valueQuery_planId ;
    keyValuePair_t *keyPairQuery_planId = 0;
    {
        keyQuery_planId = strdup("planId");
        valueQuery_planId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_planId, MAX_NUMBER_LENGTH_LONG, "%d", planId);
        keyPairQuery_planId = keyValuePair_create(keyQuery_planId, valueQuery_planId);
        list_addElement(localVarQueryParameters,keyPairQuery_planId);
    }

    // query parameters
    char *keyQuery_promoCode = NULL;
    char * valueQuery_promoCode = NULL;
    keyValuePair_t *keyPairQuery_promoCode = 0;
    if (promoCode)
    {
        keyQuery_promoCode = strdup("promoCode");
        valueQuery_promoCode = strdup((promoCode));
        keyPairQuery_promoCode = keyValuePair_create(keyQuery_promoCode, valueQuery_promoCode);
        list_addElement(localVarQueryParameters,keyPairQuery_promoCode);
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
    subscription_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SubscriptionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = subscription_response_parseFromJSON(SubscriptionAPIlocalVarJSON);
        cJSON_Delete(SubscriptionAPIlocalVarJSON);
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
    if(keyQuery_planId){
        free(keyQuery_planId);
        keyQuery_planId = NULL;
    }
    if(keyPairQuery_planId){
        keyValuePair_free(keyPairQuery_planId);
        keyPairQuery_planId = NULL;
    }
    if(keyQuery_promoCode){
        free(keyQuery_promoCode);
        keyQuery_promoCode = NULL;
    }
    if(valueQuery_promoCode){
        free(valueQuery_promoCode);
        valueQuery_promoCode = NULL;
    }
    if(keyPairQuery_promoCode){
        keyValuePair_free(keyPairQuery_promoCode);
        keyPairQuery_promoCode = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Subscription
//
// Suspend the current subscription for the billable entity managed by the account.  The account must be the responsible manager to perform this action
//
sirqul_response_t*
SubscriptionAPI_deleteSubscription(apiClient_t *apiClient, double version, long accountId)
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
    char *localVarPath = strdup("/api/{version}/subscription/delete");



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
        cJSON *SubscriptionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(SubscriptionAPIlocalVarJSON);
        cJSON_Delete(SubscriptionAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Subscription
//
// Use the accountId to determine the associated BillableEntity.  Then get the subscription.
//
subscription_response_t*
SubscriptionAPI_getSubscription(apiClient_t *apiClient, double version, long accountId)
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
    char *localVarPath = strdup("/api/{version}/subscription/get");



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
    subscription_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SubscriptionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = subscription_response_parseFromJSON(SubscriptionAPIlocalVarJSON);
        cJSON_Delete(SubscriptionAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Subscription Plan
//
// Get the matched subscription plan
//
subscription_plan_response_t*
SubscriptionAPI_getSubscriptionPlan(apiClient_t *apiClient, double version, long planId)
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
    char *localVarPath = strdup("/api/{version}/subscription/plan/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_planId = NULL;
    char * valueQuery_planId ;
    keyValuePair_t *keyPairQuery_planId = 0;
    {
        keyQuery_planId = strdup("planId");
        valueQuery_planId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_planId, MAX_NUMBER_LENGTH_LONG, "%d", planId);
        keyPairQuery_planId = keyValuePair_create(keyQuery_planId, valueQuery_planId);
        list_addElement(localVarQueryParameters,keyPairQuery_planId);
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
    subscription_plan_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SubscriptionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = subscription_plan_response_parseFromJSON(SubscriptionAPIlocalVarJSON);
        cJSON_Delete(SubscriptionAPIlocalVarJSON);
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
    if(keyQuery_planId){
        free(keyQuery_planId);
        keyQuery_planId = NULL;
    }
    if(keyPairQuery_planId){
        keyValuePair_free(keyPairQuery_planId);
        keyPairQuery_planId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List Subscription Plans
//
// Get the matched subscription plan
//
list_t*
SubscriptionAPI_getSubscriptionPlans(apiClient_t *apiClient, double version, int *visible, char *role)
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
    char *localVarPath = strdup("/api/{version}/subscription/plan/list");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_visible = NULL;
    char * valueQuery_visible = NULL;
    keyValuePair_t *keyPairQuery_visible = 0;
    if (visible)
    {
        keyQuery_visible = strdup("visible");
        valueQuery_visible = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_visible, MAX_NUMBER_LENGTH, "%d", *visible);
        keyPairQuery_visible = keyValuePair_create(keyQuery_visible, valueQuery_visible);
        list_addElement(localVarQueryParameters,keyPairQuery_visible);
    }

    // query parameters
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
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
        cJSON *SubscriptionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(SubscriptionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, SubscriptionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( SubscriptionAPIlocalVarJSON);
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
    if(keyQuery_visible){
        free(keyQuery_visible);
        keyQuery_visible = NULL;
    }
    if(valueQuery_visible){
        free(valueQuery_visible);
        valueQuery_visible = NULL;
    }
    if(keyPairQuery_visible){
        keyValuePair_free(keyPairQuery_visible);
        keyPairQuery_visible = NULL;
    }
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Subscription Usage
//
// Use the accountId to determine the associated BillableEntity.  Then get the application usage.
//
application_usage_response_t*
SubscriptionAPI_getSubscriptionUsage(apiClient_t *apiClient, double version, long accountId, long applicationId, long start, long end)
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
    char *localVarPath = strdup("/api/{version}/subscription/usage/get");



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
    char *keyQuery_applicationId = NULL;
    char * valueQuery_applicationId ;
    keyValuePair_t *keyPairQuery_applicationId = 0;
    {
        keyQuery_applicationId = strdup("applicationId");
        valueQuery_applicationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_applicationId, MAX_NUMBER_LENGTH_LONG, "%d", applicationId);
        keyPairQuery_applicationId = keyValuePair_create(keyQuery_applicationId, valueQuery_applicationId);
        list_addElement(localVarQueryParameters,keyPairQuery_applicationId);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start ;
    keyValuePair_t *keyPairQuery_start = 0;
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH_LONG, "%d", start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_end = NULL;
    char * valueQuery_end ;
    keyValuePair_t *keyPairQuery_end = 0;
    {
        keyQuery_end = strdup("end");
        valueQuery_end = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_end, MAX_NUMBER_LENGTH_LONG, "%d", end);
        keyPairQuery_end = keyValuePair_create(keyQuery_end, valueQuery_end);
        list_addElement(localVarQueryParameters,keyPairQuery_end);
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
    application_usage_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SubscriptionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = application_usage_response_parseFromJSON(SubscriptionAPIlocalVarJSON);
        cJSON_Delete(SubscriptionAPIlocalVarJSON);
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
    if(keyQuery_applicationId){
        free(keyQuery_applicationId);
        keyQuery_applicationId = NULL;
    }
    if(keyPairQuery_applicationId){
        keyValuePair_free(keyPairQuery_applicationId);
        keyPairQuery_applicationId = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_end){
        free(keyQuery_end);
        keyQuery_end = NULL;
    }
    if(keyPairQuery_end){
        keyValuePair_free(keyPairQuery_end);
        keyPairQuery_end = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Subscription
//
// Updates the subscription for the billable entity for an account
//
subscription_response_t*
SubscriptionAPI_updateSubscription(apiClient_t *apiClient, double version, long accountId, long planId, char *promoCode, int *active)
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
    char *localVarPath = strdup("/api/{version}/subscription/update");



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
    char *keyQuery_planId = NULL;
    char * valueQuery_planId ;
    keyValuePair_t *keyPairQuery_planId = 0;
    {
        keyQuery_planId = strdup("planId");
        valueQuery_planId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_planId, MAX_NUMBER_LENGTH_LONG, "%d", planId);
        keyPairQuery_planId = keyValuePair_create(keyQuery_planId, valueQuery_planId);
        list_addElement(localVarQueryParameters,keyPairQuery_planId);
    }

    // query parameters
    char *keyQuery_promoCode = NULL;
    char * valueQuery_promoCode = NULL;
    keyValuePair_t *keyPairQuery_promoCode = 0;
    if (promoCode)
    {
        keyQuery_promoCode = strdup("promoCode");
        valueQuery_promoCode = strdup((promoCode));
        keyPairQuery_promoCode = keyValuePair_create(keyQuery_promoCode, valueQuery_promoCode);
        list_addElement(localVarQueryParameters,keyPairQuery_promoCode);
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
    subscription_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SubscriptionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = subscription_response_parseFromJSON(SubscriptionAPIlocalVarJSON);
        cJSON_Delete(SubscriptionAPIlocalVarJSON);
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
    if(keyQuery_planId){
        free(keyQuery_planId);
        keyQuery_planId = NULL;
    }
    if(keyPairQuery_planId){
        keyValuePair_free(keyPairQuery_planId);
        keyPairQuery_planId = NULL;
    }
    if(keyQuery_promoCode){
        free(keyQuery_promoCode);
        keyQuery_promoCode = NULL;
    }
    if(valueQuery_promoCode){
        free(valueQuery_promoCode);
        valueQuery_promoCode = NULL;
    }
    if(keyPairQuery_promoCode){
        keyValuePair_free(keyPairQuery_promoCode);
        keyPairQuery_promoCode = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

