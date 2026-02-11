#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "DisbursementAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum PROVIDER for DisbursementAPI_createDisbursement

static char* createDisbursement_PROVIDER_ToString(sirqul_iot_platform_createDisbursement_provider_e PROVIDER){
    char *PROVIDERArray[] =  { "NULL", "AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM" };
    return PROVIDERArray[PROVIDER];
}

static sirqul_iot_platform_createDisbursement_provider_e createDisbursement_PROVIDER_FromString(char* PROVIDER){
    int stringToReturn = 0;
    char *PROVIDERArray[] =  { "NULL", "AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM" };
    size_t sizeofArray = sizeof(PROVIDERArray) / sizeof(PROVIDERArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PROVIDER, PROVIDERArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createDisbursement_PROVIDER_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createDisbursement_PROVIDER_convertToJSON(sirqul_iot_platform_createDisbursement_provider_e PROVIDER) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "provider", createDisbursement_PROVIDER_ToString(PROVIDER)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createDisbursement_PROVIDER_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createDisbursement_provider_e createDisbursement_PROVIDER_parseFromJSON(cJSON* PROVIDERJSON) {
    sirqul_iot_platform_createDisbursement_provider_e PROVIDERVariable = 0;
    cJSON *PROVIDERVar = cJSON_GetObjectItemCaseSensitive(PROVIDERJSON, "provider");
    if(!cJSON_IsString(PROVIDERVar) || (PROVIDERVar->valuestring == NULL))
    {
        goto end;
    }
    PROVIDERVariable = createDisbursement_PROVIDER_FromString(PROVIDERVar->valuestring);
    return PROVIDERVariable;
end:
    return 0;
}
*/

// Functions for enum PROVIDER for DisbursementAPI_updateDisbursement

static char* updateDisbursement_PROVIDER_ToString(sirqul_iot_platform_updateDisbursement_provider_e PROVIDER){
    char *PROVIDERArray[] =  { "NULL", "AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM" };
    return PROVIDERArray[PROVIDER];
}

static sirqul_iot_platform_updateDisbursement_provider_e updateDisbursement_PROVIDER_FromString(char* PROVIDER){
    int stringToReturn = 0;
    char *PROVIDERArray[] =  { "NULL", "AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM" };
    size_t sizeofArray = sizeof(PROVIDERArray) / sizeof(PROVIDERArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PROVIDER, PROVIDERArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateDisbursement_PROVIDER_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateDisbursement_PROVIDER_convertToJSON(sirqul_iot_platform_updateDisbursement_provider_e PROVIDER) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "provider", updateDisbursement_PROVIDER_ToString(PROVIDER)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateDisbursement_PROVIDER_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateDisbursement_provider_e updateDisbursement_PROVIDER_parseFromJSON(cJSON* PROVIDERJSON) {
    sirqul_iot_platform_updateDisbursement_provider_e PROVIDERVariable = 0;
    cJSON *PROVIDERVar = cJSON_GetObjectItemCaseSensitive(PROVIDERJSON, "provider");
    if(!cJSON_IsString(PROVIDERVar) || (PROVIDERVar->valuestring == NULL))
    {
        goto end;
    }
    PROVIDERVariable = updateDisbursement_PROVIDER_FromString(PROVIDERVar->valuestring);
    return PROVIDERVariable;
end:
    return 0;
}
*/


// Check Disbursements
//
// Checks the status of a captured disbrusement to see if it has been settled.
//
disbursement_response_t*
DisbursementAPI_checkDisbursements(apiClient_t *apiClient, long disbursementId)
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
    char *localVarPath = strdup("/disbursement/check");





    // query parameters
    char *keyQuery_disbursementId = NULL;
    char * valueQuery_disbursementId ;
    keyValuePair_t *keyPairQuery_disbursementId = 0;
    {
        keyQuery_disbursementId = strdup("disbursementId");
        valueQuery_disbursementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_disbursementId, MAX_NUMBER_LENGTH_LONG, "%d", disbursementId);
        keyPairQuery_disbursementId = keyValuePair_create(keyQuery_disbursementId, valueQuery_disbursementId);
        list_addElement(localVarQueryParameters,keyPairQuery_disbursementId);
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
    disbursement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DisbursementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = disbursement_response_parseFromJSON(DisbursementAPIlocalVarJSON);
        cJSON_Delete(DisbursementAPIlocalVarJSON);
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
    if(keyQuery_disbursementId){
        free(keyQuery_disbursementId);
        keyQuery_disbursementId = NULL;
    }
    if(keyPairQuery_disbursementId){
        keyValuePair_free(keyPairQuery_disbursementId);
        keyPairQuery_disbursementId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Disbursement
//
// Creates a Disbursement for sending money to a retailer
//
disbursement_response_t*
DisbursementAPI_createDisbursement(apiClient_t *apiClient, long accountId, long receiverAccountId, long originalSenderAccountId, double amount, sirqul_iot_platform_createDisbursement_provider_e provider, long scheduledDate, char *title, char *comment, char *externalId, char *introspectionParams)
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
    char *localVarPath = strdup("/disbursement/create");





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
    char *keyQuery_receiverAccountId = NULL;
    char * valueQuery_receiverAccountId ;
    keyValuePair_t *keyPairQuery_receiverAccountId = 0;
    {
        keyQuery_receiverAccountId = strdup("receiverAccountId");
        valueQuery_receiverAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_receiverAccountId, MAX_NUMBER_LENGTH_LONG, "%d", receiverAccountId);
        keyPairQuery_receiverAccountId = keyValuePair_create(keyQuery_receiverAccountId, valueQuery_receiverAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_receiverAccountId);
    }

    // query parameters
    char *keyQuery_originalSenderAccountId = NULL;
    char * valueQuery_originalSenderAccountId ;
    keyValuePair_t *keyPairQuery_originalSenderAccountId = 0;
    {
        keyQuery_originalSenderAccountId = strdup("originalSenderAccountId");
        valueQuery_originalSenderAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_originalSenderAccountId, MAX_NUMBER_LENGTH_LONG, "%d", originalSenderAccountId);
        keyPairQuery_originalSenderAccountId = keyValuePair_create(keyQuery_originalSenderAccountId, valueQuery_originalSenderAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_originalSenderAccountId);
    }

    // query parameters
    char *keyQuery_amount = NULL;
    double valueQuery_amount ;
    keyValuePair_t *keyPairQuery_amount = 0;
    if (amount)
    {
        keyQuery_amount = strdup("amount");
        valueQuery_amount = (amount);
        keyPairQuery_amount = keyValuePair_create(keyQuery_amount, &valueQuery_amount);
        list_addElement(localVarQueryParameters,keyPairQuery_amount);
    }

    // query parameters
    char *keyQuery_provider = NULL;
    sirqul_iot_platform_createDisbursement_provider_e valueQuery_provider ;
    keyValuePair_t *keyPairQuery_provider = 0;
    if (provider)
    {
        keyQuery_provider = strdup("provider");
        valueQuery_provider = (provider);
        keyPairQuery_provider = keyValuePair_create(keyQuery_provider, strdup(createDisbursement_PROVIDER_ToString(
        valueQuery_provider)));
        list_addElement(localVarQueryParameters,keyPairQuery_provider);
    }

    // query parameters
    char *keyQuery_scheduledDate = NULL;
    char * valueQuery_scheduledDate ;
    keyValuePair_t *keyPairQuery_scheduledDate = 0;
    {
        keyQuery_scheduledDate = strdup("scheduledDate");
        valueQuery_scheduledDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledDate, MAX_NUMBER_LENGTH_LONG, "%d", scheduledDate);
        keyPairQuery_scheduledDate = keyValuePair_create(keyQuery_scheduledDate, valueQuery_scheduledDate);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledDate);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_comment = NULL;
    char * valueQuery_comment = NULL;
    keyValuePair_t *keyPairQuery_comment = 0;
    if (comment)
    {
        keyQuery_comment = strdup("comment");
        valueQuery_comment = strdup((comment));
        keyPairQuery_comment = keyValuePair_create(keyQuery_comment, valueQuery_comment);
        list_addElement(localVarQueryParameters,keyPairQuery_comment);
    }

    // query parameters
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
    }

    // query parameters
    char *keyQuery_introspectionParams = NULL;
    char * valueQuery_introspectionParams = NULL;
    keyValuePair_t *keyPairQuery_introspectionParams = 0;
    if (introspectionParams)
    {
        keyQuery_introspectionParams = strdup("introspectionParams");
        valueQuery_introspectionParams = strdup((introspectionParams));
        keyPairQuery_introspectionParams = keyValuePair_create(keyQuery_introspectionParams, valueQuery_introspectionParams);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionParams);
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
    disbursement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DisbursementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = disbursement_response_parseFromJSON(DisbursementAPIlocalVarJSON);
        cJSON_Delete(DisbursementAPIlocalVarJSON);
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
    if(keyQuery_receiverAccountId){
        free(keyQuery_receiverAccountId);
        keyQuery_receiverAccountId = NULL;
    }
    if(keyPairQuery_receiverAccountId){
        keyValuePair_free(keyPairQuery_receiverAccountId);
        keyPairQuery_receiverAccountId = NULL;
    }
    if(keyQuery_originalSenderAccountId){
        free(keyQuery_originalSenderAccountId);
        keyQuery_originalSenderAccountId = NULL;
    }
    if(keyPairQuery_originalSenderAccountId){
        keyValuePair_free(keyPairQuery_originalSenderAccountId);
        keyPairQuery_originalSenderAccountId = NULL;
    }
    if(keyQuery_amount){
        free(keyQuery_amount);
        keyQuery_amount = NULL;
    }
    if(keyPairQuery_amount){
        keyValuePair_free(keyPairQuery_amount);
        keyPairQuery_amount = NULL;
    }
    if(keyQuery_provider){
        free(keyQuery_provider);
        keyQuery_provider = NULL;
    }
    if(keyPairQuery_provider){
        keyValuePair_free(keyPairQuery_provider);
        keyPairQuery_provider = NULL;
    }
    if(keyQuery_scheduledDate){
        free(keyQuery_scheduledDate);
        keyQuery_scheduledDate = NULL;
    }
    if(keyPairQuery_scheduledDate){
        keyValuePair_free(keyPairQuery_scheduledDate);
        keyPairQuery_scheduledDate = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_comment){
        free(keyQuery_comment);
        keyQuery_comment = NULL;
    }
    if(valueQuery_comment){
        free(valueQuery_comment);
        valueQuery_comment = NULL;
    }
    if(keyPairQuery_comment){
        keyValuePair_free(keyPairQuery_comment);
        keyPairQuery_comment = NULL;
    }
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
    }
    if(keyQuery_introspectionParams){
        free(keyQuery_introspectionParams);
        keyQuery_introspectionParams = NULL;
    }
    if(valueQuery_introspectionParams){
        free(valueQuery_introspectionParams);
        valueQuery_introspectionParams = NULL;
    }
    if(keyPairQuery_introspectionParams){
        keyValuePair_free(keyPairQuery_introspectionParams);
        keyPairQuery_introspectionParams = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Disbursement
//
// Get Disbursement details
//
disbursement_response_t*
DisbursementAPI_getDisbursement(apiClient_t *apiClient, long accountId, long disbursementId)
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
    char *localVarPath = strdup("/disbursement/get");





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
    char *keyQuery_disbursementId = NULL;
    char * valueQuery_disbursementId ;
    keyValuePair_t *keyPairQuery_disbursementId = 0;
    {
        keyQuery_disbursementId = strdup("disbursementId");
        valueQuery_disbursementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_disbursementId, MAX_NUMBER_LENGTH_LONG, "%d", disbursementId);
        keyPairQuery_disbursementId = keyValuePair_create(keyQuery_disbursementId, valueQuery_disbursementId);
        list_addElement(localVarQueryParameters,keyPairQuery_disbursementId);
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
    disbursement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DisbursementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = disbursement_response_parseFromJSON(DisbursementAPIlocalVarJSON);
        cJSON_Delete(DisbursementAPIlocalVarJSON);
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
    if(keyQuery_disbursementId){
        free(keyQuery_disbursementId);
        keyQuery_disbursementId = NULL;
    }
    if(keyPairQuery_disbursementId){
        keyValuePair_free(keyPairQuery_disbursementId);
        keyPairQuery_disbursementId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Disbursements
//
// Search Disbursements
//
list_t*
DisbursementAPI_searchDisbursements(apiClient_t *apiClient, long accountId, long receiverAccountId, char *statuses, char *providers, long beforeDate, long afterDate, int *start, int *limit, int *activeOnly, char *externalId)
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
    char *localVarPath = strdup("/disbursement/search");





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
    char *keyQuery_receiverAccountId = NULL;
    char * valueQuery_receiverAccountId ;
    keyValuePair_t *keyPairQuery_receiverAccountId = 0;
    {
        keyQuery_receiverAccountId = strdup("receiverAccountId");
        valueQuery_receiverAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_receiverAccountId, MAX_NUMBER_LENGTH_LONG, "%d", receiverAccountId);
        keyPairQuery_receiverAccountId = keyValuePair_create(keyQuery_receiverAccountId, valueQuery_receiverAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_receiverAccountId);
    }

    // query parameters
    char *keyQuery_statuses = NULL;
    char * valueQuery_statuses = NULL;
    keyValuePair_t *keyPairQuery_statuses = 0;
    if (statuses)
    {
        keyQuery_statuses = strdup("statuses");
        valueQuery_statuses = strdup((statuses));
        keyPairQuery_statuses = keyValuePair_create(keyQuery_statuses, valueQuery_statuses);
        list_addElement(localVarQueryParameters,keyPairQuery_statuses);
    }

    // query parameters
    char *keyQuery_providers = NULL;
    char * valueQuery_providers = NULL;
    keyValuePair_t *keyPairQuery_providers = 0;
    if (providers)
    {
        keyQuery_providers = strdup("providers");
        valueQuery_providers = strdup((providers));
        keyPairQuery_providers = keyValuePair_create(keyQuery_providers, valueQuery_providers);
        list_addElement(localVarQueryParameters,keyPairQuery_providers);
    }

    // query parameters
    char *keyQuery_beforeDate = NULL;
    char * valueQuery_beforeDate ;
    keyValuePair_t *keyPairQuery_beforeDate = 0;
    {
        keyQuery_beforeDate = strdup("beforeDate");
        valueQuery_beforeDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_beforeDate, MAX_NUMBER_LENGTH_LONG, "%d", beforeDate);
        keyPairQuery_beforeDate = keyValuePair_create(keyQuery_beforeDate, valueQuery_beforeDate);
        list_addElement(localVarQueryParameters,keyPairQuery_beforeDate);
    }

    // query parameters
    char *keyQuery_afterDate = NULL;
    char * valueQuery_afterDate ;
    keyValuePair_t *keyPairQuery_afterDate = 0;
    {
        keyQuery_afterDate = strdup("afterDate");
        valueQuery_afterDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_afterDate, MAX_NUMBER_LENGTH_LONG, "%d", afterDate);
        keyPairQuery_afterDate = keyValuePair_create(keyQuery_afterDate, valueQuery_afterDate);
        list_addElement(localVarQueryParameters,keyPairQuery_afterDate);
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
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
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
        cJSON *DisbursementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(DisbursementAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, DisbursementAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( DisbursementAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_receiverAccountId){
        free(keyQuery_receiverAccountId);
        keyQuery_receiverAccountId = NULL;
    }
    if(keyPairQuery_receiverAccountId){
        keyValuePair_free(keyPairQuery_receiverAccountId);
        keyPairQuery_receiverAccountId = NULL;
    }
    if(keyQuery_statuses){
        free(keyQuery_statuses);
        keyQuery_statuses = NULL;
    }
    if(valueQuery_statuses){
        free(valueQuery_statuses);
        valueQuery_statuses = NULL;
    }
    if(keyPairQuery_statuses){
        keyValuePair_free(keyPairQuery_statuses);
        keyPairQuery_statuses = NULL;
    }
    if(keyQuery_providers){
        free(keyQuery_providers);
        keyQuery_providers = NULL;
    }
    if(valueQuery_providers){
        free(valueQuery_providers);
        valueQuery_providers = NULL;
    }
    if(keyPairQuery_providers){
        keyValuePair_free(keyPairQuery_providers);
        keyPairQuery_providers = NULL;
    }
    if(keyQuery_beforeDate){
        free(keyQuery_beforeDate);
        keyQuery_beforeDate = NULL;
    }
    if(keyPairQuery_beforeDate){
        keyValuePair_free(keyPairQuery_beforeDate);
        keyPairQuery_beforeDate = NULL;
    }
    if(keyQuery_afterDate){
        free(keyQuery_afterDate);
        keyQuery_afterDate = NULL;
    }
    if(keyPairQuery_afterDate){
        keyValuePair_free(keyPairQuery_afterDate);
        keyPairQuery_afterDate = NULL;
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
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Disbursement
//
// Update Disbursement
//
disbursement_response_t*
DisbursementAPI_updateDisbursement(apiClient_t *apiClient, long accountId, long disbursementId, double amount, sirqul_iot_platform_updateDisbursement_provider_e provider, long scheduledDate, char *title, char *comment, char *externalId, int *retry, char *introspectionParams)
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
    char *localVarPath = strdup("/disbursement/update");





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
    char *keyQuery_disbursementId = NULL;
    char * valueQuery_disbursementId ;
    keyValuePair_t *keyPairQuery_disbursementId = 0;
    {
        keyQuery_disbursementId = strdup("disbursementId");
        valueQuery_disbursementId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_disbursementId, MAX_NUMBER_LENGTH_LONG, "%d", disbursementId);
        keyPairQuery_disbursementId = keyValuePair_create(keyQuery_disbursementId, valueQuery_disbursementId);
        list_addElement(localVarQueryParameters,keyPairQuery_disbursementId);
    }

    // query parameters
    char *keyQuery_amount = NULL;
    double valueQuery_amount ;
    keyValuePair_t *keyPairQuery_amount = 0;
    if (amount)
    {
        keyQuery_amount = strdup("amount");
        valueQuery_amount = (amount);
        keyPairQuery_amount = keyValuePair_create(keyQuery_amount, &valueQuery_amount);
        list_addElement(localVarQueryParameters,keyPairQuery_amount);
    }

    // query parameters
    char *keyQuery_provider = NULL;
    sirqul_iot_platform_updateDisbursement_provider_e valueQuery_provider ;
    keyValuePair_t *keyPairQuery_provider = 0;
    if (provider)
    {
        keyQuery_provider = strdup("provider");
        valueQuery_provider = (provider);
        keyPairQuery_provider = keyValuePair_create(keyQuery_provider, strdup(updateDisbursement_PROVIDER_ToString(
        valueQuery_provider)));
        list_addElement(localVarQueryParameters,keyPairQuery_provider);
    }

    // query parameters
    char *keyQuery_scheduledDate = NULL;
    char * valueQuery_scheduledDate ;
    keyValuePair_t *keyPairQuery_scheduledDate = 0;
    {
        keyQuery_scheduledDate = strdup("scheduledDate");
        valueQuery_scheduledDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_scheduledDate, MAX_NUMBER_LENGTH_LONG, "%d", scheduledDate);
        keyPairQuery_scheduledDate = keyValuePair_create(keyQuery_scheduledDate, valueQuery_scheduledDate);
        list_addElement(localVarQueryParameters,keyPairQuery_scheduledDate);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_comment = NULL;
    char * valueQuery_comment = NULL;
    keyValuePair_t *keyPairQuery_comment = 0;
    if (comment)
    {
        keyQuery_comment = strdup("comment");
        valueQuery_comment = strdup((comment));
        keyPairQuery_comment = keyValuePair_create(keyQuery_comment, valueQuery_comment);
        list_addElement(localVarQueryParameters,keyPairQuery_comment);
    }

    // query parameters
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
    }

    // query parameters
    char *keyQuery_retry = NULL;
    char * valueQuery_retry = NULL;
    keyValuePair_t *keyPairQuery_retry = 0;
    if (retry)
    {
        keyQuery_retry = strdup("retry");
        valueQuery_retry = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_retry, MAX_NUMBER_LENGTH, "%d", *retry);
        keyPairQuery_retry = keyValuePair_create(keyQuery_retry, valueQuery_retry);
        list_addElement(localVarQueryParameters,keyPairQuery_retry);
    }

    // query parameters
    char *keyQuery_introspectionParams = NULL;
    char * valueQuery_introspectionParams = NULL;
    keyValuePair_t *keyPairQuery_introspectionParams = 0;
    if (introspectionParams)
    {
        keyQuery_introspectionParams = strdup("introspectionParams");
        valueQuery_introspectionParams = strdup((introspectionParams));
        keyPairQuery_introspectionParams = keyValuePair_create(keyQuery_introspectionParams, valueQuery_introspectionParams);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionParams);
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
    disbursement_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *DisbursementAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = disbursement_response_parseFromJSON(DisbursementAPIlocalVarJSON);
        cJSON_Delete(DisbursementAPIlocalVarJSON);
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
    if(keyQuery_disbursementId){
        free(keyQuery_disbursementId);
        keyQuery_disbursementId = NULL;
    }
    if(keyPairQuery_disbursementId){
        keyValuePair_free(keyPairQuery_disbursementId);
        keyPairQuery_disbursementId = NULL;
    }
    if(keyQuery_amount){
        free(keyQuery_amount);
        keyQuery_amount = NULL;
    }
    if(keyPairQuery_amount){
        keyValuePair_free(keyPairQuery_amount);
        keyPairQuery_amount = NULL;
    }
    if(keyQuery_provider){
        free(keyQuery_provider);
        keyQuery_provider = NULL;
    }
    if(keyPairQuery_provider){
        keyValuePair_free(keyPairQuery_provider);
        keyPairQuery_provider = NULL;
    }
    if(keyQuery_scheduledDate){
        free(keyQuery_scheduledDate);
        keyQuery_scheduledDate = NULL;
    }
    if(keyPairQuery_scheduledDate){
        keyValuePair_free(keyPairQuery_scheduledDate);
        keyPairQuery_scheduledDate = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_comment){
        free(keyQuery_comment);
        keyQuery_comment = NULL;
    }
    if(valueQuery_comment){
        free(valueQuery_comment);
        valueQuery_comment = NULL;
    }
    if(keyPairQuery_comment){
        keyValuePair_free(keyPairQuery_comment);
        keyPairQuery_comment = NULL;
    }
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
    }
    if(keyQuery_retry){
        free(keyQuery_retry);
        keyQuery_retry = NULL;
    }
    if(valueQuery_retry){
        free(valueQuery_retry);
        valueQuery_retry = NULL;
    }
    if(keyPairQuery_retry){
        keyValuePair_free(keyPairQuery_retry);
        keyPairQuery_retry = NULL;
    }
    if(keyQuery_introspectionParams){
        free(keyQuery_introspectionParams);
        keyQuery_introspectionParams = NULL;
    }
    if(valueQuery_introspectionParams){
        free(valueQuery_introspectionParams);
        valueQuery_introspectionParams = NULL;
    }
    if(keyPairQuery_introspectionParams){
        keyValuePair_free(keyPairQuery_introspectionParams);
        keyPairQuery_introspectionParams = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

