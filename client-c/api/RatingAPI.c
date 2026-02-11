#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "RatingAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for RatingAPI_searchLocationRatingIndexes

static char* searchLocationRatingIndexes_SORTFIELD_ToString(sirqul_iot_platform_searchLocationRatingIndexes_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "RATABLE_TYPE", "RATABLE_ID", "RATABLE_DISPLAY", "CATEGORY_ID", "CATEGORY_NAME", "CATEGORY_SHORT_NAME", "CATEGORY_DISPLAY", "COUNT", "SUMMATION", "AVERAGE", "VALUE" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchLocationRatingIndexes_sortField_e searchLocationRatingIndexes_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "RATABLE_TYPE", "RATABLE_ID", "RATABLE_DISPLAY", "CATEGORY_ID", "CATEGORY_NAME", "CATEGORY_SHORT_NAME", "CATEGORY_DISPLAY", "COUNT", "SUMMATION", "AVERAGE", "VALUE" };
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
// Function searchLocationRatingIndexes_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchLocationRatingIndexes_SORTFIELD_convertToJSON(sirqul_iot_platform_searchLocationRatingIndexes_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchLocationRatingIndexes_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchLocationRatingIndexes_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchLocationRatingIndexes_sortField_e searchLocationRatingIndexes_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchLocationRatingIndexes_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchLocationRatingIndexes_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum DISTANCEUNIT for RatingAPI_searchLocationRatingIndexes

static char* searchLocationRatingIndexes_DISTANCEUNIT_ToString(sirqul_iot_platform_searchLocationRatingIndexes_distanceUnit_e DISTANCEUNIT){
    char *DISTANCEUNITArray[] =  { "NULL", "MILES", "KILOMETERS" };
    return DISTANCEUNITArray[DISTANCEUNIT];
}

static sirqul_iot_platform_searchLocationRatingIndexes_distanceUnit_e searchLocationRatingIndexes_DISTANCEUNIT_FromString(char* DISTANCEUNIT){
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
// Function searchLocationRatingIndexes_DISTANCEUNIT_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchLocationRatingIndexes_DISTANCEUNIT_convertToJSON(sirqul_iot_platform_searchLocationRatingIndexes_distanceUnit_e DISTANCEUNIT) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "distanceUnit", searchLocationRatingIndexes_DISTANCEUNIT_ToString(DISTANCEUNIT)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchLocationRatingIndexes_DISTANCEUNIT_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchLocationRatingIndexes_distanceUnit_e searchLocationRatingIndexes_DISTANCEUNIT_parseFromJSON(cJSON* DISTANCEUNITJSON) {
    sirqul_iot_platform_searchLocationRatingIndexes_distanceUnit_e DISTANCEUNITVariable = 0;
    cJSON *DISTANCEUNITVar = cJSON_GetObjectItemCaseSensitive(DISTANCEUNITJSON, "distanceUnit");
    if(!cJSON_IsString(DISTANCEUNITVar) || (DISTANCEUNITVar->valuestring == NULL))
    {
        goto end;
    }
    DISTANCEUNITVariable = searchLocationRatingIndexes_DISTANCEUNIT_FromString(DISTANCEUNITVar->valuestring);
    return DISTANCEUNITVariable;
end:
    return 0;
}
*/

// Functions for enum RATABLETYPE for RatingAPI_searchRatingIndexes

static char* searchRatingIndexes_RATABLETYPE_ToString(sirqul_iot_platform_searchRatingIndexes_ratableType_e RATABLETYPE){
    char *RATABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    return RATABLETYPEArray[RATABLETYPE];
}

