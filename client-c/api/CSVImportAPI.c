#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "CSVImportAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum RESPONSEGROUP for CSVImportAPI_getStatusCSV

static char* getStatusCSV_RESPONSEGROUP_ToString(sirqul_iot_platform_getStatusCSV_responseGroup_e RESPONSEGROUP){
    char *RESPONSEGROUPArray[] =  { "NULL", "SUMMARY", "DETAILS", "ERRORS", "ALL" };
    return RESPONSEGROUPArray[RESPONSEGROUP];
}

static sirqul_iot_platform_getStatusCSV_responseGroup_e getStatusCSV_RESPONSEGROUP_FromString(char* RESPONSEGROUP){
    int stringToReturn = 0;
    char *RESPONSEGROUPArray[] =  { "NULL", "SUMMARY", "DETAILS", "ERRORS", "ALL" };
    size_t sizeofArray = sizeof(RESPONSEGROUPArray) / sizeof(RESPONSEGROUPArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESPONSEGROUP, RESPONSEGROUPArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getStatusCSV_RESPONSEGROUP_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getStatusCSV_RESPONSEGROUP_convertToJSON(sirqul_iot_platform_getStatusCSV_responseGroup_e RESPONSEGROUP) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseGroup", getStatusCSV_RESPONSEGROUP_ToString(RESPONSEGROUP)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getStatusCSV_RESPONSEGROUP_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getStatusCSV_responseGroup_e getStatusCSV_RESPONSEGROUP_parseFromJSON(cJSON* RESPONSEGROUPJSON) {
    sirqul_iot_platform_getStatusCSV_responseGroup_e RESPONSEGROUPVariable = 0;
    cJSON *RESPONSEGROUPVar = cJSON_GetObjectItemCaseSensitive(RESPONSEGROUPJSON, "responseGroup");
    if(!cJSON_IsString(RESPONSEGROUPVar) || (RESPONSEGROUPVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEGROUPVariable = getStatusCSV_RESPONSEGROUP_FromString(RESPONSEGROUPVar->valuestring);
    return RESPONSEGROUPVariable;
end:
    return 0;
}
*/

// Functions for enum UPLOADTYPE for CSVImportAPI_uploadCSV

static char* uploadCSV_UPLOADTYPE_ToString(sirqul_iot_platform_uploadCSV_uploadType_e UPLOADTYPE){
    char *UPLOADTYPEArray[] =  { "NULL", "OFFERS", "RETAILERS", "RETAILERLOCATIONS", "CATEGORIES", "FILTERS" };
    return UPLOADTYPEArray[UPLOADTYPE];
}

static sirqul_iot_platform_uploadCSV_uploadType_e uploadCSV_UPLOADTYPE_FromString(char* UPLOADTYPE){
    int stringToReturn = 0;
    char *UPLOADTYPEArray[] =  { "NULL", "OFFERS", "RETAILERS", "RETAILERLOCATIONS", "CATEGORIES", "FILTERS" };
    size_t sizeofArray = sizeof(UPLOADTYPEArray) / sizeof(UPLOADTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(UPLOADTYPE, UPLOADTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function uploadCSV_UPLOADTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *uploadCSV_UPLOADTYPE_convertToJSON(sirqul_iot_platform_uploadCSV_uploadType_e UPLOADTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "uploadType", uploadCSV_UPLOADTYPE_ToString(UPLOADTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function uploadCSV_UPLOADTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_uploadCSV_uploadType_e uploadCSV_UPLOADTYPE_parseFromJSON(cJSON* UPLOADTYPEJSON) {
    sirqul_iot_platform_uploadCSV_uploadType_e UPLOADTYPEVariable = 0;
    cJSON *UPLOADTYPEVar = cJSON_GetObjectItemCaseSensitive(UPLOADTYPEJSON, "uploadType");
    if(!cJSON_IsString(UPLOADTYPEVar) || (UPLOADTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    UPLOADTYPEVariable = uploadCSV_UPLOADTYPE_FromString(UPLOADTYPEVar->valuestring);
    return UPLOADTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum FILEFORMAT for CSVImportAPI_uploadCSV

static char* uploadCSV_FILEFORMAT_ToString(sirqul_iot_platform_uploadCSV_fileFormat_e FILEFORMAT){
    char *FILEFORMATArray[] =  { "NULL", "EXCEL", "MYSQL", "RFC4180", "TDF" };
    return FILEFORMATArray[FILEFORMAT];
}

static sirqul_iot_platform_uploadCSV_fileFormat_e uploadCSV_FILEFORMAT_FromString(char* FILEFORMAT){
    int stringToReturn = 0;
    char *FILEFORMATArray[] =  { "NULL", "EXCEL", "MYSQL", "RFC4180", "TDF" };
    size_t sizeofArray = sizeof(FILEFORMATArray) / sizeof(FILEFORMATArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(FILEFORMAT, FILEFORMATArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function uploadCSV_FILEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *uploadCSV_FILEFORMAT_convertToJSON(sirqul_iot_platform_uploadCSV_fileFormat_e FILEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "fileFormat", uploadCSV_FILEFORMAT_ToString(FILEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function uploadCSV_FILEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_uploadCSV_fileFormat_e uploadCSV_FILEFORMAT_parseFromJSON(cJSON* FILEFORMATJSON) {
    sirqul_iot_platform_uploadCSV_fileFormat_e FILEFORMATVariable = 0;
    cJSON *FILEFORMATVar = cJSON_GetObjectItemCaseSensitive(FILEFORMATJSON, "fileFormat");
    if(!cJSON_IsString(FILEFORMATVar) || (FILEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    FILEFORMATVariable = uploadCSV_FILEFORMAT_FromString(FILEFORMATVar->valuestring);
    return FILEFORMATVariable;
end:
    return 0;
}
*/


// Detail Status
//
sirqul_response_t*
CSVImportAPI_getStatusCSV(apiClient_t *apiClient, double version, long accountId, long batchId, sirqul_iot_platform_getStatusCSV_responseGroup_e responseGroup, long start, long limit)
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
    char *localVarPath = strdup("/api/{version}/csvimport/batch/status/details");



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
    char *keyQuery_responseGroup = NULL;
    sirqul_iot_platform_getStatusCSV_responseGroup_e valueQuery_responseGroup ;
    keyValuePair_t *keyPairQuery_responseGroup = 0;
    if (responseGroup)
    {
        keyQuery_responseGroup = strdup("responseGroup");
        valueQuery_responseGroup = (responseGroup);
        keyPairQuery_responseGroup = keyValuePair_create(keyQuery_responseGroup, strdup(getStatusCSV_RESPONSEGROUP_ToString(
        valueQuery_responseGroup)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseGroup);
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
        cJSON *CSVImportAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(CSVImportAPIlocalVarJSON);
        cJSON_Delete(CSVImportAPIlocalVarJSON);
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
    if(keyQuery_batchId){
        free(keyQuery_batchId);
        keyQuery_batchId = NULL;
    }
    if(keyPairQuery_batchId){
        keyValuePair_free(keyPairQuery_batchId);
        keyPairQuery_batchId = NULL;
    }
    if(keyQuery_responseGroup){
        free(keyQuery_responseGroup);
        keyQuery_responseGroup = NULL;
    }
    if(keyPairQuery_responseGroup){
        keyValuePair_free(keyPairQuery_responseGroup);
        keyPairQuery_responseGroup = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Status
//
// Retrieves batches for a user.
//
csv_import_response_t*
CSVImportAPI_listStatusCSV(apiClient_t *apiClient, double version, long accountId, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/csvimport/batch/list");



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
    //nonprimitive not container
    csv_import_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CSVImportAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = csv_import_response_parseFromJSON(CSVImportAPIlocalVarJSON);
        cJSON_Delete(CSVImportAPIlocalVarJSON);
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

// Batch Status
//
// Checks status of batch upload.
//
csv_import_response_t*
CSVImportAPI_statusCSV(apiClient_t *apiClient, double version, long accountId, long batchId)
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
    char *localVarPath = strdup("/api/{version}/csvimport/batch/status");



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
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    csv_import_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CSVImportAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = csv_import_response_parseFromJSON(CSVImportAPIlocalVarJSON);
        cJSON_Delete(CSVImportAPIlocalVarJSON);
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

// Upload CSV
//
// Uploads a CSV import file.
//
csv_import_response_t*
CSVImportAPI_uploadCSV(apiClient_t *apiClient, double version, long accountId, sirqul_iot_platform_uploadCSV_uploadType_e uploadType, binary_t* importFile, sirqul_iot_platform_uploadCSV_fileFormat_e fileFormat, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/csvimport/upload");



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
    char *keyQuery_uploadType = NULL;
    sirqul_iot_platform_uploadCSV_uploadType_e valueQuery_uploadType ;
    keyValuePair_t *keyPairQuery_uploadType = 0;
    if (uploadType)
    {
        keyQuery_uploadType = strdup("uploadType");
        valueQuery_uploadType = (uploadType);
        keyPairQuery_uploadType = keyValuePair_create(keyQuery_uploadType, strdup(uploadCSV_UPLOADTYPE_ToString(
        valueQuery_uploadType)));
        list_addElement(localVarQueryParameters,keyPairQuery_uploadType);
    }

    // query parameters
    char *keyQuery_importFile = NULL;
    binary_t* valueQuery_importFile ;
    keyValuePair_t *keyPairQuery_importFile = 0;
    if (importFile)
    {
        keyQuery_importFile = strdup("importFile");
        valueQuery_importFile = (importFile);
        keyPairQuery_importFile = keyValuePair_create(keyQuery_importFile, &valueQuery_importFile);
        list_addElement(localVarQueryParameters,keyPairQuery_importFile);
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
    char *keyQuery_fileFormat = NULL;
    sirqul_iot_platform_uploadCSV_fileFormat_e valueQuery_fileFormat ;
    keyValuePair_t *keyPairQuery_fileFormat = 0;
    if (fileFormat)
    {
        keyQuery_fileFormat = strdup("fileFormat");
        valueQuery_fileFormat = (fileFormat);
        keyPairQuery_fileFormat = keyValuePair_create(keyQuery_fileFormat, strdup(uploadCSV_FILEFORMAT_ToString(
        valueQuery_fileFormat)));
        list_addElement(localVarQueryParameters,keyPairQuery_fileFormat);
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
    csv_import_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CSVImportAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = csv_import_response_parseFromJSON(CSVImportAPIlocalVarJSON);
        cJSON_Delete(CSVImportAPIlocalVarJSON);
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
    if(keyQuery_uploadType){
        free(keyQuery_uploadType);
        keyQuery_uploadType = NULL;
    }
    if(keyPairQuery_uploadType){
        keyValuePair_free(keyPairQuery_uploadType);
        keyPairQuery_uploadType = NULL;
    }
    if(keyQuery_importFile){
        free(keyQuery_importFile);
        keyQuery_importFile = NULL;
    }
    if(keyPairQuery_importFile){
        keyValuePair_free(keyPairQuery_importFile);
        keyPairQuery_importFile = NULL;
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
    if(keyQuery_fileFormat){
        free(keyQuery_fileFormat);
        keyQuery_fileFormat = NULL;
    }
    if(keyPairQuery_fileFormat){
        keyValuePair_free(keyPairQuery_fileFormat);
        keyPairQuery_fileFormat = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

