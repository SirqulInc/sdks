#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "BillableEntityAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Billable
//
// reate a billable entity for an account. The creator is assumed to be the responsible account. An account can only have one billable entity
//
billable_entity_response_t*
BillableEntityAPI_createBillableEntity(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *businessPhone, char *businessPhoneExt, char *authorizeNetApiKey, char *authorizeNetTransactionKey)
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
    char *localVarPath = strdup("/api/{version}/billable/create");



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
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_streetAddress = NULL;
    char * valueQuery_streetAddress = NULL;
    keyValuePair_t *keyPairQuery_streetAddress = 0;
    if (streetAddress)
    {
        keyQuery_streetAddress = strdup("streetAddress");
        valueQuery_streetAddress = strdup((streetAddress));
        keyPairQuery_streetAddress = keyValuePair_create(keyQuery_streetAddress, valueQuery_streetAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress);
    }

    // query parameters
    char *keyQuery_streetAddress2 = NULL;
    char * valueQuery_streetAddress2 = NULL;
    keyValuePair_t *keyPairQuery_streetAddress2 = 0;
    if (streetAddress2)
    {
        keyQuery_streetAddress2 = strdup("streetAddress2");
        valueQuery_streetAddress2 = strdup((streetAddress2));
        keyPairQuery_streetAddress2 = keyValuePair_create(keyQuery_streetAddress2, valueQuery_streetAddress2);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress2);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_postalCode = NULL;
    char * valueQuery_postalCode = NULL;
    keyValuePair_t *keyPairQuery_postalCode = 0;
    if (postalCode)
    {
        keyQuery_postalCode = strdup("postalCode");
        valueQuery_postalCode = strdup((postalCode));
        keyPairQuery_postalCode = keyValuePair_create(keyQuery_postalCode, valueQuery_postalCode);
        list_addElement(localVarQueryParameters,keyPairQuery_postalCode);
    }

    // query parameters
    char *keyQuery_businessPhone = NULL;
    char * valueQuery_businessPhone = NULL;
    keyValuePair_t *keyPairQuery_businessPhone = 0;
    if (businessPhone)
    {
        keyQuery_businessPhone = strdup("businessPhone");
        valueQuery_businessPhone = strdup((businessPhone));
        keyPairQuery_businessPhone = keyValuePair_create(keyQuery_businessPhone, valueQuery_businessPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_businessPhone);
    }

    // query parameters
    char *keyQuery_businessPhoneExt = NULL;
    char * valueQuery_businessPhoneExt = NULL;
    keyValuePair_t *keyPairQuery_businessPhoneExt = 0;
    if (businessPhoneExt)
    {
        keyQuery_businessPhoneExt = strdup("businessPhoneExt");
        valueQuery_businessPhoneExt = strdup((businessPhoneExt));
        keyPairQuery_businessPhoneExt = keyValuePair_create(keyQuery_businessPhoneExt, valueQuery_businessPhoneExt);
        list_addElement(localVarQueryParameters,keyPairQuery_businessPhoneExt);
    }

    // query parameters
    char *keyQuery_authorizeNetApiKey = NULL;
    char * valueQuery_authorizeNetApiKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetApiKey = 0;
    if (authorizeNetApiKey)
    {
        keyQuery_authorizeNetApiKey = strdup("authorizeNetApiKey");
        valueQuery_authorizeNetApiKey = strdup((authorizeNetApiKey));
        keyPairQuery_authorizeNetApiKey = keyValuePair_create(keyQuery_authorizeNetApiKey, valueQuery_authorizeNetApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetApiKey);
    }

    // query parameters
    char *keyQuery_authorizeNetTransactionKey = NULL;
    char * valueQuery_authorizeNetTransactionKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetTransactionKey = 0;
    if (authorizeNetTransactionKey)
    {
        keyQuery_authorizeNetTransactionKey = strdup("authorizeNetTransactionKey");
        valueQuery_authorizeNetTransactionKey = strdup((authorizeNetTransactionKey));
        keyPairQuery_authorizeNetTransactionKey = keyValuePair_create(keyQuery_authorizeNetTransactionKey, valueQuery_authorizeNetTransactionKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetTransactionKey);
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
    billable_entity_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillableEntityAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = billable_entity_response_parseFromJSON(BillableEntityAPIlocalVarJSON);
        cJSON_Delete(BillableEntityAPIlocalVarJSON);
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
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_streetAddress){
        free(keyQuery_streetAddress);
        keyQuery_streetAddress = NULL;
    }
    if(valueQuery_streetAddress){
        free(valueQuery_streetAddress);
        valueQuery_streetAddress = NULL;
    }
    if(keyPairQuery_streetAddress){
        keyValuePair_free(keyPairQuery_streetAddress);
        keyPairQuery_streetAddress = NULL;
    }
    if(keyQuery_streetAddress2){
        free(keyQuery_streetAddress2);
        keyQuery_streetAddress2 = NULL;
    }
    if(valueQuery_streetAddress2){
        free(valueQuery_streetAddress2);
        valueQuery_streetAddress2 = NULL;
    }
    if(keyPairQuery_streetAddress2){
        keyValuePair_free(keyPairQuery_streetAddress2);
        keyPairQuery_streetAddress2 = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_postalCode){
        free(keyQuery_postalCode);
        keyQuery_postalCode = NULL;
    }
    if(valueQuery_postalCode){
        free(valueQuery_postalCode);
        valueQuery_postalCode = NULL;
    }
    if(keyPairQuery_postalCode){
        keyValuePair_free(keyPairQuery_postalCode);
        keyPairQuery_postalCode = NULL;
    }
    if(keyQuery_businessPhone){
        free(keyQuery_businessPhone);
        keyQuery_businessPhone = NULL;
    }
    if(valueQuery_businessPhone){
        free(valueQuery_businessPhone);
        valueQuery_businessPhone = NULL;
    }
    if(keyPairQuery_businessPhone){
        keyValuePair_free(keyPairQuery_businessPhone);
        keyPairQuery_businessPhone = NULL;
    }
    if(keyQuery_businessPhoneExt){
        free(keyQuery_businessPhoneExt);
        keyQuery_businessPhoneExt = NULL;
    }
    if(valueQuery_businessPhoneExt){
        free(valueQuery_businessPhoneExt);
        valueQuery_businessPhoneExt = NULL;
    }
    if(keyPairQuery_businessPhoneExt){
        keyValuePair_free(keyPairQuery_businessPhoneExt);
        keyPairQuery_businessPhoneExt = NULL;
    }
    if(keyQuery_authorizeNetApiKey){
        free(keyQuery_authorizeNetApiKey);
        keyQuery_authorizeNetApiKey = NULL;
    }
    if(valueQuery_authorizeNetApiKey){
        free(valueQuery_authorizeNetApiKey);
        valueQuery_authorizeNetApiKey = NULL;
    }
    if(keyPairQuery_authorizeNetApiKey){
        keyValuePair_free(keyPairQuery_authorizeNetApiKey);
        keyPairQuery_authorizeNetApiKey = NULL;
    }
    if(keyQuery_authorizeNetTransactionKey){
        free(keyQuery_authorizeNetTransactionKey);
        keyQuery_authorizeNetTransactionKey = NULL;
    }
    if(valueQuery_authorizeNetTransactionKey){
        free(valueQuery_authorizeNetTransactionKey);
        valueQuery_authorizeNetTransactionKey = NULL;
    }
    if(keyPairQuery_authorizeNetTransactionKey){
        keyValuePair_free(keyPairQuery_authorizeNetTransactionKey);
        keyPairQuery_authorizeNetTransactionKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Billable
//
// Mark the billable as deleted
//
sirqul_response_t*
BillableEntityAPI_deleteBillableEntity(apiClient_t *apiClient, double version, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/billable/delete");



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
        cJSON *BillableEntityAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(BillableEntityAPIlocalVarJSON);
        cJSON_Delete(BillableEntityAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Billable
//
// Used to determine the associated BillableEntity of an account
//
billable_entity_response_t*
BillableEntityAPI_getBillableEntity(apiClient_t *apiClient, double version, char *deviceId, long accountId, int *includeCounts, int *includePayments)
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
    char *localVarPath = strdup("/api/{version}/billable/get");



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
    char *keyQuery_includeCounts = NULL;
    char * valueQuery_includeCounts = NULL;
    keyValuePair_t *keyPairQuery_includeCounts = 0;
    if (includeCounts)
    {
        keyQuery_includeCounts = strdup("includeCounts");
        valueQuery_includeCounts = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeCounts, MAX_NUMBER_LENGTH, "%d", *includeCounts);
        keyPairQuery_includeCounts = keyValuePair_create(keyQuery_includeCounts, valueQuery_includeCounts);
        list_addElement(localVarQueryParameters,keyPairQuery_includeCounts);
    }

    // query parameters
    char *keyQuery_includePayments = NULL;
    char * valueQuery_includePayments = NULL;
    keyValuePair_t *keyPairQuery_includePayments = 0;
    if (includePayments)
    {
        keyQuery_includePayments = strdup("includePayments");
        valueQuery_includePayments = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includePayments, MAX_NUMBER_LENGTH, "%d", *includePayments);
        keyPairQuery_includePayments = keyValuePair_create(keyQuery_includePayments, valueQuery_includePayments);
        list_addElement(localVarQueryParameters,keyPairQuery_includePayments);
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
    billable_entity_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillableEntityAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = billable_entity_response_parseFromJSON(BillableEntityAPIlocalVarJSON);
        cJSON_Delete(BillableEntityAPIlocalVarJSON);
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
    if(keyQuery_includeCounts){
        free(keyQuery_includeCounts);
        keyQuery_includeCounts = NULL;
    }
    if(valueQuery_includeCounts){
        free(valueQuery_includeCounts);
        valueQuery_includeCounts = NULL;
    }
    if(keyPairQuery_includeCounts){
        keyValuePair_free(keyPairQuery_includeCounts);
        keyPairQuery_includeCounts = NULL;
    }
    if(keyQuery_includePayments){
        free(keyQuery_includePayments);
        keyQuery_includePayments = NULL;
    }
    if(valueQuery_includePayments){
        free(valueQuery_includePayments);
        valueQuery_includePayments = NULL;
    }
    if(keyPairQuery_includePayments){
        keyValuePair_free(keyPairQuery_includePayments);
        keyPairQuery_includePayments = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Billable
//
// Updates the billable record for an account
//
billable_entity_response_t*
BillableEntityAPI_updateBillableEntity(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *businessPhone, char *businessPhoneExt, char *authorizeNetApiKey, char *authorizeNetTransactionKey)
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
    char *localVarPath = strdup("/api/{version}/billable/update");



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
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_streetAddress = NULL;
    char * valueQuery_streetAddress = NULL;
    keyValuePair_t *keyPairQuery_streetAddress = 0;
    if (streetAddress)
    {
        keyQuery_streetAddress = strdup("streetAddress");
        valueQuery_streetAddress = strdup((streetAddress));
        keyPairQuery_streetAddress = keyValuePair_create(keyQuery_streetAddress, valueQuery_streetAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress);
    }

    // query parameters
    char *keyQuery_streetAddress2 = NULL;
    char * valueQuery_streetAddress2 = NULL;
    keyValuePair_t *keyPairQuery_streetAddress2 = 0;
    if (streetAddress2)
    {
        keyQuery_streetAddress2 = strdup("streetAddress2");
        valueQuery_streetAddress2 = strdup((streetAddress2));
        keyPairQuery_streetAddress2 = keyValuePair_create(keyQuery_streetAddress2, valueQuery_streetAddress2);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress2);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_postalCode = NULL;
    char * valueQuery_postalCode = NULL;
    keyValuePair_t *keyPairQuery_postalCode = 0;
    if (postalCode)
    {
        keyQuery_postalCode = strdup("postalCode");
        valueQuery_postalCode = strdup((postalCode));
        keyPairQuery_postalCode = keyValuePair_create(keyQuery_postalCode, valueQuery_postalCode);
        list_addElement(localVarQueryParameters,keyPairQuery_postalCode);
    }

    // query parameters
    char *keyQuery_businessPhone = NULL;
    char * valueQuery_businessPhone = NULL;
    keyValuePair_t *keyPairQuery_businessPhone = 0;
    if (businessPhone)
    {
        keyQuery_businessPhone = strdup("businessPhone");
        valueQuery_businessPhone = strdup((businessPhone));
        keyPairQuery_businessPhone = keyValuePair_create(keyQuery_businessPhone, valueQuery_businessPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_businessPhone);
    }

    // query parameters
    char *keyQuery_businessPhoneExt = NULL;
    char * valueQuery_businessPhoneExt = NULL;
    keyValuePair_t *keyPairQuery_businessPhoneExt = 0;
    if (businessPhoneExt)
    {
        keyQuery_businessPhoneExt = strdup("businessPhoneExt");
        valueQuery_businessPhoneExt = strdup((businessPhoneExt));
        keyPairQuery_businessPhoneExt = keyValuePair_create(keyQuery_businessPhoneExt, valueQuery_businessPhoneExt);
        list_addElement(localVarQueryParameters,keyPairQuery_businessPhoneExt);
    }

    // query parameters
    char *keyQuery_authorizeNetApiKey = NULL;
    char * valueQuery_authorizeNetApiKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetApiKey = 0;
    if (authorizeNetApiKey)
    {
        keyQuery_authorizeNetApiKey = strdup("authorizeNetApiKey");
        valueQuery_authorizeNetApiKey = strdup((authorizeNetApiKey));
        keyPairQuery_authorizeNetApiKey = keyValuePair_create(keyQuery_authorizeNetApiKey, valueQuery_authorizeNetApiKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetApiKey);
    }

    // query parameters
    char *keyQuery_authorizeNetTransactionKey = NULL;
    char * valueQuery_authorizeNetTransactionKey = NULL;
    keyValuePair_t *keyPairQuery_authorizeNetTransactionKey = 0;
    if (authorizeNetTransactionKey)
    {
        keyQuery_authorizeNetTransactionKey = strdup("authorizeNetTransactionKey");
        valueQuery_authorizeNetTransactionKey = strdup((authorizeNetTransactionKey));
        keyPairQuery_authorizeNetTransactionKey = keyValuePair_create(keyQuery_authorizeNetTransactionKey, valueQuery_authorizeNetTransactionKey);
        list_addElement(localVarQueryParameters,keyPairQuery_authorizeNetTransactionKey);
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
    billable_entity_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillableEntityAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = billable_entity_response_parseFromJSON(BillableEntityAPIlocalVarJSON);
        cJSON_Delete(BillableEntityAPIlocalVarJSON);
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
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_streetAddress){
        free(keyQuery_streetAddress);
        keyQuery_streetAddress = NULL;
    }
    if(valueQuery_streetAddress){
        free(valueQuery_streetAddress);
        valueQuery_streetAddress = NULL;
    }
    if(keyPairQuery_streetAddress){
        keyValuePair_free(keyPairQuery_streetAddress);
        keyPairQuery_streetAddress = NULL;
    }
    if(keyQuery_streetAddress2){
        free(keyQuery_streetAddress2);
        keyQuery_streetAddress2 = NULL;
    }
    if(valueQuery_streetAddress2){
        free(valueQuery_streetAddress2);
        valueQuery_streetAddress2 = NULL;
    }
    if(keyPairQuery_streetAddress2){
        keyValuePair_free(keyPairQuery_streetAddress2);
        keyPairQuery_streetAddress2 = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_postalCode){
        free(keyQuery_postalCode);
        keyQuery_postalCode = NULL;
    }
    if(valueQuery_postalCode){
        free(valueQuery_postalCode);
        valueQuery_postalCode = NULL;
    }
    if(keyPairQuery_postalCode){
        keyValuePair_free(keyPairQuery_postalCode);
        keyPairQuery_postalCode = NULL;
    }
    if(keyQuery_businessPhone){
        free(keyQuery_businessPhone);
        keyQuery_businessPhone = NULL;
    }
    if(valueQuery_businessPhone){
        free(valueQuery_businessPhone);
        valueQuery_businessPhone = NULL;
    }
    if(keyPairQuery_businessPhone){
        keyValuePair_free(keyPairQuery_businessPhone);
        keyPairQuery_businessPhone = NULL;
    }
    if(keyQuery_businessPhoneExt){
        free(keyQuery_businessPhoneExt);
        keyQuery_businessPhoneExt = NULL;
    }
    if(valueQuery_businessPhoneExt){
        free(valueQuery_businessPhoneExt);
        valueQuery_businessPhoneExt = NULL;
    }
    if(keyPairQuery_businessPhoneExt){
        keyValuePair_free(keyPairQuery_businessPhoneExt);
        keyPairQuery_businessPhoneExt = NULL;
    }
    if(keyQuery_authorizeNetApiKey){
        free(keyQuery_authorizeNetApiKey);
        keyQuery_authorizeNetApiKey = NULL;
    }
    if(valueQuery_authorizeNetApiKey){
        free(valueQuery_authorizeNetApiKey);
        valueQuery_authorizeNetApiKey = NULL;
    }
    if(keyPairQuery_authorizeNetApiKey){
        keyValuePair_free(keyPairQuery_authorizeNetApiKey);
        keyPairQuery_authorizeNetApiKey = NULL;
    }
    if(keyQuery_authorizeNetTransactionKey){
        free(keyQuery_authorizeNetTransactionKey);
        keyQuery_authorizeNetTransactionKey = NULL;
    }
    if(valueQuery_authorizeNetTransactionKey){
        free(valueQuery_authorizeNetTransactionKey);
        valueQuery_authorizeNetTransactionKey = NULL;
    }
    if(keyPairQuery_authorizeNetTransactionKey){
        keyValuePair_free(keyPairQuery_authorizeNetTransactionKey);
        keyPairQuery_authorizeNetTransactionKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

