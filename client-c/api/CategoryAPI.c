#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "CategoryAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for CategoryAPI_categoryDistanceSearch

static char* categoryDistanceSearch_SORTFIELD_ToString(sirqul_iot_platform_categoryDistanceSearch_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_categoryDistanceSearch_sortField_e categoryDistanceSearch_SORTFIELD_FromString(char* SORTFIELD){
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
// Function categoryDistanceSearch_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *categoryDistanceSearch_SORTFIELD_convertToJSON(sirqul_iot_platform_categoryDistanceSearch_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", categoryDistanceSearch_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function categoryDistanceSearch_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_categoryDistanceSearch_sortField_e categoryDistanceSearch_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_categoryDistanceSearch_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = categoryDistanceSearch_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEGROUP for CategoryAPI_categoryDistanceSearch

static char* categoryDistanceSearch_RESPONSEGROUP_ToString(sirqul_iot_platform_categoryDistanceSearch_responseGroup_e RESPONSEGROUP){
    char *RESPONSEGROUPArray[] =  { "NULL", "ALL", "GLOBAL", "MINE" };
    return RESPONSEGROUPArray[RESPONSEGROUP];
}

static sirqul_iot_platform_categoryDistanceSearch_responseGroup_e categoryDistanceSearch_RESPONSEGROUP_FromString(char* RESPONSEGROUP){
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
// Function categoryDistanceSearch_RESPONSEGROUP_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *categoryDistanceSearch_RESPONSEGROUP_convertToJSON(sirqul_iot_platform_categoryDistanceSearch_responseGroup_e RESPONSEGROUP) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseGroup", categoryDistanceSearch_RESPONSEGROUP_ToString(RESPONSEGROUP)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function categoryDistanceSearch_RESPONSEGROUP_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_categoryDistanceSearch_responseGroup_e categoryDistanceSearch_RESPONSEGROUP_parseFromJSON(cJSON* RESPONSEGROUPJSON) {
    sirqul_iot_platform_categoryDistanceSearch_responseGroup_e RESPONSEGROUPVariable = 0;
    cJSON *RESPONSEGROUPVar = cJSON_GetObjectItemCaseSensitive(RESPONSEGROUPJSON, "responseGroup");
    if(!cJSON_IsString(RESPONSEGROUPVar) || (RESPONSEGROUPVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEGROUPVariable = categoryDistanceSearch_RESPONSEGROUP_FromString(RESPONSEGROUPVar->valuestring);
    return RESPONSEGROUPVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for CategoryAPI_searchCategories

static char* searchCategories_SORTFIELD_ToString(sirqul_iot_platform_searchCategories_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "NAME", "DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchCategories_sortField_e searchCategories_SORTFIELD_FromString(char* SORTFIELD){
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
// Function searchCategories_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchCategories_SORTFIELD_convertToJSON(sirqul_iot_platform_searchCategories_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchCategories_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchCategories_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchCategories_sortField_e searchCategories_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchCategories_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchCategories_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEGROUP for CategoryAPI_searchCategories

static char* searchCategories_RESPONSEGROUP_ToString(sirqul_iot_platform_searchCategories_responseGroup_e RESPONSEGROUP){
    char *RESPONSEGROUPArray[] =  { "NULL", "ALL", "GLOBAL", "MINE" };
    return RESPONSEGROUPArray[RESPONSEGROUP];
}

static sirqul_iot_platform_searchCategories_responseGroup_e searchCategories_RESPONSEGROUP_FromString(char* RESPONSEGROUP){
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
// Function searchCategories_RESPONSEGROUP_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchCategories_RESPONSEGROUP_convertToJSON(sirqul_iot_platform_searchCategories_responseGroup_e RESPONSEGROUP) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseGroup", searchCategories_RESPONSEGROUP_ToString(RESPONSEGROUP)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchCategories_RESPONSEGROUP_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchCategories_responseGroup_e searchCategories_RESPONSEGROUP_parseFromJSON(cJSON* RESPONSEGROUPJSON) {
    sirqul_iot_platform_searchCategories_responseGroup_e RESPONSEGROUPVariable = 0;
    cJSON *RESPONSEGROUPVar = cJSON_GetObjectItemCaseSensitive(RESPONSEGROUPJSON, "responseGroup");
    if(!cJSON_IsString(RESPONSEGROUPVar) || (RESPONSEGROUPVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEGROUPVariable = searchCategories_RESPONSEGROUP_FromString(RESPONSEGROUPVar->valuestring);
    return RESPONSEGROUPVariable;
end:
    return 0;
}
*/


// Search Categories by Distance
//
// Search for categories by distance.
//
list_t*
CategoryAPI_categoryDistanceSearch(apiClient_t *apiClient, double version, long accountId, char *keyword, char *appKey, char *categoryIds, char *parentCategoryIds, int *rootOnly, sirqul_iot_platform_categoryDistanceSearch_sortField_e sortField, sirqul_iot_platform_categoryDistanceSearch_responseGroup_e responseGroup, int *descending, int *start, int *limit, int *activeOnly, int *returnExternal, int *exactMatch, char *type, char *externalType, int *minOfferCount, double latitude, double longitude, double range)
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
    char *localVarPath = strdup("/api/{version}/category/distancesearch");



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
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_parentCategoryIds = NULL;
    char * valueQuery_parentCategoryIds = NULL;
    keyValuePair_t *keyPairQuery_parentCategoryIds = 0;
    if (parentCategoryIds)
    {
        keyQuery_parentCategoryIds = strdup("parentCategoryIds");
        valueQuery_parentCategoryIds = strdup((parentCategoryIds));
        keyPairQuery_parentCategoryIds = keyValuePair_create(keyQuery_parentCategoryIds, valueQuery_parentCategoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_parentCategoryIds);
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
    sirqul_iot_platform_categoryDistanceSearch_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(categoryDistanceSearch_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_responseGroup = NULL;
    sirqul_iot_platform_categoryDistanceSearch_responseGroup_e valueQuery_responseGroup ;
    keyValuePair_t *keyPairQuery_responseGroup = 0;
    if (responseGroup)
    {
        keyQuery_responseGroup = strdup("responseGroup");
        valueQuery_responseGroup = (responseGroup);
        keyPairQuery_responseGroup = keyValuePair_create(keyQuery_responseGroup, strdup(categoryDistanceSearch_RESPONSEGROUP_ToString(
        valueQuery_responseGroup)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseGroup);
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

    // query parameters
    char *keyQuery_returnExternal = NULL;
    char * valueQuery_returnExternal = NULL;
    keyValuePair_t *keyPairQuery_returnExternal = 0;
    if (returnExternal)
    {
        keyQuery_returnExternal = strdup("returnExternal");
        valueQuery_returnExternal = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnExternal, MAX_NUMBER_LENGTH, "%d", *returnExternal);
        keyPairQuery_returnExternal = keyValuePair_create(keyQuery_returnExternal, valueQuery_returnExternal);
        list_addElement(localVarQueryParameters,keyPairQuery_returnExternal);
    }

    // query parameters
    char *keyQuery_exactMatch = NULL;
    char * valueQuery_exactMatch = NULL;
    keyValuePair_t *keyPairQuery_exactMatch = 0;
    if (exactMatch)
    {
        keyQuery_exactMatch = strdup("exactMatch");
        valueQuery_exactMatch = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_exactMatch, MAX_NUMBER_LENGTH, "%d", *exactMatch);
        keyPairQuery_exactMatch = keyValuePair_create(keyQuery_exactMatch, valueQuery_exactMatch);
        list_addElement(localVarQueryParameters,keyPairQuery_exactMatch);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
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
    char *keyQuery_minOfferCount = NULL;
    char * valueQuery_minOfferCount = NULL;
    keyValuePair_t *keyPairQuery_minOfferCount = 0;
    if (minOfferCount)
    {
        keyQuery_minOfferCount = strdup("minOfferCount");
        valueQuery_minOfferCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minOfferCount, MAX_NUMBER_LENGTH, "%d", *minOfferCount);
        keyPairQuery_minOfferCount = keyValuePair_create(keyQuery_minOfferCount, valueQuery_minOfferCount);
        list_addElement(localVarQueryParameters,keyPairQuery_minOfferCount);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }

    // query parameters
    char *keyQuery_range = NULL;
    char * valueQuery_range = NULL;
    keyValuePair_t *keyPairQuery_range = 0;
    {
        keyQuery_range = strdup("range");
        int s = snprintf(NULL, 0, "%.16e", range);
        if (s >= 0)
        {
            valueQuery_range = calloc(1,s+1);
            snprintf(valueQuery_range, s+1, "%.16e", range);
        }
        keyPairQuery_range = keyValuePair_create(keyQuery_range, valueQuery_range);
        list_addElement(localVarQueryParameters,keyPairQuery_range);
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
        cJSON *CategoryAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(CategoryAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, CategoryAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( CategoryAPIlocalVarJSON);
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
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_parentCategoryIds){
        free(keyQuery_parentCategoryIds);
        keyQuery_parentCategoryIds = NULL;
    }
    if(valueQuery_parentCategoryIds){
        free(valueQuery_parentCategoryIds);
        valueQuery_parentCategoryIds = NULL;
    }
    if(keyPairQuery_parentCategoryIds){
        keyValuePair_free(keyPairQuery_parentCategoryIds);
        keyPairQuery_parentCategoryIds = NULL;
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
    if(keyQuery_responseGroup){
        free(keyQuery_responseGroup);
        keyQuery_responseGroup = NULL;
    }
    if(keyPairQuery_responseGroup){
        keyValuePair_free(keyPairQuery_responseGroup);
        keyPairQuery_responseGroup = NULL;
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
    if(keyQuery_returnExternal){
        free(keyQuery_returnExternal);
        keyQuery_returnExternal = NULL;
    }
    if(valueQuery_returnExternal){
        free(valueQuery_returnExternal);
        valueQuery_returnExternal = NULL;
    }
    if(keyPairQuery_returnExternal){
        keyValuePair_free(keyPairQuery_returnExternal);
        keyPairQuery_returnExternal = NULL;
    }
    if(keyQuery_exactMatch){
        free(keyQuery_exactMatch);
        keyQuery_exactMatch = NULL;
    }
    if(valueQuery_exactMatch){
        free(valueQuery_exactMatch);
        valueQuery_exactMatch = NULL;
    }
    if(keyPairQuery_exactMatch){
        keyValuePair_free(keyPairQuery_exactMatch);
        keyPairQuery_exactMatch = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
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
    if(keyQuery_minOfferCount){
        free(keyQuery_minOfferCount);
        keyQuery_minOfferCount = NULL;
    }
    if(valueQuery_minOfferCount){
        free(valueQuery_minOfferCount);
        valueQuery_minOfferCount = NULL;
    }
    if(keyPairQuery_minOfferCount){
        keyValuePair_free(keyPairQuery_minOfferCount);
        keyPairQuery_minOfferCount = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    if(keyQuery_range){
        free(keyQuery_range);
        keyQuery_range = NULL;
    }
    if(keyPairQuery_range){
        keyValuePair_free(keyPairQuery_range);
        keyPairQuery_range = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Category
//
// Create a new category.
//
category_tree_response_t*
CategoryAPI_createCategory(apiClient_t *apiClient, double version, long accountId, char *name, char *appKey, long parentCategoryId, char *description, char *type, long assetId, char *externalId, char *externalType, char *externalCategorySlug, char *sqootSlug, int *active, char *metaData, char *searchTags)
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
    char *localVarPath = strdup("/api/{version}/category/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_parentCategoryId = NULL;
    char * valueQuery_parentCategoryId ;
    keyValuePair_t *keyPairQuery_parentCategoryId = 0;
    {
        keyQuery_parentCategoryId = strdup("parentCategoryId");
        valueQuery_parentCategoryId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentCategoryId, MAX_NUMBER_LENGTH_LONG, "%d", parentCategoryId);
        keyPairQuery_parentCategoryId = keyValuePair_create(keyQuery_parentCategoryId, valueQuery_parentCategoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentCategoryId);
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
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId ;
    keyValuePair_t *keyPairQuery_assetId = 0;
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetId, MAX_NUMBER_LENGTH_LONG, "%d", assetId);
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
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
    char *keyQuery_externalCategorySlug = NULL;
    char * valueQuery_externalCategorySlug = NULL;
    keyValuePair_t *keyPairQuery_externalCategorySlug = 0;
    if (externalCategorySlug)
    {
        keyQuery_externalCategorySlug = strdup("externalCategorySlug");
        valueQuery_externalCategorySlug = strdup((externalCategorySlug));
        keyPairQuery_externalCategorySlug = keyValuePair_create(keyQuery_externalCategorySlug, valueQuery_externalCategorySlug);
        list_addElement(localVarQueryParameters,keyPairQuery_externalCategorySlug);
    }

    // query parameters
    char *keyQuery_sqootSlug = NULL;
    char * valueQuery_sqootSlug = NULL;
    keyValuePair_t *keyPairQuery_sqootSlug = 0;
    if (sqootSlug)
    {
        keyQuery_sqootSlug = strdup("sqootSlug");
        valueQuery_sqootSlug = strdup((sqootSlug));
        keyPairQuery_sqootSlug = keyValuePair_create(keyQuery_sqootSlug, valueQuery_sqootSlug);
        list_addElement(localVarQueryParameters,keyPairQuery_sqootSlug);
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

    // query parameters
    char *keyQuery_searchTags = NULL;
    char * valueQuery_searchTags = NULL;
    keyValuePair_t *keyPairQuery_searchTags = 0;
    if (searchTags)
    {
        keyQuery_searchTags = strdup("searchTags");
        valueQuery_searchTags = strdup((searchTags));
        keyPairQuery_searchTags = keyValuePair_create(keyQuery_searchTags, valueQuery_searchTags);
        list_addElement(localVarQueryParameters,keyPairQuery_searchTags);
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
    category_tree_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CategoryAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = category_tree_response_parseFromJSON(CategoryAPIlocalVarJSON);
        cJSON_Delete(CategoryAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_parentCategoryId){
        free(keyQuery_parentCategoryId);
        keyQuery_parentCategoryId = NULL;
    }
    if(keyPairQuery_parentCategoryId){
        keyValuePair_free(keyPairQuery_parentCategoryId);
        keyPairQuery_parentCategoryId = NULL;
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
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
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
    if(keyQuery_externalCategorySlug){
        free(keyQuery_externalCategorySlug);
        keyQuery_externalCategorySlug = NULL;
    }
    if(valueQuery_externalCategorySlug){
        free(valueQuery_externalCategorySlug);
        valueQuery_externalCategorySlug = NULL;
    }
    if(keyPairQuery_externalCategorySlug){
        keyValuePair_free(keyPairQuery_externalCategorySlug);
        keyPairQuery_externalCategorySlug = NULL;
    }
    if(keyQuery_sqootSlug){
        free(keyQuery_sqootSlug);
        keyQuery_sqootSlug = NULL;
    }
    if(valueQuery_sqootSlug){
        free(valueQuery_sqootSlug);
        valueQuery_sqootSlug = NULL;
    }
    if(keyPairQuery_sqootSlug){
        keyValuePair_free(keyPairQuery_sqootSlug);
        keyPairQuery_sqootSlug = NULL;
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
    if(keyQuery_searchTags){
        free(keyQuery_searchTags);
        keyQuery_searchTags = NULL;
    }
    if(valueQuery_searchTags){
        free(valueQuery_searchTags);
        valueQuery_searchTags = NULL;
    }
    if(keyPairQuery_searchTags){
        keyValuePair_free(keyPairQuery_searchTags);
        keyPairQuery_searchTags = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Category
//
// Delete a category.
//
sirqul_response_t*
CategoryAPI_deleteCategory(apiClient_t *apiClient, double version, long accountId, long categoryId)
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
    char *localVarPath = strdup("/api/{version}/category/delete");



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
    char *keyQuery_categoryId = NULL;
    char * valueQuery_categoryId ;
    keyValuePair_t *keyPairQuery_categoryId = 0;
    {
        keyQuery_categoryId = strdup("categoryId");
        valueQuery_categoryId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_categoryId, MAX_NUMBER_LENGTH_LONG, "%d", categoryId);
        keyPairQuery_categoryId = keyValuePair_create(keyQuery_categoryId, valueQuery_categoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryId);
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
        cJSON *CategoryAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(CategoryAPIlocalVarJSON);
        cJSON_Delete(CategoryAPIlocalVarJSON);
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
    if(keyQuery_categoryId){
        free(keyQuery_categoryId);
        keyQuery_categoryId = NULL;
    }
    if(keyPairQuery_categoryId){
        keyValuePair_free(keyPairQuery_categoryId);
        keyPairQuery_categoryId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Duplicate Category
//
// Duplicate a category, including all its children.
//
category_tree_response_t*
CategoryAPI_duplicateCategory(apiClient_t *apiClient, double version, long accountId, long categoryId, char *appKey, long parentCategoryId)
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
    char *localVarPath = strdup("/api/{version}/category/duplicate");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_categoryId = NULL;
    char * valueQuery_categoryId ;
    keyValuePair_t *keyPairQuery_categoryId = 0;
    {
        keyQuery_categoryId = strdup("categoryId");
        valueQuery_categoryId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_categoryId, MAX_NUMBER_LENGTH_LONG, "%d", categoryId);
        keyPairQuery_categoryId = keyValuePair_create(keyQuery_categoryId, valueQuery_categoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryId);
    }

    // query parameters
    char *keyQuery_parentCategoryId = NULL;
    char * valueQuery_parentCategoryId ;
    keyValuePair_t *keyPairQuery_parentCategoryId = 0;
    {
        keyQuery_parentCategoryId = strdup("parentCategoryId");
        valueQuery_parentCategoryId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentCategoryId, MAX_NUMBER_LENGTH_LONG, "%d", parentCategoryId);
        keyPairQuery_parentCategoryId = keyValuePair_create(keyQuery_parentCategoryId, valueQuery_parentCategoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentCategoryId);
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
    category_tree_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CategoryAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = category_tree_response_parseFromJSON(CategoryAPIlocalVarJSON);
        cJSON_Delete(CategoryAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_categoryId){
        free(keyQuery_categoryId);
        keyQuery_categoryId = NULL;
    }
    if(keyPairQuery_categoryId){
        keyValuePair_free(keyPairQuery_categoryId);
        keyPairQuery_categoryId = NULL;
    }
    if(keyQuery_parentCategoryId){
        free(keyQuery_parentCategoryId);
        keyQuery_parentCategoryId = NULL;
    }
    if(keyPairQuery_parentCategoryId){
        keyValuePair_free(keyPairQuery_parentCategoryId);
        keyPairQuery_parentCategoryId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Category
//
// Get the details of a specific category. Recursively include all child categories and their children.
//
category_tree_response_t*
CategoryAPI_getCategory(apiClient_t *apiClient, double version, long categoryId, int *returnExternal)
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
    char *localVarPath = strdup("/api/{version}/category/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_categoryId = NULL;
    char * valueQuery_categoryId ;
    keyValuePair_t *keyPairQuery_categoryId = 0;
    {
        keyQuery_categoryId = strdup("categoryId");
        valueQuery_categoryId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_categoryId, MAX_NUMBER_LENGTH_LONG, "%d", categoryId);
        keyPairQuery_categoryId = keyValuePair_create(keyQuery_categoryId, valueQuery_categoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryId);
    }

    // query parameters
    char *keyQuery_returnExternal = NULL;
    char * valueQuery_returnExternal = NULL;
    keyValuePair_t *keyPairQuery_returnExternal = 0;
    if (returnExternal)
    {
        keyQuery_returnExternal = strdup("returnExternal");
        valueQuery_returnExternal = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnExternal, MAX_NUMBER_LENGTH, "%d", *returnExternal);
        keyPairQuery_returnExternal = keyValuePair_create(keyQuery_returnExternal, valueQuery_returnExternal);
        list_addElement(localVarQueryParameters,keyPairQuery_returnExternal);
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
    category_tree_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CategoryAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = category_tree_response_parseFromJSON(CategoryAPIlocalVarJSON);
        cJSON_Delete(CategoryAPIlocalVarJSON);
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
    if(keyQuery_categoryId){
        free(keyQuery_categoryId);
        keyQuery_categoryId = NULL;
    }
    if(keyPairQuery_categoryId){
        keyValuePair_free(keyPairQuery_categoryId);
        keyPairQuery_categoryId = NULL;
    }
    if(keyQuery_returnExternal){
        free(keyQuery_returnExternal);
        keyQuery_returnExternal = NULL;
    }
    if(valueQuery_returnExternal){
        free(valueQuery_returnExternal);
        valueQuery_returnExternal = NULL;
    }
    if(keyPairQuery_returnExternal){
        keyValuePair_free(keyPairQuery_returnExternal);
        keyPairQuery_returnExternal = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Categories
//
// Search for categories.
//
list_t*
CategoryAPI_searchCategories(apiClient_t *apiClient, double version, long accountId, char *keyword, char *appKey, char *categoryId, char *categoryIds, char *parentCategoryIds, int *rootOnly, sirqul_iot_platform_searchCategories_sortField_e sortField, sirqul_iot_platform_searchCategories_responseGroup_e responseGroup, int *descending, int *start, int *limit, int *activeOnly, int *returnExternal, int *exactMatch, char *type, char *externalType, int *excludeExternalType, int *minOfferCount, int *searchDepth, char *searchMode)
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
    char *localVarPath = strdup("/api/{version}/category/search");



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
    char *keyQuery_categoryId = NULL;
    char * valueQuery_categoryId = NULL;
    keyValuePair_t *keyPairQuery_categoryId = 0;
    if (categoryId)
    {
        keyQuery_categoryId = strdup("categoryId");
        valueQuery_categoryId = strdup((categoryId));
        keyPairQuery_categoryId = keyValuePair_create(keyQuery_categoryId, valueQuery_categoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryId);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_parentCategoryIds = NULL;
    char * valueQuery_parentCategoryIds = NULL;
    keyValuePair_t *keyPairQuery_parentCategoryIds = 0;
    if (parentCategoryIds)
    {
        keyQuery_parentCategoryIds = strdup("parentCategoryIds");
        valueQuery_parentCategoryIds = strdup((parentCategoryIds));
        keyPairQuery_parentCategoryIds = keyValuePair_create(keyQuery_parentCategoryIds, valueQuery_parentCategoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_parentCategoryIds);
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
    sirqul_iot_platform_searchCategories_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchCategories_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_responseGroup = NULL;
    sirqul_iot_platform_searchCategories_responseGroup_e valueQuery_responseGroup ;
    keyValuePair_t *keyPairQuery_responseGroup = 0;
    if (responseGroup)
    {
        keyQuery_responseGroup = strdup("responseGroup");
        valueQuery_responseGroup = (responseGroup);
        keyPairQuery_responseGroup = keyValuePair_create(keyQuery_responseGroup, strdup(searchCategories_RESPONSEGROUP_ToString(
        valueQuery_responseGroup)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseGroup);
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

    // query parameters
    char *keyQuery_returnExternal = NULL;
    char * valueQuery_returnExternal = NULL;
    keyValuePair_t *keyPairQuery_returnExternal = 0;
    if (returnExternal)
    {
        keyQuery_returnExternal = strdup("returnExternal");
        valueQuery_returnExternal = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnExternal, MAX_NUMBER_LENGTH, "%d", *returnExternal);
        keyPairQuery_returnExternal = keyValuePair_create(keyQuery_returnExternal, valueQuery_returnExternal);
        list_addElement(localVarQueryParameters,keyPairQuery_returnExternal);
    }

    // query parameters
    char *keyQuery_exactMatch = NULL;
    char * valueQuery_exactMatch = NULL;
    keyValuePair_t *keyPairQuery_exactMatch = 0;
    if (exactMatch)
    {
        keyQuery_exactMatch = strdup("exactMatch");
        valueQuery_exactMatch = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_exactMatch, MAX_NUMBER_LENGTH, "%d", *exactMatch);
        keyPairQuery_exactMatch = keyValuePair_create(keyQuery_exactMatch, valueQuery_exactMatch);
        list_addElement(localVarQueryParameters,keyPairQuery_exactMatch);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
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
    char *keyQuery_excludeExternalType = NULL;
    char * valueQuery_excludeExternalType = NULL;
    keyValuePair_t *keyPairQuery_excludeExternalType = 0;
    if (excludeExternalType)
    {
        keyQuery_excludeExternalType = strdup("excludeExternalType");
        valueQuery_excludeExternalType = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_excludeExternalType, MAX_NUMBER_LENGTH, "%d", *excludeExternalType);
        keyPairQuery_excludeExternalType = keyValuePair_create(keyQuery_excludeExternalType, valueQuery_excludeExternalType);
        list_addElement(localVarQueryParameters,keyPairQuery_excludeExternalType);
    }

    // query parameters
    char *keyQuery_minOfferCount = NULL;
    char * valueQuery_minOfferCount = NULL;
    keyValuePair_t *keyPairQuery_minOfferCount = 0;
    if (minOfferCount)
    {
        keyQuery_minOfferCount = strdup("minOfferCount");
        valueQuery_minOfferCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minOfferCount, MAX_NUMBER_LENGTH, "%d", *minOfferCount);
        keyPairQuery_minOfferCount = keyValuePair_create(keyQuery_minOfferCount, valueQuery_minOfferCount);
        list_addElement(localVarQueryParameters,keyPairQuery_minOfferCount);
    }

    // query parameters
    char *keyQuery_searchDepth = NULL;
    char * valueQuery_searchDepth = NULL;
    keyValuePair_t *keyPairQuery_searchDepth = 0;
    if (searchDepth)
    {
        keyQuery_searchDepth = strdup("searchDepth");
        valueQuery_searchDepth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_searchDepth, MAX_NUMBER_LENGTH, "%d", *searchDepth);
        keyPairQuery_searchDepth = keyValuePair_create(keyQuery_searchDepth, valueQuery_searchDepth);
        list_addElement(localVarQueryParameters,keyPairQuery_searchDepth);
    }

    // query parameters
    char *keyQuery_searchMode = NULL;
    char * valueQuery_searchMode = NULL;
    keyValuePair_t *keyPairQuery_searchMode = 0;
    if (searchMode)
    {
        keyQuery_searchMode = strdup("searchMode");
        valueQuery_searchMode = strdup((searchMode));
        keyPairQuery_searchMode = keyValuePair_create(keyQuery_searchMode, valueQuery_searchMode);
        list_addElement(localVarQueryParameters,keyPairQuery_searchMode);
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
        cJSON *CategoryAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(CategoryAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, CategoryAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( CategoryAPIlocalVarJSON);
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
    if(keyQuery_categoryId){
        free(keyQuery_categoryId);
        keyQuery_categoryId = NULL;
    }
    if(valueQuery_categoryId){
        free(valueQuery_categoryId);
        valueQuery_categoryId = NULL;
    }
    if(keyPairQuery_categoryId){
        keyValuePair_free(keyPairQuery_categoryId);
        keyPairQuery_categoryId = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_parentCategoryIds){
        free(keyQuery_parentCategoryIds);
        keyQuery_parentCategoryIds = NULL;
    }
    if(valueQuery_parentCategoryIds){
        free(valueQuery_parentCategoryIds);
        valueQuery_parentCategoryIds = NULL;
    }
    if(keyPairQuery_parentCategoryIds){
        keyValuePair_free(keyPairQuery_parentCategoryIds);
        keyPairQuery_parentCategoryIds = NULL;
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
    if(keyQuery_responseGroup){
        free(keyQuery_responseGroup);
        keyQuery_responseGroup = NULL;
    }
    if(keyPairQuery_responseGroup){
        keyValuePair_free(keyPairQuery_responseGroup);
        keyPairQuery_responseGroup = NULL;
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
    if(keyQuery_returnExternal){
        free(keyQuery_returnExternal);
        keyQuery_returnExternal = NULL;
    }
    if(valueQuery_returnExternal){
        free(valueQuery_returnExternal);
        valueQuery_returnExternal = NULL;
    }
    if(keyPairQuery_returnExternal){
        keyValuePair_free(keyPairQuery_returnExternal);
        keyPairQuery_returnExternal = NULL;
    }
    if(keyQuery_exactMatch){
        free(keyQuery_exactMatch);
        keyQuery_exactMatch = NULL;
    }
    if(valueQuery_exactMatch){
        free(valueQuery_exactMatch);
        valueQuery_exactMatch = NULL;
    }
    if(keyPairQuery_exactMatch){
        keyValuePair_free(keyPairQuery_exactMatch);
        keyPairQuery_exactMatch = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
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
    if(keyQuery_excludeExternalType){
        free(keyQuery_excludeExternalType);
        keyQuery_excludeExternalType = NULL;
    }
    if(valueQuery_excludeExternalType){
        free(valueQuery_excludeExternalType);
        valueQuery_excludeExternalType = NULL;
    }
    if(keyPairQuery_excludeExternalType){
        keyValuePair_free(keyPairQuery_excludeExternalType);
        keyPairQuery_excludeExternalType = NULL;
    }
    if(keyQuery_minOfferCount){
        free(keyQuery_minOfferCount);
        keyQuery_minOfferCount = NULL;
    }
    if(valueQuery_minOfferCount){
        free(valueQuery_minOfferCount);
        valueQuery_minOfferCount = NULL;
    }
    if(keyPairQuery_minOfferCount){
        keyValuePair_free(keyPairQuery_minOfferCount);
        keyPairQuery_minOfferCount = NULL;
    }
    if(keyQuery_searchDepth){
        free(keyQuery_searchDepth);
        keyQuery_searchDepth = NULL;
    }
    if(valueQuery_searchDepth){
        free(valueQuery_searchDepth);
        valueQuery_searchDepth = NULL;
    }
    if(keyPairQuery_searchDepth){
        keyValuePair_free(keyPairQuery_searchDepth);
        keyPairQuery_searchDepth = NULL;
    }
    if(keyQuery_searchMode){
        free(keyQuery_searchMode);
        keyQuery_searchMode = NULL;
    }
    if(valueQuery_searchMode){
        free(valueQuery_searchMode);
        valueQuery_searchMode = NULL;
    }
    if(keyPairQuery_searchMode){
        keyValuePair_free(keyPairQuery_searchMode);
        keyPairQuery_searchMode = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Category
//
// Update a category.
//
category_tree_response_t*
CategoryAPI_updateCategory(apiClient_t *apiClient, double version, long accountId, long categoryId, long parentCategoryId, char *name, char *description, char *type, long assetId, char *externalId, char *externalType, char *externalCategorySlug, char *sqootSlug, int *active, char *metaData, char *searchTags)
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
    char *localVarPath = strdup("/api/{version}/category/update");



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
    char *keyQuery_categoryId = NULL;
    char * valueQuery_categoryId ;
    keyValuePair_t *keyPairQuery_categoryId = 0;
    {
        keyQuery_categoryId = strdup("categoryId");
        valueQuery_categoryId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_categoryId, MAX_NUMBER_LENGTH_LONG, "%d", categoryId);
        keyPairQuery_categoryId = keyValuePair_create(keyQuery_categoryId, valueQuery_categoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryId);
    }

    // query parameters
    char *keyQuery_parentCategoryId = NULL;
    char * valueQuery_parentCategoryId ;
    keyValuePair_t *keyPairQuery_parentCategoryId = 0;
    {
        keyQuery_parentCategoryId = strdup("parentCategoryId");
        valueQuery_parentCategoryId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_parentCategoryId, MAX_NUMBER_LENGTH_LONG, "%d", parentCategoryId);
        keyPairQuery_parentCategoryId = keyValuePair_create(keyQuery_parentCategoryId, valueQuery_parentCategoryId);
        list_addElement(localVarQueryParameters,keyPairQuery_parentCategoryId);
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
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId ;
    keyValuePair_t *keyPairQuery_assetId = 0;
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetId, MAX_NUMBER_LENGTH_LONG, "%d", assetId);
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
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
    char *keyQuery_externalCategorySlug = NULL;
    char * valueQuery_externalCategorySlug = NULL;
    keyValuePair_t *keyPairQuery_externalCategorySlug = 0;
    if (externalCategorySlug)
    {
        keyQuery_externalCategorySlug = strdup("externalCategorySlug");
        valueQuery_externalCategorySlug = strdup((externalCategorySlug));
        keyPairQuery_externalCategorySlug = keyValuePair_create(keyQuery_externalCategorySlug, valueQuery_externalCategorySlug);
        list_addElement(localVarQueryParameters,keyPairQuery_externalCategorySlug);
    }

    // query parameters
    char *keyQuery_sqootSlug = NULL;
    char * valueQuery_sqootSlug = NULL;
    keyValuePair_t *keyPairQuery_sqootSlug = 0;
    if (sqootSlug)
    {
        keyQuery_sqootSlug = strdup("sqootSlug");
        valueQuery_sqootSlug = strdup((sqootSlug));
        keyPairQuery_sqootSlug = keyValuePair_create(keyQuery_sqootSlug, valueQuery_sqootSlug);
        list_addElement(localVarQueryParameters,keyPairQuery_sqootSlug);
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

    // query parameters
    char *keyQuery_searchTags = NULL;
    char * valueQuery_searchTags = NULL;
    keyValuePair_t *keyPairQuery_searchTags = 0;
    if (searchTags)
    {
        keyQuery_searchTags = strdup("searchTags");
        valueQuery_searchTags = strdup((searchTags));
        keyPairQuery_searchTags = keyValuePair_create(keyQuery_searchTags, valueQuery_searchTags);
        list_addElement(localVarQueryParameters,keyPairQuery_searchTags);
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
    category_tree_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *CategoryAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = category_tree_response_parseFromJSON(CategoryAPIlocalVarJSON);
        cJSON_Delete(CategoryAPIlocalVarJSON);
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
    if(keyQuery_categoryId){
        free(keyQuery_categoryId);
        keyQuery_categoryId = NULL;
    }
    if(keyPairQuery_categoryId){
        keyValuePair_free(keyPairQuery_categoryId);
        keyPairQuery_categoryId = NULL;
    }
    if(keyQuery_parentCategoryId){
        free(keyQuery_parentCategoryId);
        keyQuery_parentCategoryId = NULL;
    }
    if(keyPairQuery_parentCategoryId){
        keyValuePair_free(keyPairQuery_parentCategoryId);
        keyPairQuery_parentCategoryId = NULL;
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
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
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
    if(keyQuery_externalCategorySlug){
        free(keyQuery_externalCategorySlug);
        keyQuery_externalCategorySlug = NULL;
    }
    if(valueQuery_externalCategorySlug){
        free(valueQuery_externalCategorySlug);
        valueQuery_externalCategorySlug = NULL;
    }
    if(keyPairQuery_externalCategorySlug){
        keyValuePair_free(keyPairQuery_externalCategorySlug);
        keyPairQuery_externalCategorySlug = NULL;
    }
    if(keyQuery_sqootSlug){
        free(keyQuery_sqootSlug);
        keyQuery_sqootSlug = NULL;
    }
    if(valueQuery_sqootSlug){
        free(valueQuery_sqootSlug);
        valueQuery_sqootSlug = NULL;
    }
    if(keyPairQuery_sqootSlug){
        keyValuePair_free(keyPairQuery_sqootSlug);
        keyPairQuery_sqootSlug = NULL;
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
    if(keyQuery_searchTags){
        free(keyQuery_searchTags);
        keyQuery_searchTags = NULL;
    }
    if(valueQuery_searchTags){
        free(valueQuery_searchTags);
        valueQuery_searchTags = NULL;
    }
    if(keyPairQuery_searchTags){
        keyValuePair_free(keyPairQuery_searchTags);
        keyPairQuery_searchTags = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

