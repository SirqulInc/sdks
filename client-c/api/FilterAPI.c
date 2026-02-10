#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "FilterAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum RESPONSEGROUP for FilterAPI_searchFilters

static char* searchFilters_RESPONSEGROUP_ToString(sirqul_iot_platform_searchFilters_responseGroup_e RESPONSEGROUP){
    char *RESPONSEGROUPArray[] =  { "NULL", "ALL", "GLOBAL", "MINE" };
    return RESPONSEGROUPArray[RESPONSEGROUP];
}

static sirqul_iot_platform_searchFilters_responseGroup_e searchFilters_RESPONSEGROUP_FromString(char* RESPONSEGROUP){
    int stringToReturn = 0;
    char *RESPONSEGROUPArray[] =  { "NULL", "ALL", "GLOBAL", "MINE" };
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
// Function searchFilters_RESPONSEGROUP_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchFilters_RESPONSEGROUP_convertToJSON(sirqul_iot_platform_searchFilters_responseGroup_e RESPONSEGROUP) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseGroup", searchFilters_RESPONSEGROUP_ToString(RESPONSEGROUP)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchFilters_RESPONSEGROUP_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchFilters_responseGroup_e searchFilters_RESPONSEGROUP_parseFromJSON(cJSON* RESPONSEGROUPJSON) {
    sirqul_iot_platform_searchFilters_responseGroup_e RESPONSEGROUPVariable = 0;
    cJSON *RESPONSEGROUPVar = cJSON_GetObjectItemCaseSensitive(RESPONSEGROUPJSON, "responseGroup");
    if(!cJSON_IsString(RESPONSEGROUPVar) || (RESPONSEGROUPVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEGROUPVariable = searchFilters_RESPONSEGROUP_FromString(RESPONSEGROUPVar->valuestring);
    return RESPONSEGROUPVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for FilterAPI_searchFilters

static char* searchFilters_SORTFIELD_ToString(sirqul_iot_platform_searchFilters_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchFilters_sortField_e searchFilters_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DISPLAY" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchFilters_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchFilters_SORTFIELD_convertToJSON(sirqul_iot_platform_searchFilters_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchFilters_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchFilters_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchFilters_sortField_e searchFilters_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchFilters_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchFilters_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Create Filter
//
// Create a filter
//
filter_tree_response_t*
FilterAPI_createFilter(apiClient_t *apiClient, double version, long accountId, char *name, char *appKey, long parentFilterId, char *description, char *externalId, char *externalType, int *active, char *metaData)
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
    char *localVarPath = strdup("/api/{version}/filter/create");



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
    char *keyQuery_parentFilterId = NULL;
    char * valueQuery_parentFilterId ;
    keyValuePair_t *keyPairQuery_parentFilterId = 0;
    {
        keyQuery_parentFilterId = strdup("parentFilterId");
        valueQuery_parentFilterId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentFilterId, MAX_NUMBER_LENGTH_LONG, "%d", parentFilterId);
        keyPairQuery_parentFilterId = keyValuePair_create(keyQuery_parentFilterId, valueQuery_parentFilterId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentFilterId);
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
    char *keyQuery_externalType = NULL;
    char * valueQuery_externalType = NULL;
    keyValuePair_t *keyPairQuery_externalType = 0;
    if (externalType)
    {
        keyQuery_externalType = strdup("externalType");
        valueQuery_externalType = strdup((externalType));
        keyPairQuery_externalType = keyValuePair_create(keyQuery_externalType, valueQuery_externalType);
        list_addElement(localVarQueryParameters,keyPairQuery_externalType);
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

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
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
    filter_tree_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *FilterAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = filter_tree_response_parseFromJSON(FilterAPIlocalVarJSON);
        cJSON_Delete(FilterAPIlocalVarJSON);
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
    if(keyQuery_parentFilterId){
        free(keyQuery_parentFilterId);
        keyQuery_parentFilterId = NULL;
    }
    if(keyPairQuery_parentFilterId){
        keyValuePair_free(keyPairQuery_parentFilterId);
        keyPairQuery_parentFilterId = NULL;
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
    if(keyQuery_externalType){
        free(keyQuery_externalType);
        keyQuery_externalType = NULL;
    }
    if(valueQuery_externalType){
        free(valueQuery_externalType);
        valueQuery_externalType = NULL;
    }
    if(keyPairQuery_externalType){
        keyValuePair_free(keyPairQuery_externalType);
        keyPairQuery_externalType = NULL;
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
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Filter
//
// Delete a filter.
//
sirqul_response_t*
FilterAPI_deleteFilter(apiClient_t *apiClient, double version, long accountId, long filterId)
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
    char *localVarPath = strdup("/api/{version}/filter/delete");



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
    char *keyQuery_filterId = NULL;
    char * valueQuery_filterId ;
    keyValuePair_t *keyPairQuery_filterId = 0;
    {
        keyQuery_filterId = strdup("filterId");
        valueQuery_filterId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_filterId, MAX_NUMBER_LENGTH_LONG, "%d", filterId);
        keyPairQuery_filterId = keyValuePair_create(keyQuery_filterId, valueQuery_filterId);
        list_addElement(localVarQueryParameters,keyPairQuery_filterId);
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
        cJSON *FilterAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(FilterAPIlocalVarJSON);
        cJSON_Delete(FilterAPIlocalVarJSON);
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
    if(keyQuery_filterId){
        free(keyQuery_filterId);
        keyQuery_filterId = NULL;
    }
    if(keyPairQuery_filterId){
        keyValuePair_free(keyPairQuery_filterId);
        keyPairQuery_filterId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Filter
//
// Get the details of a specific filter. Recursively include all child filters and their children.
//
filter_tree_response_t*
FilterAPI_getFilter(apiClient_t *apiClient, double version, long filterId)
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
    char *localVarPath = strdup("/api/{version}/filter/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_filterId = NULL;
    char * valueQuery_filterId ;
    keyValuePair_t *keyPairQuery_filterId = 0;
    {
        keyQuery_filterId = strdup("filterId");
        valueQuery_filterId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_filterId, MAX_NUMBER_LENGTH_LONG, "%d", filterId);
        keyPairQuery_filterId = keyValuePair_create(keyQuery_filterId, valueQuery_filterId);
        list_addElement(localVarQueryParameters,keyPairQuery_filterId);
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
    filter_tree_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *FilterAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = filter_tree_response_parseFromJSON(FilterAPIlocalVarJSON);
        cJSON_Delete(FilterAPIlocalVarJSON);
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
    if(keyQuery_filterId){
        free(keyQuery_filterId);
        keyQuery_filterId = NULL;
    }
    if(keyPairQuery_filterId){
        keyValuePair_free(keyPairQuery_filterId);
        keyPairQuery_filterId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Filters
//
// Search for filters.
//
list_t*
FilterAPI_searchFilters(apiClient_t *apiClient, double version, long accountId, char *keyword, char *appKey, sirqul_iot_platform_searchFilters_responseGroup_e responseGroup, int *rootOnly, sirqul_iot_platform_searchFilters_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly)
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
    char *localVarPath = strdup("/api/{version}/filter/search");



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
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
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
    char *keyQuery_responseGroup = NULL;
    sirqul_iot_platform_searchFilters_responseGroup_e valueQuery_responseGroup ;
    keyValuePair_t *keyPairQuery_responseGroup = 0;
    if (responseGroup)
    {
        keyQuery_responseGroup = strdup("responseGroup");
        valueQuery_responseGroup = (responseGroup);
        keyPairQuery_responseGroup = keyValuePair_create(keyQuery_responseGroup, strdup(searchFilters_RESPONSEGROUP_ToString(
        valueQuery_responseGroup)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseGroup);
    }

    // query parameters
    char *keyQuery_rootOnly = NULL;
    char * valueQuery_rootOnly = NULL;
    keyValuePair_t *keyPairQuery_rootOnly = 0;
    if (rootOnly)
    {
        keyQuery_rootOnly = strdup("rootOnly");
        valueQuery_rootOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_rootOnly, MAX_NUMBER_LENGTH, "%d", *rootOnly);
        keyPairQuery_rootOnly = keyValuePair_create(keyQuery_rootOnly, valueQuery_rootOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_rootOnly);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchFilters_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchFilters_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
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
        cJSON *FilterAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(FilterAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, FilterAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( FilterAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
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
    if(keyQuery_responseGroup){
        free(keyQuery_responseGroup);
        keyQuery_responseGroup = NULL;
    }
    if(keyPairQuery_responseGroup){
        keyValuePair_free(keyPairQuery_responseGroup);
        keyPairQuery_responseGroup = NULL;
    }
    if(keyQuery_rootOnly){
        free(keyQuery_rootOnly);
        keyQuery_rootOnly = NULL;
    }
    if(valueQuery_rootOnly){
        free(valueQuery_rootOnly);
        valueQuery_rootOnly = NULL;
    }
    if(keyPairQuery_rootOnly){
        keyValuePair_free(keyPairQuery_rootOnly);
        keyPairQuery_rootOnly = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Filter
//
// Update a filter.
//
filter_tree_response_t*
FilterAPI_updateFilter(apiClient_t *apiClient, double version, long accountId, long filterId, long parentFilterId, char *name, char *description, char *externalId, char *externalType, int *active, char *metaData)
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
    char *localVarPath = strdup("/api/{version}/filter/update");



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
    char *keyQuery_filterId = NULL;
    char * valueQuery_filterId ;
    keyValuePair_t *keyPairQuery_filterId = 0;
    {
        keyQuery_filterId = strdup("filterId");
        valueQuery_filterId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_filterId, MAX_NUMBER_LENGTH_LONG, "%d", filterId);
        keyPairQuery_filterId = keyValuePair_create(keyQuery_filterId, valueQuery_filterId);
        list_addElement(localVarQueryParameters,keyPairQuery_filterId);
    }

    // query parameters
    char *keyQuery_parentFilterId = NULL;
    char * valueQuery_parentFilterId ;
    keyValuePair_t *keyPairQuery_parentFilterId = 0;
    {
        keyQuery_parentFilterId = strdup("parentFilterId");
        valueQuery_parentFilterId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentFilterId, MAX_NUMBER_LENGTH_LONG, "%d", parentFilterId);
        keyPairQuery_parentFilterId = keyValuePair_create(keyQuery_parentFilterId, valueQuery_parentFilterId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentFilterId);
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
    char *keyQuery_externalType = NULL;
    char * valueQuery_externalType = NULL;
    keyValuePair_t *keyPairQuery_externalType = 0;
    if (externalType)
    {
        keyQuery_externalType = strdup("externalType");
        valueQuery_externalType = strdup((externalType));
        keyPairQuery_externalType = keyValuePair_create(keyQuery_externalType, valueQuery_externalType);
        list_addElement(localVarQueryParameters,keyPairQuery_externalType);
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

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
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
    filter_tree_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *FilterAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = filter_tree_response_parseFromJSON(FilterAPIlocalVarJSON);
        cJSON_Delete(FilterAPIlocalVarJSON);
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
    if(keyQuery_filterId){
        free(keyQuery_filterId);
        keyQuery_filterId = NULL;
    }
    if(keyPairQuery_filterId){
        keyValuePair_free(keyPairQuery_filterId);
        keyPairQuery_filterId = NULL;
    }
    if(keyQuery_parentFilterId){
        free(keyQuery_parentFilterId);
        keyQuery_parentFilterId = NULL;
    }
    if(keyPairQuery_parentFilterId){
        keyValuePair_free(keyPairQuery_parentFilterId);
        keyPairQuery_parentFilterId = NULL;
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
    if(keyQuery_externalType){
        free(keyQuery_externalType);
        keyQuery_externalType = NULL;
    }
    if(valueQuery_externalType){
        free(valueQuery_externalType);
        valueQuery_externalType = NULL;
    }
    if(keyPairQuery_externalType){
        keyValuePair_free(keyPairQuery_externalType);
        keyPairQuery_externalType = NULL;
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
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