static sirqul_iot_platform_searchRatingIndexes_ratableType_e searchRatingIndexes_RATABLETYPE_FromString(char* RATABLETYPE){
    int stringToReturn = 0;
    char *RATABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    size_t sizeofArray = sizeof(RATABLETYPEArray) / sizeof(RATABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RATABLETYPE, RATABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchRatingIndexes_RATABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRatingIndexes_RATABLETYPE_convertToJSON(sirqul_iot_platform_searchRatingIndexes_ratableType_e RATABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "ratableType", searchRatingIndexes_RATABLETYPE_ToString(RATABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRatingIndexes_RATABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRatingIndexes_ratableType_e searchRatingIndexes_RATABLETYPE_parseFromJSON(cJSON* RATABLETYPEJSON) {
    sirqul_iot_platform_searchRatingIndexes_ratableType_e RATABLETYPEVariable = 0;
    cJSON *RATABLETYPEVar = cJSON_GetObjectItemCaseSensitive(RATABLETYPEJSON, "ratableType");
    if(!cJSON_IsString(RATABLETYPEVar) || (RATABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    RATABLETYPEVariable = searchRatingIndexes_RATABLETYPE_FromString(RATABLETYPEVar->valuestring);
    return RATABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for RatingAPI_searchRatingIndexes

static char* searchRatingIndexes_SORTFIELD_ToString(sirqul_iot_platform_searchRatingIndexes_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "RATABLE_TYPE", "RATABLE_ID", "RATABLE_DISPLAY", "CATEGORY_ID", "CATEGORY_NAME", "CATEGORY_SHORT_NAME", "CATEGORY_DISPLAY", "COUNT", "SUMMATION", "AVERAGE", "VALUE" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchRatingIndexes_sortField_e searchRatingIndexes_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "RATABLE_TYPE", "RATABLE_ID", "RATABLE_DISPLAY", "CATEGORY_ID", "CATEGORY_NAME", "CATEGORY_SHORT_NAME", "CATEGORY_DISPLAY", "COUNT", "SUMMATION", "AVERAGE", "VALUE" };
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
// Function searchRatingIndexes_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRatingIndexes_SORTFIELD_convertToJSON(sirqul_iot_platform_searchRatingIndexes_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchRatingIndexes_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRatingIndexes_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRatingIndexes_sortField_e searchRatingIndexes_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchRatingIndexes_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchRatingIndexes_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for RatingAPI_searchRatings

static char* searchRatings_SORTFIELD_ToString(sirqul_iot_platform_searchRatings_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OWNER_DISPLAY", "RATABLE_TYPE", "RATABLE_ID", "RATABLE_DISPLAY", "CATEGORY_ID", "CATEGORY_NAME", "CATEGORY_SHORT_NAME", "CATEGORY_DISPLAY", "VALUE" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchRatings_sortField_e searchRatings_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OWNER_DISPLAY", "RATABLE_TYPE", "RATABLE_ID", "RATABLE_DISPLAY", "CATEGORY_ID", "CATEGORY_NAME", "CATEGORY_SHORT_NAME", "CATEGORY_DISPLAY", "VALUE" };
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
// Function searchRatings_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchRatings_SORTFIELD_convertToJSON(sirqul_iot_platform_searchRatings_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchRatings_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchRatings_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchRatings_sortField_e searchRatings_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchRatings_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchRatings_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Create Rating
//
// This is used to leave rating on a ratable object (i.e. retailer locations). Each user can only rate on a ratable object once per category. If a user rates on the same object and category, the previous rating will be overwritten. Leaving a rating on a ratable object will be visible to everyone who has access to view the object.
//
rating_response_t*
RatingAPI_createRating(apiClient_t *apiClient, char *ratableType, long ratableId, int *ratingValue, char *deviceId, long accountId, long categoryId, char *display, char *description, char *locationDescription, double latitude, double longitude)
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
    char *localVarPath = strdup("/rating/create");





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
    char *keyQuery_ratableType = NULL;
    char * valueQuery_ratableType = NULL;
    keyValuePair_t *keyPairQuery_ratableType = 0;
    if (ratableType)
    {
        keyQuery_ratableType = strdup("ratableType");
        valueQuery_ratableType = strdup((ratableType));
        keyPairQuery_ratableType = keyValuePair_create(keyQuery_ratableType, valueQuery_ratableType);
        list_addElement(localVarQueryParameters,keyPairQuery_ratableType);
    }

    // query parameters
    char *keyQuery_ratableId = NULL;
    char * valueQuery_ratableId ;
    keyValuePair_t *keyPairQuery_ratableId = 0;
    {
        keyQuery_ratableId = strdup("ratableId");
        valueQuery_ratableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ratableId, MAX_NUMBER_LENGTH_LONG, "%d", ratableId);
        keyPairQuery_ratableId = keyValuePair_create(keyQuery_ratableId, valueQuery_ratableId);
        list_addElement(localVarQueryParameters,keyPairQuery_ratableId);
    }

    // query parameters
    char *keyQuery_ratingValue = NULL;
    char * valueQuery_ratingValue = NULL;
    keyValuePair_t *keyPairQuery_ratingValue = 0;
    if (ratingValue)
    {
        keyQuery_ratingValue = strdup("ratingValue");
        valueQuery_ratingValue = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ratingValue, MAX_NUMBER_LENGTH, "%d", *ratingValue);
        keyPairQuery_ratingValue = keyValuePair_create(keyQuery_ratingValue, valueQuery_ratingValue);
        list_addElement(localVarQueryParameters,keyPairQuery_ratingValue);
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
    char *keyQuery_display = NULL;
    char * valueQuery_display = NULL;
    keyValuePair_t *keyPairQuery_display = 0;
    if (display)
    {
        keyQuery_display = strdup("display");
        valueQuery_display = strdup((display));
        keyPairQuery_display = keyValuePair_create(keyQuery_display, valueQuery_display);
        list_addElement(localVarQueryParameters,keyPairQuery_display);
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
    rating_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RatingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = rating_response_parseFromJSON(RatingAPIlocalVarJSON);
        cJSON_Delete(RatingAPIlocalVarJSON);
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
    if(keyQuery_ratableType){
        free(keyQuery_ratableType);
        keyQuery_ratableType = NULL;
    }
    if(valueQuery_ratableType){
        free(valueQuery_ratableType);
        valueQuery_ratableType = NULL;
    }
    if(keyPairQuery_ratableType){
        keyValuePair_free(keyPairQuery_ratableType);
        keyPairQuery_ratableType = NULL;
    }
    if(keyQuery_ratableId){
        free(keyQuery_ratableId);
        keyQuery_ratableId = NULL;
    }
    if(keyPairQuery_ratableId){
        keyValuePair_free(keyPairQuery_ratableId);
        keyPairQuery_ratableId = NULL;
    }
    if(keyQuery_ratingValue){
        free(keyQuery_ratingValue);
        keyQuery_ratingValue = NULL;
    }
    if(valueQuery_ratingValue){
        free(valueQuery_ratingValue);
        valueQuery_ratingValue = NULL;
    }
    if(keyPairQuery_ratingValue){
        keyValuePair_free(keyPairQuery_ratingValue);
        keyPairQuery_ratingValue = NULL;
    }
    if(keyQuery_categoryId){
        free(keyQuery_categoryId);
        keyQuery_categoryId = NULL;
    }
    if(keyPairQuery_categoryId){
        keyValuePair_free(keyPairQuery_categoryId);
        keyPairQuery_categoryId = NULL;
    }
    if(keyQuery_display){
        free(keyQuery_display);
        keyQuery_display = NULL;
    }
    if(valueQuery_display){
        free(valueQuery_display);
        valueQuery_display = NULL;
    }
    if(keyPairQuery_display){
        keyValuePair_free(keyPairQuery_display);
        keyPairQuery_display = NULL;
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

// Delete Rating
//
// Sets a rating as deleted.
//
sirqul_response_t*
RatingAPI_deleteRating(apiClient_t *apiClient, long ratingId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/rating/delete");





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
    char *keyQuery_ratingId = NULL;
    char * valueQuery_ratingId ;
    keyValuePair_t *keyPairQuery_ratingId = 0;
    {
        keyQuery_ratingId = strdup("ratingId");
        valueQuery_ratingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ratingId, MAX_NUMBER_LENGTH_LONG, "%d", ratingId);
        keyPairQuery_ratingId = keyValuePair_create(keyQuery_ratingId, valueQuery_ratingId);
        list_addElement(localVarQueryParameters,keyPairQuery_ratingId);
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
        cJSON *RatingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(RatingAPIlocalVarJSON);
        cJSON_Delete(RatingAPIlocalVarJSON);
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
    if(keyQuery_ratingId){
        free(keyQuery_ratingId);
        keyQuery_ratingId = NULL;
    }
    if(keyPairQuery_ratingId){
        keyValuePair_free(keyPairQuery_ratingId);
        keyPairQuery_ratingId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Location Rating Indexes
//
// Search for retailer locations by averages near you.
//
list_t*
RatingAPI_searchLocationRatingIndexes(apiClient_t *apiClient, char *categoryIds, char *keyword, char *locationType, sirqul_iot_platform_searchLocationRatingIndexes_sortField_e sortField, int *descending, int *start, int *limit, double searchRange, double latitude, double longitude, int *returnOverallRating, sirqul_iot_platform_searchLocationRatingIndexes_distanceUnit_e distanceUnit, int *returnRetailer, int *returnAssets, int *returnOffers, int *returnCategories, int *returnFilters)
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
    char *localVarPath = strdup("/location/rating/index/search");





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
    sirqul_iot_platform_searchLocationRatingIndexes_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchLocationRatingIndexes_SORTFIELD_ToString(
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
    char *keyQuery_returnOverallRating = NULL;
    char * valueQuery_returnOverallRating = NULL;
    keyValuePair_t *keyPairQuery_returnOverallRating = 0;
    if (returnOverallRating)
    {
        keyQuery_returnOverallRating = strdup("returnOverallRating");
        valueQuery_returnOverallRating = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnOverallRating, MAX_NUMBER_LENGTH, "%d", *returnOverallRating);
        keyPairQuery_returnOverallRating = keyValuePair_create(keyQuery_returnOverallRating, valueQuery_returnOverallRating);
        list_addElement(localVarQueryParameters,keyPairQuery_returnOverallRating);
    }

    // query parameters
    char *keyQuery_distanceUnit = NULL;
    sirqul_iot_platform_searchLocationRatingIndexes_distanceUnit_e valueQuery_distanceUnit ;
    keyValuePair_t *keyPairQuery_distanceUnit = 0;
    if (distanceUnit)
    {
        keyQuery_distanceUnit = strdup("distanceUnit");
        valueQuery_distanceUnit = (distanceUnit);
        keyPairQuery_distanceUnit = keyValuePair_create(keyQuery_distanceUnit, strdup(searchLocationRatingIndexes_DISTANCEUNIT_ToString(
        valueQuery_distanceUnit)));
        list_addElement(localVarQueryParameters,keyPairQuery_distanceUnit);
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
        cJSON *RatingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RatingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RatingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RatingAPIlocalVarJSON);
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
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
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
    if(keyQuery_returnOverallRating){
        free(keyQuery_returnOverallRating);
        keyQuery_returnOverallRating = NULL;
    }
    if(valueQuery_returnOverallRating){
        free(valueQuery_returnOverallRating);
        valueQuery_returnOverallRating = NULL;
    }
    if(keyPairQuery_returnOverallRating){
        keyValuePair_free(keyPairQuery_returnOverallRating);
        keyPairQuery_returnOverallRating = NULL;
    }
    if(keyQuery_distanceUnit){
        free(keyQuery_distanceUnit);
        keyQuery_distanceUnit = NULL;
    }
    if(keyPairQuery_distanceUnit){
        keyValuePair_free(keyPairQuery_distanceUnit);
        keyPairQuery_distanceUnit = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Rating Indexes
//
// Search for ratable items by averages.
//
list_t*
RatingAPI_searchRatingIndexes(apiClient_t *apiClient, sirqul_iot_platform_searchRatingIndexes_ratableType_e ratableType, char *ratableIds, char *categoryIds, char *secondaryType, char *keyword, sirqul_iot_platform_searchRatingIndexes_sortField_e sortField, int *descending, int *start, int *limit, double latitude, double longitude, int *returnRatable, int *returnOverallRating)
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
    char *localVarPath = strdup("/rating/index/search");





    // query parameters
    char *keyQuery_ratableType = NULL;
    sirqul_iot_platform_searchRatingIndexes_ratableType_e valueQuery_ratableType ;
    keyValuePair_t *keyPairQuery_ratableType = 0;
    if (ratableType)
    {
        keyQuery_ratableType = strdup("ratableType");
        valueQuery_ratableType = (ratableType);
        keyPairQuery_ratableType = keyValuePair_create(keyQuery_ratableType, strdup(searchRatingIndexes_RATABLETYPE_ToString(
        valueQuery_ratableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_ratableType);
    }

    // query parameters
    char *keyQuery_ratableIds = NULL;
    char * valueQuery_ratableIds = NULL;
    keyValuePair_t *keyPairQuery_ratableIds = 0;
    if (ratableIds)
    {
        keyQuery_ratableIds = strdup("ratableIds");
        valueQuery_ratableIds = strdup((ratableIds));
        keyPairQuery_ratableIds = keyValuePair_create(keyQuery_ratableIds, valueQuery_ratableIds);
        list_addElement(localVarQueryParameters,keyPairQuery_ratableIds);
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
    char *keyQuery_secondaryType = NULL;
    char * valueQuery_secondaryType = NULL;
    keyValuePair_t *keyPairQuery_secondaryType = 0;
    if (secondaryType)
    {
        keyQuery_secondaryType = strdup("secondaryType");
        valueQuery_secondaryType = strdup((secondaryType));
        keyPairQuery_secondaryType = keyValuePair_create(keyQuery_secondaryType, valueQuery_secondaryType);
        list_addElement(localVarQueryParameters,keyPairQuery_secondaryType);
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
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchRatingIndexes_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchRatingIndexes_SORTFIELD_ToString(
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
    char *keyQuery_returnRatable = NULL;
    char * valueQuery_returnRatable = NULL;
    keyValuePair_t *keyPairQuery_returnRatable = 0;
    if (returnRatable)
    {
        keyQuery_returnRatable = strdup("returnRatable");
        valueQuery_returnRatable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnRatable, MAX_NUMBER_LENGTH, "%d", *returnRatable);
        keyPairQuery_returnRatable = keyValuePair_create(keyQuery_returnRatable, valueQuery_returnRatable);
        list_addElement(localVarQueryParameters,keyPairQuery_returnRatable);
    }

    // query parameters
    char *keyQuery_returnOverallRating = NULL;
    char * valueQuery_returnOverallRating = NULL;
    keyValuePair_t *keyPairQuery_returnOverallRating = 0;
    if (returnOverallRating)
    {
        keyQuery_returnOverallRating = strdup("returnOverallRating");
        valueQuery_returnOverallRating = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnOverallRating, MAX_NUMBER_LENGTH, "%d", *returnOverallRating);
        keyPairQuery_returnOverallRating = keyValuePair_create(keyQuery_returnOverallRating, valueQuery_returnOverallRating);
        list_addElement(localVarQueryParameters,keyPairQuery_returnOverallRating);
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
        cJSON *RatingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RatingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RatingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RatingAPIlocalVarJSON);
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
    if(keyQuery_ratableType){
        free(keyQuery_ratableType);
        keyQuery_ratableType = NULL;
    }
    if(keyPairQuery_ratableType){
        keyValuePair_free(keyPairQuery_ratableType);
        keyPairQuery_ratableType = NULL;
    }
    if(keyQuery_ratableIds){
        free(keyQuery_ratableIds);
        keyQuery_ratableIds = NULL;
    }
    if(valueQuery_ratableIds){
        free(valueQuery_ratableIds);
        valueQuery_ratableIds = NULL;
    }
    if(keyPairQuery_ratableIds){
        keyValuePair_free(keyPairQuery_ratableIds);
        keyPairQuery_ratableIds = NULL;
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
    if(keyQuery_secondaryType){
        free(keyQuery_secondaryType);
        keyQuery_secondaryType = NULL;
    }
    if(valueQuery_secondaryType){
        free(valueQuery_secondaryType);
        valueQuery_secondaryType = NULL;
    }
    if(keyPairQuery_secondaryType){
        keyValuePair_free(keyPairQuery_secondaryType);
        keyPairQuery_secondaryType = NULL;
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
    if(keyQuery_returnRatable){
        free(keyQuery_returnRatable);
        keyQuery_returnRatable = NULL;
    }
    if(valueQuery_returnRatable){
        free(valueQuery_returnRatable);
        valueQuery_returnRatable = NULL;
    }
    if(keyPairQuery_returnRatable){
        keyValuePair_free(keyPairQuery_returnRatable);
        keyPairQuery_returnRatable = NULL;
    }
    if(keyQuery_returnOverallRating){
        free(keyQuery_returnOverallRating);
        keyQuery_returnOverallRating = NULL;
    }
    if(valueQuery_returnOverallRating){
        free(valueQuery_returnOverallRating);
        valueQuery_returnOverallRating = NULL;
    }
    if(keyPairQuery_returnOverallRating){
        keyValuePair_free(keyPairQuery_returnOverallRating);
        keyPairQuery_returnOverallRating = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Ratings
//
// Search for ratings on a ratable object.
//
list_t*
RatingAPI_searchRatings(apiClient_t *apiClient, char *deviceId, long accountId, long filterAccountId, char *ratableType, long ratableId, char *categoryIds, char *keyword, sirqul_iot_platform_searchRatings_sortField_e sortField, int *descending, int *start, int *limit)
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
    char *localVarPath = strdup("/rating/search");





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
    char *keyQuery_filterAccountId = NULL;
    char * valueQuery_filterAccountId ;
    keyValuePair_t *keyPairQuery_filterAccountId = 0;
    {
        keyQuery_filterAccountId = strdup("filterAccountId");
        valueQuery_filterAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_filterAccountId, MAX_NUMBER_LENGTH_LONG, "%d", filterAccountId);
        keyPairQuery_filterAccountId = keyValuePair_create(keyQuery_filterAccountId, valueQuery_filterAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_filterAccountId);
    }

    // query parameters
    char *keyQuery_ratableType = NULL;
    char * valueQuery_ratableType = NULL;
    keyValuePair_t *keyPairQuery_ratableType = 0;
    if (ratableType)
    {
        keyQuery_ratableType = strdup("ratableType");
        valueQuery_ratableType = strdup((ratableType));
        keyPairQuery_ratableType = keyValuePair_create(keyQuery_ratableType, valueQuery_ratableType);
        list_addElement(localVarQueryParameters,keyPairQuery_ratableType);
    }

    // query parameters
    char *keyQuery_ratableId = NULL;
    char * valueQuery_ratableId ;
    keyValuePair_t *keyPairQuery_ratableId = 0;
    {
        keyQuery_ratableId = strdup("ratableId");
        valueQuery_ratableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ratableId, MAX_NUMBER_LENGTH_LONG, "%d", ratableId);
        keyPairQuery_ratableId = keyValuePair_create(keyQuery_ratableId, valueQuery_ratableId);
        list_addElement(localVarQueryParameters,keyPairQuery_ratableId);
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
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchRatings_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchRatings_SORTFIELD_ToString(
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
        cJSON *RatingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(RatingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, RatingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( RatingAPIlocalVarJSON);
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
    if(keyQuery_filterAccountId){
        free(keyQuery_filterAccountId);
        keyQuery_filterAccountId = NULL;
    }
    if(keyPairQuery_filterAccountId){
        keyValuePair_free(keyPairQuery_filterAccountId);
        keyPairQuery_filterAccountId = NULL;
    }
    if(keyQuery_ratableType){
        free(keyQuery_ratableType);
        keyQuery_ratableType = NULL;
    }
    if(valueQuery_ratableType){
        free(valueQuery_ratableType);
        valueQuery_ratableType = NULL;
    }
    if(keyPairQuery_ratableType){
        keyValuePair_free(keyPairQuery_ratableType);
        keyPairQuery_ratableType = NULL;
    }
    if(keyQuery_ratableId){
        free(keyQuery_ratableId);
        keyQuery_ratableId = NULL;
    }
    if(keyPairQuery_ratableId){
        keyValuePair_free(keyPairQuery_ratableId);
        keyPairQuery_ratableId = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Rating
//
// Update an existing rating. Only the creator of the rating have permission to update.
//
rating_response_t*
RatingAPI_updateRating(apiClient_t *apiClient, long ratingId, char *deviceId, long accountId, int *ratingValue, long categoryId, char *display, char *description, char *locationDescription, double latitude, double longitude)
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
    char *localVarPath = strdup("/rating/update");





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
    char *keyQuery_ratingId = NULL;
    char * valueQuery_ratingId ;
    keyValuePair_t *keyPairQuery_ratingId = 0;
    {
        keyQuery_ratingId = strdup("ratingId");
        valueQuery_ratingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ratingId, MAX_NUMBER_LENGTH_LONG, "%d", ratingId);
        keyPairQuery_ratingId = keyValuePair_create(keyQuery_ratingId, valueQuery_ratingId);
        list_addElement(localVarQueryParameters,keyPairQuery_ratingId);
    }

    // query parameters
    char *keyQuery_ratingValue = NULL;
    char * valueQuery_ratingValue = NULL;
    keyValuePair_t *keyPairQuery_ratingValue = 0;
    if (ratingValue)
    {
        keyQuery_ratingValue = strdup("ratingValue");
        valueQuery_ratingValue = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ratingValue, MAX_NUMBER_LENGTH, "%d", *ratingValue);
        keyPairQuery_ratingValue = keyValuePair_create(keyQuery_ratingValue, valueQuery_ratingValue);
        list_addElement(localVarQueryParameters,keyPairQuery_ratingValue);
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
    char *keyQuery_display = NULL;
    char * valueQuery_display = NULL;
    keyValuePair_t *keyPairQuery_display = 0;
    if (display)
    {
        keyQuery_display = strdup("display");
        valueQuery_display = strdup((display));
        keyPairQuery_display = keyValuePair_create(keyQuery_display, valueQuery_display);
        list_addElement(localVarQueryParameters,keyPairQuery_display);
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
    rating_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *RatingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = rating_response_parseFromJSON(RatingAPIlocalVarJSON);
        cJSON_Delete(RatingAPIlocalVarJSON);
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
    if(keyQuery_ratingId){
        free(keyQuery_ratingId);
        keyQuery_ratingId = NULL;
    }
    if(keyPairQuery_ratingId){
        keyValuePair_free(keyPairQuery_ratingId);
        keyPairQuery_ratingId = NULL;
    }
    if(keyQuery_ratingValue){
        free(keyQuery_ratingValue);
        keyQuery_ratingValue = NULL;
    }
    if(valueQuery_ratingValue){
        free(valueQuery_ratingValue);
        valueQuery_ratingValue = NULL;
    }
    if(keyPairQuery_ratingValue){
        keyValuePair_free(keyPairQuery_ratingValue);
        keyPairQuery_ratingValue = NULL;
    }
    if(keyQuery_categoryId){
        free(keyQuery_categoryId);
        keyQuery_categoryId = NULL;
    }
    if(keyPairQuery_categoryId){
        keyValuePair_free(keyPairQuery_categoryId);
        keyPairQuery_categoryId = NULL;
    }
    if(keyQuery_display){
        free(keyQuery_display);
        keyQuery_display = NULL;
    }
    if(valueQuery_display){
        free(valueQuery_display);
        valueQuery_display = NULL;
    }
    if(keyPairQuery_display){
        keyValuePair_free(keyPairQuery_display);
        keyPairQuery_display = NULL;
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

