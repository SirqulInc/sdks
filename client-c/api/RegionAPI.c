#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "RegionAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum VISIBILITY for RegionAPI_createRegion

static char* createRegion_VISIBILITY_ToString(sirqul_iot_platform_createRegion_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_createRegion_visibility_e createRegion_VISIBILITY_FromString(char* VISIBILITY){
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
// Function createRegion_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createRegion_VISIBILITY_convertToJSON(sirqul_iot_platform_createRegion_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", createRegion_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createRegion_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createRegion_visibility_e createRegion_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_createRegion_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = createRegion_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum REGIONCLASS for RegionAPI_searchRegions

static char* searchRegions_REGIONCLASS_ToString(sirqul_iot_platform_searchRegions_regionClass_e REGIONCLASS){
    char *REGIONCLASSArray[] =  { "NULL", "NATIONAL", "STATE", "COUNTY", "METRO_AREA", "CITY", "NEIGHBORHOOD", "TERRITORY", "CUSTOM", "ZONE" };
    return REGIONCLASSArray[REGIONCLASS];
}

static sirqul_iot_platform_searchRegions_regionClass_e searchRegions_REGIONCLASS_FromString(char* REGIONCLASS){
    int stringToReturn = 0;
    char *REGIONCLASSArray[] =  { "NULL", "NATIONAL", "STATE", "COUNTY", "METRO_AREA", "CITY", "NEIGHBORHOOD", "TERRITORY", "CUSTOM", "ZONE" };
    size_t sizeofArray = sizeof(REGIONCLASSArray) / sizeof(REGIONCLASSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(REGIONCLASS, REGIONCLASSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchRegions_REGIONCLASS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRegions_REGIONCLASS_convertToJSON(sirqul_iot_platform_searchRegions_regionClass_e REGIONCLASS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "regionClass", searchRegions_REGIONCLASS_ToString(REGIONCLASS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRegions_REGIONCLASS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRegions_regionClass_e searchRegions_REGIONCLASS_parseFromJSON(cJSON* REGIONCLASSJSON) {
    sirqul_iot_platform_searchRegions_regionClass_e REGIONCLASSVariable = 0;
    cJSON *REGIONCLASSVar = cJSON_GetObjectItemCaseSensitive(REGIONCLASSJSON, "regionClass");
    if(!cJSON_IsString(REGIONCLASSVar) || (REGIONCLASSVar->valuestring == NULL))
    {
        goto end;
    }
    REGIONCLASSVariable = searchRegions_REGIONCLASS_FromString(REGIONCLASSVar->valuestring);
    return REGIONCLASSVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for RegionAPI_searchRegions

static char* searchRegions_VISIBILITY_ToString(sirqul_iot_platform_searchRegions_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_searchRegions_visibility_e searchRegions_VISIBILITY_FromString(char* VISIBILITY){
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
// Function searchRegions_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRegions_VISIBILITY_convertToJSON(sirqul_iot_platform_searchRegions_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", searchRegions_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRegions_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRegions_visibility_e searchRegions_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_searchRegions_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = searchRegions_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum SEARCHMODE for RegionAPI_searchRegions

static char* searchRegions_SEARCHMODE_ToString(sirqul_iot_platform_searchRegions_searchMode_e SEARCHMODE){
    char *SEARCHMODEArray[] =  { "NULL", "RDS", "LUCENE", "CLOUDINDEX" };
    return SEARCHMODEArray[SEARCHMODE];
}

static sirqul_iot_platform_searchRegions_searchMode_e searchRegions_SEARCHMODE_FromString(char* SEARCHMODE){
    int stringToReturn = 0;
    char *SEARCHMODEArray[] =  { "NULL", "RDS", "LUCENE", "CLOUDINDEX" };
    size_t sizeofArray = sizeof(SEARCHMODEArray) / sizeof(SEARCHMODEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SEARCHMODE, SEARCHMODEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchRegions_SEARCHMODE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRegions_SEARCHMODE_convertToJSON(sirqul_iot_platform_searchRegions_searchMode_e SEARCHMODE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "searchMode", searchRegions_SEARCHMODE_ToString(SEARCHMODE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRegions_SEARCHMODE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRegions_searchMode_e searchRegions_SEARCHMODE_parseFromJSON(cJSON* SEARCHMODEJSON) {
    sirqul_iot_platform_searchRegions_searchMode_e SEARCHMODEVariable = 0;
    cJSON *SEARCHMODEVar = cJSON_GetObjectItemCaseSensitive(SEARCHMODEJSON, "searchMode");
    if(!cJSON_IsString(SEARCHMODEVar) || (SEARCHMODEVar->valuestring == NULL))
    {
        goto end;
    }
    SEARCHMODEVariable = searchRegions_SEARCHMODE_FromString(SEARCHMODEVar->valuestring);
    return SEARCHMODEVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for RegionAPI_searchRegions

static char* searchRegions_SORTFIELD_ToString(sirqul_iot_platform_searchRegions_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "UPDATED", "NAME", "DISTANCE" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchRegions_sortField_e searchRegions_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "UPDATED", "NAME", "DISTANCE" };
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
// Function searchRegions_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRegions_SORTFIELD_convertToJSON(sirqul_iot_platform_searchRegions_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchRegions_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRegions_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRegions_sortField_e searchRegions_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchRegions_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchRegions_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for RegionAPI_updateRegion

static char* updateRegion_VISIBILITY_ToString(sirqul_iot_platform_updateRegion_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_updateRegion_visibility_e updateRegion_VISIBILITY_FromString(char* VISIBILITY){
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
// Function updateRegion_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateRegion_VISIBILITY_convertToJSON(sirqul_iot_platform_updateRegion_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", updateRegion_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateRegion_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateRegion_visibility_e updateRegion_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_updateRegion_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = updateRegion_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/


// Create Region
//
// Create a region.
//
region_response_t*
RegionAPI_createRegion(apiClient_t *apiClient, double version, long accountId, char *regionClass, char *shortName, char *fullName, char *parentIds, char *childrenIds, char *postalCodeIds, char *locations, long retailerLocationId, sirqul_iot_platform_createRegion_visibility_e visibility, char *categoryIds, char *filterIds, long start, long end, char *polygon, char *metaData, double latitude, double longitude, int *versionCode, int *root, int *active)
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
    char *localVarPath = strdup("/api/{version}/region/create");



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
    char *keyQuery_regionClass = NULL;
    char * valueQuery_regionClass = NULL;
    keyValuePair_t *keyPairQuery_regionClass = 0;
    if (regionClass)
    {
        keyQuery_regionClass = strdup("regionClass");
        valueQuery_regionClass = strdup((regionClass));
        keyPairQuery_regionClass = keyValuePair_create(keyQuery_regionClass, valueQuery_regionClass);
        list_addElement(localVarQueryParameters,keyPairQuery_regionClass);
    }

    // query parameters
    char *keyQuery_shortName = NULL;
    char * valueQuery_shortName = NULL;
    keyValuePair_t *keyPairQuery_shortName = 0;
    if (shortName)
    {
        keyQuery_shortName = strdup("shortName");
        valueQuery_shortName = strdup((shortName));
        keyPairQuery_shortName = keyValuePair_create(keyQuery_shortName, valueQuery_shortName);
        list_addElement(localVarQueryParameters,keyPairQuery_shortName);
    }

    // query parameters
    char *keyQuery_fullName = NULL;
    char * valueQuery_fullName = NULL;
    keyValuePair_t *keyPairQuery_fullName = 0;
    if (fullName)
    {
        keyQuery_fullName = strdup("fullName");
        valueQuery_fullName = strdup((fullName));
        keyPairQuery_fullName = keyValuePair_create(keyQuery_fullName, valueQuery_fullName);
        list_addElement(localVarQueryParameters,keyPairQuery_fullName);
    }

    // query parameters
    char *keyQuery_parentIds = NULL;
    char * valueQuery_parentIds = NULL;
    keyValuePair_t *keyPairQuery_parentIds = 0;
    if (parentIds)
    {
        keyQuery_parentIds = strdup("parentIds");
        valueQuery_parentIds = strdup((parentIds));
        keyPairQuery_parentIds = keyValuePair_create(keyQuery_parentIds, valueQuery_parentIds);
        list_addElement(localVarQueryParameters,keyPairQuery_parentIds);
    }

    // query parameters
    char *keyQuery_childrenIds = NULL;
    char * valueQuery_childrenIds = NULL;
    keyValuePair_t *keyPairQuery_childrenIds = 0;
    if (childrenIds)
    {
        keyQuery_childrenIds = strdup("childrenIds");
        valueQuery_childrenIds = strdup((childrenIds));
        keyPairQuery_childrenIds = keyValuePair_create(keyQuery_childrenIds, valueQuery_childrenIds);
        list_addElement(localVarQueryParameters,keyPairQuery_childrenIds);
    }

    // query parameters
    char *keyQuery_postalCodeIds = NULL;
    char * valueQuery_postalCodeIds = NULL;
    keyValuePair_t *keyPairQuery_postalCodeIds = 0;
    if (postalCodeIds)
    {
        keyQuery_postalCodeIds = strdup("postalCodeIds");
        valueQuery_postalCodeIds = strdup((postalCodeIds));
        keyPairQuery_postalCodeIds = keyValuePair_create(keyQuery_postalCodeIds, valueQuery_postalCodeIds);
        list_addElement(localVarQueryParameters,keyPairQuery_postalCodeIds);
    }

    // query parameters
    char *keyQuery_locations = NULL;
    char * valueQuery_locations = NULL;
    keyValuePair_t *keyPairQuery_locations = 0;
    if (locations)
    {
        keyQuery_locations = strdup("locations");
        valueQuery_locations = strdup((locations));
        keyPairQuery_locations = keyValuePair_create(keyQuery_locations, valueQuery_locations);
        list_addElement(localVarQueryParameters,keyPairQuery_locations);
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
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_createRegion_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(createRegion_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
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

    // query parameters
    char *keyQuery_polygon = NULL;
    char * valueQuery_polygon = NULL;
    keyValuePair_t *keyPairQuery_polygon = 0;
    if (polygon)
    {
        keyQuery_polygon = strdup("polygon");
        valueQuery_polygon = strdup((polygon));
        keyPairQuery_polygon = keyValuePair_create(keyQuery_polygon, valueQuery_polygon);
        list_addElement(localVarQueryParameters,keyPairQuery_polygon);
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
    char *keyQuery_versionCode = NULL;
    char * valueQuery_versionCode = NULL;
    keyValuePair_t *keyPairQuery_versionCode = 0;
    if (versionCode)
    {
        keyQuery_versionCode = strdup("versionCode");
        valueQuery_versionCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_versionCode, MAX_NUMBER_LENGTH, "%d", *versionCode);
        keyPairQuery_versionCode = keyValuePair_create(keyQuery_versionCode, valueQuery_versionCode);
        list_addElement(localVarQueryParameters,keyPairQuery_versionCode);
    }

    // query parameters
    char *keyQuery_root = NULL;
    char * valueQuery_root = NULL;
    keyValuePair_t *keyPairQuery_root = 0;
    if (root)
    {
        keyQuery_root = strdup("root");
        valueQuery_root = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_root, MAX_NUMBER_LENGTH, "%d", *root);
        keyPairQuery_root = keyValuePair_create(keyQuery_root, valueQuery_root);
        list_addElement(localVarQueryParameters,keyPairQuery_root);
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
    region_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RegionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = region_response_parseFromJSON(RegionAPIlocalVarJSON);
        cJSON_Delete(RegionAPIlocalVarJSON);
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
    if(keyQuery_regionClass){
        free(keyQuery_regionClass);
        keyQuery_regionClass = NULL;
    }
    if(valueQuery_regionClass){
        free(valueQuery_regionClass);
        valueQuery_regionClass = NULL;
    }
    if(keyPairQuery_regionClass){
        keyValuePair_free(keyPairQuery_regionClass);
        keyPairQuery_regionClass = NULL;
    }
    if(keyQuery_shortName){
        free(keyQuery_shortName);
        keyQuery_shortName = NULL;
    }
    if(valueQuery_shortName){
        free(valueQuery_shortName);
        valueQuery_shortName = NULL;
    }
    if(keyPairQuery_shortName){
        keyValuePair_free(keyPairQuery_shortName);
        keyPairQuery_shortName = NULL;
    }
    if(keyQuery_fullName){
        free(keyQuery_fullName);
        keyQuery_fullName = NULL;
    }
    if(valueQuery_fullName){
        free(valueQuery_fullName);
        valueQuery_fullName = NULL;
    }
    if(keyPairQuery_fullName){
        keyValuePair_free(keyPairQuery_fullName);
        keyPairQuery_fullName = NULL;
    }
    if(keyQuery_parentIds){
        free(keyQuery_parentIds);
        keyQuery_parentIds = NULL;
    }
    if(valueQuery_parentIds){
        free(valueQuery_parentIds);
        valueQuery_parentIds = NULL;
    }
    if(keyPairQuery_parentIds){
        keyValuePair_free(keyPairQuery_parentIds);
        keyPairQuery_parentIds = NULL;
    }
    if(keyQuery_childrenIds){
        free(keyQuery_childrenIds);
        keyQuery_childrenIds = NULL;
    }
    if(valueQuery_childrenIds){
        free(valueQuery_childrenIds);
        valueQuery_childrenIds = NULL;
    }
    if(keyPairQuery_childrenIds){
        keyValuePair_free(keyPairQuery_childrenIds);
        keyPairQuery_childrenIds = NULL;
    }
    if(keyQuery_postalCodeIds){
        free(keyQuery_postalCodeIds);
        keyQuery_postalCodeIds = NULL;
    }
    if(valueQuery_postalCodeIds){
        free(valueQuery_postalCodeIds);
        valueQuery_postalCodeIds = NULL;
    }
    if(keyPairQuery_postalCodeIds){
        keyValuePair_free(keyPairQuery_postalCodeIds);
        keyPairQuery_postalCodeIds = NULL;
    }
    if(keyQuery_locations){
        free(keyQuery_locations);
        keyQuery_locations = NULL;
    }
    if(valueQuery_locations){
        free(valueQuery_locations);
        valueQuery_locations = NULL;
    }
    if(keyPairQuery_locations){
        keyValuePair_free(keyPairQuery_locations);
        keyPairQuery_locations = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
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
    if(keyQuery_polygon){
        free(keyQuery_polygon);
        keyQuery_polygon = NULL;
    }
    if(valueQuery_polygon){
        free(valueQuery_polygon);
        valueQuery_polygon = NULL;
    }
    if(keyPairQuery_polygon){
        keyValuePair_free(keyPairQuery_polygon);
        keyPairQuery_polygon = NULL;
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
    if(keyQuery_versionCode){
        free(keyQuery_versionCode);
        keyQuery_versionCode = NULL;
    }
    if(valueQuery_versionCode){
        free(valueQuery_versionCode);
        valueQuery_versionCode = NULL;
    }
    if(keyPairQuery_versionCode){
        keyValuePair_free(keyPairQuery_versionCode);
        keyPairQuery_versionCode = NULL;
    }
    if(keyQuery_root){
        free(keyQuery_root);
        keyQuery_root = NULL;
    }
    if(valueQuery_root){
        free(valueQuery_root);
        valueQuery_root = NULL;
    }
    if(keyPairQuery_root){
        keyValuePair_free(keyPairQuery_root);
        keyPairQuery_root = NULL;
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

// Delete Region
//
// Delete a region.
//
region_response_t*
RegionAPI_deleteRegion(apiClient_t *apiClient, double version, long accountId, long regionId)
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
    char *localVarPath = strdup("/api/{version}/region/delete");



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
    char *keyQuery_regionId = NULL;
    char * valueQuery_regionId ;
    keyValuePair_t *keyPairQuery_regionId = 0;
    {
        keyQuery_regionId = strdup("regionId");
        valueQuery_regionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_regionId, MAX_NUMBER_LENGTH_LONG, "%d", regionId);
        keyPairQuery_regionId = keyValuePair_create(keyQuery_regionId, valueQuery_regionId);
        list_addElement(localVarQueryParameters,keyPairQuery_regionId);
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
    region_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RegionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = region_response_parseFromJSON(RegionAPIlocalVarJSON);
        cJSON_Delete(RegionAPIlocalVarJSON);
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
    if(keyQuery_regionId){
        free(keyQuery_regionId);
        keyQuery_regionId = NULL;
    }
    if(keyPairQuery_regionId){
        keyValuePair_free(keyPairQuery_regionId);
        keyPairQuery_regionId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Region
//
// Get a region.
//
region_response_t*
RegionAPI_getRegion(apiClient_t *apiClient, double version, long regionId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/region/get");



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
    char *keyQuery_regionId = NULL;
    char * valueQuery_regionId ;
    keyValuePair_t *keyPairQuery_regionId = 0;
    {
        keyQuery_regionId = strdup("regionId");
        valueQuery_regionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_regionId, MAX_NUMBER_LENGTH_LONG, "%d", regionId);
        keyPairQuery_regionId = keyValuePair_create(keyQuery_regionId, valueQuery_regionId);
        list_addElement(localVarQueryParameters,keyPairQuery_regionId);
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
    region_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RegionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = region_response_parseFromJSON(RegionAPIlocalVarJSON);
        cJSON_Delete(RegionAPIlocalVarJSON);
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
    if(keyQuery_regionId){
        free(keyQuery_regionId);
        keyQuery_regionId = NULL;
    }
    if(keyPairQuery_regionId){
        keyValuePair_free(keyPairQuery_regionId);
        keyPairQuery_regionId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Regions
//
// Get the list of regions.
//
list_t*
RegionAPI_searchRegions(apiClient_t *apiClient, double version, long accountId, char *query, char *keyword, double latitude, double longitude, double range, sirqul_iot_platform_searchRegions_regionClass_e regionClass, sirqul_iot_platform_searchRegions_visibility_e visibility, sirqul_iot_platform_searchRegions_searchMode_e searchMode, sirqul_iot_platform_searchRegions_sortField_e sortField, int *descending, int *includeParent, int *includeChildren, int *includePostalCodes, char *categoryIds, char *filterIds, int *versionCode, int *activeOnly, int *showDeleted, long lastUpdatedSince, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/region/search");



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

    // query parameters
    char *keyQuery_regionClass = NULL;
    sirqul_iot_platform_searchRegions_regionClass_e valueQuery_regionClass ;
    keyValuePair_t *keyPairQuery_regionClass = 0;
    if (regionClass)
    {
        keyQuery_regionClass = strdup("regionClass");
        valueQuery_regionClass = (regionClass);
        keyPairQuery_regionClass = keyValuePair_create(keyQuery_regionClass, strdup(searchRegions_REGIONCLASS_ToString(
        valueQuery_regionClass)));
        list_addElement(localVarQueryParameters,keyPairQuery_regionClass);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_searchRegions_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(searchRegions_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_searchMode = NULL;
    sirqul_iot_platform_searchRegions_searchMode_e valueQuery_searchMode ;
    keyValuePair_t *keyPairQuery_searchMode = 0;
    if (searchMode)
    {
        keyQuery_searchMode = strdup("searchMode");
        valueQuery_searchMode = (searchMode);
        keyPairQuery_searchMode = keyValuePair_create(keyQuery_searchMode, strdup(searchRegions_SEARCHMODE_ToString(
        valueQuery_searchMode)));
        list_addElement(localVarQueryParameters,keyPairQuery_searchMode);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchRegions_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchRegions_SORTFIELD_ToString(
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
    char *keyQuery_includeParent = NULL;
    char * valueQuery_includeParent = NULL;
    keyValuePair_t *keyPairQuery_includeParent = 0;
    if (includeParent)
    {
        keyQuery_includeParent = strdup("includeParent");
        valueQuery_includeParent = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeParent, MAX_NUMBER_LENGTH, "%d", *includeParent);
        keyPairQuery_includeParent = keyValuePair_create(keyQuery_includeParent, valueQuery_includeParent);
        list_addElement(localVarQueryParameters,keyPairQuery_includeParent);
    }

    // query parameters
    char *keyQuery_includeChildren = NULL;
    char * valueQuery_includeChildren = NULL;
    keyValuePair_t *keyPairQuery_includeChildren = 0;
    if (includeChildren)
    {
        keyQuery_includeChildren = strdup("includeChildren");
        valueQuery_includeChildren = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeChildren, MAX_NUMBER_LENGTH, "%d", *includeChildren);
        keyPairQuery_includeChildren = keyValuePair_create(keyQuery_includeChildren, valueQuery_includeChildren);
        list_addElement(localVarQueryParameters,keyPairQuery_includeChildren);
    }

    // query parameters
    char *keyQuery_includePostalCodes = NULL;
    char * valueQuery_includePostalCodes = NULL;
    keyValuePair_t *keyPairQuery_includePostalCodes = 0;
    if (includePostalCodes)
    {
        keyQuery_includePostalCodes = strdup("includePostalCodes");
        valueQuery_includePostalCodes = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includePostalCodes, MAX_NUMBER_LENGTH, "%d", *includePostalCodes);
        keyPairQuery_includePostalCodes = keyValuePair_create(keyQuery_includePostalCodes, valueQuery_includePostalCodes);
        list_addElement(localVarQueryParameters,keyPairQuery_includePostalCodes);
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
    char *keyQuery_versionCode = NULL;
    char * valueQuery_versionCode = NULL;
    keyValuePair_t *keyPairQuery_versionCode = 0;
    if (versionCode)
    {
        keyQuery_versionCode = strdup("versionCode");
        valueQuery_versionCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_versionCode, MAX_NUMBER_LENGTH, "%d", *versionCode);
        keyPairQuery_versionCode = keyValuePair_create(keyQuery_versionCode, valueQuery_versionCode);
        list_addElement(localVarQueryParameters,keyPairQuery_versionCode);
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
    char *keyQuery_showDeleted = NULL;
    char * valueQuery_showDeleted = NULL;
    keyValuePair_t *keyPairQuery_showDeleted = 0;
    if (showDeleted)
    {
        keyQuery_showDeleted = strdup("showDeleted");
        valueQuery_showDeleted = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showDeleted, MAX_NUMBER_LENGTH, "%d", *showDeleted);
        keyPairQuery_showDeleted = keyValuePair_create(keyQuery_showDeleted, valueQuery_showDeleted);
        list_addElement(localVarQueryParameters,keyPairQuery_showDeleted);
    }

    // query parameters
    char *keyQuery_lastUpdatedSince = NULL;
    char * valueQuery_lastUpdatedSince ;
    keyValuePair_t *keyPairQuery_lastUpdatedSince = 0;
    {
        keyQuery_lastUpdatedSince = strdup("lastUpdatedSince");
        valueQuery_lastUpdatedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_lastUpdatedSince, MAX_NUMBER_LENGTH_LONG, "%d", lastUpdatedSince);
        keyPairQuery_lastUpdatedSince = keyValuePair_create(keyQuery_lastUpdatedSince, valueQuery_lastUpdatedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_lastUpdatedSince);
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
        cJSON *RegionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RegionAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RegionAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RegionAPIlocalVarJSON);
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
    if(keyQuery_regionClass){
        free(keyQuery_regionClass);
        keyQuery_regionClass = NULL;
    }
    if(keyPairQuery_regionClass){
        keyValuePair_free(keyPairQuery_regionClass);
        keyPairQuery_regionClass = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_searchMode){
        free(keyQuery_searchMode);
        keyQuery_searchMode = NULL;
    }
    if(keyPairQuery_searchMode){
        keyValuePair_free(keyPairQuery_searchMode);
        keyPairQuery_searchMode = NULL;
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
    if(keyQuery_includeParent){
        free(keyQuery_includeParent);
        keyQuery_includeParent = NULL;
    }
    if(valueQuery_includeParent){
        free(valueQuery_includeParent);
        valueQuery_includeParent = NULL;
    }
    if(keyPairQuery_includeParent){
        keyValuePair_free(keyPairQuery_includeParent);
        keyPairQuery_includeParent = NULL;
    }
    if(keyQuery_includeChildren){
        free(keyQuery_includeChildren);
        keyQuery_includeChildren = NULL;
    }
    if(valueQuery_includeChildren){
        free(valueQuery_includeChildren);
        valueQuery_includeChildren = NULL;
    }
    if(keyPairQuery_includeChildren){
        keyValuePair_free(keyPairQuery_includeChildren);
        keyPairQuery_includeChildren = NULL;
    }
    if(keyQuery_includePostalCodes){
        free(keyQuery_includePostalCodes);
        keyQuery_includePostalCodes = NULL;
    }
    if(valueQuery_includePostalCodes){
        free(valueQuery_includePostalCodes);
        valueQuery_includePostalCodes = NULL;
    }
    if(keyPairQuery_includePostalCodes){
        keyValuePair_free(keyPairQuery_includePostalCodes);
        keyPairQuery_includePostalCodes = NULL;
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
    if(keyQuery_versionCode){
        free(keyQuery_versionCode);
        keyQuery_versionCode = NULL;
    }
    if(valueQuery_versionCode){
        free(valueQuery_versionCode);
        valueQuery_versionCode = NULL;
    }
    if(keyPairQuery_versionCode){
        keyValuePair_free(keyPairQuery_versionCode);
        keyPairQuery_versionCode = NULL;
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
    if(keyQuery_showDeleted){
        free(keyQuery_showDeleted);
        keyQuery_showDeleted = NULL;
    }
    if(valueQuery_showDeleted){
        free(valueQuery_showDeleted);
        valueQuery_showDeleted = NULL;
    }
    if(keyPairQuery_showDeleted){
        keyValuePair_free(keyPairQuery_showDeleted);
        keyPairQuery_showDeleted = NULL;
    }
    if(keyQuery_lastUpdatedSince){
        free(keyQuery_lastUpdatedSince);
        keyQuery_lastUpdatedSince = NULL;
    }
    if(keyPairQuery_lastUpdatedSince){
        keyValuePair_free(keyPairQuery_lastUpdatedSince);
        keyPairQuery_lastUpdatedSince = NULL;
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

// Update Region
//
// Update a region.
//
region_response_t*
RegionAPI_updateRegion(apiClient_t *apiClient, double version, long accountId, long regionId, char *regionClass, char *shortName, char *fullName, char *parentIds, char *childrenIds, char *postalCodeIds, char *locations, long retailerLocationId, sirqul_iot_platform_updateRegion_visibility_e visibility, char *categoryIds, char *filterIds, long start, long end, char *polygon, char *metaData, double latitude, double longitude, int *versionCode, int *root, int *active, int *clearLists)
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
    char *localVarPath = strdup("/api/{version}/region/update");



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
    char *keyQuery_regionId = NULL;
    char * valueQuery_regionId ;
    keyValuePair_t *keyPairQuery_regionId = 0;
    {
        keyQuery_regionId = strdup("regionId");
        valueQuery_regionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_regionId, MAX_NUMBER_LENGTH_LONG, "%d", regionId);
        keyPairQuery_regionId = keyValuePair_create(keyQuery_regionId, valueQuery_regionId);
        list_addElement(localVarQueryParameters,keyPairQuery_regionId);
    }

    // query parameters
    char *keyQuery_regionClass = NULL;
    char * valueQuery_regionClass = NULL;
    keyValuePair_t *keyPairQuery_regionClass = 0;
    if (regionClass)
    {
        keyQuery_regionClass = strdup("regionClass");
        valueQuery_regionClass = strdup((regionClass));
        keyPairQuery_regionClass = keyValuePair_create(keyQuery_regionClass, valueQuery_regionClass);
        list_addElement(localVarQueryParameters,keyPairQuery_regionClass);
    }

    // query parameters
    char *keyQuery_shortName = NULL;
    char * valueQuery_shortName = NULL;
    keyValuePair_t *keyPairQuery_shortName = 0;
    if (shortName)
    {
        keyQuery_shortName = strdup("shortName");
        valueQuery_shortName = strdup((shortName));
        keyPairQuery_shortName = keyValuePair_create(keyQuery_shortName, valueQuery_shortName);
        list_addElement(localVarQueryParameters,keyPairQuery_shortName);
    }

    // query parameters
    char *keyQuery_fullName = NULL;
    char * valueQuery_fullName = NULL;
    keyValuePair_t *keyPairQuery_fullName = 0;
    if (fullName)
    {
        keyQuery_fullName = strdup("fullName");
        valueQuery_fullName = strdup((fullName));
        keyPairQuery_fullName = keyValuePair_create(keyQuery_fullName, valueQuery_fullName);
        list_addElement(localVarQueryParameters,keyPairQuery_fullName);
    }

    // query parameters
    char *keyQuery_parentIds = NULL;
    char * valueQuery_parentIds = NULL;
    keyValuePair_t *keyPairQuery_parentIds = 0;
    if (parentIds)
    {
        keyQuery_parentIds = strdup("parentIds");
        valueQuery_parentIds = strdup((parentIds));
        keyPairQuery_parentIds = keyValuePair_create(keyQuery_parentIds, valueQuery_parentIds);
        list_addElement(localVarQueryParameters,keyPairQuery_parentIds);
    }

    // query parameters
    char *keyQuery_childrenIds = NULL;
    char * valueQuery_childrenIds = NULL;
    keyValuePair_t *keyPairQuery_childrenIds = 0;
    if (childrenIds)
    {
        keyQuery_childrenIds = strdup("childrenIds");
        valueQuery_childrenIds = strdup((childrenIds));
        keyPairQuery_childrenIds = keyValuePair_create(keyQuery_childrenIds, valueQuery_childrenIds);
        list_addElement(localVarQueryParameters,keyPairQuery_childrenIds);
    }

    // query parameters
    char *keyQuery_postalCodeIds = NULL;
    char * valueQuery_postalCodeIds = NULL;
    keyValuePair_t *keyPairQuery_postalCodeIds = 0;
    if (postalCodeIds)
    {
        keyQuery_postalCodeIds = strdup("postalCodeIds");
        valueQuery_postalCodeIds = strdup((postalCodeIds));
        keyPairQuery_postalCodeIds = keyValuePair_create(keyQuery_postalCodeIds, valueQuery_postalCodeIds);
        list_addElement(localVarQueryParameters,keyPairQuery_postalCodeIds);
    }

    // query parameters
    char *keyQuery_locations = NULL;
    char * valueQuery_locations = NULL;
    keyValuePair_t *keyPairQuery_locations = 0;
    if (locations)
    {
        keyQuery_locations = strdup("locations");
        valueQuery_locations = strdup((locations));
        keyPairQuery_locations = keyValuePair_create(keyQuery_locations, valueQuery_locations);
        list_addElement(localVarQueryParameters,keyPairQuery_locations);
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
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_updateRegion_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(updateRegion_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
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

    // query parameters
    char *keyQuery_polygon = NULL;
    char * valueQuery_polygon = NULL;
    keyValuePair_t *keyPairQuery_polygon = 0;
    if (polygon)
    {
        keyQuery_polygon = strdup("polygon");
        valueQuery_polygon = strdup((polygon));
        keyPairQuery_polygon = keyValuePair_create(keyQuery_polygon, valueQuery_polygon);
        list_addElement(localVarQueryParameters,keyPairQuery_polygon);
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
    char *keyQuery_versionCode = NULL;
    char * valueQuery_versionCode = NULL;
    keyValuePair_t *keyPairQuery_versionCode = 0;
    if (versionCode)
    {
        keyQuery_versionCode = strdup("versionCode");
        valueQuery_versionCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_versionCode, MAX_NUMBER_LENGTH, "%d", *versionCode);
        keyPairQuery_versionCode = keyValuePair_create(keyQuery_versionCode, valueQuery_versionCode);
        list_addElement(localVarQueryParameters,keyPairQuery_versionCode);
    }

    // query parameters
    char *keyQuery_root = NULL;
    char * valueQuery_root = NULL;
    keyValuePair_t *keyPairQuery_root = 0;
    if (root)
    {
        keyQuery_root = strdup("root");
        valueQuery_root = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_root, MAX_NUMBER_LENGTH, "%d", *root);
        keyPairQuery_root = keyValuePair_create(keyQuery_root, valueQuery_root);
        list_addElement(localVarQueryParameters,keyPairQuery_root);
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
    char *keyQuery_clearLists = NULL;
    char * valueQuery_clearLists = NULL;
    keyValuePair_t *keyPairQuery_clearLists = 0;
    if (clearLists)
    {
        keyQuery_clearLists = strdup("clearLists");
        valueQuery_clearLists = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_clearLists, MAX_NUMBER_LENGTH, "%d", *clearLists);
        keyPairQuery_clearLists = keyValuePair_create(keyQuery_clearLists, valueQuery_clearLists);
        list_addElement(localVarQueryParameters,keyPairQuery_clearLists);
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
    region_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RegionAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = region_response_parseFromJSON(RegionAPIlocalVarJSON);
        cJSON_Delete(RegionAPIlocalVarJSON);
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
    if(keyQuery_regionId){
        free(keyQuery_regionId);
        keyQuery_regionId = NULL;
    }
    if(keyPairQuery_regionId){
        keyValuePair_free(keyPairQuery_regionId);
        keyPairQuery_regionId = NULL;
    }
    if(keyQuery_regionClass){
        free(keyQuery_regionClass);
        keyQuery_regionClass = NULL;
    }
    if(valueQuery_regionClass){
        free(valueQuery_regionClass);
        valueQuery_regionClass = NULL;
    }
    if(keyPairQuery_regionClass){
        keyValuePair_free(keyPairQuery_regionClass);
        keyPairQuery_regionClass = NULL;
    }
    if(keyQuery_shortName){
        free(keyQuery_shortName);
        keyQuery_shortName = NULL;
    }
    if(valueQuery_shortName){
        free(valueQuery_shortName);
        valueQuery_shortName = NULL;
    }
    if(keyPairQuery_shortName){
        keyValuePair_free(keyPairQuery_shortName);
        keyPairQuery_shortName = NULL;
    }
    if(keyQuery_fullName){
        free(keyQuery_fullName);
        keyQuery_fullName = NULL;
    }
    if(valueQuery_fullName){
        free(valueQuery_fullName);
        valueQuery_fullName = NULL;
    }
    if(keyPairQuery_fullName){
        keyValuePair_free(keyPairQuery_fullName);
        keyPairQuery_fullName = NULL;
    }
    if(keyQuery_parentIds){
        free(keyQuery_parentIds);
        keyQuery_parentIds = NULL;
    }
    if(valueQuery_parentIds){
        free(valueQuery_parentIds);
        valueQuery_parentIds = NULL;
    }
    if(keyPairQuery_parentIds){
        keyValuePair_free(keyPairQuery_parentIds);
        keyPairQuery_parentIds = NULL;
    }
    if(keyQuery_childrenIds){
        free(keyQuery_childrenIds);
        keyQuery_childrenIds = NULL;
    }
    if(valueQuery_childrenIds){
        free(valueQuery_childrenIds);
        valueQuery_childrenIds = NULL;
    }
    if(keyPairQuery_childrenIds){
        keyValuePair_free(keyPairQuery_childrenIds);
        keyPairQuery_childrenIds = NULL;
    }
    if(keyQuery_postalCodeIds){
        free(keyQuery_postalCodeIds);
        keyQuery_postalCodeIds = NULL;
    }
    if(valueQuery_postalCodeIds){
        free(valueQuery_postalCodeIds);
        valueQuery_postalCodeIds = NULL;
    }
    if(keyPairQuery_postalCodeIds){
        keyValuePair_free(keyPairQuery_postalCodeIds);
        keyPairQuery_postalCodeIds = NULL;
    }
    if(keyQuery_locations){
        free(keyQuery_locations);
        keyQuery_locations = NULL;
    }
    if(valueQuery_locations){
        free(valueQuery_locations);
        valueQuery_locations = NULL;
    }
    if(keyPairQuery_locations){
        keyValuePair_free(keyPairQuery_locations);
        keyPairQuery_locations = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
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
    if(keyQuery_polygon){
        free(keyQuery_polygon);
        keyQuery_polygon = NULL;
    }
    if(valueQuery_polygon){
        free(valueQuery_polygon);
        valueQuery_polygon = NULL;
    }
    if(keyPairQuery_polygon){
        keyValuePair_free(keyPairQuery_polygon);
        keyPairQuery_polygon = NULL;
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
    if(keyQuery_versionCode){
        free(keyQuery_versionCode);
        keyQuery_versionCode = NULL;
    }
    if(valueQuery_versionCode){
        free(valueQuery_versionCode);
        valueQuery_versionCode = NULL;
    }
    if(keyPairQuery_versionCode){
        keyValuePair_free(keyPairQuery_versionCode);
        keyPairQuery_versionCode = NULL;
    }
    if(keyQuery_root){
        free(keyQuery_root);
        keyQuery_root = NULL;
    }
    if(valueQuery_root){
        free(valueQuery_root);
        valueQuery_root = NULL;
    }
    if(keyPairQuery_root){
        keyValuePair_free(keyPairQuery_root);
        keyPairQuery_root = NULL;
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
    if(keyQuery_clearLists){
        free(keyQuery_clearLists);
        keyQuery_clearLists = NULL;
    }
    if(valueQuery_clearLists){
        free(valueQuery_clearLists);
        valueQuery_clearLists = NULL;
    }
    if(keyPairQuery_clearLists){
        keyValuePair_free(keyPairQuery_clearLists);
        keyPairQuery_clearLists = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

