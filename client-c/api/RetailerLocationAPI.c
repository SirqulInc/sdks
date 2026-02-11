#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "RetailerLocationAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum RESPONSEFORMAT for RetailerLocationAPI_createRetailerLocations

static char* createRetailerLocations_RESPONSEFORMAT_ToString(sirqul_iot_platform_createRetailerLocations_responseFormat_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static sirqul_iot_platform_createRetailerLocations_responseFormat_e createRetailerLocations_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function createRetailerLocations_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createRetailerLocations_RESPONSEFORMAT_convertToJSON(sirqul_iot_platform_createRetailerLocations_responseFormat_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseFormat", createRetailerLocations_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createRetailerLocations_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createRetailerLocations_responseFormat_e createRetailerLocations_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    sirqul_iot_platform_createRetailerLocations_responseFormat_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "responseFormat");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = createRetailerLocations_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/

// Functions for enum DISTANCEUNIT for RetailerLocationAPI_indexedRetailerLocationDistanceSearch

static char* indexedRetailerLocationDistanceSearch_DISTANCEUNIT_ToString(sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e DISTANCEUNIT){
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    return DISTANCEUNITArray[DISTANCEUNIT];
}

static sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e indexedRetailerLocationDistanceSearch_DISTANCEUNIT_FromString(char* DISTANCEUNIT){
    int stringToReturn = 0;
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    size_t sizeofArray = sizeof(DISTANCEUNITArray) / sizeof(DISTANCEUNITArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(DISTANCEUNIT, DISTANCEUNITArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function indexedRetailerLocationDistanceSearch_DISTANCEUNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *indexedRetailerLocationDistanceSearch_DISTANCEUNIT_convertToJSON(sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e DISTANCEUNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distanceUnit", indexedRetailerLocationDistanceSearch_DISTANCEUNIT_ToString(DISTANCEUNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function indexedRetailerLocationDistanceSearch_DISTANCEUNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e indexedRetailerLocationDistanceSearch_DISTANCEUNIT_parseFromJSON(cJSON* DISTANCEUNITJSON) {
    sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e DISTANCEUNITVariable = 0;
    cJSON *DISTANCEUNITVar = cJSON_GetObjectItemCaseSensitive(DISTANCEUNITJSON, "distanceUnit");
    if(!cJSON_IsString(DISTANCEUNITVar) || (DISTANCEUNITVar->valuestring == NULL))
    {
        goto end;
    }
    DISTANCEUNITVariable = indexedRetailerLocationDistanceSearch_DISTANCEUNIT_FromString(DISTANCEUNITVar->valuestring);
    return DISTANCEUNITVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for RetailerLocationAPI_searchRetailerLocations

static char* searchRetailerLocations_SORTFIELD_ToString(sirqul_iot_platform_searchRetailerLocations_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "RETAILER_ID", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "ADDRESS_STREET", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_POSTAL_CODE", "ADDRESS_COUNTRY", "NAME", "CODE" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchRetailerLocations_sortField_e searchRetailerLocations_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "RETAILER_ID", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "ADDRESS_STREET", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_POSTAL_CODE", "ADDRESS_COUNTRY", "NAME", "CODE" };
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
// Function searchRetailerLocations_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRetailerLocations_SORTFIELD_convertToJSON(sirqul_iot_platform_searchRetailerLocations_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchRetailerLocations_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRetailerLocations_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRetailerLocations_sortField_e searchRetailerLocations_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchRetailerLocations_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchRetailerLocations_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum RESPONSEFORMAT for RetailerLocationAPI_updateRetailerLocations

static char* updateRetailerLocations_RESPONSEFORMAT_ToString(sirqul_iot_platform_updateRetailerLocations_responseFormat_e RESPONSEFORMAT){
    char *RESPONSEFORMATArray[] =  { "NULL", "HTML", "XML", "JSON", "CSV" };
    return RESPONSEFORMATArray[RESPONSEFORMAT];
}

static sirqul_iot_platform_updateRetailerLocations_responseFormat_e updateRetailerLocations_RESPONSEFORMAT_FromString(char* RESPONSEFORMAT){
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
// Function updateRetailerLocations_RESPONSEFORMAT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateRetailerLocations_RESPONSEFORMAT_convertToJSON(sirqul_iot_platform_updateRetailerLocations_responseFormat_e RESPONSEFORMAT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "responseFormat", updateRetailerLocations_RESPONSEFORMAT_ToString(RESPONSEFORMAT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateRetailerLocations_RESPONSEFORMAT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateRetailerLocations_responseFormat_e updateRetailerLocations_RESPONSEFORMAT_parseFromJSON(cJSON* RESPONSEFORMATJSON) {
    sirqul_iot_platform_updateRetailerLocations_responseFormat_e RESPONSEFORMATVariable = 0;
    cJSON *RESPONSEFORMATVar = cJSON_GetObjectItemCaseSensitive(RESPONSEFORMATJSON, "responseFormat");
    if(!cJSON_IsString(RESPONSEFORMATVar) || (RESPONSEFORMATVar->valuestring == NULL))
    {
        goto end;
    }
    RESPONSEFORMATVariable = updateRetailerLocations_RESPONSEFORMAT_FromString(RESPONSEFORMATVar->valuestring);
    return RESPONSEFORMATVariable;
end:
    return 0;
}
*/


// Create Retailer Location (Consumer)
//
// Creates a location record for an application that can support crowd sourced locations.
//
retailer_location_response_t*
RetailerLocationAPI_createRetailerLocationConsumer(apiClient_t *apiClient, char *appKey, char *name, char *deviceId, long accountId, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *detailsHeader, char *detailsBody, char *hours, char *tags, long logoAssetId, long picture1AssetId, long picture2AssetId, char *categoryIds, char *filterIds, char *metaData, int *publicLocation, int *active, char *locationType, double latitude, double longitude)
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
    char *localVarPath = strdup("/location/create");





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
    char *keyQuery_detailsHeader = NULL;
    char * valueQuery_detailsHeader = NULL;
    keyValuePair_t *keyPairQuery_detailsHeader = 0;
    if (detailsHeader)
    {
        keyQuery_detailsHeader = strdup("detailsHeader");
        valueQuery_detailsHeader = strdup((detailsHeader));
        keyPairQuery_detailsHeader = keyValuePair_create(keyQuery_detailsHeader, valueQuery_detailsHeader);
        list_addElement(localVarQueryParameters,keyPairQuery_detailsHeader);
    }

    // query parameters
    char *keyQuery_detailsBody = NULL;
    char * valueQuery_detailsBody = NULL;
    keyValuePair_t *keyPairQuery_detailsBody = 0;
    if (detailsBody)
    {
        keyQuery_detailsBody = strdup("detailsBody");
        valueQuery_detailsBody = strdup((detailsBody));
        keyPairQuery_detailsBody = keyValuePair_create(keyQuery_detailsBody, valueQuery_detailsBody);
        list_addElement(localVarQueryParameters,keyPairQuery_detailsBody);
    }

    // query parameters
    char *keyQuery_hours = NULL;
    char * valueQuery_hours = NULL;
    keyValuePair_t *keyPairQuery_hours = 0;
    if (hours)
    {
        keyQuery_hours = strdup("hours");
        valueQuery_hours = strdup((hours));
        keyPairQuery_hours = keyValuePair_create(keyQuery_hours, valueQuery_hours);
        list_addElement(localVarQueryParameters,keyPairQuery_hours);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
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
    char *keyQuery_publicLocation = NULL;
    char * valueQuery_publicLocation = NULL;
    keyValuePair_t *keyPairQuery_publicLocation = 0;
    if (publicLocation)
    {
        keyQuery_publicLocation = strdup("publicLocation");
        valueQuery_publicLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicLocation, MAX_NUMBER_LENGTH, "%d", *publicLocation);
        keyPairQuery_publicLocation = keyValuePair_create(keyQuery_publicLocation, valueQuery_publicLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_publicLocation);
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
    char *keyQuery_locationType = NULL;
    char * valueQuery_locationType = NULL;
    keyValuePair_t *keyPairQuery_locationType = 0;
    if (locationType)
    {
        keyQuery_locationType = strdup("locationType");
        valueQuery_locationType = strdup((locationType));
        keyPairQuery_locationType = keyValuePair_create(keyQuery_locationType, valueQuery_locationType);
        list_addElement(localVarQueryParameters,keyPairQuery_locationType);
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
    retailer_location_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_location_response_parseFromJSON(RetailerLocationAPIlocalVarJSON);
        cJSON_Delete(RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_detailsHeader){
        free(keyQuery_detailsHeader);
        keyQuery_detailsHeader = NULL;
    }
    if(valueQuery_detailsHeader){
        free(valueQuery_detailsHeader);
        valueQuery_detailsHeader = NULL;
    }
    if(keyPairQuery_detailsHeader){
        keyValuePair_free(keyPairQuery_detailsHeader);
        keyPairQuery_detailsHeader = NULL;
    }
    if(keyQuery_detailsBody){
        free(keyQuery_detailsBody);
        keyQuery_detailsBody = NULL;
    }
    if(valueQuery_detailsBody){
        free(valueQuery_detailsBody);
        valueQuery_detailsBody = NULL;
    }
    if(keyPairQuery_detailsBody){
        keyValuePair_free(keyPairQuery_detailsBody);
        keyPairQuery_detailsBody = NULL;
    }
    if(keyQuery_hours){
        free(keyQuery_hours);
        keyQuery_hours = NULL;
    }
    if(valueQuery_hours){
        free(valueQuery_hours);
        valueQuery_hours = NULL;
    }
    if(keyPairQuery_hours){
        keyValuePair_free(keyPairQuery_hours);
        keyPairQuery_hours = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    if(keyQuery_logoAssetId){
        free(keyQuery_logoAssetId);
        keyQuery_logoAssetId = NULL;
    }
    if(keyPairQuery_logoAssetId){
        keyValuePair_free(keyPairQuery_logoAssetId);
        keyPairQuery_logoAssetId = NULL;
    }
    if(keyQuery_picture1AssetId){
        free(keyQuery_picture1AssetId);
        keyQuery_picture1AssetId = NULL;
    }
    if(keyPairQuery_picture1AssetId){
        keyValuePair_free(keyPairQuery_picture1AssetId);
        keyPairQuery_picture1AssetId = NULL;
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
    if(keyQuery_publicLocation){
        free(keyQuery_publicLocation);
        keyQuery_publicLocation = NULL;
    }
    if(valueQuery_publicLocation){
        free(valueQuery_publicLocation);
        valueQuery_publicLocation = NULL;
    }
    if(keyPairQuery_publicLocation){
        keyValuePair_free(keyPairQuery_publicLocation);
        keyPairQuery_publicLocation = NULL;
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
    if(keyQuery_locationType){
        free(keyQuery_locationType);
        keyQuery_locationType = NULL;
    }
    if(valueQuery_locationType){
        free(valueQuery_locationType);
        valueQuery_locationType = NULL;
    }
    if(keyPairQuery_locationType){
        keyValuePair_free(keyPairQuery_locationType);
        keyPairQuery_locationType = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Retailer Location
//
// Creates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
//
retailer_location_response_t*
RetailerLocationAPI_createRetailerLocations(apiClient_t *apiClient, long retailerId, char *name, char *streetAddress, char *city, char *state, char *postalCode, char *deviceId, long accountId, char *streetAddress2, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *internalId, char *detailsHeader, char *detailsBody, char *hours, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *filterIds, double latitude, double longitude, char *building, char *googlePlaceId, char *yelpId, int *active, int *publicLocation, char *locationType, char *audienceIds, char *audienceIdsToAdd, char *audienceIdsToRemove, sirqul_iot_platform_createRetailerLocations_responseFormat_e responseFormat, char *responseIncludes)
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
    char *localVarPath = strdup("/retailer/location/create");





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
    char *keyQuery_internalId = NULL;
    char * valueQuery_internalId = NULL;
    keyValuePair_t *keyPairQuery_internalId = 0;
    if (internalId)
    {
        keyQuery_internalId = strdup("internalId");
        valueQuery_internalId = strdup((internalId));
        keyPairQuery_internalId = keyValuePair_create(keyQuery_internalId, valueQuery_internalId);
        list_addElement(localVarQueryParameters,keyPairQuery_internalId);
    }

    // query parameters
    char *keyQuery_detailsHeader = NULL;
    char * valueQuery_detailsHeader = NULL;
    keyValuePair_t *keyPairQuery_detailsHeader = 0;
    if (detailsHeader)
    {
        keyQuery_detailsHeader = strdup("detailsHeader");
        valueQuery_detailsHeader = strdup((detailsHeader));
        keyPairQuery_detailsHeader = keyValuePair_create(keyQuery_detailsHeader, valueQuery_detailsHeader);
        list_addElement(localVarQueryParameters,keyPairQuery_detailsHeader);
    }

    // query parameters
    char *keyQuery_detailsBody = NULL;
    char * valueQuery_detailsBody = NULL;
    keyValuePair_t *keyPairQuery_detailsBody = 0;
    if (detailsBody)
    {
        keyQuery_detailsBody = strdup("detailsBody");
        valueQuery_detailsBody = strdup((detailsBody));
        keyPairQuery_detailsBody = keyValuePair_create(keyQuery_detailsBody, valueQuery_detailsBody);
        list_addElement(localVarQueryParameters,keyPairQuery_detailsBody);
    }

    // query parameters
    char *keyQuery_hours = NULL;
    char * valueQuery_hours = NULL;
    keyValuePair_t *keyPairQuery_hours = 0;
    if (hours)
    {
        keyQuery_hours = strdup("hours");
        valueQuery_hours = strdup((hours));
        keyPairQuery_hours = keyValuePair_create(keyQuery_hours, valueQuery_hours);
        list_addElement(localVarQueryParameters,keyPairQuery_hours);
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
    char *keyQuery_building = NULL;
    char * valueQuery_building = NULL;
    keyValuePair_t *keyPairQuery_building = 0;
    if (building)
    {
        keyQuery_building = strdup("building");
        valueQuery_building = strdup((building));
        keyPairQuery_building = keyValuePair_create(keyQuery_building, valueQuery_building);
        list_addElement(localVarQueryParameters,keyPairQuery_building);
    }

    // query parameters
    char *keyQuery_googlePlaceId = NULL;
    char * valueQuery_googlePlaceId = NULL;
    keyValuePair_t *keyPairQuery_googlePlaceId = 0;
    if (googlePlaceId)
    {
        keyQuery_googlePlaceId = strdup("googlePlaceId");
        valueQuery_googlePlaceId = strdup((googlePlaceId));
        keyPairQuery_googlePlaceId = keyValuePair_create(keyQuery_googlePlaceId, valueQuery_googlePlaceId);
        list_addElement(localVarQueryParameters,keyPairQuery_googlePlaceId);
    }

    // query parameters
    char *keyQuery_yelpId = NULL;
    char * valueQuery_yelpId = NULL;
    keyValuePair_t *keyPairQuery_yelpId = 0;
    if (yelpId)
    {
        keyQuery_yelpId = strdup("yelpId");
        valueQuery_yelpId = strdup((yelpId));
        keyPairQuery_yelpId = keyValuePair_create(keyQuery_yelpId, valueQuery_yelpId);
        list_addElement(localVarQueryParameters,keyPairQuery_yelpId);
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
    char *keyQuery_publicLocation = NULL;
    char * valueQuery_publicLocation = NULL;
    keyValuePair_t *keyPairQuery_publicLocation = 0;
    if (publicLocation)
    {
        keyQuery_publicLocation = strdup("publicLocation");
        valueQuery_publicLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicLocation, MAX_NUMBER_LENGTH, "%d", *publicLocation);
        keyPairQuery_publicLocation = keyValuePair_create(keyQuery_publicLocation, valueQuery_publicLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_publicLocation);
    }

    // query parameters
    char *keyQuery_locationType = NULL;
    char * valueQuery_locationType = NULL;
    keyValuePair_t *keyPairQuery_locationType = 0;
    if (locationType)
    {
        keyQuery_locationType = strdup("locationType");
        valueQuery_locationType = strdup((locationType));
        keyPairQuery_locationType = keyValuePair_create(keyQuery_locationType, valueQuery_locationType);
        list_addElement(localVarQueryParameters,keyPairQuery_locationType);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }

    // query parameters
    char *keyQuery_audienceIdsToAdd = NULL;
    char * valueQuery_audienceIdsToAdd = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToAdd = 0;
    if (audienceIdsToAdd)
    {
        keyQuery_audienceIdsToAdd = strdup("audienceIdsToAdd");
        valueQuery_audienceIdsToAdd = strdup((audienceIdsToAdd));
        keyPairQuery_audienceIdsToAdd = keyValuePair_create(keyQuery_audienceIdsToAdd, valueQuery_audienceIdsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToAdd);
    }

    // query parameters
    char *keyQuery_audienceIdsToRemove = NULL;
    char * valueQuery_audienceIdsToRemove = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToRemove = 0;
    if (audienceIdsToRemove)
    {
        keyQuery_audienceIdsToRemove = strdup("audienceIdsToRemove");
        valueQuery_audienceIdsToRemove = strdup((audienceIdsToRemove));
        keyPairQuery_audienceIdsToRemove = keyValuePair_create(keyQuery_audienceIdsToRemove, valueQuery_audienceIdsToRemove);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToRemove);
    }

    // query parameters
    char *keyQuery_responseFormat = NULL;
    sirqul_iot_platform_createRetailerLocations_responseFormat_e valueQuery_responseFormat ;
    keyValuePair_t *keyPairQuery_responseFormat = 0;
    if (responseFormat)
    {
        keyQuery_responseFormat = strdup("responseFormat");
        valueQuery_responseFormat = (responseFormat);
        keyPairQuery_responseFormat = keyValuePair_create(keyQuery_responseFormat, strdup(createRetailerLocations_RESPONSEFORMAT_ToString(
        valueQuery_responseFormat)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseFormat);
    }

    // query parameters
    char *keyQuery_responseIncludes = NULL;
    char * valueQuery_responseIncludes = NULL;
    keyValuePair_t *keyPairQuery_responseIncludes = 0;
    if (responseIncludes)
    {
        keyQuery_responseIncludes = strdup("responseIncludes");
        valueQuery_responseIncludes = strdup((responseIncludes));
        keyPairQuery_responseIncludes = keyValuePair_create(keyQuery_responseIncludes, valueQuery_responseIncludes);
        list_addElement(localVarQueryParameters,keyPairQuery_responseIncludes);
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
    retailer_location_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_location_response_parseFromJSON(RetailerLocationAPIlocalVarJSON);
        cJSON_Delete(RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_internalId){
        free(keyQuery_internalId);
        keyQuery_internalId = NULL;
    }
    if(valueQuery_internalId){
        free(valueQuery_internalId);
        valueQuery_internalId = NULL;
    }
    if(keyPairQuery_internalId){
        keyValuePair_free(keyPairQuery_internalId);
        keyPairQuery_internalId = NULL;
    }
    if(keyQuery_detailsHeader){
        free(keyQuery_detailsHeader);
        keyQuery_detailsHeader = NULL;
    }
    if(valueQuery_detailsHeader){
        free(valueQuery_detailsHeader);
        valueQuery_detailsHeader = NULL;
    }
    if(keyPairQuery_detailsHeader){
        keyValuePair_free(keyPairQuery_detailsHeader);
        keyPairQuery_detailsHeader = NULL;
    }
    if(keyQuery_detailsBody){
        free(keyQuery_detailsBody);
        keyQuery_detailsBody = NULL;
    }
    if(valueQuery_detailsBody){
        free(valueQuery_detailsBody);
        valueQuery_detailsBody = NULL;
    }
    if(keyPairQuery_detailsBody){
        keyValuePair_free(keyPairQuery_detailsBody);
        keyPairQuery_detailsBody = NULL;
    }
    if(keyQuery_hours){
        free(keyQuery_hours);
        keyQuery_hours = NULL;
    }
    if(valueQuery_hours){
        free(valueQuery_hours);
        valueQuery_hours = NULL;
    }
    if(keyPairQuery_hours){
        keyValuePair_free(keyPairQuery_hours);
        keyPairQuery_hours = NULL;
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
    if(keyQuery_building){
        free(keyQuery_building);
        keyQuery_building = NULL;
    }
    if(valueQuery_building){
        free(valueQuery_building);
        valueQuery_building = NULL;
    }
    if(keyPairQuery_building){
        keyValuePair_free(keyPairQuery_building);
        keyPairQuery_building = NULL;
    }
    if(keyQuery_googlePlaceId){
        free(keyQuery_googlePlaceId);
        keyQuery_googlePlaceId = NULL;
    }
    if(valueQuery_googlePlaceId){
        free(valueQuery_googlePlaceId);
        valueQuery_googlePlaceId = NULL;
    }
    if(keyPairQuery_googlePlaceId){
        keyValuePair_free(keyPairQuery_googlePlaceId);
        keyPairQuery_googlePlaceId = NULL;
    }
    if(keyQuery_yelpId){
        free(keyQuery_yelpId);
        keyQuery_yelpId = NULL;
    }
    if(valueQuery_yelpId){
        free(valueQuery_yelpId);
        valueQuery_yelpId = NULL;
    }
    if(keyPairQuery_yelpId){
        keyValuePair_free(keyPairQuery_yelpId);
        keyPairQuery_yelpId = NULL;
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
    if(keyQuery_publicLocation){
        free(keyQuery_publicLocation);
        keyQuery_publicLocation = NULL;
    }
    if(valueQuery_publicLocation){
        free(valueQuery_publicLocation);
        valueQuery_publicLocation = NULL;
    }
    if(keyPairQuery_publicLocation){
        keyValuePair_free(keyPairQuery_publicLocation);
        keyPairQuery_publicLocation = NULL;
    }
    if(keyQuery_locationType){
        free(keyQuery_locationType);
        keyQuery_locationType = NULL;
    }
    if(valueQuery_locationType){
        free(valueQuery_locationType);
        valueQuery_locationType = NULL;
    }
    if(keyPairQuery_locationType){
        keyValuePair_free(keyPairQuery_locationType);
        keyPairQuery_locationType = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_audienceIdsToAdd){
        free(keyQuery_audienceIdsToAdd);
        keyQuery_audienceIdsToAdd = NULL;
    }
    if(valueQuery_audienceIdsToAdd){
        free(valueQuery_audienceIdsToAdd);
        valueQuery_audienceIdsToAdd = NULL;
    }
    if(keyPairQuery_audienceIdsToAdd){
        keyValuePair_free(keyPairQuery_audienceIdsToAdd);
        keyPairQuery_audienceIdsToAdd = NULL;
    }
    if(keyQuery_audienceIdsToRemove){
        free(keyQuery_audienceIdsToRemove);
        keyQuery_audienceIdsToRemove = NULL;
    }
    if(valueQuery_audienceIdsToRemove){
        free(valueQuery_audienceIdsToRemove);
        valueQuery_audienceIdsToRemove = NULL;
    }
    if(keyPairQuery_audienceIdsToRemove){
        keyValuePair_free(keyPairQuery_audienceIdsToRemove);
        keyPairQuery_audienceIdsToRemove = NULL;
    }
    if(keyQuery_responseFormat){
        free(keyQuery_responseFormat);
        keyQuery_responseFormat = NULL;
    }
    if(keyPairQuery_responseFormat){
        keyValuePair_free(keyPairQuery_responseFormat);
        keyPairQuery_responseFormat = NULL;
    }
    if(keyQuery_responseIncludes){
        free(keyQuery_responseIncludes);
        keyQuery_responseIncludes = NULL;
    }
    if(valueQuery_responseIncludes){
        free(valueQuery_responseIncludes);
        valueQuery_responseIncludes = NULL;
    }
    if(keyPairQuery_responseIncludes){
        keyValuePair_free(keyPairQuery_responseIncludes);
        keyPairQuery_responseIncludes = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Retailer Location
//
// Set the deleted timestamp to current time. This effectively deletes the retailer location since all queries should ignore any records with a deleted time stamp.
//
sirqul_response_t*
RetailerLocationAPI_deleteRetailerLocation(apiClient_t *apiClient, char *deviceId, long accountId, long retailerLocationId)
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
    char *localVarPath = strdup("/retailer/location/delete");





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
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
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
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(RetailerLocationAPIlocalVarJSON);
        cJSON_Delete(RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Retailer Location
//
// Gets a retailer location. Only the owner and the employees of the retailer have access to view its information.
//
retailer_location_response_t*
RetailerLocationAPI_getRetailerLocation(apiClient_t *apiClient, long retailerLocationId, char *deviceId, long accountId, char *retailerLocationToken)
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
    char *localVarPath = strdup("/retailer/location/get");





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
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_retailerLocationToken = NULL;
    char * valueQuery_retailerLocationToken = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationToken = 0;
    if (retailerLocationToken)
    {
        keyQuery_retailerLocationToken = strdup("retailerLocationToken");
        valueQuery_retailerLocationToken = strdup((retailerLocationToken));
        keyPairQuery_retailerLocationToken = keyValuePair_create(keyQuery_retailerLocationToken, valueQuery_retailerLocationToken);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationToken);
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
    retailer_location_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_location_response_parseFromJSON(RetailerLocationAPIlocalVarJSON);
        cJSON_Delete(RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_retailerLocationToken){
        free(keyQuery_retailerLocationToken);
        keyQuery_retailerLocationToken = NULL;
    }
    if(valueQuery_retailerLocationToken){
        free(valueQuery_retailerLocationToken);
        valueQuery_retailerLocationToken = NULL;
    }
    if(keyPairQuery_retailerLocationToken){
        keyValuePair_free(keyPairQuery_retailerLocationToken);
        keyPairQuery_retailerLocationToken = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Retailer Location (Consumer)
//
// Gets the details of a retailer location as a consumer.
//
retailer_location_response_t*
RetailerLocationAPI_getRetailerLocationConsumer(apiClient_t *apiClient, long retailerLocationId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/location/get");





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
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
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
    retailer_location_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_location_response_parseFromJSON(RetailerLocationAPIlocalVarJSON);
        cJSON_Delete(RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Distance Search Retailer Locations (Indexed)
//
// Retailer location indexed search by distance. This searches on any retailer location with location data and returns the results sorted by distance.
//
list_t*
RetailerLocationAPI_indexedRetailerLocationDistanceSearch(apiClient_t *apiClient, double latitude, double longitude, double searchRange, int *start, int *limit, long accountId, char *address, int *hasOffers, char *categories, char *filters, char *audiences, char *retailerIds, char *retailerLocationIds, char *tags, char *locationType, char *sortField, int *descending, char *q, char *keyword, char *keywordOperator, char *searchExpression, sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e distanceUnit, int *returnFavorited, int *returnRetailer, int *returnAssets, int *returnOffers, int *returnCategories, int *returnFilters, int *returnAudiences, int *returnQrCode, int *returnExternalCategoryData, int *includeFavorite, int *includeLiked, int *includeRating)
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
    char *localVarPath = strdup("/retailer/location/idistancesearch");





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
    char *keyQuery_address = NULL;
    char * valueQuery_address = NULL;
    keyValuePair_t *keyPairQuery_address = 0;
    if (address)
    {
        keyQuery_address = strdup("address");
        valueQuery_address = strdup((address));
        keyPairQuery_address = keyValuePair_create(keyQuery_address, valueQuery_address);
        list_addElement(localVarQueryParameters,keyPairQuery_address);
    }

    // query parameters
    char *keyQuery_searchRange = NULL;
    char * valueQuery_searchRange = NULL;
    keyValuePair_t *keyPairQuery_searchRange = 0;
    {
        keyQuery_searchRange = strdup("searchRange");
        int s = snprintf(NULL, 0, "%.16e", searchRange);
        if (s >= 0)
        {
            valueQuery_searchRange = calloc(1,s+1);
            snprintf(valueQuery_searchRange, s+1, "%.16e", searchRange);
        }
        keyPairQuery_searchRange = keyValuePair_create(keyQuery_searchRange, valueQuery_searchRange);
        list_addElement(localVarQueryParameters,keyPairQuery_searchRange);
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
    char *keyQuery_hasOffers = NULL;
    char * valueQuery_hasOffers = NULL;
    keyValuePair_t *keyPairQuery_hasOffers = 0;
    if (hasOffers)
    {
        keyQuery_hasOffers = strdup("hasOffers");
        valueQuery_hasOffers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasOffers, MAX_NUMBER_LENGTH, "%d", *hasOffers);
        keyPairQuery_hasOffers = keyValuePair_create(keyQuery_hasOffers, valueQuery_hasOffers);
        list_addElement(localVarQueryParameters,keyPairQuery_hasOffers);
    }

    // query parameters
    char *keyQuery_categories = NULL;
    char * valueQuery_categories = NULL;
    keyValuePair_t *keyPairQuery_categories = 0;
    if (categories)
    {
        keyQuery_categories = strdup("categories");
        valueQuery_categories = strdup((categories));
        keyPairQuery_categories = keyValuePair_create(keyQuery_categories, valueQuery_categories);
        list_addElement(localVarQueryParameters,keyPairQuery_categories);
    }

    // query parameters
    char *keyQuery_filters = NULL;
    char * valueQuery_filters = NULL;
    keyValuePair_t *keyPairQuery_filters = 0;
    if (filters)
    {
        keyQuery_filters = strdup("filters");
        valueQuery_filters = strdup((filters));
        keyPairQuery_filters = keyValuePair_create(keyQuery_filters, valueQuery_filters);
        list_addElement(localVarQueryParameters,keyPairQuery_filters);
    }

    // query parameters
    char *keyQuery_audiences = NULL;
    char * valueQuery_audiences = NULL;
    keyValuePair_t *keyPairQuery_audiences = 0;
    if (audiences)
    {
        keyQuery_audiences = strdup("audiences");
        valueQuery_audiences = strdup((audiences));
        keyPairQuery_audiences = keyValuePair_create(keyQuery_audiences, valueQuery_audiences);
        list_addElement(localVarQueryParameters,keyPairQuery_audiences);
    }

    // query parameters
    char *keyQuery_retailerIds = NULL;
    char * valueQuery_retailerIds = NULL;
    keyValuePair_t *keyPairQuery_retailerIds = 0;
    if (retailerIds)
    {
        keyQuery_retailerIds = strdup("retailerIds");
        valueQuery_retailerIds = strdup((retailerIds));
        keyPairQuery_retailerIds = keyValuePair_create(keyQuery_retailerIds, valueQuery_retailerIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerIds);
    }

    // query parameters
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
    }

    // query parameters
    char *keyQuery_locationType = NULL;
    char * valueQuery_locationType = NULL;
    keyValuePair_t *keyPairQuery_locationType = 0;
    if (locationType)
    {
        keyQuery_locationType = strdup("locationType");
        valueQuery_locationType = strdup((locationType));
        keyPairQuery_locationType = keyValuePair_create(keyQuery_locationType, valueQuery_locationType);
        list_addElement(localVarQueryParameters,keyPairQuery_locationType);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
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
    char *keyQuery_keywordOperator = NULL;
    char * valueQuery_keywordOperator = NULL;
    keyValuePair_t *keyPairQuery_keywordOperator = 0;
    if (keywordOperator)
    {
        keyQuery_keywordOperator = strdup("keywordOperator");
        valueQuery_keywordOperator = strdup((keywordOperator));
        keyPairQuery_keywordOperator = keyValuePair_create(keyQuery_keywordOperator, valueQuery_keywordOperator);
        list_addElement(localVarQueryParameters,keyPairQuery_keywordOperator);
    }

    // query parameters
    char *keyQuery_searchExpression = NULL;
    char * valueQuery_searchExpression = NULL;
    keyValuePair_t *keyPairQuery_searchExpression = 0;
    if (searchExpression)
    {
        keyQuery_searchExpression = strdup("searchExpression");
        valueQuery_searchExpression = strdup((searchExpression));
        keyPairQuery_searchExpression = keyValuePair_create(keyQuery_searchExpression, valueQuery_searchExpression);
        list_addElement(localVarQueryParameters,keyPairQuery_searchExpression);
    }

    // query parameters
    char *keyQuery_distanceUnit = NULL;
    sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e valueQuery_distanceUnit ;
    keyValuePair_t *keyPairQuery_distanceUnit = 0;
    if (distanceUnit)
    {
        keyQuery_distanceUnit = strdup("distanceUnit");
        valueQuery_distanceUnit = (distanceUnit);
        keyPairQuery_distanceUnit = keyValuePair_create(keyQuery_distanceUnit, strdup(indexedRetailerLocationDistanceSearch_DISTANCEUNIT_ToString(
        valueQuery_distanceUnit)));
        list_addElement(localVarQueryParameters,keyPairQuery_distanceUnit);
    }

    // query parameters
    char *keyQuery_returnFavorited = NULL;
    char * valueQuery_returnFavorited = NULL;
    keyValuePair_t *keyPairQuery_returnFavorited = 0;
    if (returnFavorited)
    {
        keyQuery_returnFavorited = strdup("returnFavorited");
        valueQuery_returnFavorited = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFavorited, MAX_NUMBER_LENGTH, "%d", *returnFavorited);
        keyPairQuery_returnFavorited = keyValuePair_create(keyQuery_returnFavorited, valueQuery_returnFavorited);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFavorited);
    }

    // query parameters
    char *keyQuery_returnRetailer = NULL;
    char * valueQuery_returnRetailer = NULL;
    keyValuePair_t *keyPairQuery_returnRetailer = 0;
    if (returnRetailer)
    {
        keyQuery_returnRetailer = strdup("returnRetailer");
        valueQuery_returnRetailer = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnRetailer, MAX_NUMBER_LENGTH, "%d", *returnRetailer);
        keyPairQuery_returnRetailer = keyValuePair_create(keyQuery_returnRetailer, valueQuery_returnRetailer);
        list_addElement(localVarQueryParameters,keyPairQuery_returnRetailer);
    }

    // query parameters
    char *keyQuery_returnAssets = NULL;
    char * valueQuery_returnAssets = NULL;
    keyValuePair_t *keyPairQuery_returnAssets = 0;
    if (returnAssets)
    {
        keyQuery_returnAssets = strdup("returnAssets");
        valueQuery_returnAssets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAssets, MAX_NUMBER_LENGTH, "%d", *returnAssets);
        keyPairQuery_returnAssets = keyValuePair_create(keyQuery_returnAssets, valueQuery_returnAssets);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAssets);
    }

    // query parameters
    char *keyQuery_returnOffers = NULL;
    char * valueQuery_returnOffers = NULL;
    keyValuePair_t *keyPairQuery_returnOffers = 0;
    if (returnOffers)
    {
        keyQuery_returnOffers = strdup("returnOffers");
        valueQuery_returnOffers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnOffers, MAX_NUMBER_LENGTH, "%d", *returnOffers);
        keyPairQuery_returnOffers = keyValuePair_create(keyQuery_returnOffers, valueQuery_returnOffers);
        list_addElement(localVarQueryParameters,keyPairQuery_returnOffers);
    }

    // query parameters
    char *keyQuery_returnCategories = NULL;
    char * valueQuery_returnCategories = NULL;
    keyValuePair_t *keyPairQuery_returnCategories = 0;
    if (returnCategories)
    {
        keyQuery_returnCategories = strdup("returnCategories");
        valueQuery_returnCategories = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnCategories, MAX_NUMBER_LENGTH, "%d", *returnCategories);
        keyPairQuery_returnCategories = keyValuePair_create(keyQuery_returnCategories, valueQuery_returnCategories);
        list_addElement(localVarQueryParameters,keyPairQuery_returnCategories);
    }

    // query parameters
    char *keyQuery_returnFilters = NULL;
    char * valueQuery_returnFilters = NULL;
    keyValuePair_t *keyPairQuery_returnFilters = 0;
    if (returnFilters)
    {
        keyQuery_returnFilters = strdup("returnFilters");
        valueQuery_returnFilters = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFilters, MAX_NUMBER_LENGTH, "%d", *returnFilters);
        keyPairQuery_returnFilters = keyValuePair_create(keyQuery_returnFilters, valueQuery_returnFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFilters);
    }

    // query parameters
    char *keyQuery_returnAudiences = NULL;
    char * valueQuery_returnAudiences = NULL;
    keyValuePair_t *keyPairQuery_returnAudiences = 0;
    if (returnAudiences)
    {
        keyQuery_returnAudiences = strdup("returnAudiences");
        valueQuery_returnAudiences = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAudiences, MAX_NUMBER_LENGTH, "%d", *returnAudiences);
        keyPairQuery_returnAudiences = keyValuePair_create(keyQuery_returnAudiences, valueQuery_returnAudiences);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAudiences);
    }

    // query parameters
    char *keyQuery_returnQrCode = NULL;
    char * valueQuery_returnQrCode = NULL;
    keyValuePair_t *keyPairQuery_returnQrCode = 0;
    if (returnQrCode)
    {
        keyQuery_returnQrCode = strdup("returnQrCode");
        valueQuery_returnQrCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnQrCode, MAX_NUMBER_LENGTH, "%d", *returnQrCode);
        keyPairQuery_returnQrCode = keyValuePair_create(keyQuery_returnQrCode, valueQuery_returnQrCode);
        list_addElement(localVarQueryParameters,keyPairQuery_returnQrCode);
    }

    // query parameters
    char *keyQuery_returnExternalCategoryData = NULL;
    char * valueQuery_returnExternalCategoryData = NULL;
    keyValuePair_t *keyPairQuery_returnExternalCategoryData = 0;
    if (returnExternalCategoryData)
    {
        keyQuery_returnExternalCategoryData = strdup("returnExternalCategoryData");
        valueQuery_returnExternalCategoryData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnExternalCategoryData, MAX_NUMBER_LENGTH, "%d", *returnExternalCategoryData);
        keyPairQuery_returnExternalCategoryData = keyValuePair_create(keyQuery_returnExternalCategoryData, valueQuery_returnExternalCategoryData);
        list_addElement(localVarQueryParameters,keyPairQuery_returnExternalCategoryData);
    }

    // query parameters
    char *keyQuery_includeFavorite = NULL;
    char * valueQuery_includeFavorite = NULL;
    keyValuePair_t *keyPairQuery_includeFavorite = 0;
    if (includeFavorite)
    {
        keyQuery_includeFavorite = strdup("includeFavorite");
        valueQuery_includeFavorite = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFavorite, MAX_NUMBER_LENGTH, "%d", *includeFavorite);
        keyPairQuery_includeFavorite = keyValuePair_create(keyQuery_includeFavorite, valueQuery_includeFavorite);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFavorite);
    }

    // query parameters
    char *keyQuery_includeLiked = NULL;
    char * valueQuery_includeLiked = NULL;
    keyValuePair_t *keyPairQuery_includeLiked = 0;
    if (includeLiked)
    {
        keyQuery_includeLiked = strdup("includeLiked");
        valueQuery_includeLiked = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeLiked, MAX_NUMBER_LENGTH, "%d", *includeLiked);
        keyPairQuery_includeLiked = keyValuePair_create(keyQuery_includeLiked, valueQuery_includeLiked);
        list_addElement(localVarQueryParameters,keyPairQuery_includeLiked);
    }

    // query parameters
    char *keyQuery_includeRating = NULL;
    char * valueQuery_includeRating = NULL;
    keyValuePair_t *keyPairQuery_includeRating = 0;
    if (includeRating)
    {
        keyQuery_includeRating = strdup("includeRating");
        valueQuery_includeRating = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeRating, MAX_NUMBER_LENGTH, "%d", *includeRating);
        keyPairQuery_includeRating = keyValuePair_create(keyQuery_includeRating, valueQuery_includeRating);
        list_addElement(localVarQueryParameters,keyPairQuery_includeRating);
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
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RetailerLocationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RetailerLocationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_address){
        free(keyQuery_address);
        keyQuery_address = NULL;
    }
    if(valueQuery_address){
        free(valueQuery_address);
        valueQuery_address = NULL;
    }
    if(keyPairQuery_address){
        keyValuePair_free(keyPairQuery_address);
        keyPairQuery_address = NULL;
    }
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
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
    if(keyQuery_hasOffers){
        free(keyQuery_hasOffers);
        keyQuery_hasOffers = NULL;
    }
    if(valueQuery_hasOffers){
        free(valueQuery_hasOffers);
        valueQuery_hasOffers = NULL;
    }
    if(keyPairQuery_hasOffers){
        keyValuePair_free(keyPairQuery_hasOffers);
        keyPairQuery_hasOffers = NULL;
    }
    if(keyQuery_categories){
        free(keyQuery_categories);
        keyQuery_categories = NULL;
    }
    if(valueQuery_categories){
        free(valueQuery_categories);
        valueQuery_categories = NULL;
    }
    if(keyPairQuery_categories){
        keyValuePair_free(keyPairQuery_categories);
        keyPairQuery_categories = NULL;
    }
    if(keyQuery_filters){
        free(keyQuery_filters);
        keyQuery_filters = NULL;
    }
    if(valueQuery_filters){
        free(valueQuery_filters);
        valueQuery_filters = NULL;
    }
    if(keyPairQuery_filters){
        keyValuePair_free(keyPairQuery_filters);
        keyPairQuery_filters = NULL;
    }
    if(keyQuery_audiences){
        free(keyQuery_audiences);
        keyQuery_audiences = NULL;
    }
    if(valueQuery_audiences){
        free(valueQuery_audiences);
        valueQuery_audiences = NULL;
    }
    if(keyPairQuery_audiences){
        keyValuePair_free(keyPairQuery_audiences);
        keyPairQuery_audiences = NULL;
    }
    if(keyQuery_retailerIds){
        free(keyQuery_retailerIds);
        keyQuery_retailerIds = NULL;
    }
    if(valueQuery_retailerIds){
        free(valueQuery_retailerIds);
        valueQuery_retailerIds = NULL;
    }
    if(keyPairQuery_retailerIds){
        keyValuePair_free(keyPairQuery_retailerIds);
        keyPairQuery_retailerIds = NULL;
    }
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    if(keyQuery_locationType){
        free(keyQuery_locationType);
        keyQuery_locationType = NULL;
    }
    if(valueQuery_locationType){
        free(valueQuery_locationType);
        valueQuery_locationType = NULL;
    }
    if(keyPairQuery_locationType){
        keyValuePair_free(keyPairQuery_locationType);
        keyPairQuery_locationType = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
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
    if(keyQuery_keywordOperator){
        free(keyQuery_keywordOperator);
        keyQuery_keywordOperator = NULL;
    }
    if(valueQuery_keywordOperator){
        free(valueQuery_keywordOperator);
        valueQuery_keywordOperator = NULL;
    }
    if(keyPairQuery_keywordOperator){
        keyValuePair_free(keyPairQuery_keywordOperator);
        keyPairQuery_keywordOperator = NULL;
    }
    if(keyQuery_searchExpression){
        free(keyQuery_searchExpression);
        keyQuery_searchExpression = NULL;
    }
    if(valueQuery_searchExpression){
        free(valueQuery_searchExpression);
        valueQuery_searchExpression = NULL;
    }
    if(keyPairQuery_searchExpression){
        keyValuePair_free(keyPairQuery_searchExpression);
        keyPairQuery_searchExpression = NULL;
    }
    if(keyQuery_distanceUnit){
        free(keyQuery_distanceUnit);
        keyQuery_distanceUnit = NULL;
    }
    if(keyPairQuery_distanceUnit){
        keyValuePair_free(keyPairQuery_distanceUnit);
        keyPairQuery_distanceUnit = NULL;
    }
    if(keyQuery_returnFavorited){
        free(keyQuery_returnFavorited);
        keyQuery_returnFavorited = NULL;
    }
    if(valueQuery_returnFavorited){
        free(valueQuery_returnFavorited);
        valueQuery_returnFavorited = NULL;
    }
    if(keyPairQuery_returnFavorited){
        keyValuePair_free(keyPairQuery_returnFavorited);
        keyPairQuery_returnFavorited = NULL;
    }
    if(keyQuery_returnRetailer){
        free(keyQuery_returnRetailer);
        keyQuery_returnRetailer = NULL;
    }
    if(valueQuery_returnRetailer){
        free(valueQuery_returnRetailer);
        valueQuery_returnRetailer = NULL;
    }
    if(keyPairQuery_returnRetailer){
        keyValuePair_free(keyPairQuery_returnRetailer);
        keyPairQuery_returnRetailer = NULL;
    }
    if(keyQuery_returnAssets){
        free(keyQuery_returnAssets);
        keyQuery_returnAssets = NULL;
    }
    if(valueQuery_returnAssets){
        free(valueQuery_returnAssets);
        valueQuery_returnAssets = NULL;
    }
    if(keyPairQuery_returnAssets){
        keyValuePair_free(keyPairQuery_returnAssets);
        keyPairQuery_returnAssets = NULL;
    }
    if(keyQuery_returnOffers){
        free(keyQuery_returnOffers);
        keyQuery_returnOffers = NULL;
    }
    if(valueQuery_returnOffers){
        free(valueQuery_returnOffers);
        valueQuery_returnOffers = NULL;
    }
    if(keyPairQuery_returnOffers){
        keyValuePair_free(keyPairQuery_returnOffers);
        keyPairQuery_returnOffers = NULL;
    }
    if(keyQuery_returnCategories){
        free(keyQuery_returnCategories);
        keyQuery_returnCategories = NULL;
    }
    if(valueQuery_returnCategories){
        free(valueQuery_returnCategories);
        valueQuery_returnCategories = NULL;
    }
    if(keyPairQuery_returnCategories){
        keyValuePair_free(keyPairQuery_returnCategories);
        keyPairQuery_returnCategories = NULL;
    }
    if(keyQuery_returnFilters){
        free(keyQuery_returnFilters);
        keyQuery_returnFilters = NULL;
    }
    if(valueQuery_returnFilters){
        free(valueQuery_returnFilters);
        valueQuery_returnFilters = NULL;
    }
    if(keyPairQuery_returnFilters){
        keyValuePair_free(keyPairQuery_returnFilters);
        keyPairQuery_returnFilters = NULL;
    }
    if(keyQuery_returnAudiences){
        free(keyQuery_returnAudiences);
        keyQuery_returnAudiences = NULL;
    }
    if(valueQuery_returnAudiences){
        free(valueQuery_returnAudiences);
        valueQuery_returnAudiences = NULL;
    }
    if(keyPairQuery_returnAudiences){
        keyValuePair_free(keyPairQuery_returnAudiences);
        keyPairQuery_returnAudiences = NULL;
    }
    if(keyQuery_returnQrCode){
        free(keyQuery_returnQrCode);
        keyQuery_returnQrCode = NULL;
    }
    if(valueQuery_returnQrCode){
        free(valueQuery_returnQrCode);
        valueQuery_returnQrCode = NULL;
    }
    if(keyPairQuery_returnQrCode){
        keyValuePair_free(keyPairQuery_returnQrCode);
        keyPairQuery_returnQrCode = NULL;
    }
    if(keyQuery_returnExternalCategoryData){
        free(keyQuery_returnExternalCategoryData);
        keyQuery_returnExternalCategoryData = NULL;
    }
    if(valueQuery_returnExternalCategoryData){
        free(valueQuery_returnExternalCategoryData);
        valueQuery_returnExternalCategoryData = NULL;
    }
    if(keyPairQuery_returnExternalCategoryData){
        keyValuePair_free(keyPairQuery_returnExternalCategoryData);
        keyPairQuery_returnExternalCategoryData = NULL;
    }
    if(keyQuery_includeFavorite){
        free(keyQuery_includeFavorite);
        keyQuery_includeFavorite = NULL;
    }
    if(valueQuery_includeFavorite){
        free(valueQuery_includeFavorite);
        valueQuery_includeFavorite = NULL;
    }
    if(keyPairQuery_includeFavorite){
        keyValuePair_free(keyPairQuery_includeFavorite);
        keyPairQuery_includeFavorite = NULL;
    }
    if(keyQuery_includeLiked){
        free(keyQuery_includeLiked);
        keyQuery_includeLiked = NULL;
    }
    if(valueQuery_includeLiked){
        free(valueQuery_includeLiked);
        valueQuery_includeLiked = NULL;
    }
    if(keyPairQuery_includeLiked){
        keyValuePair_free(keyPairQuery_includeLiked);
        keyPairQuery_includeLiked = NULL;
    }
    if(keyQuery_includeRating){
        free(keyQuery_includeRating);
        keyQuery_includeRating = NULL;
    }
    if(valueQuery_includeRating){
        free(valueQuery_includeRating);
        valueQuery_includeRating = NULL;
    }
    if(keyPairQuery_includeRating){
        keyValuePair_free(keyPairQuery_includeRating);
        keyPairQuery_includeRating = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Keyword Search Retailer Locations (Indexed)
//
// Retailer location (faster) indexed search. This searches all retailer locations.
//
list_t*
RetailerLocationAPI_indexedRetailerLocationSearch(apiClient_t *apiClient, long accountId, int *start, int *limit, int *hasOffers, char *categories, char *filters, char *audiences, char *retailerIds, char *retailerLocationIds, char *tags, char *locationType, char *sortField, int *descending, char *q, char *keyword, char *keywordOperator, char *searchExpression, int *returnRetailer, int *returnAssets, int *returnOffers, int *returnCategories, int *returnFilters, int *returnAudiences, int *returnQrCode, int *returnExternalCategoryData, int *includeFavorite, int *includeLiked, int *includeRating)
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
    char *localVarPath = strdup("/retailer/location/isearch");





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

    // query parameters
    char *keyQuery_hasOffers = NULL;
    char * valueQuery_hasOffers = NULL;
    keyValuePair_t *keyPairQuery_hasOffers = 0;
    if (hasOffers)
    {
        keyQuery_hasOffers = strdup("hasOffers");
        valueQuery_hasOffers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_hasOffers, MAX_NUMBER_LENGTH, "%d", *hasOffers);
        keyPairQuery_hasOffers = keyValuePair_create(keyQuery_hasOffers, valueQuery_hasOffers);
        list_addElement(localVarQueryParameters,keyPairQuery_hasOffers);
    }

    // query parameters
    char *keyQuery_categories = NULL;
    char * valueQuery_categories = NULL;
    keyValuePair_t *keyPairQuery_categories = 0;
    if (categories)
    {
        keyQuery_categories = strdup("categories");
        valueQuery_categories = strdup((categories));
        keyPairQuery_categories = keyValuePair_create(keyQuery_categories, valueQuery_categories);
        list_addElement(localVarQueryParameters,keyPairQuery_categories);
    }

    // query parameters
    char *keyQuery_filters = NULL;
    char * valueQuery_filters = NULL;
    keyValuePair_t *keyPairQuery_filters = 0;
    if (filters)
    {
        keyQuery_filters = strdup("filters");
        valueQuery_filters = strdup((filters));
        keyPairQuery_filters = keyValuePair_create(keyQuery_filters, valueQuery_filters);
        list_addElement(localVarQueryParameters,keyPairQuery_filters);
    }

    // query parameters
    char *keyQuery_audiences = NULL;
    char * valueQuery_audiences = NULL;
    keyValuePair_t *keyPairQuery_audiences = 0;
    if (audiences)
    {
        keyQuery_audiences = strdup("audiences");
        valueQuery_audiences = strdup((audiences));
        keyPairQuery_audiences = keyValuePair_create(keyQuery_audiences, valueQuery_audiences);
        list_addElement(localVarQueryParameters,keyPairQuery_audiences);
    }

    // query parameters
    char *keyQuery_retailerIds = NULL;
    char * valueQuery_retailerIds = NULL;
    keyValuePair_t *keyPairQuery_retailerIds = 0;
    if (retailerIds)
    {
        keyQuery_retailerIds = strdup("retailerIds");
        valueQuery_retailerIds = strdup((retailerIds));
        keyPairQuery_retailerIds = keyValuePair_create(keyQuery_retailerIds, valueQuery_retailerIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerIds);
    }

    // query parameters
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
    }

    // query parameters
    char *keyQuery_locationType = NULL;
    char * valueQuery_locationType = NULL;
    keyValuePair_t *keyPairQuery_locationType = 0;
    if (locationType)
    {
        keyQuery_locationType = strdup("locationType");
        valueQuery_locationType = strdup((locationType));
        keyPairQuery_locationType = keyValuePair_create(keyQuery_locationType, valueQuery_locationType);
        list_addElement(localVarQueryParameters,keyPairQuery_locationType);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
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
    char *keyQuery_keywordOperator = NULL;
    char * valueQuery_keywordOperator = NULL;
    keyValuePair_t *keyPairQuery_keywordOperator = 0;
    if (keywordOperator)
    {
        keyQuery_keywordOperator = strdup("keywordOperator");
        valueQuery_keywordOperator = strdup((keywordOperator));
        keyPairQuery_keywordOperator = keyValuePair_create(keyQuery_keywordOperator, valueQuery_keywordOperator);
        list_addElement(localVarQueryParameters,keyPairQuery_keywordOperator);
    }

    // query parameters
    char *keyQuery_searchExpression = NULL;
    char * valueQuery_searchExpression = NULL;
    keyValuePair_t *keyPairQuery_searchExpression = 0;
    if (searchExpression)
    {
        keyQuery_searchExpression = strdup("searchExpression");
        valueQuery_searchExpression = strdup((searchExpression));
        keyPairQuery_searchExpression = keyValuePair_create(keyQuery_searchExpression, valueQuery_searchExpression);
        list_addElement(localVarQueryParameters,keyPairQuery_searchExpression);
    }

    // query parameters
    char *keyQuery_returnRetailer = NULL;
    char * valueQuery_returnRetailer = NULL;
    keyValuePair_t *keyPairQuery_returnRetailer = 0;
    if (returnRetailer)
    {
        keyQuery_returnRetailer = strdup("returnRetailer");
        valueQuery_returnRetailer = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnRetailer, MAX_NUMBER_LENGTH, "%d", *returnRetailer);
        keyPairQuery_returnRetailer = keyValuePair_create(keyQuery_returnRetailer, valueQuery_returnRetailer);
        list_addElement(localVarQueryParameters,keyPairQuery_returnRetailer);
    }

    // query parameters
    char *keyQuery_returnAssets = NULL;
    char * valueQuery_returnAssets = NULL;
    keyValuePair_t *keyPairQuery_returnAssets = 0;
    if (returnAssets)
    {
        keyQuery_returnAssets = strdup("returnAssets");
        valueQuery_returnAssets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAssets, MAX_NUMBER_LENGTH, "%d", *returnAssets);
        keyPairQuery_returnAssets = keyValuePair_create(keyQuery_returnAssets, valueQuery_returnAssets);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAssets);
    }

    // query parameters
    char *keyQuery_returnOffers = NULL;
    char * valueQuery_returnOffers = NULL;
    keyValuePair_t *keyPairQuery_returnOffers = 0;
    if (returnOffers)
    {
        keyQuery_returnOffers = strdup("returnOffers");
        valueQuery_returnOffers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnOffers, MAX_NUMBER_LENGTH, "%d", *returnOffers);
        keyPairQuery_returnOffers = keyValuePair_create(keyQuery_returnOffers, valueQuery_returnOffers);
        list_addElement(localVarQueryParameters,keyPairQuery_returnOffers);
    }

    // query parameters
    char *keyQuery_returnCategories = NULL;
    char * valueQuery_returnCategories = NULL;
    keyValuePair_t *keyPairQuery_returnCategories = 0;
    if (returnCategories)
    {
        keyQuery_returnCategories = strdup("returnCategories");
        valueQuery_returnCategories = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnCategories, MAX_NUMBER_LENGTH, "%d", *returnCategories);
        keyPairQuery_returnCategories = keyValuePair_create(keyQuery_returnCategories, valueQuery_returnCategories);
        list_addElement(localVarQueryParameters,keyPairQuery_returnCategories);
    }

    // query parameters
    char *keyQuery_returnFilters = NULL;
    char * valueQuery_returnFilters = NULL;
    keyValuePair_t *keyPairQuery_returnFilters = 0;
    if (returnFilters)
    {
        keyQuery_returnFilters = strdup("returnFilters");
        valueQuery_returnFilters = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFilters, MAX_NUMBER_LENGTH, "%d", *returnFilters);
        keyPairQuery_returnFilters = keyValuePair_create(keyQuery_returnFilters, valueQuery_returnFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFilters);
    }

    // query parameters
    char *keyQuery_returnAudiences = NULL;
    char * valueQuery_returnAudiences = NULL;
    keyValuePair_t *keyPairQuery_returnAudiences = 0;
    if (returnAudiences)
    {
        keyQuery_returnAudiences = strdup("returnAudiences");
        valueQuery_returnAudiences = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAudiences, MAX_NUMBER_LENGTH, "%d", *returnAudiences);
        keyPairQuery_returnAudiences = keyValuePair_create(keyQuery_returnAudiences, valueQuery_returnAudiences);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAudiences);
    }

    // query parameters
    char *keyQuery_returnQrCode = NULL;
    char * valueQuery_returnQrCode = NULL;
    keyValuePair_t *keyPairQuery_returnQrCode = 0;
    if (returnQrCode)
    {
        keyQuery_returnQrCode = strdup("returnQrCode");
        valueQuery_returnQrCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnQrCode, MAX_NUMBER_LENGTH, "%d", *returnQrCode);
        keyPairQuery_returnQrCode = keyValuePair_create(keyQuery_returnQrCode, valueQuery_returnQrCode);
        list_addElement(localVarQueryParameters,keyPairQuery_returnQrCode);
    }

    // query parameters
    char *keyQuery_returnExternalCategoryData = NULL;
    char * valueQuery_returnExternalCategoryData = NULL;
    keyValuePair_t *keyPairQuery_returnExternalCategoryData = 0;
    if (returnExternalCategoryData)
    {
        keyQuery_returnExternalCategoryData = strdup("returnExternalCategoryData");
        valueQuery_returnExternalCategoryData = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnExternalCategoryData, MAX_NUMBER_LENGTH, "%d", *returnExternalCategoryData);
        keyPairQuery_returnExternalCategoryData = keyValuePair_create(keyQuery_returnExternalCategoryData, valueQuery_returnExternalCategoryData);
        list_addElement(localVarQueryParameters,keyPairQuery_returnExternalCategoryData);
    }

    // query parameters
    char *keyQuery_includeFavorite = NULL;
    char * valueQuery_includeFavorite = NULL;
    keyValuePair_t *keyPairQuery_includeFavorite = 0;
    if (includeFavorite)
    {
        keyQuery_includeFavorite = strdup("includeFavorite");
        valueQuery_includeFavorite = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFavorite, MAX_NUMBER_LENGTH, "%d", *includeFavorite);
        keyPairQuery_includeFavorite = keyValuePair_create(keyQuery_includeFavorite, valueQuery_includeFavorite);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFavorite);
    }

    // query parameters
    char *keyQuery_includeLiked = NULL;
    char * valueQuery_includeLiked = NULL;
    keyValuePair_t *keyPairQuery_includeLiked = 0;
    if (includeLiked)
    {
        keyQuery_includeLiked = strdup("includeLiked");
        valueQuery_includeLiked = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeLiked, MAX_NUMBER_LENGTH, "%d", *includeLiked);
        keyPairQuery_includeLiked = keyValuePair_create(keyQuery_includeLiked, valueQuery_includeLiked);
        list_addElement(localVarQueryParameters,keyPairQuery_includeLiked);
    }

    // query parameters
    char *keyQuery_includeRating = NULL;
    char * valueQuery_includeRating = NULL;
    keyValuePair_t *keyPairQuery_includeRating = 0;
    if (includeRating)
    {
        keyQuery_includeRating = strdup("includeRating");
        valueQuery_includeRating = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeRating, MAX_NUMBER_LENGTH, "%d", *includeRating);
        keyPairQuery_includeRating = keyValuePair_create(keyQuery_includeRating, valueQuery_includeRating);
        list_addElement(localVarQueryParameters,keyPairQuery_includeRating);
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
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RetailerLocationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RetailerLocationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_hasOffers){
        free(keyQuery_hasOffers);
        keyQuery_hasOffers = NULL;
    }
    if(valueQuery_hasOffers){
        free(valueQuery_hasOffers);
        valueQuery_hasOffers = NULL;
    }
    if(keyPairQuery_hasOffers){
        keyValuePair_free(keyPairQuery_hasOffers);
        keyPairQuery_hasOffers = NULL;
    }
    if(keyQuery_categories){
        free(keyQuery_categories);
        keyQuery_categories = NULL;
    }
    if(valueQuery_categories){
        free(valueQuery_categories);
        valueQuery_categories = NULL;
    }
    if(keyPairQuery_categories){
        keyValuePair_free(keyPairQuery_categories);
        keyPairQuery_categories = NULL;
    }
    if(keyQuery_filters){
        free(keyQuery_filters);
        keyQuery_filters = NULL;
    }
    if(valueQuery_filters){
        free(valueQuery_filters);
        valueQuery_filters = NULL;
    }
    if(keyPairQuery_filters){
        keyValuePair_free(keyPairQuery_filters);
        keyPairQuery_filters = NULL;
    }
    if(keyQuery_audiences){
        free(keyQuery_audiences);
        keyQuery_audiences = NULL;
    }
    if(valueQuery_audiences){
        free(valueQuery_audiences);
        valueQuery_audiences = NULL;
    }
    if(keyPairQuery_audiences){
        keyValuePair_free(keyPairQuery_audiences);
        keyPairQuery_audiences = NULL;
    }
    if(keyQuery_retailerIds){
        free(keyQuery_retailerIds);
        keyQuery_retailerIds = NULL;
    }
    if(valueQuery_retailerIds){
        free(valueQuery_retailerIds);
        valueQuery_retailerIds = NULL;
    }
    if(keyPairQuery_retailerIds){
        keyValuePair_free(keyPairQuery_retailerIds);
        keyPairQuery_retailerIds = NULL;
    }
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    if(keyQuery_locationType){
        free(keyQuery_locationType);
        keyQuery_locationType = NULL;
    }
    if(valueQuery_locationType){
        free(valueQuery_locationType);
        valueQuery_locationType = NULL;
    }
    if(keyPairQuery_locationType){
        keyValuePair_free(keyPairQuery_locationType);
        keyPairQuery_locationType = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
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
    if(keyQuery_keywordOperator){
        free(keyQuery_keywordOperator);
        keyQuery_keywordOperator = NULL;
    }
    if(valueQuery_keywordOperator){
        free(valueQuery_keywordOperator);
        valueQuery_keywordOperator = NULL;
    }
    if(keyPairQuery_keywordOperator){
        keyValuePair_free(keyPairQuery_keywordOperator);
        keyPairQuery_keywordOperator = NULL;
    }
    if(keyQuery_searchExpression){
        free(keyQuery_searchExpression);
        keyQuery_searchExpression = NULL;
    }
    if(valueQuery_searchExpression){
        free(valueQuery_searchExpression);
        valueQuery_searchExpression = NULL;
    }
    if(keyPairQuery_searchExpression){
        keyValuePair_free(keyPairQuery_searchExpression);
        keyPairQuery_searchExpression = NULL;
    }
    if(keyQuery_returnRetailer){
        free(keyQuery_returnRetailer);
        keyQuery_returnRetailer = NULL;
    }
    if(valueQuery_returnRetailer){
        free(valueQuery_returnRetailer);
        valueQuery_returnRetailer = NULL;
    }
    if(keyPairQuery_returnRetailer){
        keyValuePair_free(keyPairQuery_returnRetailer);
        keyPairQuery_returnRetailer = NULL;
    }
    if(keyQuery_returnAssets){
        free(keyQuery_returnAssets);
        keyQuery_returnAssets = NULL;
    }
    if(valueQuery_returnAssets){
        free(valueQuery_returnAssets);
        valueQuery_returnAssets = NULL;
    }
    if(keyPairQuery_returnAssets){
        keyValuePair_free(keyPairQuery_returnAssets);
        keyPairQuery_returnAssets = NULL;
    }
    if(keyQuery_returnOffers){
        free(keyQuery_returnOffers);
        keyQuery_returnOffers = NULL;
    }
    if(valueQuery_returnOffers){
        free(valueQuery_returnOffers);
        valueQuery_returnOffers = NULL;
    }
    if(keyPairQuery_returnOffers){
        keyValuePair_free(keyPairQuery_returnOffers);
        keyPairQuery_returnOffers = NULL;
    }
    if(keyQuery_returnCategories){
        free(keyQuery_returnCategories);
        keyQuery_returnCategories = NULL;
    }
    if(valueQuery_returnCategories){
        free(valueQuery_returnCategories);
        valueQuery_returnCategories = NULL;
    }
    if(keyPairQuery_returnCategories){
        keyValuePair_free(keyPairQuery_returnCategories);
        keyPairQuery_returnCategories = NULL;
    }
    if(keyQuery_returnFilters){
        free(keyQuery_returnFilters);
        keyQuery_returnFilters = NULL;
    }
    if(valueQuery_returnFilters){
        free(valueQuery_returnFilters);
        valueQuery_returnFilters = NULL;
    }
    if(keyPairQuery_returnFilters){
        keyValuePair_free(keyPairQuery_returnFilters);
        keyPairQuery_returnFilters = NULL;
    }
    if(keyQuery_returnAudiences){
        free(keyQuery_returnAudiences);
        keyQuery_returnAudiences = NULL;
    }
    if(valueQuery_returnAudiences){
        free(valueQuery_returnAudiences);
        valueQuery_returnAudiences = NULL;
    }
    if(keyPairQuery_returnAudiences){
        keyValuePair_free(keyPairQuery_returnAudiences);
        keyPairQuery_returnAudiences = NULL;
    }
    if(keyQuery_returnQrCode){
        free(keyQuery_returnQrCode);
        keyQuery_returnQrCode = NULL;
    }
    if(valueQuery_returnQrCode){
        free(valueQuery_returnQrCode);
        valueQuery_returnQrCode = NULL;
    }
    if(keyPairQuery_returnQrCode){
        keyValuePair_free(keyPairQuery_returnQrCode);
        keyPairQuery_returnQrCode = NULL;
    }
    if(keyQuery_returnExternalCategoryData){
        free(keyQuery_returnExternalCategoryData);
        keyQuery_returnExternalCategoryData = NULL;
    }
    if(valueQuery_returnExternalCategoryData){
        free(valueQuery_returnExternalCategoryData);
        valueQuery_returnExternalCategoryData = NULL;
    }
    if(keyPairQuery_returnExternalCategoryData){
        keyValuePair_free(keyPairQuery_returnExternalCategoryData);
        keyPairQuery_returnExternalCategoryData = NULL;
    }
    if(keyQuery_includeFavorite){
        free(keyQuery_includeFavorite);
        keyQuery_includeFavorite = NULL;
    }
    if(valueQuery_includeFavorite){
        free(valueQuery_includeFavorite);
        valueQuery_includeFavorite = NULL;
    }
    if(keyPairQuery_includeFavorite){
        keyValuePair_free(keyPairQuery_includeFavorite);
        keyPairQuery_includeFavorite = NULL;
    }
    if(keyQuery_includeLiked){
        free(keyQuery_includeLiked);
        keyQuery_includeLiked = NULL;
    }
    if(valueQuery_includeLiked){
        free(valueQuery_includeLiked);
        valueQuery_includeLiked = NULL;
    }
    if(keyPairQuery_includeLiked){
        keyValuePair_free(keyPairQuery_includeLiked);
        keyPairQuery_includeLiked = NULL;
    }
    if(keyQuery_includeRating){
        free(keyQuery_includeRating);
        keyQuery_includeRating = NULL;
    }
    if(valueQuery_includeRating){
        free(valueQuery_includeRating);
        valueQuery_includeRating = NULL;
    }
    if(keyPairQuery_includeRating){
        keyValuePair_free(keyPairQuery_includeRating);
        keyPairQuery_includeRating = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Retailer Locations (Owned)
//
// Searches on retailer locations that the account has access to.
//
list_t*
RetailerLocationAPI_searchRetailerLocations(apiClient_t *apiClient, char *deviceId, long accountId, char *q, char *keyword, char *retailerIds, char *retailerLocationIds, char *locationType, sirqul_iot_platform_searchRetailerLocations_sortField_e sortField, int *descending, int *_i, int *start, int *_l, int *limit, int *showPublicLocations, int *activeOnly, int *returnRetailer, int *returnAssets, int *returnOffers, int *returnCategories, int *returnFilters, int *returnAudiences, int *returnQrCode, int *includeFavorite, int *includeLiked, int *includeRating)
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
    char *localVarPath = strdup("/retailer/location/search");





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
    char *keyQuery_retailerIds = NULL;
    char * valueQuery_retailerIds = NULL;
    keyValuePair_t *keyPairQuery_retailerIds = 0;
    if (retailerIds)
    {
        keyQuery_retailerIds = strdup("retailerIds");
        valueQuery_retailerIds = strdup((retailerIds));
        keyPairQuery_retailerIds = keyValuePair_create(keyQuery_retailerIds, valueQuery_retailerIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerIds);
    }

    // query parameters
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_locationType = NULL;
    char * valueQuery_locationType = NULL;
    keyValuePair_t *keyPairQuery_locationType = 0;
    if (locationType)
    {
        keyQuery_locationType = strdup("locationType");
        valueQuery_locationType = strdup((locationType));
        keyPairQuery_locationType = keyValuePair_create(keyQuery_locationType, valueQuery_locationType);
        list_addElement(localVarQueryParameters,keyPairQuery_locationType);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchRetailerLocations_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchRetailerLocations_SORTFIELD_ToString(
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
    char *keyQuery_showPublicLocations = NULL;
    char * valueQuery_showPublicLocations = NULL;
    keyValuePair_t *keyPairQuery_showPublicLocations = 0;
    if (showPublicLocations)
    {
        keyQuery_showPublicLocations = strdup("showPublicLocations");
        valueQuery_showPublicLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showPublicLocations, MAX_NUMBER_LENGTH, "%d", *showPublicLocations);
        keyPairQuery_showPublicLocations = keyValuePair_create(keyQuery_showPublicLocations, valueQuery_showPublicLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_showPublicLocations);
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
    char *keyQuery_returnRetailer = NULL;
    char * valueQuery_returnRetailer = NULL;
    keyValuePair_t *keyPairQuery_returnRetailer = 0;
    if (returnRetailer)
    {
        keyQuery_returnRetailer = strdup("returnRetailer");
        valueQuery_returnRetailer = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnRetailer, MAX_NUMBER_LENGTH, "%d", *returnRetailer);
        keyPairQuery_returnRetailer = keyValuePair_create(keyQuery_returnRetailer, valueQuery_returnRetailer);
        list_addElement(localVarQueryParameters,keyPairQuery_returnRetailer);
    }

    // query parameters
    char *keyQuery_returnAssets = NULL;
    char * valueQuery_returnAssets = NULL;
    keyValuePair_t *keyPairQuery_returnAssets = 0;
    if (returnAssets)
    {
        keyQuery_returnAssets = strdup("returnAssets");
        valueQuery_returnAssets = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAssets, MAX_NUMBER_LENGTH, "%d", *returnAssets);
        keyPairQuery_returnAssets = keyValuePair_create(keyQuery_returnAssets, valueQuery_returnAssets);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAssets);
    }

    // query parameters
    char *keyQuery_returnOffers = NULL;
    char * valueQuery_returnOffers = NULL;
    keyValuePair_t *keyPairQuery_returnOffers = 0;
    if (returnOffers)
    {
        keyQuery_returnOffers = strdup("returnOffers");
        valueQuery_returnOffers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnOffers, MAX_NUMBER_LENGTH, "%d", *returnOffers);
        keyPairQuery_returnOffers = keyValuePair_create(keyQuery_returnOffers, valueQuery_returnOffers);
        list_addElement(localVarQueryParameters,keyPairQuery_returnOffers);
    }

    // query parameters
    char *keyQuery_returnCategories = NULL;
    char * valueQuery_returnCategories = NULL;
    keyValuePair_t *keyPairQuery_returnCategories = 0;
    if (returnCategories)
    {
        keyQuery_returnCategories = strdup("returnCategories");
        valueQuery_returnCategories = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnCategories, MAX_NUMBER_LENGTH, "%d", *returnCategories);
        keyPairQuery_returnCategories = keyValuePair_create(keyQuery_returnCategories, valueQuery_returnCategories);
        list_addElement(localVarQueryParameters,keyPairQuery_returnCategories);
    }

    // query parameters
    char *keyQuery_returnFilters = NULL;
    char * valueQuery_returnFilters = NULL;
    keyValuePair_t *keyPairQuery_returnFilters = 0;
    if (returnFilters)
    {
        keyQuery_returnFilters = strdup("returnFilters");
        valueQuery_returnFilters = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFilters, MAX_NUMBER_LENGTH, "%d", *returnFilters);
        keyPairQuery_returnFilters = keyValuePair_create(keyQuery_returnFilters, valueQuery_returnFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFilters);
    }

    // query parameters
    char *keyQuery_returnAudiences = NULL;
    char * valueQuery_returnAudiences = NULL;
    keyValuePair_t *keyPairQuery_returnAudiences = 0;
    if (returnAudiences)
    {
        keyQuery_returnAudiences = strdup("returnAudiences");
        valueQuery_returnAudiences = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnAudiences, MAX_NUMBER_LENGTH, "%d", *returnAudiences);
        keyPairQuery_returnAudiences = keyValuePair_create(keyQuery_returnAudiences, valueQuery_returnAudiences);
        list_addElement(localVarQueryParameters,keyPairQuery_returnAudiences);
    }

    // query parameters
    char *keyQuery_returnQrCode = NULL;
    char * valueQuery_returnQrCode = NULL;
    keyValuePair_t *keyPairQuery_returnQrCode = 0;
    if (returnQrCode)
    {
        keyQuery_returnQrCode = strdup("returnQrCode");
        valueQuery_returnQrCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnQrCode, MAX_NUMBER_LENGTH, "%d", *returnQrCode);
        keyPairQuery_returnQrCode = keyValuePair_create(keyQuery_returnQrCode, valueQuery_returnQrCode);
        list_addElement(localVarQueryParameters,keyPairQuery_returnQrCode);
    }

    // query parameters
    char *keyQuery_includeFavorite = NULL;
    char * valueQuery_includeFavorite = NULL;
    keyValuePair_t *keyPairQuery_includeFavorite = 0;
    if (includeFavorite)
    {
        keyQuery_includeFavorite = strdup("includeFavorite");
        valueQuery_includeFavorite = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFavorite, MAX_NUMBER_LENGTH, "%d", *includeFavorite);
        keyPairQuery_includeFavorite = keyValuePair_create(keyQuery_includeFavorite, valueQuery_includeFavorite);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFavorite);
    }

    // query parameters
    char *keyQuery_includeLiked = NULL;
    char * valueQuery_includeLiked = NULL;
    keyValuePair_t *keyPairQuery_includeLiked = 0;
    if (includeLiked)
    {
        keyQuery_includeLiked = strdup("includeLiked");
        valueQuery_includeLiked = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeLiked, MAX_NUMBER_LENGTH, "%d", *includeLiked);
        keyPairQuery_includeLiked = keyValuePair_create(keyQuery_includeLiked, valueQuery_includeLiked);
        list_addElement(localVarQueryParameters,keyPairQuery_includeLiked);
    }

    // query parameters
    char *keyQuery_includeRating = NULL;
    char * valueQuery_includeRating = NULL;
    keyValuePair_t *keyPairQuery_includeRating = 0;
    if (includeRating)
    {
        keyQuery_includeRating = strdup("includeRating");
        valueQuery_includeRating = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeRating, MAX_NUMBER_LENGTH, "%d", *includeRating);
        keyPairQuery_includeRating = keyValuePair_create(keyQuery_includeRating, valueQuery_includeRating);
        list_addElement(localVarQueryParameters,keyPairQuery_includeRating);
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
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RetailerLocationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RetailerLocationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_retailerIds){
        free(keyQuery_retailerIds);
        keyQuery_retailerIds = NULL;
    }
    if(valueQuery_retailerIds){
        free(valueQuery_retailerIds);
        valueQuery_retailerIds = NULL;
    }
    if(keyPairQuery_retailerIds){
        keyValuePair_free(keyPairQuery_retailerIds);
        keyPairQuery_retailerIds = NULL;
    }
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_locationType){
        free(keyQuery_locationType);
        keyQuery_locationType = NULL;
    }
    if(valueQuery_locationType){
        free(valueQuery_locationType);
        valueQuery_locationType = NULL;
    }
    if(keyPairQuery_locationType){
        keyValuePair_free(keyPairQuery_locationType);
        keyPairQuery_locationType = NULL;
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
    if(keyQuery_showPublicLocations){
        free(keyQuery_showPublicLocations);
        keyQuery_showPublicLocations = NULL;
    }
    if(valueQuery_showPublicLocations){
        free(valueQuery_showPublicLocations);
        valueQuery_showPublicLocations = NULL;
    }
    if(keyPairQuery_showPublicLocations){
        keyValuePair_free(keyPairQuery_showPublicLocations);
        keyPairQuery_showPublicLocations = NULL;
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
    if(keyQuery_returnRetailer){
        free(keyQuery_returnRetailer);
        keyQuery_returnRetailer = NULL;
    }
    if(valueQuery_returnRetailer){
        free(valueQuery_returnRetailer);
        valueQuery_returnRetailer = NULL;
    }
    if(keyPairQuery_returnRetailer){
        keyValuePair_free(keyPairQuery_returnRetailer);
        keyPairQuery_returnRetailer = NULL;
    }
    if(keyQuery_returnAssets){
        free(keyQuery_returnAssets);
        keyQuery_returnAssets = NULL;
    }
    if(valueQuery_returnAssets){
        free(valueQuery_returnAssets);
        valueQuery_returnAssets = NULL;
    }
    if(keyPairQuery_returnAssets){
        keyValuePair_free(keyPairQuery_returnAssets);
        keyPairQuery_returnAssets = NULL;
    }
    if(keyQuery_returnOffers){
        free(keyQuery_returnOffers);
        keyQuery_returnOffers = NULL;
    }
    if(valueQuery_returnOffers){
        free(valueQuery_returnOffers);
        valueQuery_returnOffers = NULL;
    }
    if(keyPairQuery_returnOffers){
        keyValuePair_free(keyPairQuery_returnOffers);
        keyPairQuery_returnOffers = NULL;
    }
    if(keyQuery_returnCategories){
        free(keyQuery_returnCategories);
        keyQuery_returnCategories = NULL;
    }
    if(valueQuery_returnCategories){
        free(valueQuery_returnCategories);
        valueQuery_returnCategories = NULL;
    }
    if(keyPairQuery_returnCategories){
        keyValuePair_free(keyPairQuery_returnCategories);
        keyPairQuery_returnCategories = NULL;
    }
    if(keyQuery_returnFilters){
        free(keyQuery_returnFilters);
        keyQuery_returnFilters = NULL;
    }
    if(valueQuery_returnFilters){
        free(valueQuery_returnFilters);
        valueQuery_returnFilters = NULL;
    }
    if(keyPairQuery_returnFilters){
        keyValuePair_free(keyPairQuery_returnFilters);
        keyPairQuery_returnFilters = NULL;
    }
    if(keyQuery_returnAudiences){
        free(keyQuery_returnAudiences);
        keyQuery_returnAudiences = NULL;
    }
    if(valueQuery_returnAudiences){
        free(valueQuery_returnAudiences);
        valueQuery_returnAudiences = NULL;
    }
    if(keyPairQuery_returnAudiences){
        keyValuePair_free(keyPairQuery_returnAudiences);
        keyPairQuery_returnAudiences = NULL;
    }
    if(keyQuery_returnQrCode){
        free(keyQuery_returnQrCode);
        keyQuery_returnQrCode = NULL;
    }
    if(valueQuery_returnQrCode){
        free(valueQuery_returnQrCode);
        valueQuery_returnQrCode = NULL;
    }
    if(keyPairQuery_returnQrCode){
        keyValuePair_free(keyPairQuery_returnQrCode);
        keyPairQuery_returnQrCode = NULL;
    }
    if(keyQuery_includeFavorite){
        free(keyQuery_includeFavorite);
        keyQuery_includeFavorite = NULL;
    }
    if(valueQuery_includeFavorite){
        free(valueQuery_includeFavorite);
        valueQuery_includeFavorite = NULL;
    }
    if(keyPairQuery_includeFavorite){
        keyValuePair_free(keyPairQuery_includeFavorite);
        keyPairQuery_includeFavorite = NULL;
    }
    if(keyQuery_includeLiked){
        free(keyQuery_includeLiked);
        keyQuery_includeLiked = NULL;
    }
    if(valueQuery_includeLiked){
        free(valueQuery_includeLiked);
        valueQuery_includeLiked = NULL;
    }
    if(keyPairQuery_includeLiked){
        keyValuePair_free(keyPairQuery_includeLiked);
        keyPairQuery_includeLiked = NULL;
    }
    if(keyQuery_includeRating){
        free(keyQuery_includeRating);
        keyQuery_includeRating = NULL;
    }
    if(valueQuery_includeRating){
        free(valueQuery_includeRating);
        valueQuery_includeRating = NULL;
    }
    if(keyPairQuery_includeRating){
        keyValuePair_free(keyPairQuery_includeRating);
        keyPairQuery_includeRating = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Retailer Location
//
// Updates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
//
retailer_location_response_t*
RetailerLocationAPI_updateRetailerLocations(apiClient_t *apiClient, long retailerLocationId, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *internalId, char *detailsHeader, char *detailsBody, char *hours, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *filterIds, double latitude, double longitude, char *building, char *googlePlaceId, char *yelpId, char *metaData, char *paymentProvider, int *active, int *publicLocation, char *locationType, char *audienceIds, char *audienceIdsToAdd, char *audienceIdsToRemove, sirqul_iot_platform_updateRetailerLocations_responseFormat_e responseFormat, char *tags)
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
    char *localVarPath = strdup("/retailer/location/update");





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
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
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
    char *keyQuery_internalId = NULL;
    char * valueQuery_internalId = NULL;
    keyValuePair_t *keyPairQuery_internalId = 0;
    if (internalId)
    {
        keyQuery_internalId = strdup("internalId");
        valueQuery_internalId = strdup((internalId));
        keyPairQuery_internalId = keyValuePair_create(keyQuery_internalId, valueQuery_internalId);
        list_addElement(localVarQueryParameters,keyPairQuery_internalId);
    }

    // query parameters
    char *keyQuery_detailsHeader = NULL;
    char * valueQuery_detailsHeader = NULL;
    keyValuePair_t *keyPairQuery_detailsHeader = 0;
    if (detailsHeader)
    {
        keyQuery_detailsHeader = strdup("detailsHeader");
        valueQuery_detailsHeader = strdup((detailsHeader));
        keyPairQuery_detailsHeader = keyValuePair_create(keyQuery_detailsHeader, valueQuery_detailsHeader);
        list_addElement(localVarQueryParameters,keyPairQuery_detailsHeader);
    }

    // query parameters
    char *keyQuery_detailsBody = NULL;
    char * valueQuery_detailsBody = NULL;
    keyValuePair_t *keyPairQuery_detailsBody = 0;
    if (detailsBody)
    {
        keyQuery_detailsBody = strdup("detailsBody");
        valueQuery_detailsBody = strdup((detailsBody));
        keyPairQuery_detailsBody = keyValuePair_create(keyQuery_detailsBody, valueQuery_detailsBody);
        list_addElement(localVarQueryParameters,keyPairQuery_detailsBody);
    }

    // query parameters
    char *keyQuery_hours = NULL;
    char * valueQuery_hours = NULL;
    keyValuePair_t *keyPairQuery_hours = 0;
    if (hours)
    {
        keyQuery_hours = strdup("hours");
        valueQuery_hours = strdup((hours));
        keyPairQuery_hours = keyValuePair_create(keyQuery_hours, valueQuery_hours);
        list_addElement(localVarQueryParameters,keyPairQuery_hours);
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
    char *keyQuery_building = NULL;
    char * valueQuery_building = NULL;
    keyValuePair_t *keyPairQuery_building = 0;
    if (building)
    {
        keyQuery_building = strdup("building");
        valueQuery_building = strdup((building));
        keyPairQuery_building = keyValuePair_create(keyQuery_building, valueQuery_building);
        list_addElement(localVarQueryParameters,keyPairQuery_building);
    }

    // query parameters
    char *keyQuery_googlePlaceId = NULL;
    char * valueQuery_googlePlaceId = NULL;
    keyValuePair_t *keyPairQuery_googlePlaceId = 0;
    if (googlePlaceId)
    {
        keyQuery_googlePlaceId = strdup("googlePlaceId");
        valueQuery_googlePlaceId = strdup((googlePlaceId));
        keyPairQuery_googlePlaceId = keyValuePair_create(keyQuery_googlePlaceId, valueQuery_googlePlaceId);
        list_addElement(localVarQueryParameters,keyPairQuery_googlePlaceId);
    }

    // query parameters
    char *keyQuery_yelpId = NULL;
    char * valueQuery_yelpId = NULL;
    keyValuePair_t *keyPairQuery_yelpId = 0;
    if (yelpId)
    {
        keyQuery_yelpId = strdup("yelpId");
        valueQuery_yelpId = strdup((yelpId));
        keyPairQuery_yelpId = keyValuePair_create(keyQuery_yelpId, valueQuery_yelpId);
        list_addElement(localVarQueryParameters,keyPairQuery_yelpId);
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
    char *keyQuery_paymentProvider = NULL;
    char * valueQuery_paymentProvider = NULL;
    keyValuePair_t *keyPairQuery_paymentProvider = 0;
    if (paymentProvider)
    {
        keyQuery_paymentProvider = strdup("paymentProvider");
        valueQuery_paymentProvider = strdup((paymentProvider));
        keyPairQuery_paymentProvider = keyValuePair_create(keyQuery_paymentProvider, valueQuery_paymentProvider);
        list_addElement(localVarQueryParameters,keyPairQuery_paymentProvider);
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
    char *keyQuery_publicLocation = NULL;
    char * valueQuery_publicLocation = NULL;
    keyValuePair_t *keyPairQuery_publicLocation = 0;
    if (publicLocation)
    {
        keyQuery_publicLocation = strdup("publicLocation");
        valueQuery_publicLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicLocation, MAX_NUMBER_LENGTH, "%d", *publicLocation);
        keyPairQuery_publicLocation = keyValuePair_create(keyQuery_publicLocation, valueQuery_publicLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_publicLocation);
    }

    // query parameters
    char *keyQuery_locationType = NULL;
    char * valueQuery_locationType = NULL;
    keyValuePair_t *keyPairQuery_locationType = 0;
    if (locationType)
    {
        keyQuery_locationType = strdup("locationType");
        valueQuery_locationType = strdup((locationType));
        keyPairQuery_locationType = keyValuePair_create(keyQuery_locationType, valueQuery_locationType);
        list_addElement(localVarQueryParameters,keyPairQuery_locationType);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }

    // query parameters
    char *keyQuery_audienceIdsToAdd = NULL;
    char * valueQuery_audienceIdsToAdd = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToAdd = 0;
    if (audienceIdsToAdd)
    {
        keyQuery_audienceIdsToAdd = strdup("audienceIdsToAdd");
        valueQuery_audienceIdsToAdd = strdup((audienceIdsToAdd));
        keyPairQuery_audienceIdsToAdd = keyValuePair_create(keyQuery_audienceIdsToAdd, valueQuery_audienceIdsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToAdd);
    }

    // query parameters
    char *keyQuery_audienceIdsToRemove = NULL;
    char * valueQuery_audienceIdsToRemove = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToRemove = 0;
    if (audienceIdsToRemove)
    {
        keyQuery_audienceIdsToRemove = strdup("audienceIdsToRemove");
        valueQuery_audienceIdsToRemove = strdup((audienceIdsToRemove));
        keyPairQuery_audienceIdsToRemove = keyValuePair_create(keyQuery_audienceIdsToRemove, valueQuery_audienceIdsToRemove);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToRemove);
    }

    // query parameters
    char *keyQuery_responseFormat = NULL;
    sirqul_iot_platform_updateRetailerLocations_responseFormat_e valueQuery_responseFormat ;
    keyValuePair_t *keyPairQuery_responseFormat = 0;
    if (responseFormat)
    {
        keyQuery_responseFormat = strdup("responseFormat");
        valueQuery_responseFormat = (responseFormat);
        keyPairQuery_responseFormat = keyValuePair_create(keyQuery_responseFormat, strdup(updateRetailerLocations_RESPONSEFORMAT_ToString(
        valueQuery_responseFormat)));
        list_addElement(localVarQueryParameters,keyPairQuery_responseFormat);
    }

    // query parameters
    char *keyQuery_tags = NULL;
    char * valueQuery_tags = NULL;
    keyValuePair_t *keyPairQuery_tags = 0;
    if (tags)
    {
        keyQuery_tags = strdup("tags");
        valueQuery_tags = strdup((tags));
        keyPairQuery_tags = keyValuePair_create(keyQuery_tags, valueQuery_tags);
        list_addElement(localVarQueryParameters,keyPairQuery_tags);
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
    retailer_location_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RetailerLocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = retailer_location_response_parseFromJSON(RetailerLocationAPIlocalVarJSON);
        cJSON_Delete(RetailerLocationAPIlocalVarJSON);
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
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
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
    if(keyQuery_internalId){
        free(keyQuery_internalId);
        keyQuery_internalId = NULL;
    }
    if(valueQuery_internalId){
        free(valueQuery_internalId);
        valueQuery_internalId = NULL;
    }
    if(keyPairQuery_internalId){
        keyValuePair_free(keyPairQuery_internalId);
        keyPairQuery_internalId = NULL;
    }
    if(keyQuery_detailsHeader){
        free(keyQuery_detailsHeader);
        keyQuery_detailsHeader = NULL;
    }
    if(valueQuery_detailsHeader){
        free(valueQuery_detailsHeader);
        valueQuery_detailsHeader = NULL;
    }
    if(keyPairQuery_detailsHeader){
        keyValuePair_free(keyPairQuery_detailsHeader);
        keyPairQuery_detailsHeader = NULL;
    }
    if(keyQuery_detailsBody){
        free(keyQuery_detailsBody);
        keyQuery_detailsBody = NULL;
    }
    if(valueQuery_detailsBody){
        free(valueQuery_detailsBody);
        valueQuery_detailsBody = NULL;
    }
    if(keyPairQuery_detailsBody){
        keyValuePair_free(keyPairQuery_detailsBody);
        keyPairQuery_detailsBody = NULL;
    }
    if(keyQuery_hours){
        free(keyQuery_hours);
        keyQuery_hours = NULL;
    }
    if(valueQuery_hours){
        free(valueQuery_hours);
        valueQuery_hours = NULL;
    }
    if(keyPairQuery_hours){
        keyValuePair_free(keyPairQuery_hours);
        keyPairQuery_hours = NULL;
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
    if(keyQuery_building){
        free(keyQuery_building);
        keyQuery_building = NULL;
    }
    if(valueQuery_building){
        free(valueQuery_building);
        valueQuery_building = NULL;
    }
    if(keyPairQuery_building){
        keyValuePair_free(keyPairQuery_building);
        keyPairQuery_building = NULL;
    }
    if(keyQuery_googlePlaceId){
        free(keyQuery_googlePlaceId);
        keyQuery_googlePlaceId = NULL;
    }
    if(valueQuery_googlePlaceId){
        free(valueQuery_googlePlaceId);
        valueQuery_googlePlaceId = NULL;
    }
    if(keyPairQuery_googlePlaceId){
        keyValuePair_free(keyPairQuery_googlePlaceId);
        keyPairQuery_googlePlaceId = NULL;
    }
    if(keyQuery_yelpId){
        free(keyQuery_yelpId);
        keyQuery_yelpId = NULL;
    }
    if(valueQuery_yelpId){
        free(valueQuery_yelpId);
        valueQuery_yelpId = NULL;
    }
    if(keyPairQuery_yelpId){
        keyValuePair_free(keyPairQuery_yelpId);
        keyPairQuery_yelpId = NULL;
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
    if(keyQuery_paymentProvider){
        free(keyQuery_paymentProvider);
        keyQuery_paymentProvider = NULL;
    }
    if(valueQuery_paymentProvider){
        free(valueQuery_paymentProvider);
        valueQuery_paymentProvider = NULL;
    }
    if(keyPairQuery_paymentProvider){
        keyValuePair_free(keyPairQuery_paymentProvider);
        keyPairQuery_paymentProvider = NULL;
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
    if(keyQuery_publicLocation){
        free(keyQuery_publicLocation);
        keyQuery_publicLocation = NULL;
    }
    if(valueQuery_publicLocation){
        free(valueQuery_publicLocation);
        valueQuery_publicLocation = NULL;
    }
    if(keyPairQuery_publicLocation){
        keyValuePair_free(keyPairQuery_publicLocation);
        keyPairQuery_publicLocation = NULL;
    }
    if(keyQuery_locationType){
        free(keyQuery_locationType);
        keyQuery_locationType = NULL;
    }
    if(valueQuery_locationType){
        free(valueQuery_locationType);
        valueQuery_locationType = NULL;
    }
    if(keyPairQuery_locationType){
        keyValuePair_free(keyPairQuery_locationType);
        keyPairQuery_locationType = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    if(keyQuery_audienceIdsToAdd){
        free(keyQuery_audienceIdsToAdd);
        keyQuery_audienceIdsToAdd = NULL;
    }
    if(valueQuery_audienceIdsToAdd){
        free(valueQuery_audienceIdsToAdd);
        valueQuery_audienceIdsToAdd = NULL;
    }
    if(keyPairQuery_audienceIdsToAdd){
        keyValuePair_free(keyPairQuery_audienceIdsToAdd);
        keyPairQuery_audienceIdsToAdd = NULL;
    }
    if(keyQuery_audienceIdsToRemove){
        free(keyQuery_audienceIdsToRemove);
        keyQuery_audienceIdsToRemove = NULL;
    }
    if(valueQuery_audienceIdsToRemove){
        free(valueQuery_audienceIdsToRemove);
        valueQuery_audienceIdsToRemove = NULL;
    }
    if(keyPairQuery_audienceIdsToRemove){
        keyValuePair_free(keyPairQuery_audienceIdsToRemove);
        keyPairQuery_audienceIdsToRemove = NULL;
    }
    if(keyQuery_responseFormat){
        free(keyQuery_responseFormat);
        keyQuery_responseFormat = NULL;
    }
    if(keyPairQuery_responseFormat){
        keyValuePair_free(keyPairQuery_responseFormat);
        keyPairQuery_responseFormat = NULL;
    }
    if(keyQuery_tags){
        free(keyQuery_tags);
        keyQuery_tags = NULL;
    }
    if(valueQuery_tags){
        free(valueQuery_tags);
        valueQuery_tags = NULL;
    }
    if(keyPairQuery_tags){
        keyValuePair_free(keyPairQuery_tags);
        keyPairQuery_tags = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

