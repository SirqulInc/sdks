#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AlbumAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum VISIBILITY for AlbumAPI_addAlbumCollection

static char* addAlbumCollection_VISIBILITY_ToString(sirqul_iot_platform_addAlbumCollection_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_addAlbumCollection_visibility_e addAlbumCollection_VISIBILITY_FromString(char* VISIBILITY){
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
// Function addAlbumCollection_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *addAlbumCollection_VISIBILITY_convertToJSON(sirqul_iot_platform_addAlbumCollection_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", addAlbumCollection_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function addAlbumCollection_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_addAlbumCollection_visibility_e addAlbumCollection_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_addAlbumCollection_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = addAlbumCollection_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum APPROVALSTATUS for AlbumAPI_addAlbumCollection

static char* addAlbumCollection_APPROVALSTATUS_ToString(sirqul_iot_platform_addAlbumCollection_approvalStatus_e APPROVALSTATUS){
    char *APPROVALSTATUSArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return APPROVALSTATUSArray[APPROVALSTATUS];
}

static sirqul_iot_platform_addAlbumCollection_approvalStatus_e addAlbumCollection_APPROVALSTATUS_FromString(char* APPROVALSTATUS){
    int stringToReturn = 0;
    char *APPROVALSTATUSArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    size_t sizeofArray = sizeof(APPROVALSTATUSArray) / sizeof(APPROVALSTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(APPROVALSTATUS, APPROVALSTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function addAlbumCollection_APPROVALSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *addAlbumCollection_APPROVALSTATUS_convertToJSON(sirqul_iot_platform_addAlbumCollection_approvalStatus_e APPROVALSTATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "approvalStatus", addAlbumCollection_APPROVALSTATUS_ToString(APPROVALSTATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function addAlbumCollection_APPROVALSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_addAlbumCollection_approvalStatus_e addAlbumCollection_APPROVALSTATUS_parseFromJSON(cJSON* APPROVALSTATUSJSON) {
    sirqul_iot_platform_addAlbumCollection_approvalStatus_e APPROVALSTATUSVariable = 0;
    cJSON *APPROVALSTATUSVar = cJSON_GetObjectItemCaseSensitive(APPROVALSTATUSJSON, "approvalStatus");
    if(!cJSON_IsString(APPROVALSTATUSVar) || (APPROVALSTATUSVar->valuestring == NULL))
    {
        goto end;
    }
    APPROVALSTATUSVariable = addAlbumCollection_APPROVALSTATUS_FromString(APPROVALSTATUSVar->valuestring);
    return APPROVALSTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum APPROVALSTATUS for AlbumAPI_approveAlbum

static char* approveAlbum_APPROVALSTATUS_ToString(sirqul_iot_platform_approveAlbum_approvalStatus_e APPROVALSTATUS){
    char *APPROVALSTATUSArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return APPROVALSTATUSArray[APPROVALSTATUS];
}

static sirqul_iot_platform_approveAlbum_approvalStatus_e approveAlbum_APPROVALSTATUS_FromString(char* APPROVALSTATUS){
    int stringToReturn = 0;
    char *APPROVALSTATUSArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    size_t sizeofArray = sizeof(APPROVALSTATUSArray) / sizeof(APPROVALSTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(APPROVALSTATUS, APPROVALSTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function approveAlbum_APPROVALSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *approveAlbum_APPROVALSTATUS_convertToJSON(sirqul_iot_platform_approveAlbum_approvalStatus_e APPROVALSTATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "approvalStatus", approveAlbum_APPROVALSTATUS_ToString(APPROVALSTATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function approveAlbum_APPROVALSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_approveAlbum_approvalStatus_e approveAlbum_APPROVALSTATUS_parseFromJSON(cJSON* APPROVALSTATUSJSON) {
    sirqul_iot_platform_approveAlbum_approvalStatus_e APPROVALSTATUSVariable = 0;
    cJSON *APPROVALSTATUSVar = cJSON_GetObjectItemCaseSensitive(APPROVALSTATUSJSON, "approvalStatus");
    if(!cJSON_IsString(APPROVALSTATUSVar) || (APPROVALSTATUSVar->valuestring == NULL))
    {
        goto end;
    }
    APPROVALSTATUSVariable = approveAlbum_APPROVALSTATUS_FromString(APPROVALSTATUSVar->valuestring);
    return APPROVALSTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum VISIBILITY for AlbumAPI_updateAlbumCollection

static char* updateAlbumCollection_VISIBILITY_ToString(sirqul_iot_platform_updateAlbumCollection_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_updateAlbumCollection_visibility_e updateAlbumCollection_VISIBILITY_FromString(char* VISIBILITY){
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
// Function updateAlbumCollection_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateAlbumCollection_VISIBILITY_convertToJSON(sirqul_iot_platform_updateAlbumCollection_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", updateAlbumCollection_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateAlbumCollection_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateAlbumCollection_visibility_e updateAlbumCollection_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_updateAlbumCollection_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = updateAlbumCollection_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/


// Create Album
//
// Create an Album.
//
search_response_t*
AlbumAPI_addAlbumCollection(apiClient_t *apiClient, double version, char *title, int *coverAssetNullable, int *includeCoverInAssetList, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, int *anonymous, char *deviceId, long accountId, char *assetsToAdd, binary_t* media, char *mediaURL, long assetId, binary_t* attachedMedia, char *attachedMediaURL, long startDate, long endDate, char *tags, char *description, char *albumType, long albumTypeId, char *subType, double latitude, double longitude, char *locationDescription, sirqul_iot_platform_addAlbumCollection_visibility_e visibility, char *gameType, char *appKey, char *cellPhone, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *fullAddress, char *metaData, char *categoryIds, char *categoryFilterIds, char *audienceIds, int *includeAllAppUsersAsMembers, int *includeAudiencesAsMembers, char *audienceOperator, sirqul_iot_platform_addAlbumCollection_approvalStatus_e approvalStatus, char *linkedObjectType, long linkedObjectId)
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
    char *localVarPath = strdup("/api/{version}/album/create");



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
    char *keyQuery_assetsToAdd = NULL;
    char * valueQuery_assetsToAdd = NULL;
    keyValuePair_t *keyPairQuery_assetsToAdd = 0;
    if (assetsToAdd)
    {
        keyQuery_assetsToAdd = strdup("assetsToAdd");
        valueQuery_assetsToAdd = strdup((assetsToAdd));
        keyPairQuery_assetsToAdd = keyValuePair_create(keyQuery_assetsToAdd, valueQuery_assetsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_assetsToAdd);
    }

    // query parameters
    char *keyQuery_media = NULL;
    binary_t* valueQuery_media ;
    keyValuePair_t *keyPairQuery_media = 0;
    if (media)
    {
        keyQuery_media = strdup("media");
        valueQuery_media = (media);
        keyPairQuery_media = keyValuePair_create(keyQuery_media, &valueQuery_media);
        list_addElement(localVarQueryParameters,keyPairQuery_media);
    }

    // query parameters
    char *keyQuery_mediaURL = NULL;
    char * valueQuery_mediaURL = NULL;
    keyValuePair_t *keyPairQuery_mediaURL = 0;
    if (mediaURL)
    {
        keyQuery_mediaURL = strdup("mediaURL");
        valueQuery_mediaURL = strdup((mediaURL));
        keyPairQuery_mediaURL = keyValuePair_create(keyQuery_mediaURL, valueQuery_mediaURL);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaURL);
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
    char *keyQuery_attachedMedia = NULL;
    binary_t* valueQuery_attachedMedia ;
    keyValuePair_t *keyPairQuery_attachedMedia = 0;
    if (attachedMedia)
    {
        keyQuery_attachedMedia = strdup("attachedMedia");
        valueQuery_attachedMedia = (attachedMedia);
        keyPairQuery_attachedMedia = keyValuePair_create(keyQuery_attachedMedia, &valueQuery_attachedMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMedia);
    }

    // query parameters
    char *keyQuery_attachedMediaURL = NULL;
    char * valueQuery_attachedMediaURL = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaURL = 0;
    if (attachedMediaURL)
    {
        keyQuery_attachedMediaURL = strdup("attachedMediaURL");
        valueQuery_attachedMediaURL = strdup((attachedMediaURL));
        keyPairQuery_attachedMediaURL = keyValuePair_create(keyQuery_attachedMediaURL, valueQuery_attachedMediaURL);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaURL);
    }

    // query parameters
    char *keyQuery_coverAssetNullable = NULL;
    char * valueQuery_coverAssetNullable = NULL;
    keyValuePair_t *keyPairQuery_coverAssetNullable = 0;
    if (coverAssetNullable)
    {
        keyQuery_coverAssetNullable = strdup("coverAssetNullable");
        valueQuery_coverAssetNullable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_coverAssetNullable, MAX_NUMBER_LENGTH, "%d", *coverAssetNullable);
        keyPairQuery_coverAssetNullable = keyValuePair_create(keyQuery_coverAssetNullable, valueQuery_coverAssetNullable);
        list_addElement(localVarQueryParameters,keyPairQuery_coverAssetNullable);
    }

    // query parameters
    char *keyQuery_includeCoverInAssetList = NULL;
    char * valueQuery_includeCoverInAssetList = NULL;
    keyValuePair_t *keyPairQuery_includeCoverInAssetList = 0;
    if (includeCoverInAssetList)
    {
        keyQuery_includeCoverInAssetList = strdup("includeCoverInAssetList");
        valueQuery_includeCoverInAssetList = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeCoverInAssetList, MAX_NUMBER_LENGTH, "%d", *includeCoverInAssetList);
        keyPairQuery_includeCoverInAssetList = keyValuePair_create(keyQuery_includeCoverInAssetList, valueQuery_includeCoverInAssetList);
        list_addElement(localVarQueryParameters,keyPairQuery_includeCoverInAssetList);
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
    char *keyQuery_albumType = NULL;
    char * valueQuery_albumType = NULL;
    keyValuePair_t *keyPairQuery_albumType = 0;
    if (albumType)
    {
        keyQuery_albumType = strdup("albumType");
        valueQuery_albumType = strdup((albumType));
        keyPairQuery_albumType = keyValuePair_create(keyQuery_albumType, valueQuery_albumType);
        list_addElement(localVarQueryParameters,keyPairQuery_albumType);
    }

    // query parameters
    char *keyQuery_albumTypeId = NULL;
    char * valueQuery_albumTypeId ;
    keyValuePair_t *keyPairQuery_albumTypeId = 0;
    {
        keyQuery_albumTypeId = strdup("albumTypeId");
        valueQuery_albumTypeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumTypeId, MAX_NUMBER_LENGTH_LONG, "%d", albumTypeId);
        keyPairQuery_albumTypeId = keyValuePair_create(keyQuery_albumTypeId, valueQuery_albumTypeId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumTypeId);
    }

    // query parameters
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
    }

    // query parameters
    char *keyQuery_publicRead = NULL;
    char * valueQuery_publicRead = NULL;
    keyValuePair_t *keyPairQuery_publicRead = 0;
    if (publicRead)
    {
        keyQuery_publicRead = strdup("publicRead");
        valueQuery_publicRead = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicRead, MAX_NUMBER_LENGTH, "%d", *publicRead);
        keyPairQuery_publicRead = keyValuePair_create(keyQuery_publicRead, valueQuery_publicRead);
        list_addElement(localVarQueryParameters,keyPairQuery_publicRead);
    }

    // query parameters
    char *keyQuery_publicWrite = NULL;
    char * valueQuery_publicWrite = NULL;
    keyValuePair_t *keyPairQuery_publicWrite = 0;
    if (publicWrite)
    {
        keyQuery_publicWrite = strdup("publicWrite");
        valueQuery_publicWrite = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicWrite, MAX_NUMBER_LENGTH, "%d", *publicWrite);
        keyPairQuery_publicWrite = keyValuePair_create(keyQuery_publicWrite, valueQuery_publicWrite);
        list_addElement(localVarQueryParameters,keyPairQuery_publicWrite);
    }

    // query parameters
    char *keyQuery_publicDelete = NULL;
    char * valueQuery_publicDelete = NULL;
    keyValuePair_t *keyPairQuery_publicDelete = 0;
    if (publicDelete)
    {
        keyQuery_publicDelete = strdup("publicDelete");
        valueQuery_publicDelete = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicDelete, MAX_NUMBER_LENGTH, "%d", *publicDelete);
        keyPairQuery_publicDelete = keyValuePair_create(keyQuery_publicDelete, valueQuery_publicDelete);
        list_addElement(localVarQueryParameters,keyPairQuery_publicDelete);
    }

    // query parameters
    char *keyQuery_publicAdd = NULL;
    char * valueQuery_publicAdd = NULL;
    keyValuePair_t *keyPairQuery_publicAdd = 0;
    if (publicAdd)
    {
        keyQuery_publicAdd = strdup("publicAdd");
        valueQuery_publicAdd = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicAdd, MAX_NUMBER_LENGTH, "%d", *publicAdd);
        keyPairQuery_publicAdd = keyValuePair_create(keyQuery_publicAdd, valueQuery_publicAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_publicAdd);
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
    char *keyQuery_locationDescription = NULL;
    char * valueQuery_locationDescription = NULL;
    keyValuePair_t *keyPairQuery_locationDescription = 0;
    if (locationDescription)
    {
        keyQuery_locationDescription = strdup("locationDescription");
        valueQuery_locationDescription = strdup((locationDescription));
        keyPairQuery_locationDescription = keyValuePair_create(keyQuery_locationDescription, valueQuery_locationDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_locationDescription);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_addAlbumCollection_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(addAlbumCollection_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_gameType = NULL;
    char * valueQuery_gameType = NULL;
    keyValuePair_t *keyPairQuery_gameType = 0;
    if (gameType)
    {
        keyQuery_gameType = strdup("gameType");
        valueQuery_gameType = strdup((gameType));
        keyPairQuery_gameType = keyValuePair_create(keyQuery_gameType, valueQuery_gameType);
        list_addElement(localVarQueryParameters,keyPairQuery_gameType);
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
    char *keyQuery_cellPhone = NULL;
    char * valueQuery_cellPhone = NULL;
    keyValuePair_t *keyPairQuery_cellPhone = 0;
    if (cellPhone)
    {
        keyQuery_cellPhone = strdup("cellPhone");
        valueQuery_cellPhone = strdup((cellPhone));
        keyPairQuery_cellPhone = keyValuePair_create(keyQuery_cellPhone, valueQuery_cellPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhone);
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
    char *keyQuery_fullAddress = NULL;
    char * valueQuery_fullAddress = NULL;
    keyValuePair_t *keyPairQuery_fullAddress = 0;
    if (fullAddress)
    {
        keyQuery_fullAddress = strdup("fullAddress");
        valueQuery_fullAddress = strdup((fullAddress));
        keyPairQuery_fullAddress = keyValuePair_create(keyQuery_fullAddress, valueQuery_fullAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_fullAddress);
    }

    // query parameters
    char *keyQuery_anonymous = NULL;
    char * valueQuery_anonymous = NULL;
    keyValuePair_t *keyPairQuery_anonymous = 0;
    if (anonymous)
    {
        keyQuery_anonymous = strdup("anonymous");
        valueQuery_anonymous = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_anonymous, MAX_NUMBER_LENGTH, "%d", *anonymous);
        keyPairQuery_anonymous = keyValuePair_create(keyQuery_anonymous, valueQuery_anonymous);
        list_addElement(localVarQueryParameters,keyPairQuery_anonymous);
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
    char *keyQuery_categoryFilterIds = NULL;
    char * valueQuery_categoryFilterIds = NULL;
    keyValuePair_t *keyPairQuery_categoryFilterIds = 0;
    if (categoryFilterIds)
    {
        keyQuery_categoryFilterIds = strdup("categoryFilterIds");
        valueQuery_categoryFilterIds = strdup((categoryFilterIds));
        keyPairQuery_categoryFilterIds = keyValuePair_create(keyQuery_categoryFilterIds, valueQuery_categoryFilterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryFilterIds);
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
    char *keyQuery_includeAllAppUsersAsMembers = NULL;
    char * valueQuery_includeAllAppUsersAsMembers = NULL;
    keyValuePair_t *keyPairQuery_includeAllAppUsersAsMembers = 0;
    if (includeAllAppUsersAsMembers)
    {
        keyQuery_includeAllAppUsersAsMembers = strdup("includeAllAppUsersAsMembers");
        valueQuery_includeAllAppUsersAsMembers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAllAppUsersAsMembers, MAX_NUMBER_LENGTH, "%d", *includeAllAppUsersAsMembers);
        keyPairQuery_includeAllAppUsersAsMembers = keyValuePair_create(keyQuery_includeAllAppUsersAsMembers, valueQuery_includeAllAppUsersAsMembers);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAllAppUsersAsMembers);
    }

    // query parameters
    char *keyQuery_includeAudiencesAsMembers = NULL;
    char * valueQuery_includeAudiencesAsMembers = NULL;
    keyValuePair_t *keyPairQuery_includeAudiencesAsMembers = 0;
    if (includeAudiencesAsMembers)
    {
        keyQuery_includeAudiencesAsMembers = strdup("includeAudiencesAsMembers");
        valueQuery_includeAudiencesAsMembers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAudiencesAsMembers, MAX_NUMBER_LENGTH, "%d", *includeAudiencesAsMembers);
        keyPairQuery_includeAudiencesAsMembers = keyValuePair_create(keyQuery_includeAudiencesAsMembers, valueQuery_includeAudiencesAsMembers);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAudiencesAsMembers);
    }

    // query parameters
    char *keyQuery_audienceOperator = NULL;
    char * valueQuery_audienceOperator = NULL;
    keyValuePair_t *keyPairQuery_audienceOperator = 0;
    if (audienceOperator)
    {
        keyQuery_audienceOperator = strdup("audienceOperator");
        valueQuery_audienceOperator = strdup((audienceOperator));
        keyPairQuery_audienceOperator = keyValuePair_create(keyQuery_audienceOperator, valueQuery_audienceOperator);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceOperator);
    }

    // query parameters
    char *keyQuery_approvalStatus = NULL;
    sirqul_iot_platform_addAlbumCollection_approvalStatus_e valueQuery_approvalStatus ;
    keyValuePair_t *keyPairQuery_approvalStatus = 0;
    if (approvalStatus)
    {
        keyQuery_approvalStatus = strdup("approvalStatus");
        valueQuery_approvalStatus = (approvalStatus);
        keyPairQuery_approvalStatus = keyValuePair_create(keyQuery_approvalStatus, strdup(addAlbumCollection_APPROVALSTATUS_ToString(
        valueQuery_approvalStatus)));
        list_addElement(localVarQueryParameters,keyPairQuery_approvalStatus);
    }

    // query parameters
    char *keyQuery_linkedObjectType = NULL;
    char * valueQuery_linkedObjectType = NULL;
    keyValuePair_t *keyPairQuery_linkedObjectType = 0;
    if (linkedObjectType)
    {
        keyQuery_linkedObjectType = strdup("linkedObjectType");
        valueQuery_linkedObjectType = strdup((linkedObjectType));
        keyPairQuery_linkedObjectType = keyValuePair_create(keyQuery_linkedObjectType, valueQuery_linkedObjectType);
        list_addElement(localVarQueryParameters,keyPairQuery_linkedObjectType);
    }

    // query parameters
    char *keyQuery_linkedObjectId = NULL;
    char * valueQuery_linkedObjectId ;
    keyValuePair_t *keyPairQuery_linkedObjectId = 0;
    {
        keyQuery_linkedObjectId = strdup("linkedObjectId");
        valueQuery_linkedObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_linkedObjectId, MAX_NUMBER_LENGTH_LONG, "%d", linkedObjectId);
        keyPairQuery_linkedObjectId = keyValuePair_create(keyQuery_linkedObjectId, valueQuery_linkedObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_linkedObjectId);
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
    search_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = search_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_assetsToAdd){
        free(keyQuery_assetsToAdd);
        keyQuery_assetsToAdd = NULL;
    }
    if(valueQuery_assetsToAdd){
        free(valueQuery_assetsToAdd);
        valueQuery_assetsToAdd = NULL;
    }
    if(keyPairQuery_assetsToAdd){
        keyValuePair_free(keyPairQuery_assetsToAdd);
        keyPairQuery_assetsToAdd = NULL;
    }
    if(keyQuery_media){
        free(keyQuery_media);
        keyQuery_media = NULL;
    }
    if(keyPairQuery_media){
        keyValuePair_free(keyPairQuery_media);
        keyPairQuery_media = NULL;
    }
    if(keyQuery_mediaURL){
        free(keyQuery_mediaURL);
        keyQuery_mediaURL = NULL;
    }
    if(valueQuery_mediaURL){
        free(valueQuery_mediaURL);
        valueQuery_mediaURL = NULL;
    }
    if(keyPairQuery_mediaURL){
        keyValuePair_free(keyPairQuery_mediaURL);
        keyPairQuery_mediaURL = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_attachedMedia){
        free(keyQuery_attachedMedia);
        keyQuery_attachedMedia = NULL;
    }
    if(keyPairQuery_attachedMedia){
        keyValuePair_free(keyPairQuery_attachedMedia);
        keyPairQuery_attachedMedia = NULL;
    }
    if(keyQuery_attachedMediaURL){
        free(keyQuery_attachedMediaURL);
        keyQuery_attachedMediaURL = NULL;
    }
    if(valueQuery_attachedMediaURL){
        free(valueQuery_attachedMediaURL);
        valueQuery_attachedMediaURL = NULL;
    }
    if(keyPairQuery_attachedMediaURL){
        keyValuePair_free(keyPairQuery_attachedMediaURL);
        keyPairQuery_attachedMediaURL = NULL;
    }
    if(keyQuery_coverAssetNullable){
        free(keyQuery_coverAssetNullable);
        keyQuery_coverAssetNullable = NULL;
    }
    if(valueQuery_coverAssetNullable){
        free(valueQuery_coverAssetNullable);
        valueQuery_coverAssetNullable = NULL;
    }
    if(keyPairQuery_coverAssetNullable){
        keyValuePair_free(keyPairQuery_coverAssetNullable);
        keyPairQuery_coverAssetNullable = NULL;
    }
    if(keyQuery_includeCoverInAssetList){
        free(keyQuery_includeCoverInAssetList);
        keyQuery_includeCoverInAssetList = NULL;
    }
    if(valueQuery_includeCoverInAssetList){
        free(valueQuery_includeCoverInAssetList);
        valueQuery_includeCoverInAssetList = NULL;
    }
    if(keyPairQuery_includeCoverInAssetList){
        keyValuePair_free(keyPairQuery_includeCoverInAssetList);
        keyPairQuery_includeCoverInAssetList = NULL;
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
    if(keyQuery_albumType){
        free(keyQuery_albumType);
        keyQuery_albumType = NULL;
    }
    if(valueQuery_albumType){
        free(valueQuery_albumType);
        valueQuery_albumType = NULL;
    }
    if(keyPairQuery_albumType){
        keyValuePair_free(keyPairQuery_albumType);
        keyPairQuery_albumType = NULL;
    }
    if(keyQuery_albumTypeId){
        free(keyQuery_albumTypeId);
        keyQuery_albumTypeId = NULL;
    }
    if(keyPairQuery_albumTypeId){
        keyValuePair_free(keyPairQuery_albumTypeId);
        keyPairQuery_albumTypeId = NULL;
    }
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
    }
    if(keyQuery_publicRead){
        free(keyQuery_publicRead);
        keyQuery_publicRead = NULL;
    }
    if(valueQuery_publicRead){
        free(valueQuery_publicRead);
        valueQuery_publicRead = NULL;
    }
    if(keyPairQuery_publicRead){
        keyValuePair_free(keyPairQuery_publicRead);
        keyPairQuery_publicRead = NULL;
    }
    if(keyQuery_publicWrite){
        free(keyQuery_publicWrite);
        keyQuery_publicWrite = NULL;
    }
    if(valueQuery_publicWrite){
        free(valueQuery_publicWrite);
        valueQuery_publicWrite = NULL;
    }
    if(keyPairQuery_publicWrite){
        keyValuePair_free(keyPairQuery_publicWrite);
        keyPairQuery_publicWrite = NULL;
    }
    if(keyQuery_publicDelete){
        free(keyQuery_publicDelete);
        keyQuery_publicDelete = NULL;
    }
    if(valueQuery_publicDelete){
        free(valueQuery_publicDelete);
        valueQuery_publicDelete = NULL;
    }
    if(keyPairQuery_publicDelete){
        keyValuePair_free(keyPairQuery_publicDelete);
        keyPairQuery_publicDelete = NULL;
    }
    if(keyQuery_publicAdd){
        free(keyQuery_publicAdd);
        keyQuery_publicAdd = NULL;
    }
    if(valueQuery_publicAdd){
        free(valueQuery_publicAdd);
        valueQuery_publicAdd = NULL;
    }
    if(keyPairQuery_publicAdd){
        keyValuePair_free(keyPairQuery_publicAdd);
        keyPairQuery_publicAdd = NULL;
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
    if(keyQuery_locationDescription){
        free(keyQuery_locationDescription);
        keyQuery_locationDescription = NULL;
    }
    if(valueQuery_locationDescription){
        free(valueQuery_locationDescription);
        valueQuery_locationDescription = NULL;
    }
    if(keyPairQuery_locationDescription){
        keyValuePair_free(keyPairQuery_locationDescription);
        keyPairQuery_locationDescription = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_gameType){
        free(keyQuery_gameType);
        keyQuery_gameType = NULL;
    }
    if(valueQuery_gameType){
        free(valueQuery_gameType);
        valueQuery_gameType = NULL;
    }
    if(keyPairQuery_gameType){
        keyValuePair_free(keyPairQuery_gameType);
        keyPairQuery_gameType = NULL;
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
    if(keyQuery_cellPhone){
        free(keyQuery_cellPhone);
        keyQuery_cellPhone = NULL;
    }
    if(valueQuery_cellPhone){
        free(valueQuery_cellPhone);
        valueQuery_cellPhone = NULL;
    }
    if(keyPairQuery_cellPhone){
        keyValuePair_free(keyPairQuery_cellPhone);
        keyPairQuery_cellPhone = NULL;
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
    if(keyQuery_fullAddress){
        free(keyQuery_fullAddress);
        keyQuery_fullAddress = NULL;
    }
    if(valueQuery_fullAddress){
        free(valueQuery_fullAddress);
        valueQuery_fullAddress = NULL;
    }
    if(keyPairQuery_fullAddress){
        keyValuePair_free(keyPairQuery_fullAddress);
        keyPairQuery_fullAddress = NULL;
    }
    if(keyQuery_anonymous){
        free(keyQuery_anonymous);
        keyQuery_anonymous = NULL;
    }
    if(valueQuery_anonymous){
        free(valueQuery_anonymous);
        valueQuery_anonymous = NULL;
    }
    if(keyPairQuery_anonymous){
        keyValuePair_free(keyPairQuery_anonymous);
        keyPairQuery_anonymous = NULL;
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
    if(keyQuery_categoryFilterIds){
        free(keyQuery_categoryFilterIds);
        keyQuery_categoryFilterIds = NULL;
    }
    if(valueQuery_categoryFilterIds){
        free(valueQuery_categoryFilterIds);
        valueQuery_categoryFilterIds = NULL;
    }
    if(keyPairQuery_categoryFilterIds){
        keyValuePair_free(keyPairQuery_categoryFilterIds);
        keyPairQuery_categoryFilterIds = NULL;
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
    if(keyQuery_includeAllAppUsersAsMembers){
        free(keyQuery_includeAllAppUsersAsMembers);
        keyQuery_includeAllAppUsersAsMembers = NULL;
    }
    if(valueQuery_includeAllAppUsersAsMembers){
        free(valueQuery_includeAllAppUsersAsMembers);
        valueQuery_includeAllAppUsersAsMembers = NULL;
    }
    if(keyPairQuery_includeAllAppUsersAsMembers){
        keyValuePair_free(keyPairQuery_includeAllAppUsersAsMembers);
        keyPairQuery_includeAllAppUsersAsMembers = NULL;
    }
    if(keyQuery_includeAudiencesAsMembers){
        free(keyQuery_includeAudiencesAsMembers);
        keyQuery_includeAudiencesAsMembers = NULL;
    }
    if(valueQuery_includeAudiencesAsMembers){
        free(valueQuery_includeAudiencesAsMembers);
        valueQuery_includeAudiencesAsMembers = NULL;
    }
    if(keyPairQuery_includeAudiencesAsMembers){
        keyValuePair_free(keyPairQuery_includeAudiencesAsMembers);
        keyPairQuery_includeAudiencesAsMembers = NULL;
    }
    if(keyQuery_audienceOperator){
        free(keyQuery_audienceOperator);
        keyQuery_audienceOperator = NULL;
    }
    if(valueQuery_audienceOperator){
        free(valueQuery_audienceOperator);
        valueQuery_audienceOperator = NULL;
    }
    if(keyPairQuery_audienceOperator){
        keyValuePair_free(keyPairQuery_audienceOperator);
        keyPairQuery_audienceOperator = NULL;
    }
    if(keyQuery_approvalStatus){
        free(keyQuery_approvalStatus);
        keyQuery_approvalStatus = NULL;
    }
    if(keyPairQuery_approvalStatus){
        keyValuePair_free(keyPairQuery_approvalStatus);
        keyPairQuery_approvalStatus = NULL;
    }
    if(keyQuery_linkedObjectType){
        free(keyQuery_linkedObjectType);
        keyQuery_linkedObjectType = NULL;
    }
    if(valueQuery_linkedObjectType){
        free(valueQuery_linkedObjectType);
        valueQuery_linkedObjectType = NULL;
    }
    if(keyPairQuery_linkedObjectType){
        keyValuePair_free(keyPairQuery_linkedObjectType);
        keyPairQuery_linkedObjectType = NULL;
    }
    if(keyQuery_linkedObjectId){
        free(keyQuery_linkedObjectId);
        keyQuery_linkedObjectId = NULL;
    }
    if(keyPairQuery_linkedObjectId){
        keyValuePair_free(keyPairQuery_linkedObjectId);
        keyPairQuery_linkedObjectId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Add Album Users
//
// Add users to an album as participants.
//
sirqul_response_t*
AlbumAPI_addAlbumUsers(apiClient_t *apiClient, double version, long albumId, int *includeFriendGroup, char *deviceId, long accountId, int *read, int *write, int *_delete, int *add, char *connections, char *connectionGroups)
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
    char *localVarPath = strdup("/api/{version}/album/user/add");



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
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
    }

    // query parameters
    char *keyQuery_read = NULL;
    char * valueQuery_read = NULL;
    keyValuePair_t *keyPairQuery_read = 0;
    if (read)
    {
        keyQuery_read = strdup("read");
        valueQuery_read = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_read, MAX_NUMBER_LENGTH, "%d", *read);
        keyPairQuery_read = keyValuePair_create(keyQuery_read, valueQuery_read);
        list_addElement(localVarQueryParameters,keyPairQuery_read);
    }

    // query parameters
    char *keyQuery_write = NULL;
    char * valueQuery_write = NULL;
    keyValuePair_t *keyPairQuery_write = 0;
    if (write)
    {
        keyQuery_write = strdup("write");
        valueQuery_write = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_write, MAX_NUMBER_LENGTH, "%d", *write);
        keyPairQuery_write = keyValuePair_create(keyQuery_write, valueQuery_write);
        list_addElement(localVarQueryParameters,keyPairQuery_write);
    }

    // query parameters
    char *keyQuery__delete = NULL;
    char * valueQuery__delete = NULL;
    keyValuePair_t *keyPairQuery__delete = 0;
    if (_delete)
    {
        keyQuery__delete = strdup("delete");
        valueQuery__delete = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__delete, MAX_NUMBER_LENGTH, "%d", *_delete);
        keyPairQuery__delete = keyValuePair_create(keyQuery__delete, valueQuery__delete);
        list_addElement(localVarQueryParameters,keyPairQuery__delete);
    }

    // query parameters
    char *keyQuery_add = NULL;
    char * valueQuery_add = NULL;
    keyValuePair_t *keyPairQuery_add = 0;
    if (add)
    {
        keyQuery_add = strdup("add");
        valueQuery_add = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_add, MAX_NUMBER_LENGTH, "%d", *add);
        keyPairQuery_add = keyValuePair_create(keyQuery_add, valueQuery_add);
        list_addElement(localVarQueryParameters,keyPairQuery_add);
    }

    // query parameters
    char *keyQuery_connections = NULL;
    char * valueQuery_connections = NULL;
    keyValuePair_t *keyPairQuery_connections = 0;
    if (connections)
    {
        keyQuery_connections = strdup("connections");
        valueQuery_connections = strdup((connections));
        keyPairQuery_connections = keyValuePair_create(keyQuery_connections, valueQuery_connections);
        list_addElement(localVarQueryParameters,keyPairQuery_connections);
    }

    // query parameters
    char *keyQuery_connectionGroups = NULL;
    char * valueQuery_connectionGroups = NULL;
    keyValuePair_t *keyPairQuery_connectionGroups = 0;
    if (connectionGroups)
    {
        keyQuery_connectionGroups = strdup("connectionGroups");
        valueQuery_connectionGroups = strdup((connectionGroups));
        keyPairQuery_connectionGroups = keyValuePair_create(keyQuery_connectionGroups, valueQuery_connectionGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroups);
    }

    // query parameters
    char *keyQuery_includeFriendGroup = NULL;
    char * valueQuery_includeFriendGroup = NULL;
    keyValuePair_t *keyPairQuery_includeFriendGroup = 0;
    if (includeFriendGroup)
    {
        keyQuery_includeFriendGroup = strdup("includeFriendGroup");
        valueQuery_includeFriendGroup = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFriendGroup, MAX_NUMBER_LENGTH, "%d", *includeFriendGroup);
        keyPairQuery_includeFriendGroup = keyValuePair_create(keyQuery_includeFriendGroup, valueQuery_includeFriendGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFriendGroup);
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
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_read){
        free(keyQuery_read);
        keyQuery_read = NULL;
    }
    if(valueQuery_read){
        free(valueQuery_read);
        valueQuery_read = NULL;
    }
    if(keyPairQuery_read){
        keyValuePair_free(keyPairQuery_read);
        keyPairQuery_read = NULL;
    }
    if(keyQuery_write){
        free(keyQuery_write);
        keyQuery_write = NULL;
    }
    if(valueQuery_write){
        free(valueQuery_write);
        valueQuery_write = NULL;
    }
    if(keyPairQuery_write){
        keyValuePair_free(keyPairQuery_write);
        keyPairQuery_write = NULL;
    }
    if(keyQuery__delete){
        free(keyQuery__delete);
        keyQuery__delete = NULL;
    }
    if(valueQuery__delete){
        free(valueQuery__delete);
        valueQuery__delete = NULL;
    }
    if(keyPairQuery__delete){
        keyValuePair_free(keyPairQuery__delete);
        keyPairQuery__delete = NULL;
    }
    if(keyQuery_add){
        free(keyQuery_add);
        keyQuery_add = NULL;
    }
    if(valueQuery_add){
        free(valueQuery_add);
        valueQuery_add = NULL;
    }
    if(keyPairQuery_add){
        keyValuePair_free(keyPairQuery_add);
        keyPairQuery_add = NULL;
    }
    if(keyQuery_connections){
        free(keyQuery_connections);
        keyQuery_connections = NULL;
    }
    if(valueQuery_connections){
        free(valueQuery_connections);
        valueQuery_connections = NULL;
    }
    if(keyPairQuery_connections){
        keyValuePair_free(keyPairQuery_connections);
        keyPairQuery_connections = NULL;
    }
    if(keyQuery_connectionGroups){
        free(keyQuery_connectionGroups);
        keyQuery_connectionGroups = NULL;
    }
    if(valueQuery_connectionGroups){
        free(valueQuery_connectionGroups);
        valueQuery_connectionGroups = NULL;
    }
    if(keyPairQuery_connectionGroups){
        keyValuePair_free(keyPairQuery_connectionGroups);
        keyPairQuery_connectionGroups = NULL;
    }
    if(keyQuery_includeFriendGroup){
        free(keyQuery_includeFriendGroup);
        keyQuery_includeFriendGroup = NULL;
    }
    if(valueQuery_includeFriendGroup){
        free(valueQuery_includeFriendGroup);
        valueQuery_includeFriendGroup = NULL;
    }
    if(keyPairQuery_includeFriendGroup){
        keyValuePair_free(keyPairQuery_includeFriendGroup);
        keyPairQuery_includeFriendGroup = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Approve Album
//
// Sets the approval status of an Album.
//
sirqul_response_t*
AlbumAPI_approveAlbum(apiClient_t *apiClient, double version, long albumId, char *deviceId, long accountId, sirqul_iot_platform_approveAlbum_approvalStatus_e approvalStatus, int *verified)
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
    char *localVarPath = strdup("/api/{version}/album/approve");



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
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
    }

    // query parameters
    char *keyQuery_approvalStatus = NULL;
    sirqul_iot_platform_approveAlbum_approvalStatus_e valueQuery_approvalStatus ;
    keyValuePair_t *keyPairQuery_approvalStatus = 0;
    if (approvalStatus)
    {
        keyQuery_approvalStatus = strdup("approvalStatus");
        valueQuery_approvalStatus = (approvalStatus);
        keyPairQuery_approvalStatus = keyValuePair_create(keyQuery_approvalStatus, strdup(approveAlbum_APPROVALSTATUS_ToString(
        valueQuery_approvalStatus)));
        list_addElement(localVarQueryParameters,keyPairQuery_approvalStatus);
    }

    // query parameters
    char *keyQuery_verified = NULL;
    char * valueQuery_verified = NULL;
    keyValuePair_t *keyPairQuery_verified = 0;
    if (verified)
    {
        keyQuery_verified = strdup("verified");
        valueQuery_verified = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_verified, MAX_NUMBER_LENGTH, "%d", *verified);
        keyPairQuery_verified = keyValuePair_create(keyQuery_verified, valueQuery_verified);
        list_addElement(localVarQueryParameters,keyPairQuery_verified);
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
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_approvalStatus){
        free(keyQuery_approvalStatus);
        keyQuery_approvalStatus = NULL;
    }
    if(keyPairQuery_approvalStatus){
        keyValuePair_free(keyPairQuery_approvalStatus);
        keyPairQuery_approvalStatus = NULL;
    }
    if(keyQuery_verified){
        free(keyQuery_verified);
        keyQuery_verified = NULL;
    }
    if(valueQuery_verified){
        free(valueQuery_verified);
        valueQuery_verified = NULL;
    }
    if(keyPairQuery_verified){
        keyValuePair_free(keyPairQuery_verified);
        keyPairQuery_verified = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

//  Get Album
//
// Get an Album.
//
album_full_response_t*
AlbumAPI_getAlbumCollection(apiClient_t *apiClient, double version, int *returnNulls, long albumId, char *deviceId, long accountId, int *likePreviewSize, int *assetPreviewSize, int *notePreviewSize, int *connectionPreviewSize, int *audiencePreviewSize)
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
    char *localVarPath = strdup("/api/{version}/album/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_returnNulls = NULL;
    char * valueQuery_returnNulls = NULL;
    keyValuePair_t *keyPairQuery_returnNulls = 0;
    if (returnNulls)
    {
        keyQuery_returnNulls = strdup("returnNulls");
        valueQuery_returnNulls = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnNulls, MAX_NUMBER_LENGTH, "%d", *returnNulls);
        keyPairQuery_returnNulls = keyValuePair_create(keyQuery_returnNulls, valueQuery_returnNulls);
        list_addElement(localVarQueryParameters,keyPairQuery_returnNulls);
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
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
    }

    // query parameters
    char *keyQuery_likePreviewSize = NULL;
    char * valueQuery_likePreviewSize = NULL;
    keyValuePair_t *keyPairQuery_likePreviewSize = 0;
    if (likePreviewSize)
    {
        keyQuery_likePreviewSize = strdup("likePreviewSize");
        valueQuery_likePreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_likePreviewSize, MAX_NUMBER_LENGTH, "%d", *likePreviewSize);
        keyPairQuery_likePreviewSize = keyValuePair_create(keyQuery_likePreviewSize, valueQuery_likePreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_likePreviewSize);
    }

    // query parameters
    char *keyQuery_assetPreviewSize = NULL;
    char * valueQuery_assetPreviewSize = NULL;
    keyValuePair_t *keyPairQuery_assetPreviewSize = 0;
    if (assetPreviewSize)
    {
        keyQuery_assetPreviewSize = strdup("assetPreviewSize");
        valueQuery_assetPreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetPreviewSize, MAX_NUMBER_LENGTH, "%d", *assetPreviewSize);
        keyPairQuery_assetPreviewSize = keyValuePair_create(keyQuery_assetPreviewSize, valueQuery_assetPreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_assetPreviewSize);
    }

    // query parameters
    char *keyQuery_notePreviewSize = NULL;
    char * valueQuery_notePreviewSize = NULL;
    keyValuePair_t *keyPairQuery_notePreviewSize = 0;
    if (notePreviewSize)
    {
        keyQuery_notePreviewSize = strdup("notePreviewSize");
        valueQuery_notePreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_notePreviewSize, MAX_NUMBER_LENGTH, "%d", *notePreviewSize);
        keyPairQuery_notePreviewSize = keyValuePair_create(keyQuery_notePreviewSize, valueQuery_notePreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_notePreviewSize);
    }

    // query parameters
    char *keyQuery_connectionPreviewSize = NULL;
    char * valueQuery_connectionPreviewSize = NULL;
    keyValuePair_t *keyPairQuery_connectionPreviewSize = 0;
    if (connectionPreviewSize)
    {
        keyQuery_connectionPreviewSize = strdup("connectionPreviewSize");
        valueQuery_connectionPreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_connectionPreviewSize, MAX_NUMBER_LENGTH, "%d", *connectionPreviewSize);
        keyPairQuery_connectionPreviewSize = keyValuePair_create(keyQuery_connectionPreviewSize, valueQuery_connectionPreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionPreviewSize);
    }

    // query parameters
    char *keyQuery_audiencePreviewSize = NULL;
    char * valueQuery_audiencePreviewSize = NULL;
    keyValuePair_t *keyPairQuery_audiencePreviewSize = 0;
    if (audiencePreviewSize)
    {
        keyQuery_audiencePreviewSize = strdup("audiencePreviewSize");
        valueQuery_audiencePreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_audiencePreviewSize, MAX_NUMBER_LENGTH, "%d", *audiencePreviewSize);
        keyPairQuery_audiencePreviewSize = keyValuePair_create(keyQuery_audiencePreviewSize, valueQuery_audiencePreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_audiencePreviewSize);
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
    album_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = album_full_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_returnNulls){
        free(keyQuery_returnNulls);
        keyQuery_returnNulls = NULL;
    }
    if(valueQuery_returnNulls){
        free(valueQuery_returnNulls);
        valueQuery_returnNulls = NULL;
    }
    if(keyPairQuery_returnNulls){
        keyValuePair_free(keyPairQuery_returnNulls);
        keyPairQuery_returnNulls = NULL;
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_likePreviewSize){
        free(keyQuery_likePreviewSize);
        keyQuery_likePreviewSize = NULL;
    }
    if(valueQuery_likePreviewSize){
        free(valueQuery_likePreviewSize);
        valueQuery_likePreviewSize = NULL;
    }
    if(keyPairQuery_likePreviewSize){
        keyValuePair_free(keyPairQuery_likePreviewSize);
        keyPairQuery_likePreviewSize = NULL;
    }
    if(keyQuery_assetPreviewSize){
        free(keyQuery_assetPreviewSize);
        keyQuery_assetPreviewSize = NULL;
    }
    if(valueQuery_assetPreviewSize){
        free(valueQuery_assetPreviewSize);
        valueQuery_assetPreviewSize = NULL;
    }
    if(keyPairQuery_assetPreviewSize){
        keyValuePair_free(keyPairQuery_assetPreviewSize);
        keyPairQuery_assetPreviewSize = NULL;
    }
    if(keyQuery_notePreviewSize){
        free(keyQuery_notePreviewSize);
        keyQuery_notePreviewSize = NULL;
    }
    if(valueQuery_notePreviewSize){
        free(valueQuery_notePreviewSize);
        valueQuery_notePreviewSize = NULL;
    }
    if(keyPairQuery_notePreviewSize){
        keyValuePair_free(keyPairQuery_notePreviewSize);
        keyPairQuery_notePreviewSize = NULL;
    }
    if(keyQuery_connectionPreviewSize){
        free(keyQuery_connectionPreviewSize);
        keyQuery_connectionPreviewSize = NULL;
    }
    if(valueQuery_connectionPreviewSize){
        free(valueQuery_connectionPreviewSize);
        valueQuery_connectionPreviewSize = NULL;
    }
    if(keyPairQuery_connectionPreviewSize){
        keyValuePair_free(keyPairQuery_connectionPreviewSize);
        keyPairQuery_connectionPreviewSize = NULL;
    }
    if(keyQuery_audiencePreviewSize){
        free(keyQuery_audiencePreviewSize);
        keyQuery_audiencePreviewSize = NULL;
    }
    if(valueQuery_audiencePreviewSize){
        free(valueQuery_audiencePreviewSize);
        valueQuery_audiencePreviewSize = NULL;
    }
    if(keyPairQuery_audiencePreviewSize){
        keyValuePair_free(keyPairQuery_audiencePreviewSize);
        keyPairQuery_audiencePreviewSize = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Leave Album
//
//  Allows a user to leave an album (they are no longer considered a participant). The album creator cannot leave their own albums.
//
sirqul_response_t*
AlbumAPI_leaveAlbum(apiClient_t *apiClient, double version, long albumId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/album/user/leave");



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
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
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
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Album
//
// Deletes an Album
//
sirqul_response_t*
AlbumAPI_removeAlbum(apiClient_t *apiClient, double version, long albumId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/album/delete");



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
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
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
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Remove Album Users
//
// Remove participants of an album.
//
sirqul_response_t*
AlbumAPI_removeAlbumUsers(apiClient_t *apiClient, double version, long albumId, int *removeFriendGroup, char *deviceId, long accountId, char *connections, char *connectionGroups)
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
    char *localVarPath = strdup("/api/{version}/album/user/delete");



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
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
    }

    // query parameters
    char *keyQuery_connections = NULL;
    char * valueQuery_connections = NULL;
    keyValuePair_t *keyPairQuery_connections = 0;
    if (connections)
    {
        keyQuery_connections = strdup("connections");
        valueQuery_connections = strdup((connections));
        keyPairQuery_connections = keyValuePair_create(keyQuery_connections, valueQuery_connections);
        list_addElement(localVarQueryParameters,keyPairQuery_connections);
    }

    // query parameters
    char *keyQuery_connectionGroups = NULL;
    char * valueQuery_connectionGroups = NULL;
    keyValuePair_t *keyPairQuery_connectionGroups = 0;
    if (connectionGroups)
    {
        keyQuery_connectionGroups = strdup("connectionGroups");
        valueQuery_connectionGroups = strdup((connectionGroups));
        keyPairQuery_connectionGroups = keyValuePair_create(keyQuery_connectionGroups, valueQuery_connectionGroups);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroups);
    }

    // query parameters
    char *keyQuery_removeFriendGroup = NULL;
    char * valueQuery_removeFriendGroup = NULL;
    keyValuePair_t *keyPairQuery_removeFriendGroup = 0;
    if (removeFriendGroup)
    {
        keyQuery_removeFriendGroup = strdup("removeFriendGroup");
        valueQuery_removeFriendGroup = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeFriendGroup, MAX_NUMBER_LENGTH, "%d", *removeFriendGroup);
        keyPairQuery_removeFriendGroup = keyValuePair_create(keyQuery_removeFriendGroup, valueQuery_removeFriendGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_removeFriendGroup);
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
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_connections){
        free(keyQuery_connections);
        keyQuery_connections = NULL;
    }
    if(valueQuery_connections){
        free(valueQuery_connections);
        valueQuery_connections = NULL;
    }
    if(keyPairQuery_connections){
        keyValuePair_free(keyPairQuery_connections);
        keyPairQuery_connections = NULL;
    }
    if(keyQuery_connectionGroups){
        free(keyQuery_connectionGroups);
        keyQuery_connectionGroups = NULL;
    }
    if(valueQuery_connectionGroups){
        free(valueQuery_connectionGroups);
        valueQuery_connectionGroups = NULL;
    }
    if(keyPairQuery_connectionGroups){
        keyValuePair_free(keyPairQuery_connectionGroups);
        keyPairQuery_connectionGroups = NULL;
    }
    if(keyQuery_removeFriendGroup){
        free(keyQuery_removeFriendGroup);
        keyQuery_removeFriendGroup = NULL;
    }
    if(valueQuery_removeFriendGroup){
        free(valueQuery_removeFriendGroup);
        valueQuery_removeFriendGroup = NULL;
    }
    if(keyPairQuery_removeFriendGroup){
        keyValuePair_free(keyPairQuery_removeFriendGroup);
        keyPairQuery_removeFriendGroup = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Albums
//
// Searches on Albums.
//
list_t*
AlbumAPI_searchAlbums(apiClient_t *apiClient, double version, char *filter, long albumTypeId, char *subType, int *includeInactive, char *sortField, int *descending, int *start, int *limit, double range, int *includeLiked, int *includeFavorited, int *includePermissions, int *likePreviewSize, int *assetPreviewSize, int *notePreviewSize, int *connectionPreviewSize, int *audiencePreviewSize, char *deviceId, long accountId, long connectionAccountId, long ownerId, char *albumIds, char *excludeAlbumIds, long mediaId, char *keyword, char *albumType, int *limitPerAlbumType, long dateCreated, long updatedSince, long updatedBefore, long createdSince, long createdBefore, long startedSince, long startedBefore, long endedSince, long endedBefore, double latitude, double longitude, char *appKey, char *categoryIds, char *categoryFilterIds, char *audienceIds, char *excludeAudienceIds, int *includeCompletable, int *includeRating, char *searchMode, int *stackSearch, int *stackWindowSize, int *minStackPerPage, char *stackPaginationIdentifier, int *stackDetails, long flagCountMinimum, int *removeFlaggedContent, int *verifiedFilter, char *linkedObjectType, long linkedObjectId, long orderAudienceId, int *ignoreDefaultAppFilter, char *searchExpression, int *generateAlbums)
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
    char *localVarPath = strdup("/api/{version}/album/search");



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
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
    }

    // query parameters
    char *keyQuery_ownerId = NULL;
    char * valueQuery_ownerId ;
    keyValuePair_t *keyPairQuery_ownerId = 0;
    {
        keyQuery_ownerId = strdup("ownerId");
        valueQuery_ownerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ownerId, MAX_NUMBER_LENGTH_LONG, "%d", ownerId);
        keyPairQuery_ownerId = keyValuePair_create(keyQuery_ownerId, valueQuery_ownerId);
        list_addElement(localVarQueryParameters,keyPairQuery_ownerId);
    }

    // query parameters
    char *keyQuery_albumIds = NULL;
    char * valueQuery_albumIds = NULL;
    keyValuePair_t *keyPairQuery_albumIds = 0;
    if (albumIds)
    {
        keyQuery_albumIds = strdup("albumIds");
        valueQuery_albumIds = strdup((albumIds));
        keyPairQuery_albumIds = keyValuePair_create(keyQuery_albumIds, valueQuery_albumIds);
        list_addElement(localVarQueryParameters,keyPairQuery_albumIds);
    }

    // query parameters
    char *keyQuery_excludeAlbumIds = NULL;
    char * valueQuery_excludeAlbumIds = NULL;
    keyValuePair_t *keyPairQuery_excludeAlbumIds = 0;
    if (excludeAlbumIds)
    {
        keyQuery_excludeAlbumIds = strdup("excludeAlbumIds");
        valueQuery_excludeAlbumIds = strdup((excludeAlbumIds));
        keyPairQuery_excludeAlbumIds = keyValuePair_create(keyQuery_excludeAlbumIds, valueQuery_excludeAlbumIds);
        list_addElement(localVarQueryParameters,keyPairQuery_excludeAlbumIds);
    }

    // query parameters
    char *keyQuery_mediaId = NULL;
    char * valueQuery_mediaId ;
    keyValuePair_t *keyPairQuery_mediaId = 0;
    {
        keyQuery_mediaId = strdup("mediaId");
        valueQuery_mediaId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_mediaId, MAX_NUMBER_LENGTH_LONG, "%d", mediaId);
        keyPairQuery_mediaId = keyValuePair_create(keyQuery_mediaId, valueQuery_mediaId);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaId);
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
    char *keyQuery_filter = NULL;
    char * valueQuery_filter = NULL;
    keyValuePair_t *keyPairQuery_filter = 0;
    if (filter)
    {
        keyQuery_filter = strdup("filter");
        valueQuery_filter = strdup((filter));
        keyPairQuery_filter = keyValuePair_create(keyQuery_filter, valueQuery_filter);
        list_addElement(localVarQueryParameters,keyPairQuery_filter);
    }

    // query parameters
    char *keyQuery_albumType = NULL;
    char * valueQuery_albumType = NULL;
    keyValuePair_t *keyPairQuery_albumType = 0;
    if (albumType)
    {
        keyQuery_albumType = strdup("albumType");
        valueQuery_albumType = strdup((albumType));
        keyPairQuery_albumType = keyValuePair_create(keyQuery_albumType, valueQuery_albumType);
        list_addElement(localVarQueryParameters,keyPairQuery_albumType);
    }

    // query parameters
    char *keyQuery_albumTypeId = NULL;
    char * valueQuery_albumTypeId ;
    keyValuePair_t *keyPairQuery_albumTypeId = 0;
    {
        keyQuery_albumTypeId = strdup("albumTypeId");
        valueQuery_albumTypeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumTypeId, MAX_NUMBER_LENGTH_LONG, "%d", albumTypeId);
        keyPairQuery_albumTypeId = keyValuePair_create(keyQuery_albumTypeId, valueQuery_albumTypeId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumTypeId);
    }

    // query parameters
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
    }

    // query parameters
    char *keyQuery_includeInactive = NULL;
    char * valueQuery_includeInactive = NULL;
    keyValuePair_t *keyPairQuery_includeInactive = 0;
    if (includeInactive)
    {
        keyQuery_includeInactive = strdup("includeInactive");
        valueQuery_includeInactive = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeInactive, MAX_NUMBER_LENGTH, "%d", *includeInactive);
        keyPairQuery_includeInactive = keyValuePair_create(keyQuery_includeInactive, valueQuery_includeInactive);
        list_addElement(localVarQueryParameters,keyPairQuery_includeInactive);
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
    char *keyQuery_limitPerAlbumType = NULL;
    char * valueQuery_limitPerAlbumType = NULL;
    keyValuePair_t *keyPairQuery_limitPerAlbumType = 0;
    if (limitPerAlbumType)
    {
        keyQuery_limitPerAlbumType = strdup("limitPerAlbumType");
        valueQuery_limitPerAlbumType = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limitPerAlbumType, MAX_NUMBER_LENGTH, "%d", *limitPerAlbumType);
        keyPairQuery_limitPerAlbumType = keyValuePair_create(keyQuery_limitPerAlbumType, valueQuery_limitPerAlbumType);
        list_addElement(localVarQueryParameters,keyPairQuery_limitPerAlbumType);
    }

    // query parameters
    char *keyQuery_dateCreated = NULL;
    char * valueQuery_dateCreated ;
    keyValuePair_t *keyPairQuery_dateCreated = 0;
    {
        keyQuery_dateCreated = strdup("dateCreated");
        valueQuery_dateCreated = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_dateCreated, MAX_NUMBER_LENGTH_LONG, "%d", dateCreated);
        keyPairQuery_dateCreated = keyValuePair_create(keyQuery_dateCreated, valueQuery_dateCreated);
        list_addElement(localVarQueryParameters,keyPairQuery_dateCreated);
    }

    // query parameters
    char *keyQuery_updatedSince = NULL;
    char * valueQuery_updatedSince ;
    keyValuePair_t *keyPairQuery_updatedSince = 0;
    {
        keyQuery_updatedSince = strdup("updatedSince");
        valueQuery_updatedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_updatedSince, MAX_NUMBER_LENGTH_LONG, "%d", updatedSince);
        keyPairQuery_updatedSince = keyValuePair_create(keyQuery_updatedSince, valueQuery_updatedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_updatedSince);
    }

    // query parameters
    char *keyQuery_updatedBefore = NULL;
    char * valueQuery_updatedBefore ;
    keyValuePair_t *keyPairQuery_updatedBefore = 0;
    {
        keyQuery_updatedBefore = strdup("updatedBefore");
        valueQuery_updatedBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_updatedBefore, MAX_NUMBER_LENGTH_LONG, "%d", updatedBefore);
        keyPairQuery_updatedBefore = keyValuePair_create(keyQuery_updatedBefore, valueQuery_updatedBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_updatedBefore);
    }

    // query parameters
    char *keyQuery_createdSince = NULL;
    char * valueQuery_createdSince ;
    keyValuePair_t *keyPairQuery_createdSince = 0;
    {
        keyQuery_createdSince = strdup("createdSince");
        valueQuery_createdSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_createdSince, MAX_NUMBER_LENGTH_LONG, "%d", createdSince);
        keyPairQuery_createdSince = keyValuePair_create(keyQuery_createdSince, valueQuery_createdSince);
        list_addElement(localVarQueryParameters,keyPairQuery_createdSince);
    }

    // query parameters
    char *keyQuery_createdBefore = NULL;
    char * valueQuery_createdBefore ;
    keyValuePair_t *keyPairQuery_createdBefore = 0;
    {
        keyQuery_createdBefore = strdup("createdBefore");
        valueQuery_createdBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_createdBefore, MAX_NUMBER_LENGTH_LONG, "%d", createdBefore);
        keyPairQuery_createdBefore = keyValuePair_create(keyQuery_createdBefore, valueQuery_createdBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_createdBefore);
    }

    // query parameters
    char *keyQuery_startedSince = NULL;
    char * valueQuery_startedSince ;
    keyValuePair_t *keyPairQuery_startedSince = 0;
    {
        keyQuery_startedSince = strdup("startedSince");
        valueQuery_startedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startedSince, MAX_NUMBER_LENGTH_LONG, "%d", startedSince);
        keyPairQuery_startedSince = keyValuePair_create(keyQuery_startedSince, valueQuery_startedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_startedSince);
    }

    // query parameters
    char *keyQuery_startedBefore = NULL;
    char * valueQuery_startedBefore ;
    keyValuePair_t *keyPairQuery_startedBefore = 0;
    {
        keyQuery_startedBefore = strdup("startedBefore");
        valueQuery_startedBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startedBefore, MAX_NUMBER_LENGTH_LONG, "%d", startedBefore);
        keyPairQuery_startedBefore = keyValuePair_create(keyQuery_startedBefore, valueQuery_startedBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_startedBefore);
    }

    // query parameters
    char *keyQuery_endedSince = NULL;
    char * valueQuery_endedSince ;
    keyValuePair_t *keyPairQuery_endedSince = 0;
    {
        keyQuery_endedSince = strdup("endedSince");
        valueQuery_endedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endedSince, MAX_NUMBER_LENGTH_LONG, "%d", endedSince);
        keyPairQuery_endedSince = keyValuePair_create(keyQuery_endedSince, valueQuery_endedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_endedSince);
    }

    // query parameters
    char *keyQuery_endedBefore = NULL;
    char * valueQuery_endedBefore ;
    keyValuePair_t *keyPairQuery_endedBefore = 0;
    {
        keyQuery_endedBefore = strdup("endedBefore");
        valueQuery_endedBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endedBefore, MAX_NUMBER_LENGTH_LONG, "%d", endedBefore);
        keyPairQuery_endedBefore = keyValuePair_create(keyQuery_endedBefore, valueQuery_endedBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_endedBefore);
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
    char *keyQuery_categoryFilterIds = NULL;
    char * valueQuery_categoryFilterIds = NULL;
    keyValuePair_t *keyPairQuery_categoryFilterIds = 0;
    if (categoryFilterIds)
    {
        keyQuery_categoryFilterIds = strdup("categoryFilterIds");
        valueQuery_categoryFilterIds = strdup((categoryFilterIds));
        keyPairQuery_categoryFilterIds = keyValuePair_create(keyQuery_categoryFilterIds, valueQuery_categoryFilterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryFilterIds);
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
    char *keyQuery_excludeAudienceIds = NULL;
    char * valueQuery_excludeAudienceIds = NULL;
    keyValuePair_t *keyPairQuery_excludeAudienceIds = 0;
    if (excludeAudienceIds)
    {
        keyQuery_excludeAudienceIds = strdup("excludeAudienceIds");
        valueQuery_excludeAudienceIds = strdup((excludeAudienceIds));
        keyPairQuery_excludeAudienceIds = keyValuePair_create(keyQuery_excludeAudienceIds, valueQuery_excludeAudienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_excludeAudienceIds);
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
    char *keyQuery_includeFavorited = NULL;
    char * valueQuery_includeFavorited = NULL;
    keyValuePair_t *keyPairQuery_includeFavorited = 0;
    if (includeFavorited)
    {
        keyQuery_includeFavorited = strdup("includeFavorited");
        valueQuery_includeFavorited = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFavorited, MAX_NUMBER_LENGTH, "%d", *includeFavorited);
        keyPairQuery_includeFavorited = keyValuePair_create(keyQuery_includeFavorited, valueQuery_includeFavorited);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFavorited);
    }

    // query parameters
    char *keyQuery_includePermissions = NULL;
    char * valueQuery_includePermissions = NULL;
    keyValuePair_t *keyPairQuery_includePermissions = 0;
    if (includePermissions)
    {
        keyQuery_includePermissions = strdup("includePermissions");
        valueQuery_includePermissions = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includePermissions, MAX_NUMBER_LENGTH, "%d", *includePermissions);
        keyPairQuery_includePermissions = keyValuePair_create(keyQuery_includePermissions, valueQuery_includePermissions);
        list_addElement(localVarQueryParameters,keyPairQuery_includePermissions);
    }

    // query parameters
    char *keyQuery_includeCompletable = NULL;
    char * valueQuery_includeCompletable = NULL;
    keyValuePair_t *keyPairQuery_includeCompletable = 0;
    if (includeCompletable)
    {
        keyQuery_includeCompletable = strdup("includeCompletable");
        valueQuery_includeCompletable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeCompletable, MAX_NUMBER_LENGTH, "%d", *includeCompletable);
        keyPairQuery_includeCompletable = keyValuePair_create(keyQuery_includeCompletable, valueQuery_includeCompletable);
        list_addElement(localVarQueryParameters,keyPairQuery_includeCompletable);
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

    // query parameters
    char *keyQuery_likePreviewSize = NULL;
    char * valueQuery_likePreviewSize = NULL;
    keyValuePair_t *keyPairQuery_likePreviewSize = 0;
    if (likePreviewSize)
    {
        keyQuery_likePreviewSize = strdup("likePreviewSize");
        valueQuery_likePreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_likePreviewSize, MAX_NUMBER_LENGTH, "%d", *likePreviewSize);
        keyPairQuery_likePreviewSize = keyValuePair_create(keyQuery_likePreviewSize, valueQuery_likePreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_likePreviewSize);
    }

    // query parameters
    char *keyQuery_assetPreviewSize = NULL;
    char * valueQuery_assetPreviewSize = NULL;
    keyValuePair_t *keyPairQuery_assetPreviewSize = 0;
    if (assetPreviewSize)
    {
        keyQuery_assetPreviewSize = strdup("assetPreviewSize");
        valueQuery_assetPreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetPreviewSize, MAX_NUMBER_LENGTH, "%d", *assetPreviewSize);
        keyPairQuery_assetPreviewSize = keyValuePair_create(keyQuery_assetPreviewSize, valueQuery_assetPreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_assetPreviewSize);
    }

    // query parameters
    char *keyQuery_notePreviewSize = NULL;
    char * valueQuery_notePreviewSize = NULL;
    keyValuePair_t *keyPairQuery_notePreviewSize = 0;
    if (notePreviewSize)
    {
        keyQuery_notePreviewSize = strdup("notePreviewSize");
        valueQuery_notePreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_notePreviewSize, MAX_NUMBER_LENGTH, "%d", *notePreviewSize);
        keyPairQuery_notePreviewSize = keyValuePair_create(keyQuery_notePreviewSize, valueQuery_notePreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_notePreviewSize);
    }

    // query parameters
    char *keyQuery_connectionPreviewSize = NULL;
    char * valueQuery_connectionPreviewSize = NULL;
    keyValuePair_t *keyPairQuery_connectionPreviewSize = 0;
    if (connectionPreviewSize)
    {
        keyQuery_connectionPreviewSize = strdup("connectionPreviewSize");
        valueQuery_connectionPreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_connectionPreviewSize, MAX_NUMBER_LENGTH, "%d", *connectionPreviewSize);
        keyPairQuery_connectionPreviewSize = keyValuePair_create(keyQuery_connectionPreviewSize, valueQuery_connectionPreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionPreviewSize);
    }

    // query parameters
    char *keyQuery_audiencePreviewSize = NULL;
    char * valueQuery_audiencePreviewSize = NULL;
    keyValuePair_t *keyPairQuery_audiencePreviewSize = 0;
    if (audiencePreviewSize)
    {
        keyQuery_audiencePreviewSize = strdup("audiencePreviewSize");
        valueQuery_audiencePreviewSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_audiencePreviewSize, MAX_NUMBER_LENGTH, "%d", *audiencePreviewSize);
        keyPairQuery_audiencePreviewSize = keyValuePair_create(keyQuery_audiencePreviewSize, valueQuery_audiencePreviewSize);
        list_addElement(localVarQueryParameters,keyPairQuery_audiencePreviewSize);
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

    // query parameters
    char *keyQuery_stackSearch = NULL;
    char * valueQuery_stackSearch = NULL;
    keyValuePair_t *keyPairQuery_stackSearch = 0;
    if (stackSearch)
    {
        keyQuery_stackSearch = strdup("stackSearch");
        valueQuery_stackSearch = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_stackSearch, MAX_NUMBER_LENGTH, "%d", *stackSearch);
        keyPairQuery_stackSearch = keyValuePair_create(keyQuery_stackSearch, valueQuery_stackSearch);
        list_addElement(localVarQueryParameters,keyPairQuery_stackSearch);
    }

    // query parameters
    char *keyQuery_stackWindowSize = NULL;
    char * valueQuery_stackWindowSize = NULL;
    keyValuePair_t *keyPairQuery_stackWindowSize = 0;
    if (stackWindowSize)
    {
        keyQuery_stackWindowSize = strdup("stackWindowSize");
        valueQuery_stackWindowSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_stackWindowSize, MAX_NUMBER_LENGTH, "%d", *stackWindowSize);
        keyPairQuery_stackWindowSize = keyValuePair_create(keyQuery_stackWindowSize, valueQuery_stackWindowSize);
        list_addElement(localVarQueryParameters,keyPairQuery_stackWindowSize);
    }

    // query parameters
    char *keyQuery_minStackPerPage = NULL;
    char * valueQuery_minStackPerPage = NULL;
    keyValuePair_t *keyPairQuery_minStackPerPage = 0;
    if (minStackPerPage)
    {
        keyQuery_minStackPerPage = strdup("minStackPerPage");
        valueQuery_minStackPerPage = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minStackPerPage, MAX_NUMBER_LENGTH, "%d", *minStackPerPage);
        keyPairQuery_minStackPerPage = keyValuePair_create(keyQuery_minStackPerPage, valueQuery_minStackPerPage);
        list_addElement(localVarQueryParameters,keyPairQuery_minStackPerPage);
    }

    // query parameters
    char *keyQuery_stackPaginationIdentifier = NULL;
    char * valueQuery_stackPaginationIdentifier = NULL;
    keyValuePair_t *keyPairQuery_stackPaginationIdentifier = 0;
    if (stackPaginationIdentifier)
    {
        keyQuery_stackPaginationIdentifier = strdup("stackPaginationIdentifier");
        valueQuery_stackPaginationIdentifier = strdup((stackPaginationIdentifier));
        keyPairQuery_stackPaginationIdentifier = keyValuePair_create(keyQuery_stackPaginationIdentifier, valueQuery_stackPaginationIdentifier);
        list_addElement(localVarQueryParameters,keyPairQuery_stackPaginationIdentifier);
    }

    // query parameters
    char *keyQuery_stackDetails = NULL;
    char * valueQuery_stackDetails = NULL;
    keyValuePair_t *keyPairQuery_stackDetails = 0;
    if (stackDetails)
    {
        keyQuery_stackDetails = strdup("stackDetails");
        valueQuery_stackDetails = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_stackDetails, MAX_NUMBER_LENGTH, "%d", *stackDetails);
        keyPairQuery_stackDetails = keyValuePair_create(keyQuery_stackDetails, valueQuery_stackDetails);
        list_addElement(localVarQueryParameters,keyPairQuery_stackDetails);
    }

    // query parameters
    char *keyQuery_flagCountMinimum = NULL;
    char * valueQuery_flagCountMinimum ;
    keyValuePair_t *keyPairQuery_flagCountMinimum = 0;
    {
        keyQuery_flagCountMinimum = strdup("flagCountMinimum");
        valueQuery_flagCountMinimum = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_flagCountMinimum, MAX_NUMBER_LENGTH_LONG, "%d", flagCountMinimum);
        keyPairQuery_flagCountMinimum = keyValuePair_create(keyQuery_flagCountMinimum, valueQuery_flagCountMinimum);
        list_addElement(localVarQueryParameters,keyPairQuery_flagCountMinimum);
    }

    // query parameters
    char *keyQuery_removeFlaggedContent = NULL;
    char * valueQuery_removeFlaggedContent = NULL;
    keyValuePair_t *keyPairQuery_removeFlaggedContent = 0;
    if (removeFlaggedContent)
    {
        keyQuery_removeFlaggedContent = strdup("removeFlaggedContent");
        valueQuery_removeFlaggedContent = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeFlaggedContent, MAX_NUMBER_LENGTH, "%d", *removeFlaggedContent);
        keyPairQuery_removeFlaggedContent = keyValuePair_create(keyQuery_removeFlaggedContent, valueQuery_removeFlaggedContent);
        list_addElement(localVarQueryParameters,keyPairQuery_removeFlaggedContent);
    }

    // query parameters
    char *keyQuery_verifiedFilter = NULL;
    char * valueQuery_verifiedFilter = NULL;
    keyValuePair_t *keyPairQuery_verifiedFilter = 0;
    if (verifiedFilter)
    {
        keyQuery_verifiedFilter = strdup("verifiedFilter");
        valueQuery_verifiedFilter = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_verifiedFilter, MAX_NUMBER_LENGTH, "%d", *verifiedFilter);
        keyPairQuery_verifiedFilter = keyValuePair_create(keyQuery_verifiedFilter, valueQuery_verifiedFilter);
        list_addElement(localVarQueryParameters,keyPairQuery_verifiedFilter);
    }

    // query parameters
    char *keyQuery_linkedObjectType = NULL;
    char * valueQuery_linkedObjectType = NULL;
    keyValuePair_t *keyPairQuery_linkedObjectType = 0;
    if (linkedObjectType)
    {
        keyQuery_linkedObjectType = strdup("linkedObjectType");
        valueQuery_linkedObjectType = strdup((linkedObjectType));
        keyPairQuery_linkedObjectType = keyValuePair_create(keyQuery_linkedObjectType, valueQuery_linkedObjectType);
        list_addElement(localVarQueryParameters,keyPairQuery_linkedObjectType);
    }

    // query parameters
    char *keyQuery_linkedObjectId = NULL;
    char * valueQuery_linkedObjectId ;
    keyValuePair_t *keyPairQuery_linkedObjectId = 0;
    {
        keyQuery_linkedObjectId = strdup("linkedObjectId");
        valueQuery_linkedObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_linkedObjectId, MAX_NUMBER_LENGTH_LONG, "%d", linkedObjectId);
        keyPairQuery_linkedObjectId = keyValuePair_create(keyQuery_linkedObjectId, valueQuery_linkedObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_linkedObjectId);
    }

    // query parameters
    char *keyQuery_orderAudienceId = NULL;
    char * valueQuery_orderAudienceId ;
    keyValuePair_t *keyPairQuery_orderAudienceId = 0;
    {
        keyQuery_orderAudienceId = strdup("orderAudienceId");
        valueQuery_orderAudienceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_orderAudienceId, MAX_NUMBER_LENGTH_LONG, "%d", orderAudienceId);
        keyPairQuery_orderAudienceId = keyValuePair_create(keyQuery_orderAudienceId, valueQuery_orderAudienceId);
        list_addElement(localVarQueryParameters,keyPairQuery_orderAudienceId);
    }

    // query parameters
    char *keyQuery_ignoreDefaultAppFilter = NULL;
    char * valueQuery_ignoreDefaultAppFilter = NULL;
    keyValuePair_t *keyPairQuery_ignoreDefaultAppFilter = 0;
    if (ignoreDefaultAppFilter)
    {
        keyQuery_ignoreDefaultAppFilter = strdup("ignoreDefaultAppFilter");
        valueQuery_ignoreDefaultAppFilter = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ignoreDefaultAppFilter, MAX_NUMBER_LENGTH, "%d", *ignoreDefaultAppFilter);
        keyPairQuery_ignoreDefaultAppFilter = keyValuePair_create(keyQuery_ignoreDefaultAppFilter, valueQuery_ignoreDefaultAppFilter);
        list_addElement(localVarQueryParameters,keyPairQuery_ignoreDefaultAppFilter);
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
    char *keyQuery_generateAlbums = NULL;
    char * valueQuery_generateAlbums = NULL;
    keyValuePair_t *keyPairQuery_generateAlbums = 0;
    if (generateAlbums)
    {
        keyQuery_generateAlbums = strdup("generateAlbums");
        valueQuery_generateAlbums = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_generateAlbums, MAX_NUMBER_LENGTH, "%d", *generateAlbums);
        keyPairQuery_generateAlbums = keyValuePair_create(keyQuery_generateAlbums, valueQuery_generateAlbums);
        list_addElement(localVarQueryParameters,keyPairQuery_generateAlbums);
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
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AlbumAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AlbumAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AlbumAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_ownerId){
        free(keyQuery_ownerId);
        keyQuery_ownerId = NULL;
    }
    if(keyPairQuery_ownerId){
        keyValuePair_free(keyPairQuery_ownerId);
        keyPairQuery_ownerId = NULL;
    }
    if(keyQuery_albumIds){
        free(keyQuery_albumIds);
        keyQuery_albumIds = NULL;
    }
    if(valueQuery_albumIds){
        free(valueQuery_albumIds);
        valueQuery_albumIds = NULL;
    }
    if(keyPairQuery_albumIds){
        keyValuePair_free(keyPairQuery_albumIds);
        keyPairQuery_albumIds = NULL;
    }
    if(keyQuery_excludeAlbumIds){
        free(keyQuery_excludeAlbumIds);
        keyQuery_excludeAlbumIds = NULL;
    }
    if(valueQuery_excludeAlbumIds){
        free(valueQuery_excludeAlbumIds);
        valueQuery_excludeAlbumIds = NULL;
    }
    if(keyPairQuery_excludeAlbumIds){
        keyValuePair_free(keyPairQuery_excludeAlbumIds);
        keyPairQuery_excludeAlbumIds = NULL;
    }
    if(keyQuery_mediaId){
        free(keyQuery_mediaId);
        keyQuery_mediaId = NULL;
    }
    if(keyPairQuery_mediaId){
        keyValuePair_free(keyPairQuery_mediaId);
        keyPairQuery_mediaId = NULL;
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
    if(keyQuery_filter){
        free(keyQuery_filter);
        keyQuery_filter = NULL;
    }
    if(valueQuery_filter){
        free(valueQuery_filter);
        valueQuery_filter = NULL;
    }
    if(keyPairQuery_filter){
        keyValuePair_free(keyPairQuery_filter);
        keyPairQuery_filter = NULL;
    }
    if(keyQuery_albumType){
        free(keyQuery_albumType);
        keyQuery_albumType = NULL;
    }
    if(valueQuery_albumType){
        free(valueQuery_albumType);
        valueQuery_albumType = NULL;
    }
    if(keyPairQuery_albumType){
        keyValuePair_free(keyPairQuery_albumType);
        keyPairQuery_albumType = NULL;
    }
    if(keyQuery_albumTypeId){
        free(keyQuery_albumTypeId);
        keyQuery_albumTypeId = NULL;
    }
    if(keyPairQuery_albumTypeId){
        keyValuePair_free(keyPairQuery_albumTypeId);
        keyPairQuery_albumTypeId = NULL;
    }
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
    }
    if(keyQuery_includeInactive){
        free(keyQuery_includeInactive);
        keyQuery_includeInactive = NULL;
    }
    if(valueQuery_includeInactive){
        free(valueQuery_includeInactive);
        valueQuery_includeInactive = NULL;
    }
    if(keyPairQuery_includeInactive){
        keyValuePair_free(keyPairQuery_includeInactive);
        keyPairQuery_includeInactive = NULL;
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
    if(keyQuery_limitPerAlbumType){
        free(keyQuery_limitPerAlbumType);
        keyQuery_limitPerAlbumType = NULL;
    }
    if(valueQuery_limitPerAlbumType){
        free(valueQuery_limitPerAlbumType);
        valueQuery_limitPerAlbumType = NULL;
    }
    if(keyPairQuery_limitPerAlbumType){
        keyValuePair_free(keyPairQuery_limitPerAlbumType);
        keyPairQuery_limitPerAlbumType = NULL;
    }
    if(keyQuery_dateCreated){
        free(keyQuery_dateCreated);
        keyQuery_dateCreated = NULL;
    }
    if(keyPairQuery_dateCreated){
        keyValuePair_free(keyPairQuery_dateCreated);
        keyPairQuery_dateCreated = NULL;
    }
    if(keyQuery_updatedSince){
        free(keyQuery_updatedSince);
        keyQuery_updatedSince = NULL;
    }
    if(keyPairQuery_updatedSince){
        keyValuePair_free(keyPairQuery_updatedSince);
        keyPairQuery_updatedSince = NULL;
    }
    if(keyQuery_updatedBefore){
        free(keyQuery_updatedBefore);
        keyQuery_updatedBefore = NULL;
    }
    if(keyPairQuery_updatedBefore){
        keyValuePair_free(keyPairQuery_updatedBefore);
        keyPairQuery_updatedBefore = NULL;
    }
    if(keyQuery_createdSince){
        free(keyQuery_createdSince);
        keyQuery_createdSince = NULL;
    }
    if(keyPairQuery_createdSince){
        keyValuePair_free(keyPairQuery_createdSince);
        keyPairQuery_createdSince = NULL;
    }
    if(keyQuery_createdBefore){
        free(keyQuery_createdBefore);
        keyQuery_createdBefore = NULL;
    }
    if(keyPairQuery_createdBefore){
        keyValuePair_free(keyPairQuery_createdBefore);
        keyPairQuery_createdBefore = NULL;
    }
    if(keyQuery_startedSince){
        free(keyQuery_startedSince);
        keyQuery_startedSince = NULL;
    }
    if(keyPairQuery_startedSince){
        keyValuePair_free(keyPairQuery_startedSince);
        keyPairQuery_startedSince = NULL;
    }
    if(keyQuery_startedBefore){
        free(keyQuery_startedBefore);
        keyQuery_startedBefore = NULL;
    }
    if(keyPairQuery_startedBefore){
        keyValuePair_free(keyPairQuery_startedBefore);
        keyPairQuery_startedBefore = NULL;
    }
    if(keyQuery_endedSince){
        free(keyQuery_endedSince);
        keyQuery_endedSince = NULL;
    }
    if(keyPairQuery_endedSince){
        keyValuePair_free(keyPairQuery_endedSince);
        keyPairQuery_endedSince = NULL;
    }
    if(keyQuery_endedBefore){
        free(keyQuery_endedBefore);
        keyQuery_endedBefore = NULL;
    }
    if(keyPairQuery_endedBefore){
        keyValuePair_free(keyPairQuery_endedBefore);
        keyPairQuery_endedBefore = NULL;
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
    if(keyQuery_categoryFilterIds){
        free(keyQuery_categoryFilterIds);
        keyQuery_categoryFilterIds = NULL;
    }
    if(valueQuery_categoryFilterIds){
        free(valueQuery_categoryFilterIds);
        valueQuery_categoryFilterIds = NULL;
    }
    if(keyPairQuery_categoryFilterIds){
        keyValuePair_free(keyPairQuery_categoryFilterIds);
        keyPairQuery_categoryFilterIds = NULL;
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
    if(keyQuery_excludeAudienceIds){
        free(keyQuery_excludeAudienceIds);
        keyQuery_excludeAudienceIds = NULL;
    }
    if(valueQuery_excludeAudienceIds){
        free(valueQuery_excludeAudienceIds);
        valueQuery_excludeAudienceIds = NULL;
    }
    if(keyPairQuery_excludeAudienceIds){
        keyValuePair_free(keyPairQuery_excludeAudienceIds);
        keyPairQuery_excludeAudienceIds = NULL;
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
    if(keyQuery_includeFavorited){
        free(keyQuery_includeFavorited);
        keyQuery_includeFavorited = NULL;
    }
    if(valueQuery_includeFavorited){
        free(valueQuery_includeFavorited);
        valueQuery_includeFavorited = NULL;
    }
    if(keyPairQuery_includeFavorited){
        keyValuePair_free(keyPairQuery_includeFavorited);
        keyPairQuery_includeFavorited = NULL;
    }
    if(keyQuery_includePermissions){
        free(keyQuery_includePermissions);
        keyQuery_includePermissions = NULL;
    }
    if(valueQuery_includePermissions){
        free(valueQuery_includePermissions);
        valueQuery_includePermissions = NULL;
    }
    if(keyPairQuery_includePermissions){
        keyValuePair_free(keyPairQuery_includePermissions);
        keyPairQuery_includePermissions = NULL;
    }
    if(keyQuery_includeCompletable){
        free(keyQuery_includeCompletable);
        keyQuery_includeCompletable = NULL;
    }
    if(valueQuery_includeCompletable){
        free(valueQuery_includeCompletable);
        valueQuery_includeCompletable = NULL;
    }
    if(keyPairQuery_includeCompletable){
        keyValuePair_free(keyPairQuery_includeCompletable);
        keyPairQuery_includeCompletable = NULL;
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
    if(keyQuery_likePreviewSize){
        free(keyQuery_likePreviewSize);
        keyQuery_likePreviewSize = NULL;
    }
    if(valueQuery_likePreviewSize){
        free(valueQuery_likePreviewSize);
        valueQuery_likePreviewSize = NULL;
    }
    if(keyPairQuery_likePreviewSize){
        keyValuePair_free(keyPairQuery_likePreviewSize);
        keyPairQuery_likePreviewSize = NULL;
    }
    if(keyQuery_assetPreviewSize){
        free(keyQuery_assetPreviewSize);
        keyQuery_assetPreviewSize = NULL;
    }
    if(valueQuery_assetPreviewSize){
        free(valueQuery_assetPreviewSize);
        valueQuery_assetPreviewSize = NULL;
    }
    if(keyPairQuery_assetPreviewSize){
        keyValuePair_free(keyPairQuery_assetPreviewSize);
        keyPairQuery_assetPreviewSize = NULL;
    }
    if(keyQuery_notePreviewSize){
        free(keyQuery_notePreviewSize);
        keyQuery_notePreviewSize = NULL;
    }
    if(valueQuery_notePreviewSize){
        free(valueQuery_notePreviewSize);
        valueQuery_notePreviewSize = NULL;
    }
    if(keyPairQuery_notePreviewSize){
        keyValuePair_free(keyPairQuery_notePreviewSize);
        keyPairQuery_notePreviewSize = NULL;
    }
    if(keyQuery_connectionPreviewSize){
        free(keyQuery_connectionPreviewSize);
        keyQuery_connectionPreviewSize = NULL;
    }
    if(valueQuery_connectionPreviewSize){
        free(valueQuery_connectionPreviewSize);
        valueQuery_connectionPreviewSize = NULL;
    }
    if(keyPairQuery_connectionPreviewSize){
        keyValuePair_free(keyPairQuery_connectionPreviewSize);
        keyPairQuery_connectionPreviewSize = NULL;
    }
    if(keyQuery_audiencePreviewSize){
        free(keyQuery_audiencePreviewSize);
        keyQuery_audiencePreviewSize = NULL;
    }
    if(valueQuery_audiencePreviewSize){
        free(valueQuery_audiencePreviewSize);
        valueQuery_audiencePreviewSize = NULL;
    }
    if(keyPairQuery_audiencePreviewSize){
        keyValuePair_free(keyPairQuery_audiencePreviewSize);
        keyPairQuery_audiencePreviewSize = NULL;
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
    if(keyQuery_stackSearch){
        free(keyQuery_stackSearch);
        keyQuery_stackSearch = NULL;
    }
    if(valueQuery_stackSearch){
        free(valueQuery_stackSearch);
        valueQuery_stackSearch = NULL;
    }
    if(keyPairQuery_stackSearch){
        keyValuePair_free(keyPairQuery_stackSearch);
        keyPairQuery_stackSearch = NULL;
    }
    if(keyQuery_stackWindowSize){
        free(keyQuery_stackWindowSize);
        keyQuery_stackWindowSize = NULL;
    }
    if(valueQuery_stackWindowSize){
        free(valueQuery_stackWindowSize);
        valueQuery_stackWindowSize = NULL;
    }
    if(keyPairQuery_stackWindowSize){
        keyValuePair_free(keyPairQuery_stackWindowSize);
        keyPairQuery_stackWindowSize = NULL;
    }
    if(keyQuery_minStackPerPage){
        free(keyQuery_minStackPerPage);
        keyQuery_minStackPerPage = NULL;
    }
    if(valueQuery_minStackPerPage){
        free(valueQuery_minStackPerPage);
        valueQuery_minStackPerPage = NULL;
    }
    if(keyPairQuery_minStackPerPage){
        keyValuePair_free(keyPairQuery_minStackPerPage);
        keyPairQuery_minStackPerPage = NULL;
    }
    if(keyQuery_stackPaginationIdentifier){
        free(keyQuery_stackPaginationIdentifier);
        keyQuery_stackPaginationIdentifier = NULL;
    }
    if(valueQuery_stackPaginationIdentifier){
        free(valueQuery_stackPaginationIdentifier);
        valueQuery_stackPaginationIdentifier = NULL;
    }
    if(keyPairQuery_stackPaginationIdentifier){
        keyValuePair_free(keyPairQuery_stackPaginationIdentifier);
        keyPairQuery_stackPaginationIdentifier = NULL;
    }
    if(keyQuery_stackDetails){
        free(keyQuery_stackDetails);
        keyQuery_stackDetails = NULL;
    }
    if(valueQuery_stackDetails){
        free(valueQuery_stackDetails);
        valueQuery_stackDetails = NULL;
    }
    if(keyPairQuery_stackDetails){
        keyValuePair_free(keyPairQuery_stackDetails);
        keyPairQuery_stackDetails = NULL;
    }
    if(keyQuery_flagCountMinimum){
        free(keyQuery_flagCountMinimum);
        keyQuery_flagCountMinimum = NULL;
    }
    if(keyPairQuery_flagCountMinimum){
        keyValuePair_free(keyPairQuery_flagCountMinimum);
        keyPairQuery_flagCountMinimum = NULL;
    }
    if(keyQuery_removeFlaggedContent){
        free(keyQuery_removeFlaggedContent);
        keyQuery_removeFlaggedContent = NULL;
    }
    if(valueQuery_removeFlaggedContent){
        free(valueQuery_removeFlaggedContent);
        valueQuery_removeFlaggedContent = NULL;
    }
    if(keyPairQuery_removeFlaggedContent){
        keyValuePair_free(keyPairQuery_removeFlaggedContent);
        keyPairQuery_removeFlaggedContent = NULL;
    }
    if(keyQuery_verifiedFilter){
        free(keyQuery_verifiedFilter);
        keyQuery_verifiedFilter = NULL;
    }
    if(valueQuery_verifiedFilter){
        free(valueQuery_verifiedFilter);
        valueQuery_verifiedFilter = NULL;
    }
    if(keyPairQuery_verifiedFilter){
        keyValuePair_free(keyPairQuery_verifiedFilter);
        keyPairQuery_verifiedFilter = NULL;
    }
    if(keyQuery_linkedObjectType){
        free(keyQuery_linkedObjectType);
        keyQuery_linkedObjectType = NULL;
    }
    if(valueQuery_linkedObjectType){
        free(valueQuery_linkedObjectType);
        valueQuery_linkedObjectType = NULL;
    }
    if(keyPairQuery_linkedObjectType){
        keyValuePair_free(keyPairQuery_linkedObjectType);
        keyPairQuery_linkedObjectType = NULL;
    }
    if(keyQuery_linkedObjectId){
        free(keyQuery_linkedObjectId);
        keyQuery_linkedObjectId = NULL;
    }
    if(keyPairQuery_linkedObjectId){
        keyValuePair_free(keyPairQuery_linkedObjectId);
        keyPairQuery_linkedObjectId = NULL;
    }
    if(keyQuery_orderAudienceId){
        free(keyQuery_orderAudienceId);
        keyQuery_orderAudienceId = NULL;
    }
    if(keyPairQuery_orderAudienceId){
        keyValuePair_free(keyPairQuery_orderAudienceId);
        keyPairQuery_orderAudienceId = NULL;
    }
    if(keyQuery_ignoreDefaultAppFilter){
        free(keyQuery_ignoreDefaultAppFilter);
        keyQuery_ignoreDefaultAppFilter = NULL;
    }
    if(valueQuery_ignoreDefaultAppFilter){
        free(valueQuery_ignoreDefaultAppFilter);
        valueQuery_ignoreDefaultAppFilter = NULL;
    }
    if(keyPairQuery_ignoreDefaultAppFilter){
        keyValuePair_free(keyPairQuery_ignoreDefaultAppFilter);
        keyPairQuery_ignoreDefaultAppFilter = NULL;
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
    if(keyQuery_generateAlbums){
        free(keyQuery_generateAlbums);
        keyQuery_generateAlbums = NULL;
    }
    if(valueQuery_generateAlbums){
        free(valueQuery_generateAlbums);
        valueQuery_generateAlbums = NULL;
    }
    if(keyPairQuery_generateAlbums){
        keyValuePair_free(keyPairQuery_generateAlbums);
        keyPairQuery_generateAlbums = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Album
//
// Update an Album.
//
album_response_t*
AlbumAPI_updateAlbumCollection(apiClient_t *apiClient, double version, long albumId, char *deviceId, long accountId, char *assetsToAdd, char *assetsToRemove, long assetId, binary_t* media, char *mediaURL, int *active, char *title, long startDate, long endDate, char *tags, char *description, char *albumType, long albumTypeId, char *subType, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, double latitude, double longitude, char *locationDescription, sirqul_iot_platform_updateAlbumCollection_visibility_e visibility, char *cellPhone, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *fullAddress, int *anonymous, char *metaData, char *categoryIds, char *categoryFilterIds, char *audienceIds, char *audienceIdsToAdd, char *audienceIdsToRemove, int *includeAllAppUsersAsMembers, int *includeAudiencesAsMembers, char *audienceOperator, char *linkedObjectType, long linkedObjectId, int *indexNow)
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
    char *localVarPath = strdup("/api/{version}/album/update");



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
    char *keyQuery_albumId = NULL;
    char * valueQuery_albumId ;
    keyValuePair_t *keyPairQuery_albumId = 0;
    {
        keyQuery_albumId = strdup("albumId");
        valueQuery_albumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId, MAX_NUMBER_LENGTH_LONG, "%d", albumId);
        keyPairQuery_albumId = keyValuePair_create(keyQuery_albumId, valueQuery_albumId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId);
    }

    // query parameters
    char *keyQuery_assetsToAdd = NULL;
    char * valueQuery_assetsToAdd = NULL;
    keyValuePair_t *keyPairQuery_assetsToAdd = 0;
    if (assetsToAdd)
    {
        keyQuery_assetsToAdd = strdup("assetsToAdd");
        valueQuery_assetsToAdd = strdup((assetsToAdd));
        keyPairQuery_assetsToAdd = keyValuePair_create(keyQuery_assetsToAdd, valueQuery_assetsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_assetsToAdd);
    }

    // query parameters
    char *keyQuery_assetsToRemove = NULL;
    char * valueQuery_assetsToRemove = NULL;
    keyValuePair_t *keyPairQuery_assetsToRemove = 0;
    if (assetsToRemove)
    {
        keyQuery_assetsToRemove = strdup("assetsToRemove");
        valueQuery_assetsToRemove = strdup((assetsToRemove));
        keyPairQuery_assetsToRemove = keyValuePair_create(keyQuery_assetsToRemove, valueQuery_assetsToRemove);
        list_addElement(localVarQueryParameters,keyPairQuery_assetsToRemove);
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
    char *keyQuery_media = NULL;
    binary_t* valueQuery_media ;
    keyValuePair_t *keyPairQuery_media = 0;
    if (media)
    {
        keyQuery_media = strdup("media");
        valueQuery_media = (media);
        keyPairQuery_media = keyValuePair_create(keyQuery_media, &valueQuery_media);
        list_addElement(localVarQueryParameters,keyPairQuery_media);
    }

    // query parameters
    char *keyQuery_mediaURL = NULL;
    char * valueQuery_mediaURL = NULL;
    keyValuePair_t *keyPairQuery_mediaURL = 0;
    if (mediaURL)
    {
        keyQuery_mediaURL = strdup("mediaURL");
        valueQuery_mediaURL = strdup((mediaURL));
        keyPairQuery_mediaURL = keyValuePair_create(keyQuery_mediaURL, valueQuery_mediaURL);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaURL);
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
    char *keyQuery_albumType = NULL;
    char * valueQuery_albumType = NULL;
    keyValuePair_t *keyPairQuery_albumType = 0;
    if (albumType)
    {
        keyQuery_albumType = strdup("albumType");
        valueQuery_albumType = strdup((albumType));
        keyPairQuery_albumType = keyValuePair_create(keyQuery_albumType, valueQuery_albumType);
        list_addElement(localVarQueryParameters,keyPairQuery_albumType);
    }

    // query parameters
    char *keyQuery_albumTypeId = NULL;
    char * valueQuery_albumTypeId ;
    keyValuePair_t *keyPairQuery_albumTypeId = 0;
    {
        keyQuery_albumTypeId = strdup("albumTypeId");
        valueQuery_albumTypeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumTypeId, MAX_NUMBER_LENGTH_LONG, "%d", albumTypeId);
        keyPairQuery_albumTypeId = keyValuePair_create(keyQuery_albumTypeId, valueQuery_albumTypeId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumTypeId);
    }

    // query parameters
    char *keyQuery_subType = NULL;
    char * valueQuery_subType = NULL;
    keyValuePair_t *keyPairQuery_subType = 0;
    if (subType)
    {
        keyQuery_subType = strdup("subType");
        valueQuery_subType = strdup((subType));
        keyPairQuery_subType = keyValuePair_create(keyQuery_subType, valueQuery_subType);
        list_addElement(localVarQueryParameters,keyPairQuery_subType);
    }

    // query parameters
    char *keyQuery_publicRead = NULL;
    char * valueQuery_publicRead = NULL;
    keyValuePair_t *keyPairQuery_publicRead = 0;
    if (publicRead)
    {
        keyQuery_publicRead = strdup("publicRead");
        valueQuery_publicRead = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicRead, MAX_NUMBER_LENGTH, "%d", *publicRead);
        keyPairQuery_publicRead = keyValuePair_create(keyQuery_publicRead, valueQuery_publicRead);
        list_addElement(localVarQueryParameters,keyPairQuery_publicRead);
    }

    // query parameters
    char *keyQuery_publicWrite = NULL;
    char * valueQuery_publicWrite = NULL;
    keyValuePair_t *keyPairQuery_publicWrite = 0;
    if (publicWrite)
    {
        keyQuery_publicWrite = strdup("publicWrite");
        valueQuery_publicWrite = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicWrite, MAX_NUMBER_LENGTH, "%d", *publicWrite);
        keyPairQuery_publicWrite = keyValuePair_create(keyQuery_publicWrite, valueQuery_publicWrite);
        list_addElement(localVarQueryParameters,keyPairQuery_publicWrite);
    }

    // query parameters
    char *keyQuery_publicDelete = NULL;
    char * valueQuery_publicDelete = NULL;
    keyValuePair_t *keyPairQuery_publicDelete = 0;
    if (publicDelete)
    {
        keyQuery_publicDelete = strdup("publicDelete");
        valueQuery_publicDelete = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicDelete, MAX_NUMBER_LENGTH, "%d", *publicDelete);
        keyPairQuery_publicDelete = keyValuePair_create(keyQuery_publicDelete, valueQuery_publicDelete);
        list_addElement(localVarQueryParameters,keyPairQuery_publicDelete);
    }

    // query parameters
    char *keyQuery_publicAdd = NULL;
    char * valueQuery_publicAdd = NULL;
    keyValuePair_t *keyPairQuery_publicAdd = 0;
    if (publicAdd)
    {
        keyQuery_publicAdd = strdup("publicAdd");
        valueQuery_publicAdd = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_publicAdd, MAX_NUMBER_LENGTH, "%d", *publicAdd);
        keyPairQuery_publicAdd = keyValuePair_create(keyQuery_publicAdd, valueQuery_publicAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_publicAdd);
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
    char *keyQuery_locationDescription = NULL;
    char * valueQuery_locationDescription = NULL;
    keyValuePair_t *keyPairQuery_locationDescription = 0;
    if (locationDescription)
    {
        keyQuery_locationDescription = strdup("locationDescription");
        valueQuery_locationDescription = strdup((locationDescription));
        keyPairQuery_locationDescription = keyValuePair_create(keyQuery_locationDescription, valueQuery_locationDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_locationDescription);
    }

    // query parameters
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_updateAlbumCollection_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(updateAlbumCollection_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_cellPhone = NULL;
    char * valueQuery_cellPhone = NULL;
    keyValuePair_t *keyPairQuery_cellPhone = 0;
    if (cellPhone)
    {
        keyQuery_cellPhone = strdup("cellPhone");
        valueQuery_cellPhone = strdup((cellPhone));
        keyPairQuery_cellPhone = keyValuePair_create(keyQuery_cellPhone, valueQuery_cellPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhone);
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
    char *keyQuery_fullAddress = NULL;
    char * valueQuery_fullAddress = NULL;
    keyValuePair_t *keyPairQuery_fullAddress = 0;
    if (fullAddress)
    {
        keyQuery_fullAddress = strdup("fullAddress");
        valueQuery_fullAddress = strdup((fullAddress));
        keyPairQuery_fullAddress = keyValuePair_create(keyQuery_fullAddress, valueQuery_fullAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_fullAddress);
    }

    // query parameters
    char *keyQuery_anonymous = NULL;
    char * valueQuery_anonymous = NULL;
    keyValuePair_t *keyPairQuery_anonymous = 0;
    if (anonymous)
    {
        keyQuery_anonymous = strdup("anonymous");
        valueQuery_anonymous = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_anonymous, MAX_NUMBER_LENGTH, "%d", *anonymous);
        keyPairQuery_anonymous = keyValuePair_create(keyQuery_anonymous, valueQuery_anonymous);
        list_addElement(localVarQueryParameters,keyPairQuery_anonymous);
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
    char *keyQuery_categoryFilterIds = NULL;
    char * valueQuery_categoryFilterIds = NULL;
    keyValuePair_t *keyPairQuery_categoryFilterIds = 0;
    if (categoryFilterIds)
    {
        keyQuery_categoryFilterIds = strdup("categoryFilterIds");
        valueQuery_categoryFilterIds = strdup((categoryFilterIds));
        keyPairQuery_categoryFilterIds = keyValuePair_create(keyQuery_categoryFilterIds, valueQuery_categoryFilterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryFilterIds);
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
    char *keyQuery_includeAllAppUsersAsMembers = NULL;
    char * valueQuery_includeAllAppUsersAsMembers = NULL;
    keyValuePair_t *keyPairQuery_includeAllAppUsersAsMembers = 0;
    if (includeAllAppUsersAsMembers)
    {
        keyQuery_includeAllAppUsersAsMembers = strdup("includeAllAppUsersAsMembers");
        valueQuery_includeAllAppUsersAsMembers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAllAppUsersAsMembers, MAX_NUMBER_LENGTH, "%d", *includeAllAppUsersAsMembers);
        keyPairQuery_includeAllAppUsersAsMembers = keyValuePair_create(keyQuery_includeAllAppUsersAsMembers, valueQuery_includeAllAppUsersAsMembers);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAllAppUsersAsMembers);
    }

    // query parameters
    char *keyQuery_includeAudiencesAsMembers = NULL;
    char * valueQuery_includeAudiencesAsMembers = NULL;
    keyValuePair_t *keyPairQuery_includeAudiencesAsMembers = 0;
    if (includeAudiencesAsMembers)
    {
        keyQuery_includeAudiencesAsMembers = strdup("includeAudiencesAsMembers");
        valueQuery_includeAudiencesAsMembers = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeAudiencesAsMembers, MAX_NUMBER_LENGTH, "%d", *includeAudiencesAsMembers);
        keyPairQuery_includeAudiencesAsMembers = keyValuePair_create(keyQuery_includeAudiencesAsMembers, valueQuery_includeAudiencesAsMembers);
        list_addElement(localVarQueryParameters,keyPairQuery_includeAudiencesAsMembers);
    }

    // query parameters
    char *keyQuery_audienceOperator = NULL;
    char * valueQuery_audienceOperator = NULL;
    keyValuePair_t *keyPairQuery_audienceOperator = 0;
    if (audienceOperator)
    {
        keyQuery_audienceOperator = strdup("audienceOperator");
        valueQuery_audienceOperator = strdup((audienceOperator));
        keyPairQuery_audienceOperator = keyValuePair_create(keyQuery_audienceOperator, valueQuery_audienceOperator);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceOperator);
    }

    // query parameters
    char *keyQuery_linkedObjectType = NULL;
    char * valueQuery_linkedObjectType = NULL;
    keyValuePair_t *keyPairQuery_linkedObjectType = 0;
    if (linkedObjectType)
    {
        keyQuery_linkedObjectType = strdup("linkedObjectType");
        valueQuery_linkedObjectType = strdup((linkedObjectType));
        keyPairQuery_linkedObjectType = keyValuePair_create(keyQuery_linkedObjectType, valueQuery_linkedObjectType);
        list_addElement(localVarQueryParameters,keyPairQuery_linkedObjectType);
    }

    // query parameters
    char *keyQuery_linkedObjectId = NULL;
    char * valueQuery_linkedObjectId ;
    keyValuePair_t *keyPairQuery_linkedObjectId = 0;
    {
        keyQuery_linkedObjectId = strdup("linkedObjectId");
        valueQuery_linkedObjectId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_linkedObjectId, MAX_NUMBER_LENGTH_LONG, "%d", linkedObjectId);
        keyPairQuery_linkedObjectId = keyValuePair_create(keyQuery_linkedObjectId, valueQuery_linkedObjectId);
        list_addElement(localVarQueryParameters,keyPairQuery_linkedObjectId);
    }

    // query parameters
    char *keyQuery_indexNow = NULL;
    char * valueQuery_indexNow = NULL;
    keyValuePair_t *keyPairQuery_indexNow = 0;
    if (indexNow)
    {
        keyQuery_indexNow = strdup("indexNow");
        valueQuery_indexNow = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_indexNow, MAX_NUMBER_LENGTH, "%d", *indexNow);
        keyPairQuery_indexNow = keyValuePair_create(keyQuery_indexNow, valueQuery_indexNow);
        list_addElement(localVarQueryParameters,keyPairQuery_indexNow);
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
    album_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AlbumAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = album_response_parseFromJSON(AlbumAPIlocalVarJSON);
        cJSON_Delete(AlbumAPIlocalVarJSON);
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
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_assetsToAdd){
        free(keyQuery_assetsToAdd);
        keyQuery_assetsToAdd = NULL;
    }
    if(valueQuery_assetsToAdd){
        free(valueQuery_assetsToAdd);
        valueQuery_assetsToAdd = NULL;
    }
    if(keyPairQuery_assetsToAdd){
        keyValuePair_free(keyPairQuery_assetsToAdd);
        keyPairQuery_assetsToAdd = NULL;
    }
    if(keyQuery_assetsToRemove){
        free(keyQuery_assetsToRemove);
        keyQuery_assetsToRemove = NULL;
    }
    if(valueQuery_assetsToRemove){
        free(valueQuery_assetsToRemove);
        valueQuery_assetsToRemove = NULL;
    }
    if(keyPairQuery_assetsToRemove){
        keyValuePair_free(keyPairQuery_assetsToRemove);
        keyPairQuery_assetsToRemove = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_media){
        free(keyQuery_media);
        keyQuery_media = NULL;
    }
    if(keyPairQuery_media){
        keyValuePair_free(keyPairQuery_media);
        keyPairQuery_media = NULL;
    }
    if(keyQuery_mediaURL){
        free(keyQuery_mediaURL);
        keyQuery_mediaURL = NULL;
    }
    if(valueQuery_mediaURL){
        free(valueQuery_mediaURL);
        valueQuery_mediaURL = NULL;
    }
    if(keyPairQuery_mediaURL){
        keyValuePair_free(keyPairQuery_mediaURL);
        keyPairQuery_mediaURL = NULL;
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
    if(keyQuery_albumType){
        free(keyQuery_albumType);
        keyQuery_albumType = NULL;
    }
    if(valueQuery_albumType){
        free(valueQuery_albumType);
        valueQuery_albumType = NULL;
    }
    if(keyPairQuery_albumType){
        keyValuePair_free(keyPairQuery_albumType);
        keyPairQuery_albumType = NULL;
    }
    if(keyQuery_albumTypeId){
        free(keyQuery_albumTypeId);
        keyQuery_albumTypeId = NULL;
    }
    if(keyPairQuery_albumTypeId){
        keyValuePair_free(keyPairQuery_albumTypeId);
        keyPairQuery_albumTypeId = NULL;
    }
    if(keyQuery_subType){
        free(keyQuery_subType);
        keyQuery_subType = NULL;
    }
    if(valueQuery_subType){
        free(valueQuery_subType);
        valueQuery_subType = NULL;
    }
    if(keyPairQuery_subType){
        keyValuePair_free(keyPairQuery_subType);
        keyPairQuery_subType = NULL;
    }
    if(keyQuery_publicRead){
        free(keyQuery_publicRead);
        keyQuery_publicRead = NULL;
    }
    if(valueQuery_publicRead){
        free(valueQuery_publicRead);
        valueQuery_publicRead = NULL;
    }
    if(keyPairQuery_publicRead){
        keyValuePair_free(keyPairQuery_publicRead);
        keyPairQuery_publicRead = NULL;
    }
    if(keyQuery_publicWrite){
        free(keyQuery_publicWrite);
        keyQuery_publicWrite = NULL;
    }
    if(valueQuery_publicWrite){
        free(valueQuery_publicWrite);
        valueQuery_publicWrite = NULL;
    }
    if(keyPairQuery_publicWrite){
        keyValuePair_free(keyPairQuery_publicWrite);
        keyPairQuery_publicWrite = NULL;
    }
    if(keyQuery_publicDelete){
        free(keyQuery_publicDelete);
        keyQuery_publicDelete = NULL;
    }
    if(valueQuery_publicDelete){
        free(valueQuery_publicDelete);
        valueQuery_publicDelete = NULL;
    }
    if(keyPairQuery_publicDelete){
        keyValuePair_free(keyPairQuery_publicDelete);
        keyPairQuery_publicDelete = NULL;
    }
    if(keyQuery_publicAdd){
        free(keyQuery_publicAdd);
        keyQuery_publicAdd = NULL;
    }
    if(valueQuery_publicAdd){
        free(valueQuery_publicAdd);
        valueQuery_publicAdd = NULL;
    }
    if(keyPairQuery_publicAdd){
        keyValuePair_free(keyPairQuery_publicAdd);
        keyPairQuery_publicAdd = NULL;
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
    if(keyQuery_locationDescription){
        free(keyQuery_locationDescription);
        keyQuery_locationDescription = NULL;
    }
    if(valueQuery_locationDescription){
        free(valueQuery_locationDescription);
        valueQuery_locationDescription = NULL;
    }
    if(keyPairQuery_locationDescription){
        keyValuePair_free(keyPairQuery_locationDescription);
        keyPairQuery_locationDescription = NULL;
    }
    if(keyQuery_visibility){
        free(keyQuery_visibility);
        keyQuery_visibility = NULL;
    }
    if(keyPairQuery_visibility){
        keyValuePair_free(keyPairQuery_visibility);
        keyPairQuery_visibility = NULL;
    }
    if(keyQuery_cellPhone){
        free(keyQuery_cellPhone);
        keyQuery_cellPhone = NULL;
    }
    if(valueQuery_cellPhone){
        free(valueQuery_cellPhone);
        valueQuery_cellPhone = NULL;
    }
    if(keyPairQuery_cellPhone){
        keyValuePair_free(keyPairQuery_cellPhone);
        keyPairQuery_cellPhone = NULL;
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
    if(keyQuery_fullAddress){
        free(keyQuery_fullAddress);
        keyQuery_fullAddress = NULL;
    }
    if(valueQuery_fullAddress){
        free(valueQuery_fullAddress);
        valueQuery_fullAddress = NULL;
    }
    if(keyPairQuery_fullAddress){
        keyValuePair_free(keyPairQuery_fullAddress);
        keyPairQuery_fullAddress = NULL;
    }
    if(keyQuery_anonymous){
        free(keyQuery_anonymous);
        keyQuery_anonymous = NULL;
    }
    if(valueQuery_anonymous){
        free(valueQuery_anonymous);
        valueQuery_anonymous = NULL;
    }
    if(keyPairQuery_anonymous){
        keyValuePair_free(keyPairQuery_anonymous);
        keyPairQuery_anonymous = NULL;
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
    if(keyQuery_categoryFilterIds){
        free(keyQuery_categoryFilterIds);
        keyQuery_categoryFilterIds = NULL;
    }
    if(valueQuery_categoryFilterIds){
        free(valueQuery_categoryFilterIds);
        valueQuery_categoryFilterIds = NULL;
    }
    if(keyPairQuery_categoryFilterIds){
        keyValuePair_free(keyPairQuery_categoryFilterIds);
        keyPairQuery_categoryFilterIds = NULL;
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
    if(keyQuery_includeAllAppUsersAsMembers){
        free(keyQuery_includeAllAppUsersAsMembers);
        keyQuery_includeAllAppUsersAsMembers = NULL;
    }
    if(valueQuery_includeAllAppUsersAsMembers){
        free(valueQuery_includeAllAppUsersAsMembers);
        valueQuery_includeAllAppUsersAsMembers = NULL;
    }
    if(keyPairQuery_includeAllAppUsersAsMembers){
        keyValuePair_free(keyPairQuery_includeAllAppUsersAsMembers);
        keyPairQuery_includeAllAppUsersAsMembers = NULL;
    }
    if(keyQuery_includeAudiencesAsMembers){
        free(keyQuery_includeAudiencesAsMembers);
        keyQuery_includeAudiencesAsMembers = NULL;
    }
    if(valueQuery_includeAudiencesAsMembers){
        free(valueQuery_includeAudiencesAsMembers);
        valueQuery_includeAudiencesAsMembers = NULL;
    }
    if(keyPairQuery_includeAudiencesAsMembers){
        keyValuePair_free(keyPairQuery_includeAudiencesAsMembers);
        keyPairQuery_includeAudiencesAsMembers = NULL;
    }
    if(keyQuery_audienceOperator){
        free(keyQuery_audienceOperator);
        keyQuery_audienceOperator = NULL;
    }
    if(valueQuery_audienceOperator){
        free(valueQuery_audienceOperator);
        valueQuery_audienceOperator = NULL;
    }
    if(keyPairQuery_audienceOperator){
        keyValuePair_free(keyPairQuery_audienceOperator);
        keyPairQuery_audienceOperator = NULL;
    }
    if(keyQuery_linkedObjectType){
        free(keyQuery_linkedObjectType);
        keyQuery_linkedObjectType = NULL;
    }
    if(valueQuery_linkedObjectType){
        free(valueQuery_linkedObjectType);
        valueQuery_linkedObjectType = NULL;
    }
    if(keyPairQuery_linkedObjectType){
        keyValuePair_free(keyPairQuery_linkedObjectType);
        keyPairQuery_linkedObjectType = NULL;
    }
    if(keyQuery_linkedObjectId){
        free(keyQuery_linkedObjectId);
        keyQuery_linkedObjectId = NULL;
    }
    if(keyPairQuery_linkedObjectId){
        keyValuePair_free(keyPairQuery_linkedObjectId);
        keyPairQuery_linkedObjectId = NULL;
    }
    if(keyQuery_indexNow){
        free(keyQuery_indexNow);
        keyQuery_indexNow = NULL;
    }
    if(valueQuery_indexNow){
        free(valueQuery_indexNow);
        valueQuery_indexNow = NULL;
    }
    if(keyPairQuery_indexNow){
        keyValuePair_free(keyPairQuery_indexNow);
        keyPairQuery_indexNow = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

