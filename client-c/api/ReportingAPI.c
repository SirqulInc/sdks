#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ReportingAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum STATUS for ReportingAPI_createBatch

static char* createBatch_STATUS_ToString(sirqul_iot_platform_createBatch_status_e STATUS){
    char *STATUSArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY" };
    return STATUSArray[STATUS];
}

static sirqul_iot_platform_createBatch_status_e createBatch_STATUS_FromString(char* STATUS){
    int stringToReturn = 0;
    char *STATUSArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY" };
    size_t sizeofArray = sizeof(STATUSArray) / sizeof(STATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(STATUS, STATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createBatch_STATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createBatch_STATUS_convertToJSON(sirqul_iot_platform_createBatch_status_e STATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "status", createBatch_STATUS_ToString(STATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createBatch_STATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createBatch_status_e createBatch_STATUS_parseFromJSON(cJSON* STATUSJSON) {
    sirqul_iot_platform_createBatch_status_e STATUSVariable = 0;
    cJSON *STATUSVar = cJSON_GetObjectItemCaseSensitive(STATUSJSON, "status");
    if(!cJSON_IsString(STATUSVar) || (STATUSVar->valuestring == NULL))
    {
        goto end;
    }
    STATUSVariable = createBatch_STATUS_FromString(STATUSVar->valuestring);
    return STATUSVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for ReportingAPI_runReport

static char* runReport_RESPONSEFORMAT_ToString(sirqul_iot_platform_runReport_responseFormat_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static sirqul_iot_platform_runReport_responseFormat_e runReport_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
    int stringToReturn = 0;
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    size_t sizeofArray = sizeof(RESPONSEFORMATArray) / sizeof(RESPONSEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEFORMAT, RESPONSEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function runReport_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *runReport_RESPONSEFORMAT_convertToJSON(sirqul_iot_platform_runReport_responseFormat_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseFormat", runReport_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function runReport_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_runReport_responseFormat_e runReport_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    sirqul_iot_platform_runReport_responseFormat_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "responseFormat");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = runReport_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum STATUS for ReportingAPI_searchBatch

static char* searchBatch_STATUS_ToString(sirqul_iot_platform_searchBatch_status_e STATUS){
    char *STATUSArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY" };
    return STATUSArray[STATUS];
}

static sirqul_iot_platform_searchBatch_status_e searchBatch_STATUS_FromString(char* STATUS){
    int stringToReturn = 0;
    char *STATUSArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY" };
    size_t sizeofArray = sizeof(STATUSArray) / sizeof(STATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(STATUS, STATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchBatch_STATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchBatch_STATUS_convertToJSON(sirqul_iot_platform_searchBatch_status_e STATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "status", searchBatch_STATUS_ToString(STATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchBatch_STATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchBatch_status_e searchBatch_STATUS_parseFromJSON(cJSON* STATUSJSON) {
    sirqul_iot_platform_searchBatch_status_e STATUSVariable = 0;
    cJSON *STATUSVar = cJSON_GetObjectItemCaseSensitive(STATUSJSON, "status");
    if(!cJSON_IsString(STATUSVar) || (STATUSVar->valuestring == NULL))
    {
        goto end;
    }
    STATUSVariable = searchBatch_STATUS_FromString(STATUSVar->valuestring);
    return STATUSVariable;
end:
    return 0;
}
*/


// Create Offline Report
//
// Create an entry for the batch for offline report
//
report_batch_response_t*
ReportingAPI_createBatch(apiClient_t *apiClient, long accountId, sirqul_iot_platform_createBatch_status_e status, int *previewLimit, char *appKey, char *endpoint, char *parameters, char *name, long startDate, long endDate, char *description, char *pageUrl)
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
    char *localVarPath = strdup("/report/batch/create");





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
    char *keyQuery_status = NULL;
    sirqul_iot_platform_createBatch_status_e valueQuery_status ;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = (status);
        keyPairQuery_status = keyValuePair_create(keyQuery_status, strdup(createBatch_STATUS_ToString(
        valueQuery_status)));
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_endpoint = NULL;
    char * valueQuery_endpoint = NULL;
    keyValuePair_t *keyPairQuery_endpoint = 0;
    if (endpoint)
    {
        keyQuery_endpoint = strdup("endpoint");
        valueQuery_endpoint = strdup((endpoint));
        keyPairQuery_endpoint = keyValuePair_create(keyQuery_endpoint, valueQuery_endpoint);
        list_addElement(localVarQueryParameters,keyPairQuery_endpoint);
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
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_previewLimit = NULL;
    char * valueQuery_previewLimit = NULL;
    keyValuePair_t *keyPairQuery_previewLimit = 0;
    if (previewLimit)
    {
        keyQuery_previewLimit = strdup("previewLimit");
        valueQuery_previewLimit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_previewLimit, MAX_NUMBER_LENGTH, "%d", *previewLimit);
        keyPairQuery_previewLimit = keyValuePair_create(keyQuery_previewLimit, valueQuery_previewLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_previewLimit);
    }

    // query parameters
    char *keyQuery_pageUrl = NULL;
    char * valueQuery_pageUrl = NULL;
    keyValuePair_t *keyPairQuery_pageUrl = 0;
    if (pageUrl)
    {
        keyQuery_pageUrl = strdup("pageUrl");
        valueQuery_pageUrl = strdup((pageUrl));
        keyPairQuery_pageUrl = keyValuePair_create(keyQuery_pageUrl, valueQuery_pageUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_pageUrl);
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
    report_batch_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ReportingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = report_batch_response_parseFromJSON(ReportingAPIlocalVarJSON);
        cJSON_Delete(ReportingAPIlocalVarJSON);
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
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_endpoint){
        free(keyQuery_endpoint);
        keyQuery_endpoint = NULL;
    }
    if(valueQuery_endpoint){
        free(valueQuery_endpoint);
        valueQuery_endpoint = NULL;
    }
    if(keyPairQuery_endpoint){
        keyValuePair_free(keyPairQuery_endpoint);
        keyPairQuery_endpoint = NULL;
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
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_previewLimit){
        free(keyQuery_previewLimit);
        keyQuery_previewLimit = NULL;
    }
    if(valueQuery_previewLimit){
        free(valueQuery_previewLimit);
        valueQuery_previewLimit = NULL;
    }
    if(keyPairQuery_previewLimit){
        keyValuePair_free(keyPairQuery_previewLimit);
        keyPairQuery_previewLimit = NULL;
    }
    if(keyQuery_pageUrl){
        free(keyQuery_pageUrl);
        keyQuery_pageUrl = NULL;
    }
    if(valueQuery_pageUrl){
        free(valueQuery_pageUrl);
        valueQuery_pageUrl = NULL;
    }
    if(keyPairQuery_pageUrl){
        keyValuePair_free(keyPairQuery_pageUrl);
        keyPairQuery_pageUrl = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Offline Report
//
// Create an entry for the batch for offline report
//
report_region_leg_summary_batch_response_t*
ReportingAPI_createRegionLegSummaryBatch(apiClient_t *apiClient, list_t *body)
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
    char *localVarPath = strdup("/report/region/summary/batch");





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
        localVar_body = region_leg_summary_convertToJSON(bodyBodyListEntry->data);
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
    //nonprimitive not container
    report_region_leg_summary_batch_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ReportingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = report_region_leg_summary_batch_response_parseFromJSON(ReportingAPIlocalVarJSON);
        cJSON_Delete(ReportingAPIlocalVarJSON);
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

// Delete Offline Report
//
// Deletes a batch report.
//
sirqul_response_t*
ReportingAPI_deleteBatch(apiClient_t *apiClient, long accountId, long batchId)
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
    char *localVarPath = strdup("/report/batch/delete");





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
    char *keyQuery_batchId = NULL;
    char * valueQuery_batchId ;
    keyValuePair_t *keyPairQuery_batchId = 0;
    {
        keyQuery_batchId = strdup("batchId");
        valueQuery_batchId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_batchId, MAX_NUMBER_LENGTH_LONG, "%d", batchId);
        keyPairQuery_batchId = keyValuePair_create(keyQuery_batchId, valueQuery_batchId);
        list_addElement(localVarQueryParameters,keyPairQuery_batchId);
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
        cJSON *ReportingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ReportingAPIlocalVarJSON);
        cJSON_Delete(ReportingAPIlocalVarJSON);
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
    if(keyQuery_batchId){
        free(keyQuery_batchId);
        keyQuery_batchId = NULL;
    }
    if(keyPairQuery_batchId){
        keyValuePair_free(keyPairQuery_batchId);
        keyPairQuery_batchId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Offline Report
//
// Checks status of batch report.
//
report_batch_response_t*
ReportingAPI_getReportBatch(apiClient_t *apiClient, long accountId, long batchId, int *allResults)
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
    char *localVarPath = strdup("/report/batch/get");





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
    char *keyQuery_batchId = NULL;
    char * valueQuery_batchId ;
    keyValuePair_t *keyPairQuery_batchId = 0;
    {
        keyQuery_batchId = strdup("batchId");
        valueQuery_batchId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_batchId, MAX_NUMBER_LENGTH_LONG, "%d", batchId);
        keyPairQuery_batchId = keyValuePair_create(keyQuery_batchId, valueQuery_batchId);
        list_addElement(localVarQueryParameters,keyPairQuery_batchId);
    }

    // query parameters
    char *keyQuery_allResults = NULL;
    char * valueQuery_allResults = NULL;
    keyValuePair_t *keyPairQuery_allResults = 0;
    if (allResults)
    {
        keyQuery_allResults = strdup("allResults");
        valueQuery_allResults = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_allResults, MAX_NUMBER_LENGTH, "%d", *allResults);
        keyPairQuery_allResults = keyValuePair_create(keyQuery_allResults, valueQuery_allResults);
        list_addElement(localVarQueryParameters,keyPairQuery_allResults);
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
    report_batch_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ReportingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = report_batch_response_parseFromJSON(ReportingAPIlocalVarJSON);
        cJSON_Delete(ReportingAPIlocalVarJSON);
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
    if(keyQuery_batchId){
        free(keyQuery_batchId);
        keyQuery_batchId = NULL;
    }
    if(keyPairQuery_batchId){
        keyValuePair_free(keyPairQuery_batchId);
        keyPairQuery_batchId = NULL;
    }
    if(keyQuery_allResults){
        free(keyQuery_allResults);
        keyQuery_allResults = NULL;
    }
    if(valueQuery_allResults){
        free(valueQuery_allResults);
        valueQuery_allResults = NULL;
    }
    if(keyPairQuery_allResults){
        keyValuePair_free(keyPairQuery_allResults);
        keyPairQuery_allResults = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Run Report
//
//  This endpoint allows you to run a set of predefined reports that can be used to understand your users' behavior as well as trends within your application.
//
report_response_t*
ReportingAPI_runReport(apiClient_t *apiClient, int *desc, long accountId, char *query, char *parameters, char *order, long start, long limit, sirqul_iot_platform_runReport_responseFormat_e responseFormat)
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
    char *localVarPath = strdup("/report/run");





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
    char *keyQuery_query = NULL;
    char * valueQuery_query = NULL;
    keyValuePair_t *keyPairQuery_query = 0;
    if (query)
    {
        keyQuery_query = strdup("query");
        valueQuery_query = strdup((query));
        keyPairQuery_query = keyValuePair_create(keyQuery_query, valueQuery_query);
        list_addElement(localVarQueryParameters,keyPairQuery_query);
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

    // query parameters
    char *keyQuery_order = NULL;
    char * valueQuery_order = NULL;
    keyValuePair_t *keyPairQuery_order = 0;
    if (order)
    {
        keyQuery_order = strdup("order");
        valueQuery_order = strdup((order));
        keyPairQuery_order = keyValuePair_create(keyQuery_order, valueQuery_order);
        list_addElement(localVarQueryParameters,keyPairQuery_order);
    }

    // query parameters
    char *keyQuery_desc = NULL;
    char * valueQuery_desc = NULL;
    keyValuePair_t *keyPairQuery_desc = 0;
    if (desc)
    {
        keyQuery_desc = strdup("desc");
        valueQuery_desc = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_desc, MAX_NUMBER_LENGTH, "%d", *desc);
        keyPairQuery_desc = keyValuePair_create(keyQuery_desc, valueQuery_desc);
        list_addElement(localVarQueryParameters,keyPairQuery_desc);
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
    char *keyQuery_limit = NULL;
    char * valueQuery_limit ;
    keyValuePair_t *keyPairQuery_limit = 0;
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH_LONG, "%d", limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_responseFormat = NULL;
    sirqul_iot_platform_runReport_responseFormat_e valueQuery_responseFormat ;
    keyValuePair_t *keyPairQuery_responseFormat = 0;
    if (responseFormat)
    {
        keyQuery_responseFormat = strdup("responseFormat");
        valueQuery_responseFormat = (responseFormat);
        keyPairQuery_responseFormat = keyValuePair_create(keyQuery_responseFormat, strdup(runReport_RESPONSEFORMAT_ToString(
        valueQuery_responseFormat)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseFormat);
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
    report_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ReportingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = report_response_parseFromJSON(ReportingAPIlocalVarJSON);
        cJSON_Delete(ReportingAPIlocalVarJSON);
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
    if(keyQuery_query){
        free(keyQuery_query);
        keyQuery_query = NULL;
    }
    if(valueQuery_query){
        free(valueQuery_query);
        valueQuery_query = NULL;
    }
    if(keyPairQuery_query){
        keyValuePair_free(keyPairQuery_query);
        keyPairQuery_query = NULL;
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
    if(keyQuery_order){
        free(keyQuery_order);
        keyQuery_order = NULL;
    }
    if(valueQuery_order){
        free(valueQuery_order);
        valueQuery_order = NULL;
    }
    if(keyPairQuery_order){
        keyValuePair_free(keyPairQuery_order);
        keyPairQuery_order = NULL;
    }
    if(keyQuery_desc){
        free(keyQuery_desc);
        keyQuery_desc = NULL;
    }
    if(valueQuery_desc){
        free(valueQuery_desc);
        valueQuery_desc = NULL;
    }
    if(keyPairQuery_desc){
        keyValuePair_free(keyPairQuery_desc);
        keyPairQuery_desc = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_responseFormat){
        free(keyQuery_responseFormat);
        keyQuery_responseFormat = NULL;
    }
    if(keyPairQuery_responseFormat){
        keyValuePair_free(keyPairQuery_responseFormat);
        keyPairQuery_responseFormat = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Offline Reports
//
// Retrieves batches for a user..
//
list_t*
ReportingAPI_searchBatch(apiClient_t *apiClient, long accountId, int *start, int *limit, char *names, char *appKey, sirqul_iot_platform_searchBatch_status_e status, int *globalAppSearch, long startDate, long endDate)
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
    char *localVarPath = strdup("/report/batch/search");





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
    char *keyQuery_names = NULL;
    char * valueQuery_names = NULL;
    keyValuePair_t *keyPairQuery_names = 0;
    if (names)
    {
        keyQuery_names = strdup("names");
        valueQuery_names = strdup((names));
        keyPairQuery_names = keyValuePair_create(keyQuery_names, valueQuery_names);
        list_addElement(localVarQueryParameters,keyPairQuery_names);
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
    char *keyQuery_status = NULL;
    sirqul_iot_platform_searchBatch_status_e valueQuery_status ;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = (status);
        keyPairQuery_status = keyValuePair_create(keyQuery_status, strdup(searchBatch_STATUS_ToString(
        valueQuery_status)));
        list_addElement(localVarQueryParameters,keyPairQuery_status);
    }

    // query parameters
    char *keyQuery_globalAppSearch = NULL;
    char * valueQuery_globalAppSearch = NULL;
    keyValuePair_t *keyPairQuery_globalAppSearch = 0;
    if (globalAppSearch)
    {
        keyQuery_globalAppSearch = strdup("globalAppSearch");
        valueQuery_globalAppSearch = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_globalAppSearch, MAX_NUMBER_LENGTH, "%d", *globalAppSearch);
        keyPairQuery_globalAppSearch = keyValuePair_create(keyQuery_globalAppSearch, valueQuery_globalAppSearch);
        list_addElement(localVarQueryParameters,keyPairQuery_globalAppSearch);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
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
        cJSON *ReportingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ReportingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ReportingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ReportingAPIlocalVarJSON);
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
    if(keyQuery_names){
        free(keyQuery_names);
        keyQuery_names = NULL;
    }
    if(valueQuery_names){
        free(valueQuery_names);
        valueQuery_names = NULL;
    }
    if(keyPairQuery_names){
        keyValuePair_free(keyPairQuery_names);
        keyPairQuery_names = NULL;
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
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
    }
    if(keyQuery_globalAppSearch){
        free(keyQuery_globalAppSearch);
        keyQuery_globalAppSearch = NULL;
    }
    if(valueQuery_globalAppSearch){
        free(valueQuery_globalAppSearch);
        valueQuery_globalAppSearch = NULL;
    }
    if(keyPairQuery_globalAppSearch){
        keyValuePair_free(keyPairQuery_globalAppSearch);
        keyPairQuery_globalAppSearch = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

