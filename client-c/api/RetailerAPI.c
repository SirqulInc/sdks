#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "RetailerAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum VISIBILITY for RetailerAPI_createRetailer

static char* createRetailer_VISIBILITY_ToString(sirqul_iot_platform_createRetailer_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_createRetailer_visibility_e createRetailer_VISIBILITY_FromString(char* VISIBILITY){
    int stringToReturn = 0;
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(VISIBILITYArray) / sizeof(VISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(VISIBILITY, VISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createRetailer_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createRetailer_VISIBILITY_convertToJSON(sirqul_iot_platform_createRetailer_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", createRetailer_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createRetailer_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createRetailer_visibility_e createRetailer_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_createRetailer_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = createRetailer_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for RetailerAPI_createRetailer

static char* createRetailer_RESPONSEFORMAT_ToString(sirqul_iot_platform_createRetailer_responseFormat_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static sirqul_iot_platform_createRetailer_responseFormat_e createRetailer_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function createRetailer_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createRetailer_RESPONSEFORMAT_convertToJSON(sirqul_iot_platform_createRetailer_responseFormat_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseFormat", createRetailer_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createRetailer_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createRetailer_responseFormat_e createRetailer_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    sirqul_iot_platform_createRetailer_responseFormat_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "responseFormat");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = createRetailer_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for RetailerAPI_getRetailers

static char* getRetailers_VISIBILITY_ToString(sirqul_iot_platform_getRetailers_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_getRetailers_visibility_e getRetailers_VISIBILITY_FromString(char* VISIBILITY){
    int stringToReturn = 0;
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(VISIBILITYArray) / sizeof(VISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(VISIBILITY, VISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function getRetailers_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getRetailers_VISIBILITY_convertToJSON(sirqul_iot_platform_getRetailers_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", getRetailers_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getRetailers_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getRetailers_visibility_e getRetailers_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_getRetailers_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = getRetailers_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for RetailerAPI_getRetailers

static char* getRetailers_SORTFIELD_ToString(sirqul_iot_platform_getRetailers_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "ADDRESS_STREET", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_POSTAL_CODE", "ADDRESS_COUNTRY", "FILTERS", "CATEGORIES", "VISIBILITY", "NAME" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_getRetailers_sortField_e getRetailers_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "ADDRESS_STREET", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_POSTAL_CODE", "ADDRESS_COUNTRY", "FILTERS", "CATEGORIES", "VISIBILITY", "NAME" };
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
// Function getRetailers_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *getRetailers_SORTFIELD_convertToJSON(sirqul_iot_platform_getRetailers_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", getRetailers_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function getRetailers_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_getRetailers_sortField_e getRetailers_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_getRetailers_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = getRetailers_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for RetailerAPI_updateRetailer

static char* updateRetailer_VISIBILITY_ToString(sirqul_iot_platform_updateRetailer_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_updateRetailer_visibility_e updateRetailer_VISIBILITY_FromString(char* VISIBILITY){
    int stringToReturn = 0;
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(VISIBILITYArray) / sizeof(VISIBILITYArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(VISIBILITY, VISIBILITYArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateRetailer_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateRetailer_VISIBILITY_convertToJSON(sirqul_iot_platform_updateRetailer_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", updateRetailer_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateRetailer_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateRetailer_visibility_e updateRetailer_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_updateRetailer_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = updateRetailer_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for RetailerAPI_updateRetailer

static char* updateRetailer_RESPONSEFORMAT_ToString(sirqul_iot_platform_updateRetailer_responseFormat_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static sirqul_iot_platform_updateRetailer_responseFormat_e updateRetailer_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function updateRetailer_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateRetailer_RESPONSEFORMAT_convertToJSON(sirqul_iot_platform_updateRetailer_responseFormat_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseFormat", updateRetailer_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateRetailer_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateRetailer_responseFormat_e updateRetailer_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    sirqul_iot_platform_updateRetailer_responseFormat_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "responseFormat");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = updateRetailer_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/


// Create Retailer
//
// Create a retailer record. A billable entity must be created first before a retailer record can be made.
//
retailer_full_response_t*
RetailerAPI_createRetailer(apiClient_t *apiClient, char *name, char *deviceId, long accountId, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *facebookUrl, char *twitterUrl, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *categoryIdsToAdd, char *categoryIdsToRemove, char *filterIds, double latitude, double longitude, char *metaData, char *searchTags, char *retailerType, sirqul_iot_platform_createRetailer_visibility_e visibility, int *createDefaultLocation, sirqul_iot_platform_createRetailer_responseFormat_e responseFormat)
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
    char *localVarPath = strdup("/retailer/create");





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
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
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
    char *keyQuery_website = NULL;
    char * valueQuery_website = NULL;
    keyValuePair_t *keyPairQuery_website = 0;
    if (website)
    {
        keyQuery_website = strdup("website");
        valueQuery_website = strdup((website));
        keyPairQuery_website = keyValuePair_create(keyQuery_website, valueQuery_website);
        list_addElement(localVarQueryParameters,keyPairQuery_website);
    }

    // query parameters
    char *keyQuery_email = NULL;
    char * valueQuery_email = NULL;
    keyValuePair_t *keyPairQuery_email = 0;
    if (email)
    {
        keyQuery_email = strdup("email");
        valueQuery_email = strdup((email));
        keyPairQuery_email = keyValuePair_create(keyQuery_email, valueQuery_email);
        list_addElement(localVarQueryParameters,keyPairQuery_email);
    }

    // query parameters
    char *keyQuery_facebookUrl = NULL;
    char * valueQuery_facebookUrl = NULL;
    keyValuePair_t *keyPairQuery_facebookUrl = 0;
    if (facebookUrl)
    {
        keyQuery_facebookUrl = strdup("facebookUrl");
        valueQuery_facebookUrl = strdup((facebookUrl));
        keyPairQuery_facebookUrl = keyValuePair_create(keyQuery_facebookUrl, valueQuery_facebookUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_facebookUrl);
    }

    // query parameters
    char *keyQuery_twitterUrl = NULL;
    char * valueQuery_twitterUrl = NULL;
    keyValuePair_t *keyPairQuery_twitterUrl = 0;
    if (twitterUrl)
    {
        keyQuery_twitterUrl = strdup("twitterUrl");
        valueQuery_twitterUrl = strdup((twitterUrl));
        keyPairQuery_twitterUrl = keyValuePair_create(keyQuery_twitterUrl, valueQuery_twitterUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_twitterUrl);
    }

    // query parameters
    char *keyQuery_logo = NULL;
    binary_t* valueQuery_logo ;
    keyValuePair_t *keyPairQuery_logo = 0;
    if (logo)
    {
        keyQuery_logo = strdup("logo");
        valueQuery_logo = (logo);
        keyPairQuery_logo = keyValuePair_create(keyQuery_logo, &valueQuery_logo);
        list_addElement(localVarQueryParameters,keyPairQuery_logo);
    }

    // query parameters
    char *keyQuery_logoAssetId = NULL;
    char * valueQuery_logoAssetId ;
    keyValuePair_t *keyPairQuery_logoAssetId = 0;
    {
        keyQuery_logoAssetId = strdup("logoAssetId");
        valueQuery_logoAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_logoAssetId, MAX_NUMBER_LENGTH_LONG, "%d", logoAssetId);
        keyPairQuery_logoAssetId = keyValuePair_create(keyQuery_logoAssetId, valueQuery_logoAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_logoAssetId);
    }

    // query parameters
    char *keyQuery_picture1 = NULL;
    binary_t* valueQuery_picture1 ;
    keyValuePair_t *keyPairQuery_picture1 = 0;
    if (picture1)
    {
        keyQuery_picture1 = strdup("picture1");
        valueQuery_picture1 = (picture1);
        keyPairQuery_picture1 = keyValuePair_create(keyQuery_picture1, &valueQuery_picture1);
        list_addElement(localVarQueryParameters,keyPairQuery_picture1);
    }

    // query parameters
    char *keyQuery_picture1AssetId = NULL;
    char * valueQuery_picture1AssetId ;
    keyValuePair_t *keyPairQuery_picture1AssetId = 0;
    {
        keyQuery_picture1AssetId = strdup("picture1AssetId");
        valueQuery_picture1AssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_picture1AssetId, MAX_NUMBER_LENGTH_LONG, "%d", picture1AssetId);
        keyPairQuery_picture1AssetId = keyValuePair_create(keyQuery_picture1AssetId, valueQuery_picture1AssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_picture1AssetId);
    }

    // query parameters
    char *keyQuery_picture2 = NULL;
    binary_t* valueQuery_picture2 ;
    keyValuePair_t *keyPairQuery_picture2 = 0;
    if (picture2)
    {
        keyQuery_picture2 = strdup("picture2");
        valueQuery_picture2 = (picture2);
        keyPairQuery_picture2 = keyValuePair_create(keyQuery_picture2, &valueQuery_picture2);
        list_addElement(localVarQueryParameters,keyPairQuery_picture2);
    }

    // query parameters
    char *keyQuery_picture2AssetId = NULL;
    char * valueQuery_picture2AssetId ;
    keyValuePair_t *keyPairQuery_picture2AssetId = 0;
    {
        keyQuery_picture2AssetId = strdup("picture2AssetId");
        valueQuery_picture2AssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_picture2AssetId, MAX_NUMBER_LENGTH_LONG, "%d", picture2AssetId);
        keyPairQuery_picture2AssetId = keyValuePair_create(keyQuery_picture2AssetId, valueQuery_picture2AssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_picture2AssetId);
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
    char *keyQuery_categoryIdsToAdd = NULL;
    char * valueQuery_categoryIdsToAdd = NULL;
    keyValuePair_t *keyPairQuery_categoryIdsToAdd = 0;
    if (categoryIdsToAdd)
    {
        keyQuery_categoryIdsToAdd = strdup("categoryIdsToAdd");
        valueQuery_categoryIdsToAdd = strdup((categoryIdsToAdd));
        keyPairQuery_categoryIdsToAdd = keyValuePair_create(keyQuery_categoryIdsToAdd, valueQuery_categoryIdsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIdsToAdd);
    }

    // query parameters
    char *keyQuery_categoryIdsToRemove = NULL;
    char * valueQuery_categoryIdsToRemove = NULL;
    keyValuePair_t *keyPairQuery_categoryIdsToRemove = 0;
    if (categoryIdsToRemove)
    {
        keyQuery_categoryIdsToRemove = strdup("categoryIdsToRemove");
        valueQuery_categoryIdsToRemove = strdup((categoryIdsToRemove));
        keyPairQuery_categoryIdsToRemove = keyValuePair_create(keyQuery_categoryIdsToRemove, valueQuery_categoryIdsToRemove);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIdsToRemove);
    }

    // query parameters
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
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

    // query parameters
    char *keyQuery_retailerType = NULL;
    char * valueQuery_retailerType = NULL;
    keyValuePair_t *keyPairQuery_retailerType = 0;
    if (retailerType)
    {
        keyQuery_retailerType = strdup("retailerType");
        valueQuery_retailerType = strdup((retailerType));
        keyPairQuery_retailerType = keyValuePair_create(keyQuery_retailerType, valueQuery_retailerType);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerType);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_createRetailer_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(createRetailer_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_createDefaultLocation = NULL;
    char * valueQuery_createDefaultLocation = NULL;
    keyValuePair_t *keyPairQuery_createDefaultLocation = 0;
    if (createDefaultLocation)
    {
        keyQuery_createDefaultLocation = strdup("createDefaultLocation");
        valueQuery_createDefaultLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_createDefaultLocation, MAX_NUMBER_LENGTH, "%d", *createDefaultLocation);
        keyPairQuery_createDefaultLocation = keyValuePair_create(keyQuery_createDefaultLocation, valueQuery_createDefaultLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_createDefaultLocation);
    }

    // query parameters
    char *keyQuery_responseFormat = NULL;
    sirqul_iot_platform_createRetailer_responseFormat_e valueQuery_responseFormat ;
    keyValuePair_t *keyPairQuery_responseFormat = 0;
    if (responseFormat)
    {
        keyQuery_responseFormat = strdup("responseFormat");
        valueQuery_responseFormat = (responseFormat);
        keyPairQuery_responseFormat = keyValuePair_create(keyQuery_responseFormat, strdup(createRetailer_RESPONSEFORMAT_ToString(
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
    retailer_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_full_response_parseFromJSON(RetailerAPIlocalVarJSON);
        cJSON_Delete(RetailerAPIlocalVarJSON);
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
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
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
    if(keyQuery_website){
        free(keyQuery_website);
        keyQuery_website = NULL;
    }
    if(valueQuery_website){
        free(valueQuery_website);
        valueQuery_website = NULL;
    }
    if(keyPairQuery_website){
        keyValuePair_free(keyPairQuery_website);
        keyPairQuery_website = NULL;
    }
    if(keyQuery_email){
        free(keyQuery_email);
        keyQuery_email = NULL;
    }
    if(valueQuery_email){
        free(valueQuery_email);
        valueQuery_email = NULL;
    }
    if(keyPairQuery_email){
        keyValuePair_free(keyPairQuery_email);
        keyPairQuery_email = NULL;
    }
    if(keyQuery_facebookUrl){
        free(keyQuery_facebookUrl);
        keyQuery_facebookUrl = NULL;
    }
    if(valueQuery_facebookUrl){
        free(valueQuery_facebookUrl);
        valueQuery_facebookUrl = NULL;
    }
    if(keyPairQuery_facebookUrl){
        keyValuePair_free(keyPairQuery_facebookUrl);
        keyPairQuery_facebookUrl = NULL;
    }
    if(keyQuery_twitterUrl){
        free(keyQuery_twitterUrl);
        keyQuery_twitterUrl = NULL;
    }
    if(valueQuery_twitterUrl){
        free(valueQuery_twitterUrl);
        valueQuery_twitterUrl = NULL;
    }
    if(keyPairQuery_twitterUrl){
        keyValuePair_free(keyPairQuery_twitterUrl);
        keyPairQuery_twitterUrl = NULL;
    }
    if(keyQuery_logo){
        free(keyQuery_logo);
        keyQuery_logo = NULL;
    }
    if(keyPairQuery_logo){
        keyValuePair_free(keyPairQuery_logo);
        keyPairQuery_logo = NULL;
    }
    if(keyQuery_logoAssetId){
        free(keyQuery_logoAssetId);
        keyQuery_logoAssetId = NULL;
    }
    if(keyPairQuery_logoAssetId){
        keyValuePair_free(keyPairQuery_logoAssetId);
        keyPairQuery_logoAssetId = NULL;
    }
    if(keyQuery_picture1){
        free(keyQuery_picture1);
        keyQuery_picture1 = NULL;
    }
    if(keyPairQuery_picture1){
        keyValuePair_free(keyPairQuery_picture1);
        keyPairQuery_picture1 = NULL;
    }
    if(keyQuery_picture1AssetId){
        free(keyQuery_picture1AssetId);
        keyQuery_picture1AssetId = NULL;
    }
    if(keyPairQuery_picture1AssetId){
        keyValuePair_free(keyPairQuery_picture1AssetId);
        keyPairQuery_picture1AssetId = NULL;
    }
    if(keyQuery_picture2){
        free(keyQuery_picture2);
        keyQuery_picture2 = NULL;
    }
    if(keyPairQuery_picture2){
        keyValuePair_free(keyPairQuery_picture2);
        keyPairQuery_picture2 = NULL;
    }
    if(keyQuery_picture2AssetId){
        free(keyQuery_picture2AssetId);
        keyQuery_picture2AssetId = NULL;
    }
    if(keyPairQuery_picture2AssetId){
        keyValuePair_free(keyPairQuery_picture2AssetId);
        keyPairQuery_picture2AssetId = NULL;
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
    if(keyQuery_categoryIdsToAdd){
        free(keyQuery_categoryIdsToAdd);
        keyQuery_categoryIdsToAdd = NULL;
    }
    if(valueQuery_categoryIdsToAdd){
        free(valueQuery_categoryIdsToAdd);
        valueQuery_categoryIdsToAdd = NULL;
    }
    if(keyPairQuery_categoryIdsToAdd){
        keyValuePair_free(keyPairQuery_categoryIdsToAdd);
        keyPairQuery_categoryIdsToAdd = NULL;
    }
    if(keyQuery_categoryIdsToRemove){
        free(keyQuery_categoryIdsToRemove);
        keyQuery_categoryIdsToRemove = NULL;
    }
    if(valueQuery_categoryIdsToRemove){
        free(valueQuery_categoryIdsToRemove);
        valueQuery_categoryIdsToRemove = NULL;
    }
    if(keyPairQuery_categoryIdsToRemove){
        keyValuePair_free(keyPairQuery_categoryIdsToRemove);
        keyPairQuery_categoryIdsToRemove = NULL;
    }
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
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
    if(keyQuery_retailerType){
        free(keyQuery_retailerType);
        keyQuery_retailerType = NULL;
    }
    if(valueQuery_retailerType){
        free(valueQuery_retailerType);
        valueQuery_retailerType = NULL;
    }
    if(keyPairQuery_retailerType){
        keyValuePair_free(keyPairQuery_retailerType);
        keyPairQuery_retailerType = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_createDefaultLocation){
        free(keyQuery_createDefaultLocation);
        keyQuery_createDefaultLocation = NULL;
    }
    if(valueQuery_createDefaultLocation){
        free(valueQuery_createDefaultLocation);
        valueQuery_createDefaultLocation = NULL;
    }
    if(keyPairQuery_createDefaultLocation){
        keyValuePair_free(keyPairQuery_createDefaultLocation);
        keyPairQuery_createDefaultLocation = NULL;
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

// Delete Retailer
//
// Set the deleted timestamp to current time.
//
sirqul_response_t*
RetailerAPI_deleteRetailer(apiClient_t *apiClient, char *deviceId, long accountId, long retailerId)
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
    char *localVarPath = strdup("/retailer/delete");





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
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
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
        cJSON *RetailerAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(RetailerAPIlocalVarJSON);
        cJSON_Delete(RetailerAPIlocalVarJSON);
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Retailer
//
// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
//
retailer_full_response_t*
RetailerAPI_getRetailer(apiClient_t *apiClient, long retailerId, char *deviceId, long accountId, int *includeCounts)
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
    char *localVarPath = strdup("/retailer/get");





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
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
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
    retailer_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_full_response_parseFromJSON(RetailerAPIlocalVarJSON);
        cJSON_Delete(RetailerAPIlocalVarJSON);
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Retailers
//
// earches on retailers that the account has access to.
//
list_t*
RetailerAPI_getRetailers(apiClient_t *apiClient, sirqul_iot_platform_getRetailers_visibility_e visibility, sirqul_iot_platform_getRetailers_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, char *deviceId, long accountId, char *q, char *keyword, char *categoryIds, char *filterIds, int *_i, int *_l)
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
    char *localVarPath = strdup("/retailer/search");





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
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
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
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_getRetailers_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(getRetailers_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_getRetailers_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(getRetailers_SORTFIELD_ToString(
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
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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
        cJSON *RetailerAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RetailerAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RetailerAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RetailerAPIlocalVarJSON);
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
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
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
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
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
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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

// Login Retailer
//
// Retailer login check.
//
account_login_response_t*
RetailerAPI_retailerLoginCheck(apiClient_t *apiClient, char *username, char *password, char *deviceId, double latitude, double longitude, char *appKey)
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
    char *localVarPath = strdup("/retailer/login");





    // query parameters
    char *keyQuery_username = NULL;
    char * valueQuery_username = NULL;
    keyValuePair_t *keyPairQuery_username = 0;
    if (username)
    {
        keyQuery_username = strdup("username");
        valueQuery_username = strdup((username));
        keyPairQuery_username = keyValuePair_create(keyQuery_username, valueQuery_username);
        list_addElement(localVarQueryParameters,keyPairQuery_username);
    }

    // query parameters
    char *keyQuery_password = NULL;
    char * valueQuery_password = NULL;
    keyValuePair_t *keyPairQuery_password = 0;
    if (password)
    {
        keyQuery_password = strdup("password");
        valueQuery_password = strdup((password));
        keyPairQuery_password = keyValuePair_create(keyQuery_password, valueQuery_password);
        list_addElement(localVarQueryParameters,keyPairQuery_password);
    }

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
    account_login_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = account_login_response_parseFromJSON(RetailerAPIlocalVarJSON);
        cJSON_Delete(RetailerAPIlocalVarJSON);
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
    if(keyQuery_username){
        free(keyQuery_username);
        keyQuery_username = NULL;
    }
    if(valueQuery_username){
        free(valueQuery_username);
        valueQuery_username = NULL;
    }
    if(keyPairQuery_username){
        keyValuePair_free(keyPairQuery_username);
        keyPairQuery_username = NULL;
    }
    if(keyQuery_password){
        free(keyQuery_password);
        keyQuery_password = NULL;
    }
    if(valueQuery_password){
        free(valueQuery_password);
        valueQuery_password = NULL;
    }
    if(keyPairQuery_password){
        keyValuePair_free(keyPairQuery_password);
        keyPairQuery_password = NULL;
    }
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Retailer
//
// Update a retailer record. Only the owner and the employees of the retailer have access to update its information.
//
retailer_full_response_t*
RetailerAPI_updateRetailer(apiClient_t *apiClient, long retailerId, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *facebookUrl, char *twitterUrl, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *filterIds, double latitude, double longitude, char *metaData, char *searchTags, char *retailerType, sirqul_iot_platform_updateRetailer_visibility_e visibility, int *active, sirqul_iot_platform_updateRetailer_responseFormat_e responseFormat)
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
    char *localVarPath = strdup("/retailer/update");





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
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
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
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
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
    char *keyQuery_website = NULL;
    char * valueQuery_website = NULL;
    keyValuePair_t *keyPairQuery_website = 0;
    if (website)
    {
        keyQuery_website = strdup("website");
        valueQuery_website = strdup((website));
        keyPairQuery_website = keyValuePair_create(keyQuery_website, valueQuery_website);
        list_addElement(localVarQueryParameters,keyPairQuery_website);
    }

    // query parameters
    char *keyQuery_email = NULL;
    char * valueQuery_email = NULL;
    keyValuePair_t *keyPairQuery_email = 0;
    if (email)
    {
        keyQuery_email = strdup("email");
        valueQuery_email = strdup((email));
        keyPairQuery_email = keyValuePair_create(keyQuery_email, valueQuery_email);
        list_addElement(localVarQueryParameters,keyPairQuery_email);
    }

    // query parameters
    char *keyQuery_facebookUrl = NULL;
    char * valueQuery_facebookUrl = NULL;
    keyValuePair_t *keyPairQuery_facebookUrl = 0;
    if (facebookUrl)
    {
        keyQuery_facebookUrl = strdup("facebookUrl");
        valueQuery_facebookUrl = strdup((facebookUrl));
        keyPairQuery_facebookUrl = keyValuePair_create(keyQuery_facebookUrl, valueQuery_facebookUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_facebookUrl);
    }

    // query parameters
    char *keyQuery_twitterUrl = NULL;
    char * valueQuery_twitterUrl = NULL;
    keyValuePair_t *keyPairQuery_twitterUrl = 0;
    if (twitterUrl)
    {
        keyQuery_twitterUrl = strdup("twitterUrl");
        valueQuery_twitterUrl = strdup((twitterUrl));
        keyPairQuery_twitterUrl = keyValuePair_create(keyQuery_twitterUrl, valueQuery_twitterUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_twitterUrl);
    }

    // query parameters
    char *keyQuery_logo = NULL;
    binary_t* valueQuery_logo ;
    keyValuePair_t *keyPairQuery_logo = 0;
    if (logo)
    {
        keyQuery_logo = strdup("logo");
        valueQuery_logo = (logo);
        keyPairQuery_logo = keyValuePair_create(keyQuery_logo, &valueQuery_logo);
        list_addElement(localVarQueryParameters,keyPairQuery_logo);
    }

    // query parameters
    char *keyQuery_logoAssetId = NULL;
    char * valueQuery_logoAssetId ;
    keyValuePair_t *keyPairQuery_logoAssetId = 0;
    {
        keyQuery_logoAssetId = strdup("logoAssetId");
        valueQuery_logoAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_logoAssetId, MAX_NUMBER_LENGTH_LONG, "%d", logoAssetId);
        keyPairQuery_logoAssetId = keyValuePair_create(keyQuery_logoAssetId, valueQuery_logoAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_logoAssetId);
    }

    // query parameters
    char *keyQuery_picture1 = NULL;
    binary_t* valueQuery_picture1 ;
    keyValuePair_t *keyPairQuery_picture1 = 0;
    if (picture1)
    {
        keyQuery_picture1 = strdup("picture1");
        valueQuery_picture1 = (picture1);
        keyPairQuery_picture1 = keyValuePair_create(keyQuery_picture1, &valueQuery_picture1);
        list_addElement(localVarQueryParameters,keyPairQuery_picture1);
    }

    // query parameters
    char *keyQuery_picture1AssetId = NULL;
    char * valueQuery_picture1AssetId ;
    keyValuePair_t *keyPairQuery_picture1AssetId = 0;
    {
        keyQuery_picture1AssetId = strdup("picture1AssetId");
        valueQuery_picture1AssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_picture1AssetId, MAX_NUMBER_LENGTH_LONG, "%d", picture1AssetId);
        keyPairQuery_picture1AssetId = keyValuePair_create(keyQuery_picture1AssetId, valueQuery_picture1AssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_picture1AssetId);
    }

    // query parameters
    char *keyQuery_picture2 = NULL;
    binary_t* valueQuery_picture2 ;
    keyValuePair_t *keyPairQuery_picture2 = 0;
    if (picture2)
    {
        keyQuery_picture2 = strdup("picture2");
        valueQuery_picture2 = (picture2);
        keyPairQuery_picture2 = keyValuePair_create(keyQuery_picture2, &valueQuery_picture2);
        list_addElement(localVarQueryParameters,keyPairQuery_picture2);
    }

    // query parameters
    char *keyQuery_picture2AssetId = NULL;
    char * valueQuery_picture2AssetId ;
    keyValuePair_t *keyPairQuery_picture2AssetId = 0;
    {
        keyQuery_picture2AssetId = strdup("picture2AssetId");
        valueQuery_picture2AssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_picture2AssetId, MAX_NUMBER_LENGTH_LONG, "%d", picture2AssetId);
        keyPairQuery_picture2AssetId = keyValuePair_create(keyQuery_picture2AssetId, valueQuery_picture2AssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_picture2AssetId);
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
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
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

    // query parameters
    char *keyQuery_retailerType = NULL;
    char * valueQuery_retailerType = NULL;
    keyValuePair_t *keyPairQuery_retailerType = 0;
    if (retailerType)
    {
        keyQuery_retailerType = strdup("retailerType");
        valueQuery_retailerType = strdup((retailerType));
        keyPairQuery_retailerType = keyValuePair_create(keyQuery_retailerType, valueQuery_retailerType);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerType);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_updateRetailer_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(updateRetailer_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
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
    char *keyQuery_responseFormat = NULL;
    sirqul_iot_platform_updateRetailer_responseFormat_e valueQuery_responseFormat ;
    keyValuePair_t *keyPairQuery_responseFormat = 0;
    if (responseFormat)
    {
        keyQuery_responseFormat = strdup("responseFormat");
        valueQuery_responseFormat = (responseFormat);
        keyPairQuery_responseFormat = keyValuePair_create(keyQuery_responseFormat, strdup(updateRetailer_RESPONSEFORMAT_ToString(
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
    retailer_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_full_response_parseFromJSON(RetailerAPIlocalVarJSON);
        cJSON_Delete(RetailerAPIlocalVarJSON);
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
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
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
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
    if(keyQuery_website){
        free(keyQuery_website);
        keyQuery_website = NULL;
    }
    if(valueQuery_website){
        free(valueQuery_website);
        valueQuery_website = NULL;
    }
    if(keyPairQuery_website){
        keyValuePair_free(keyPairQuery_website);
        keyPairQuery_website = NULL;
    }
    if(keyQuery_email){
        free(keyQuery_email);
        keyQuery_email = NULL;
    }
    if(valueQuery_email){
        free(valueQuery_email);
        valueQuery_email = NULL;
    }
    if(keyPairQuery_email){
        keyValuePair_free(keyPairQuery_email);
        keyPairQuery_email = NULL;
    }
    if(keyQuery_facebookUrl){
        free(keyQuery_facebookUrl);
        keyQuery_facebookUrl = NULL;
    }
    if(valueQuery_facebookUrl){
        free(valueQuery_facebookUrl);
        valueQuery_facebookUrl = NULL;
    }
    if(keyPairQuery_facebookUrl){
        keyValuePair_free(keyPairQuery_facebookUrl);
        keyPairQuery_facebookUrl = NULL;
    }
    if(keyQuery_twitterUrl){
        free(keyQuery_twitterUrl);
        keyQuery_twitterUrl = NULL;
    }
    if(valueQuery_twitterUrl){
        free(valueQuery_twitterUrl);
        valueQuery_twitterUrl = NULL;
    }
    if(keyPairQuery_twitterUrl){
        keyValuePair_free(keyPairQuery_twitterUrl);
        keyPairQuery_twitterUrl = NULL;
    }
    if(keyQuery_logo){
        free(keyQuery_logo);
        keyQuery_logo = NULL;
    }
    if(keyPairQuery_logo){
        keyValuePair_free(keyPairQuery_logo);
        keyPairQuery_logo = NULL;
    }
    if(keyQuery_logoAssetId){
        free(keyQuery_logoAssetId);
        keyQuery_logoAssetId = NULL;
    }
    if(keyPairQuery_logoAssetId){
        keyValuePair_free(keyPairQuery_logoAssetId);
        keyPairQuery_logoAssetId = NULL;
    }
    if(keyQuery_picture1){
        free(keyQuery_picture1);
        keyQuery_picture1 = NULL;
    }
    if(keyPairQuery_picture1){
        keyValuePair_free(keyPairQuery_picture1);
        keyPairQuery_picture1 = NULL;
    }
    if(keyQuery_picture1AssetId){
        free(keyQuery_picture1AssetId);
        keyQuery_picture1AssetId = NULL;
    }
    if(keyPairQuery_picture1AssetId){
        keyValuePair_free(keyPairQuery_picture1AssetId);
        keyPairQuery_picture1AssetId = NULL;
    }
    if(keyQuery_picture2){
        free(keyQuery_picture2);
        keyQuery_picture2 = NULL;
    }
    if(keyPairQuery_picture2){
        keyValuePair_free(keyPairQuery_picture2);
        keyPairQuery_picture2 = NULL;
    }
    if(keyQuery_picture2AssetId){
        free(keyQuery_picture2AssetId);
        keyQuery_picture2AssetId = NULL;
    }
    if(keyPairQuery_picture2AssetId){
        keyValuePair_free(keyPairQuery_picture2AssetId);
        keyPairQuery_picture2AssetId = NULL;
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
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
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
    if(keyQuery_retailerType){
        free(keyQuery_retailerType);
        keyQuery_retailerType = NULL;
    }
    if(valueQuery_retailerType){
        free(valueQuery_retailerType);
        valueQuery_retailerType = NULL;
    }
    if(keyPairQuery_retailerType){
        keyValuePair_free(keyPairQuery_retailerType);
        keyPairQuery_retailerType = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
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

