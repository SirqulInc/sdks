#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AccountAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum GENDER for AccountAPI_searchAccounts

static char* searchAccounts_GENDER_ToString(sirqul_iot_platform_searchAccounts_gender_e GENDER){
    char *GENDERArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return GENDERArray[GENDER];
}

static sirqul_iot_platform_searchAccounts_gender_e searchAccounts_GENDER_FromString(char* GENDER){
    int stringToReturn = 0;
    char *GENDERArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    size_t sizeofArray = sizeof(GENDERArray) / sizeof(GENDERArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(GENDER, GENDERArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchAccounts_GENDER_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchAccounts_GENDER_convertToJSON(sirqul_iot_platform_searchAccounts_gender_e GENDER) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "gender", searchAccounts_GENDER_ToString(GENDER)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchAccounts_GENDER_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchAccounts_gender_e searchAccounts_GENDER_parseFromJSON(cJSON* GENDERJSON) {
    sirqul_iot_platform_searchAccounts_gender_e GENDERVariable = 0;
    cJSON *GENDERVar = cJSON_GetObjectItemCaseSensitive(GENDERJSON, "gender");
    if(!cJSON_IsString(GENDERVar) || (GENDERVar->valuestring == NULL))
    {
        goto end;
    }
    GENDERVariable = searchAccounts_GENDER_FromString(GENDERVar->valuestring);
    return GENDERVariable;
end:
    return 0;
}
*/

// Functions for enum GAMEEXPERIENCE for AccountAPI_searchAccounts

static char* searchAccounts_GAMEEXPERIENCE_ToString(sirqul_iot_platform_searchAccounts_gameExperience_e GAMEEXPERIENCE){
    char *GAMEEXPERIENCEArray[] =  { "NULL", "ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT" };
    return GAMEEXPERIENCEArray[GAMEEXPERIENCE];
}

static sirqul_iot_platform_searchAccounts_gameExperience_e searchAccounts_GAMEEXPERIENCE_FromString(char* GAMEEXPERIENCE){
    int stringToReturn = 0;
    char *GAMEEXPERIENCEArray[] =  { "NULL", "ANY", "NEW", "BEGINNER", "INTERMEDIATE", "EXPERT" };
    size_t sizeofArray = sizeof(GAMEEXPERIENCEArray) / sizeof(GAMEEXPERIENCEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(GAMEEXPERIENCE, GAMEEXPERIENCEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchAccounts_GAMEEXPERIENCE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchAccounts_GAMEEXPERIENCE_convertToJSON(sirqul_iot_platform_searchAccounts_gameExperience_e GAMEEXPERIENCE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "gameExperience", searchAccounts_GAMEEXPERIENCE_ToString(GAMEEXPERIENCE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchAccounts_GAMEEXPERIENCE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchAccounts_gameExperience_e searchAccounts_GAMEEXPERIENCE_parseFromJSON(cJSON* GAMEEXPERIENCEJSON) {
    sirqul_iot_platform_searchAccounts_gameExperience_e GAMEEXPERIENCEVariable = 0;
    cJSON *GAMEEXPERIENCEVar = cJSON_GetObjectItemCaseSensitive(GAMEEXPERIENCEJSON, "gameExperience");
    if(!cJSON_IsString(GAMEEXPERIENCEVar) || (GAMEEXPERIENCEVar->valuestring == NULL))
    {
        goto end;
    }
    GAMEEXPERIENCEVariable = searchAccounts_GAMEEXPERIENCE_FromString(GAMEEXPERIENCEVar->valuestring);
    return GAMEEXPERIENCEVariable;
end:
    return 0;
}
*/


// Search Accounts by Location
//
// Search accounts by their location. This only searches on users that have location data. Use ConnectionApi to perform a regular search on accounts.
//
user_location_search_response_t*
AccountAPI_accountLocationSearch(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *q, char *keyword, char *postalCode, double latitude, double longitude, char *appKey, double range, long locationLastUpdated, char *gender, int *minAge, int *maxAge, int *companionshipIndex, int *_i, int *start, int *_l, int *limit, char *searchMode, char *sortField, int *descending, char *roles, char *tags, char *experience, char *categoryIds, char *audienceIds, char *audienceOperator, int *updateCurrentLocation, int *updatePreferredSettings, int *showExactLocations, int *showConnectionToSearcher, long flagCountMinimum, int *verifiedUserOnly, int *contentAdminOnly)
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
    char *localVarPath = strdup("/api/{version}/account/search");



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
    char *keyQuery_locationLastUpdated = NULL;
    char * valueQuery_locationLastUpdated ;
    keyValuePair_t *keyPairQuery_locationLastUpdated = 0;
    {
        keyQuery_locationLastUpdated = strdup("locationLastUpdated");
        valueQuery_locationLastUpdated = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_locationLastUpdated, MAX_NUMBER_LENGTH_LONG, "%d", locationLastUpdated);
        keyPairQuery_locationLastUpdated = keyValuePair_create(keyQuery_locationLastUpdated, valueQuery_locationLastUpdated);
        list_addElement(localVarQueryParameters,keyPairQuery_locationLastUpdated);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_minAge = NULL;
    char * valueQuery_minAge = NULL;
    keyValuePair_t *keyPairQuery_minAge = 0;
    if (minAge)
    {
        keyQuery_minAge = strdup("minAge");
        valueQuery_minAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minAge, MAX_NUMBER_LENGTH, "%d", *minAge);
        keyPairQuery_minAge = keyValuePair_create(keyQuery_minAge, valueQuery_minAge);
        list_addElement(localVarQueryParameters,keyPairQuery_minAge);
    }

    // query parameters
    char *keyQuery_maxAge = NULL;
    char * valueQuery_maxAge = NULL;
    keyValuePair_t *keyPairQuery_maxAge = 0;
    if (maxAge)
    {
        keyQuery_maxAge = strdup("maxAge");
        valueQuery_maxAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_maxAge, MAX_NUMBER_LENGTH, "%d", *maxAge);
        keyPairQuery_maxAge = keyValuePair_create(keyQuery_maxAge, valueQuery_maxAge);
        list_addElement(localVarQueryParameters,keyPairQuery_maxAge);
    }

    // query parameters
    char *keyQuery_companionshipIndex = NULL;
    char * valueQuery_companionshipIndex = NULL;
    keyValuePair_t *keyPairQuery_companionshipIndex = 0;
    if (companionshipIndex)
    {
        keyQuery_companionshipIndex = strdup("companionshipIndex");
        valueQuery_companionshipIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_companionshipIndex, MAX_NUMBER_LENGTH, "%d", *companionshipIndex);
        keyPairQuery_companionshipIndex = keyValuePair_create(keyQuery_companionshipIndex, valueQuery_companionshipIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_companionshipIndex);
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
    char *keyQuery_roles = NULL;
    char * valueQuery_roles = NULL;
    keyValuePair_t *keyPairQuery_roles = 0;
    if (roles)
    {
        keyQuery_roles = strdup("roles");
        valueQuery_roles = strdup((roles));
        keyPairQuery_roles = keyValuePair_create(keyQuery_roles, valueQuery_roles);
        list_addElement(localVarQueryParameters,keyPairQuery_roles);
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
    char *keyQuery_experience = NULL;
    char * valueQuery_experience = NULL;
    keyValuePair_t *keyPairQuery_experience = 0;
    if (experience)
    {
        keyQuery_experience = strdup("experience");
        valueQuery_experience = strdup((experience));
        keyPairQuery_experience = keyValuePair_create(keyQuery_experience, valueQuery_experience);
        list_addElement(localVarQueryParameters,keyPairQuery_experience);
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
    char *keyQuery_updateCurrentLocation = NULL;
    char * valueQuery_updateCurrentLocation = NULL;
    keyValuePair_t *keyPairQuery_updateCurrentLocation = 0;
    if (updateCurrentLocation)
    {
        keyQuery_updateCurrentLocation = strdup("updateCurrentLocation");
        valueQuery_updateCurrentLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateCurrentLocation, MAX_NUMBER_LENGTH, "%d", *updateCurrentLocation);
        keyPairQuery_updateCurrentLocation = keyValuePair_create(keyQuery_updateCurrentLocation, valueQuery_updateCurrentLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_updateCurrentLocation);
    }

    // query parameters
    char *keyQuery_updatePreferredSettings = NULL;
    char * valueQuery_updatePreferredSettings = NULL;
    keyValuePair_t *keyPairQuery_updatePreferredSettings = 0;
    if (updatePreferredSettings)
    {
        keyQuery_updatePreferredSettings = strdup("updatePreferredSettings");
        valueQuery_updatePreferredSettings = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updatePreferredSettings, MAX_NUMBER_LENGTH, "%d", *updatePreferredSettings);
        keyPairQuery_updatePreferredSettings = keyValuePair_create(keyQuery_updatePreferredSettings, valueQuery_updatePreferredSettings);
        list_addElement(localVarQueryParameters,keyPairQuery_updatePreferredSettings);
    }

    // query parameters
    char *keyQuery_showExactLocations = NULL;
    char * valueQuery_showExactLocations = NULL;
    keyValuePair_t *keyPairQuery_showExactLocations = 0;
    if (showExactLocations)
    {
        keyQuery_showExactLocations = strdup("showExactLocations");
        valueQuery_showExactLocations = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showExactLocations, MAX_NUMBER_LENGTH, "%d", *showExactLocations);
        keyPairQuery_showExactLocations = keyValuePair_create(keyQuery_showExactLocations, valueQuery_showExactLocations);
        list_addElement(localVarQueryParameters,keyPairQuery_showExactLocations);
    }

    // query parameters
    char *keyQuery_showConnectionToSearcher = NULL;
    char * valueQuery_showConnectionToSearcher = NULL;
    keyValuePair_t *keyPairQuery_showConnectionToSearcher = 0;
    if (showConnectionToSearcher)
    {
        keyQuery_showConnectionToSearcher = strdup("showConnectionToSearcher");
        valueQuery_showConnectionToSearcher = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showConnectionToSearcher, MAX_NUMBER_LENGTH, "%d", *showConnectionToSearcher);
        keyPairQuery_showConnectionToSearcher = keyValuePair_create(keyQuery_showConnectionToSearcher, valueQuery_showConnectionToSearcher);
        list_addElement(localVarQueryParameters,keyPairQuery_showConnectionToSearcher);
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
    char *keyQuery_verifiedUserOnly = NULL;
    char * valueQuery_verifiedUserOnly = NULL;
    keyValuePair_t *keyPairQuery_verifiedUserOnly = 0;
    if (verifiedUserOnly)
    {
        keyQuery_verifiedUserOnly = strdup("verifiedUserOnly");
        valueQuery_verifiedUserOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_verifiedUserOnly, MAX_NUMBER_LENGTH, "%d", *verifiedUserOnly);
        keyPairQuery_verifiedUserOnly = keyValuePair_create(keyQuery_verifiedUserOnly, valueQuery_verifiedUserOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_verifiedUserOnly);
    }

    // query parameters
    char *keyQuery_contentAdminOnly = NULL;
    char * valueQuery_contentAdminOnly = NULL;
    keyValuePair_t *keyPairQuery_contentAdminOnly = 0;
    if (contentAdminOnly)
    {
        keyQuery_contentAdminOnly = strdup("contentAdminOnly");
        valueQuery_contentAdminOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_contentAdminOnly, MAX_NUMBER_LENGTH, "%d", *contentAdminOnly);
        keyPairQuery_contentAdminOnly = keyValuePair_create(keyQuery_contentAdminOnly, valueQuery_contentAdminOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_contentAdminOnly);
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
    user_location_search_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = user_location_search_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_range){
        free(keyQuery_range);
        keyQuery_range = NULL;
    }
    if(keyPairQuery_range){
        keyValuePair_free(keyPairQuery_range);
        keyPairQuery_range = NULL;
    }
    if(keyQuery_locationLastUpdated){
        free(keyQuery_locationLastUpdated);
        keyQuery_locationLastUpdated = NULL;
    }
    if(keyPairQuery_locationLastUpdated){
        keyValuePair_free(keyPairQuery_locationLastUpdated);
        keyPairQuery_locationLastUpdated = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_minAge){
        free(keyQuery_minAge);
        keyQuery_minAge = NULL;
    }
    if(valueQuery_minAge){
        free(valueQuery_minAge);
        valueQuery_minAge = NULL;
    }
    if(keyPairQuery_minAge){
        keyValuePair_free(keyPairQuery_minAge);
        keyPairQuery_minAge = NULL;
    }
    if(keyQuery_maxAge){
        free(keyQuery_maxAge);
        keyQuery_maxAge = NULL;
    }
    if(valueQuery_maxAge){
        free(valueQuery_maxAge);
        valueQuery_maxAge = NULL;
    }
    if(keyPairQuery_maxAge){
        keyValuePair_free(keyPairQuery_maxAge);
        keyPairQuery_maxAge = NULL;
    }
    if(keyQuery_companionshipIndex){
        free(keyQuery_companionshipIndex);
        keyQuery_companionshipIndex = NULL;
    }
    if(valueQuery_companionshipIndex){
        free(valueQuery_companionshipIndex);
        valueQuery_companionshipIndex = NULL;
    }
    if(keyPairQuery_companionshipIndex){
        keyValuePair_free(keyPairQuery_companionshipIndex);
        keyPairQuery_companionshipIndex = NULL;
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
    if(keyQuery_roles){
        free(keyQuery_roles);
        keyQuery_roles = NULL;
    }
    if(valueQuery_roles){
        free(valueQuery_roles);
        valueQuery_roles = NULL;
    }
    if(keyPairQuery_roles){
        keyValuePair_free(keyPairQuery_roles);
        keyPairQuery_roles = NULL;
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
    if(keyQuery_experience){
        free(keyQuery_experience);
        keyQuery_experience = NULL;
    }
    if(valueQuery_experience){
        free(valueQuery_experience);
        valueQuery_experience = NULL;
    }
    if(keyPairQuery_experience){
        keyValuePair_free(keyPairQuery_experience);
        keyPairQuery_experience = NULL;
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
    if(keyQuery_updateCurrentLocation){
        free(keyQuery_updateCurrentLocation);
        keyQuery_updateCurrentLocation = NULL;
    }
    if(valueQuery_updateCurrentLocation){
        free(valueQuery_updateCurrentLocation);
        valueQuery_updateCurrentLocation = NULL;
    }
    if(keyPairQuery_updateCurrentLocation){
        keyValuePair_free(keyPairQuery_updateCurrentLocation);
        keyPairQuery_updateCurrentLocation = NULL;
    }
    if(keyQuery_updatePreferredSettings){
        free(keyQuery_updatePreferredSettings);
        keyQuery_updatePreferredSettings = NULL;
    }
    if(valueQuery_updatePreferredSettings){
        free(valueQuery_updatePreferredSettings);
        valueQuery_updatePreferredSettings = NULL;
    }
    if(keyPairQuery_updatePreferredSettings){
        keyValuePair_free(keyPairQuery_updatePreferredSettings);
        keyPairQuery_updatePreferredSettings = NULL;
    }
    if(keyQuery_showExactLocations){
        free(keyQuery_showExactLocations);
        keyQuery_showExactLocations = NULL;
    }
    if(valueQuery_showExactLocations){
        free(valueQuery_showExactLocations);
        valueQuery_showExactLocations = NULL;
    }
    if(keyPairQuery_showExactLocations){
        keyValuePair_free(keyPairQuery_showExactLocations);
        keyPairQuery_showExactLocations = NULL;
    }
    if(keyQuery_showConnectionToSearcher){
        free(keyQuery_showConnectionToSearcher);
        keyQuery_showConnectionToSearcher = NULL;
    }
    if(valueQuery_showConnectionToSearcher){
        free(valueQuery_showConnectionToSearcher);
        valueQuery_showConnectionToSearcher = NULL;
    }
    if(keyPairQuery_showConnectionToSearcher){
        keyValuePair_free(keyPairQuery_showConnectionToSearcher);
        keyPairQuery_showConnectionToSearcher = NULL;
    }
    if(keyQuery_flagCountMinimum){
        free(keyQuery_flagCountMinimum);
        keyQuery_flagCountMinimum = NULL;
    }
    if(keyPairQuery_flagCountMinimum){
        keyValuePair_free(keyPairQuery_flagCountMinimum);
        keyPairQuery_flagCountMinimum = NULL;
    }
    if(keyQuery_verifiedUserOnly){
        free(keyQuery_verifiedUserOnly);
        keyQuery_verifiedUserOnly = NULL;
    }
    if(valueQuery_verifiedUserOnly){
        free(valueQuery_verifiedUserOnly);
        valueQuery_verifiedUserOnly = NULL;
    }
    if(keyPairQuery_verifiedUserOnly){
        keyValuePair_free(keyPairQuery_verifiedUserOnly);
        keyPairQuery_verifiedUserOnly = NULL;
    }
    if(keyQuery_contentAdminOnly){
        free(keyQuery_contentAdminOnly);
        keyQuery_contentAdminOnly = NULL;
    }
    if(valueQuery_contentAdminOnly){
        free(valueQuery_contentAdminOnly);
        valueQuery_contentAdminOnly = NULL;
    }
    if(keyPairQuery_contentAdminOnly){
        keyValuePair_free(keyPairQuery_contentAdminOnly);
        keyPairQuery_contentAdminOnly = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Block Account
//
// Moves or removes an account into the user's blocked group.
//
sirqul_response_t*
AccountAPI_blockAccount(apiClient_t *apiClient, double version, long accountIdBeingBlocked, char *deviceId, long accountId, int *blockFlagValue, int *removeFromGroupsIfBlocked, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/account/block");



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
    char *keyQuery_accountIdBeingBlocked = NULL;
    char * valueQuery_accountIdBeingBlocked ;
    keyValuePair_t *keyPairQuery_accountIdBeingBlocked = 0;
    {
        keyQuery_accountIdBeingBlocked = strdup("accountIdBeingBlocked");
        valueQuery_accountIdBeingBlocked = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountIdBeingBlocked, MAX_NUMBER_LENGTH_LONG, "%d", accountIdBeingBlocked);
        keyPairQuery_accountIdBeingBlocked = keyValuePair_create(keyQuery_accountIdBeingBlocked, valueQuery_accountIdBeingBlocked);
        list_addElement(localVarQueryParameters,keyPairQuery_accountIdBeingBlocked);
    }

    // query parameters
    char *keyQuery_blockFlagValue = NULL;
    char * valueQuery_blockFlagValue = NULL;
    keyValuePair_t *keyPairQuery_blockFlagValue = 0;
    if (blockFlagValue)
    {
        keyQuery_blockFlagValue = strdup("blockFlagValue");
        valueQuery_blockFlagValue = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_blockFlagValue, MAX_NUMBER_LENGTH, "%d", *blockFlagValue);
        keyPairQuery_blockFlagValue = keyValuePair_create(keyQuery_blockFlagValue, valueQuery_blockFlagValue);
        list_addElement(localVarQueryParameters,keyPairQuery_blockFlagValue);
    }

    // query parameters
    char *keyQuery_removeFromGroupsIfBlocked = NULL;
    char * valueQuery_removeFromGroupsIfBlocked = NULL;
    keyValuePair_t *keyPairQuery_removeFromGroupsIfBlocked = 0;
    if (removeFromGroupsIfBlocked)
    {
        keyQuery_removeFromGroupsIfBlocked = strdup("removeFromGroupsIfBlocked");
        valueQuery_removeFromGroupsIfBlocked = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeFromGroupsIfBlocked, MAX_NUMBER_LENGTH, "%d", *removeFromGroupsIfBlocked);
        keyPairQuery_removeFromGroupsIfBlocked = keyValuePair_create(keyQuery_removeFromGroupsIfBlocked, valueQuery_removeFromGroupsIfBlocked);
        list_addElement(localVarQueryParameters,keyPairQuery_removeFromGroupsIfBlocked);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_accountIdBeingBlocked){
        free(keyQuery_accountIdBeingBlocked);
        keyQuery_accountIdBeingBlocked = NULL;
    }
    if(keyPairQuery_accountIdBeingBlocked){
        keyValuePair_free(keyPairQuery_accountIdBeingBlocked);
        keyPairQuery_accountIdBeingBlocked = NULL;
    }
    if(keyQuery_blockFlagValue){
        free(keyQuery_blockFlagValue);
        keyQuery_blockFlagValue = NULL;
    }
    if(valueQuery_blockFlagValue){
        free(valueQuery_blockFlagValue);
        valueQuery_blockFlagValue = NULL;
    }
    if(keyPairQuery_blockFlagValue){
        keyValuePair_free(keyPairQuery_blockFlagValue);
        keyPairQuery_blockFlagValue = NULL;
    }
    if(keyQuery_removeFromGroupsIfBlocked){
        free(keyQuery_removeFromGroupsIfBlocked);
        keyQuery_removeFromGroupsIfBlocked = NULL;
    }
    if(valueQuery_removeFromGroupsIfBlocked){
        free(valueQuery_removeFromGroupsIfBlocked);
        valueQuery_removeFromGroupsIfBlocked = NULL;
    }
    if(keyPairQuery_removeFromGroupsIfBlocked){
        keyValuePair_free(keyPairQuery_removeFromGroupsIfBlocked);
        keyPairQuery_removeFromGroupsIfBlocked = NULL;
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

// Create Account
//
// Create a new account by role.
//
account_login_response_t*
AccountAPI_createAccount(apiClient_t *apiClient, double version, char *username, char *password, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *deviceId, char *deviceIdType, char *emailAddress, long assetId, char *streetAddress, char *zipcode, char *gender, long birthday, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *role, char *platforms, char *tags, char *aboutUs, char *gameExperience, char *categoryIds, char *hometown, char *height, int *heightIndex, char *ethnicity, char *bodyType, char *maritalStatus, char *children, char *religion, char *education, int *educationIndex, char *smoke, char *drink, char *companionship, int *companionshipIndex, int *preferredMinAge, int *preferredMaxAge, int *preferredMinHeight, int *preferredMaxHeight, char *preferredGender, char *preferredEducation, int *preferredEducationIndex, char *preferredBodyType, char *preferredEthnicity, char *preferredLocation, double preferredLocationRange, double latitude, double longitude, int *acceptedTerms, char *inviteToken, long referralAccountId, int *sendValidation, char *gameType, char *appKey, char *appVersion, char *responseType, char *audienceIdsToAdd, char *appBlob, int *appEnablePush, int *appEnableSMS, int *appEnableEmail, char *locationVisibility, double homeLatitude, double homeLongitude, char *appNickname, long personalAudienceId)
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
    char *localVarPath = strdup("/api/{version}/account/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_prefixName = NULL;
    char * valueQuery_prefixName = NULL;
    keyValuePair_t *keyPairQuery_prefixName = 0;
    if (prefixName)
    {
        keyQuery_prefixName = strdup("prefixName");
        valueQuery_prefixName = strdup((prefixName));
        keyPairQuery_prefixName = keyValuePair_create(keyQuery_prefixName, valueQuery_prefixName);
        list_addElement(localVarQueryParameters,keyPairQuery_prefixName);
    }

    // query parameters
    char *keyQuery_firstName = NULL;
    char * valueQuery_firstName = NULL;
    keyValuePair_t *keyPairQuery_firstName = 0;
    if (firstName)
    {
        keyQuery_firstName = strdup("firstName");
        valueQuery_firstName = strdup((firstName));
        keyPairQuery_firstName = keyValuePair_create(keyQuery_firstName, valueQuery_firstName);
        list_addElement(localVarQueryParameters,keyPairQuery_firstName);
    }

    // query parameters
    char *keyQuery_middleName = NULL;
    char * valueQuery_middleName = NULL;
    keyValuePair_t *keyPairQuery_middleName = 0;
    if (middleName)
    {
        keyQuery_middleName = strdup("middleName");
        valueQuery_middleName = strdup((middleName));
        keyPairQuery_middleName = keyValuePair_create(keyQuery_middleName, valueQuery_middleName);
        list_addElement(localVarQueryParameters,keyPairQuery_middleName);
    }

    // query parameters
    char *keyQuery_lastName = NULL;
    char * valueQuery_lastName = NULL;
    keyValuePair_t *keyPairQuery_lastName = 0;
    if (lastName)
    {
        keyQuery_lastName = strdup("lastName");
        valueQuery_lastName = strdup((lastName));
        keyPairQuery_lastName = keyValuePair_create(keyQuery_lastName, valueQuery_lastName);
        list_addElement(localVarQueryParameters,keyPairQuery_lastName);
    }

    // query parameters
    char *keyQuery_suffixName = NULL;
    char * valueQuery_suffixName = NULL;
    keyValuePair_t *keyPairQuery_suffixName = 0;
    if (suffixName)
    {
        keyQuery_suffixName = strdup("suffixName");
        valueQuery_suffixName = strdup((suffixName));
        keyPairQuery_suffixName = keyValuePair_create(keyQuery_suffixName, valueQuery_suffixName);
        list_addElement(localVarQueryParameters,keyPairQuery_suffixName);
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
    char *keyQuery_deviceIdType = NULL;
    char * valueQuery_deviceIdType = NULL;
    keyValuePair_t *keyPairQuery_deviceIdType = 0;
    if (deviceIdType)
    {
        keyQuery_deviceIdType = strdup("deviceIdType");
        valueQuery_deviceIdType = strdup((deviceIdType));
        keyPairQuery_deviceIdType = keyValuePair_create(keyQuery_deviceIdType, valueQuery_deviceIdType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIdType);
    }

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
    char *keyQuery_emailAddress = NULL;
    char * valueQuery_emailAddress = NULL;
    keyValuePair_t *keyPairQuery_emailAddress = 0;
    if (emailAddress)
    {
        keyQuery_emailAddress = strdup("emailAddress");
        valueQuery_emailAddress = strdup((emailAddress));
        keyPairQuery_emailAddress = keyValuePair_create(keyQuery_emailAddress, valueQuery_emailAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_emailAddress);
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
    char *keyQuery_zipcode = NULL;
    char * valueQuery_zipcode = NULL;
    keyValuePair_t *keyPairQuery_zipcode = 0;
    if (zipcode)
    {
        keyQuery_zipcode = strdup("zipcode");
        valueQuery_zipcode = strdup((zipcode));
        keyPairQuery_zipcode = keyValuePair_create(keyQuery_zipcode, valueQuery_zipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_zipcode);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_birthday = NULL;
    char * valueQuery_birthday ;
    keyValuePair_t *keyPairQuery_birthday = 0;
    {
        keyQuery_birthday = strdup("birthday");
        valueQuery_birthday = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_birthday, MAX_NUMBER_LENGTH_LONG, "%d", birthday);
        keyPairQuery_birthday = keyValuePair_create(keyQuery_birthday, valueQuery_birthday);
        list_addElement(localVarQueryParameters,keyPairQuery_birthday);
    }

    // query parameters
    char *keyQuery_homePhone = NULL;
    char * valueQuery_homePhone = NULL;
    keyValuePair_t *keyPairQuery_homePhone = 0;
    if (homePhone)
    {
        keyQuery_homePhone = strdup("homePhone");
        valueQuery_homePhone = strdup((homePhone));
        keyPairQuery_homePhone = keyValuePair_create(keyQuery_homePhone, valueQuery_homePhone);
        list_addElement(localVarQueryParameters,keyPairQuery_homePhone);
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
    char *keyQuery_cellPhoneCarrier = NULL;
    char * valueQuery_cellPhoneCarrier = NULL;
    keyValuePair_t *keyPairQuery_cellPhoneCarrier = 0;
    if (cellPhoneCarrier)
    {
        keyQuery_cellPhoneCarrier = strdup("cellPhoneCarrier");
        valueQuery_cellPhoneCarrier = strdup((cellPhoneCarrier));
        keyPairQuery_cellPhoneCarrier = keyValuePair_create(keyQuery_cellPhoneCarrier, valueQuery_cellPhoneCarrier);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhoneCarrier);
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
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
    }

    // query parameters
    char *keyQuery_platforms = NULL;
    char * valueQuery_platforms = NULL;
    keyValuePair_t *keyPairQuery_platforms = 0;
    if (platforms)
    {
        keyQuery_platforms = strdup("platforms");
        valueQuery_platforms = strdup((platforms));
        keyPairQuery_platforms = keyValuePair_create(keyQuery_platforms, valueQuery_platforms);
        list_addElement(localVarQueryParameters,keyPairQuery_platforms);
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
    char *keyQuery_aboutUs = NULL;
    char * valueQuery_aboutUs = NULL;
    keyValuePair_t *keyPairQuery_aboutUs = 0;
    if (aboutUs)
    {
        keyQuery_aboutUs = strdup("aboutUs");
        valueQuery_aboutUs = strdup((aboutUs));
        keyPairQuery_aboutUs = keyValuePair_create(keyQuery_aboutUs, valueQuery_aboutUs);
        list_addElement(localVarQueryParameters,keyPairQuery_aboutUs);
    }

    // query parameters
    char *keyQuery_gameExperience = NULL;
    char * valueQuery_gameExperience = NULL;
    keyValuePair_t *keyPairQuery_gameExperience = 0;
    if (gameExperience)
    {
        keyQuery_gameExperience = strdup("gameExperience");
        valueQuery_gameExperience = strdup((gameExperience));
        keyPairQuery_gameExperience = keyValuePair_create(keyQuery_gameExperience, valueQuery_gameExperience);
        list_addElement(localVarQueryParameters,keyPairQuery_gameExperience);
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
    char *keyQuery_hometown = NULL;
    char * valueQuery_hometown = NULL;
    keyValuePair_t *keyPairQuery_hometown = 0;
    if (hometown)
    {
        keyQuery_hometown = strdup("hometown");
        valueQuery_hometown = strdup((hometown));
        keyPairQuery_hometown = keyValuePair_create(keyQuery_hometown, valueQuery_hometown);
        list_addElement(localVarQueryParameters,keyPairQuery_hometown);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    if (height)
    {
        keyQuery_height = strdup("height");
        valueQuery_height = strdup((height));
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_heightIndex = NULL;
    char * valueQuery_heightIndex = NULL;
    keyValuePair_t *keyPairQuery_heightIndex = 0;
    if (heightIndex)
    {
        keyQuery_heightIndex = strdup("heightIndex");
        valueQuery_heightIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_heightIndex, MAX_NUMBER_LENGTH, "%d", *heightIndex);
        keyPairQuery_heightIndex = keyValuePair_create(keyQuery_heightIndex, valueQuery_heightIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_heightIndex);
    }

    // query parameters
    char *keyQuery_ethnicity = NULL;
    char * valueQuery_ethnicity = NULL;
    keyValuePair_t *keyPairQuery_ethnicity = 0;
    if (ethnicity)
    {
        keyQuery_ethnicity = strdup("ethnicity");
        valueQuery_ethnicity = strdup((ethnicity));
        keyPairQuery_ethnicity = keyValuePair_create(keyQuery_ethnicity, valueQuery_ethnicity);
        list_addElement(localVarQueryParameters,keyPairQuery_ethnicity);
    }

    // query parameters
    char *keyQuery_bodyType = NULL;
    char * valueQuery_bodyType = NULL;
    keyValuePair_t *keyPairQuery_bodyType = 0;
    if (bodyType)
    {
        keyQuery_bodyType = strdup("bodyType");
        valueQuery_bodyType = strdup((bodyType));
        keyPairQuery_bodyType = keyValuePair_create(keyQuery_bodyType, valueQuery_bodyType);
        list_addElement(localVarQueryParameters,keyPairQuery_bodyType);
    }

    // query parameters
    char *keyQuery_maritalStatus = NULL;
    char * valueQuery_maritalStatus = NULL;
    keyValuePair_t *keyPairQuery_maritalStatus = 0;
    if (maritalStatus)
    {
        keyQuery_maritalStatus = strdup("maritalStatus");
        valueQuery_maritalStatus = strdup((maritalStatus));
        keyPairQuery_maritalStatus = keyValuePair_create(keyQuery_maritalStatus, valueQuery_maritalStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_maritalStatus);
    }

    // query parameters
    char *keyQuery_children = NULL;
    char * valueQuery_children = NULL;
    keyValuePair_t *keyPairQuery_children = 0;
    if (children)
    {
        keyQuery_children = strdup("children");
        valueQuery_children = strdup((children));
        keyPairQuery_children = keyValuePair_create(keyQuery_children, valueQuery_children);
        list_addElement(localVarQueryParameters,keyPairQuery_children);
    }

    // query parameters
    char *keyQuery_religion = NULL;
    char * valueQuery_religion = NULL;
    keyValuePair_t *keyPairQuery_religion = 0;
    if (religion)
    {
        keyQuery_religion = strdup("religion");
        valueQuery_religion = strdup((religion));
        keyPairQuery_religion = keyValuePair_create(keyQuery_religion, valueQuery_religion);
        list_addElement(localVarQueryParameters,keyPairQuery_religion);
    }

    // query parameters
    char *keyQuery_education = NULL;
    char * valueQuery_education = NULL;
    keyValuePair_t *keyPairQuery_education = 0;
    if (education)
    {
        keyQuery_education = strdup("education");
        valueQuery_education = strdup((education));
        keyPairQuery_education = keyValuePair_create(keyQuery_education, valueQuery_education);
        list_addElement(localVarQueryParameters,keyPairQuery_education);
    }

    // query parameters
    char *keyQuery_educationIndex = NULL;
    char * valueQuery_educationIndex = NULL;
    keyValuePair_t *keyPairQuery_educationIndex = 0;
    if (educationIndex)
    {
        keyQuery_educationIndex = strdup("educationIndex");
        valueQuery_educationIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_educationIndex, MAX_NUMBER_LENGTH, "%d", *educationIndex);
        keyPairQuery_educationIndex = keyValuePair_create(keyQuery_educationIndex, valueQuery_educationIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_educationIndex);
    }

    // query parameters
    char *keyQuery_smoke = NULL;
    char * valueQuery_smoke = NULL;
    keyValuePair_t *keyPairQuery_smoke = 0;
    if (smoke)
    {
        keyQuery_smoke = strdup("smoke");
        valueQuery_smoke = strdup((smoke));
        keyPairQuery_smoke = keyValuePair_create(keyQuery_smoke, valueQuery_smoke);
        list_addElement(localVarQueryParameters,keyPairQuery_smoke);
    }

    // query parameters
    char *keyQuery_drink = NULL;
    char * valueQuery_drink = NULL;
    keyValuePair_t *keyPairQuery_drink = 0;
    if (drink)
    {
        keyQuery_drink = strdup("drink");
        valueQuery_drink = strdup((drink));
        keyPairQuery_drink = keyValuePair_create(keyQuery_drink, valueQuery_drink);
        list_addElement(localVarQueryParameters,keyPairQuery_drink);
    }

    // query parameters
    char *keyQuery_companionship = NULL;
    char * valueQuery_companionship = NULL;
    keyValuePair_t *keyPairQuery_companionship = 0;
    if (companionship)
    {
        keyQuery_companionship = strdup("companionship");
        valueQuery_companionship = strdup((companionship));
        keyPairQuery_companionship = keyValuePair_create(keyQuery_companionship, valueQuery_companionship);
        list_addElement(localVarQueryParameters,keyPairQuery_companionship);
    }

    // query parameters
    char *keyQuery_companionshipIndex = NULL;
    char * valueQuery_companionshipIndex = NULL;
    keyValuePair_t *keyPairQuery_companionshipIndex = 0;
    if (companionshipIndex)
    {
        keyQuery_companionshipIndex = strdup("companionshipIndex");
        valueQuery_companionshipIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_companionshipIndex, MAX_NUMBER_LENGTH, "%d", *companionshipIndex);
        keyPairQuery_companionshipIndex = keyValuePair_create(keyQuery_companionshipIndex, valueQuery_companionshipIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_companionshipIndex);
    }

    // query parameters
    char *keyQuery_preferredMinAge = NULL;
    char * valueQuery_preferredMinAge = NULL;
    keyValuePair_t *keyPairQuery_preferredMinAge = 0;
    if (preferredMinAge)
    {
        keyQuery_preferredMinAge = strdup("preferredMinAge");
        valueQuery_preferredMinAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMinAge, MAX_NUMBER_LENGTH, "%d", *preferredMinAge);
        keyPairQuery_preferredMinAge = keyValuePair_create(keyQuery_preferredMinAge, valueQuery_preferredMinAge);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMinAge);
    }

    // query parameters
    char *keyQuery_preferredMaxAge = NULL;
    char * valueQuery_preferredMaxAge = NULL;
    keyValuePair_t *keyPairQuery_preferredMaxAge = 0;
    if (preferredMaxAge)
    {
        keyQuery_preferredMaxAge = strdup("preferredMaxAge");
        valueQuery_preferredMaxAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMaxAge, MAX_NUMBER_LENGTH, "%d", *preferredMaxAge);
        keyPairQuery_preferredMaxAge = keyValuePair_create(keyQuery_preferredMaxAge, valueQuery_preferredMaxAge);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMaxAge);
    }

    // query parameters
    char *keyQuery_preferredMinHeight = NULL;
    char * valueQuery_preferredMinHeight = NULL;
    keyValuePair_t *keyPairQuery_preferredMinHeight = 0;
    if (preferredMinHeight)
    {
        keyQuery_preferredMinHeight = strdup("preferredMinHeight");
        valueQuery_preferredMinHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMinHeight, MAX_NUMBER_LENGTH, "%d", *preferredMinHeight);
        keyPairQuery_preferredMinHeight = keyValuePair_create(keyQuery_preferredMinHeight, valueQuery_preferredMinHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMinHeight);
    }

    // query parameters
    char *keyQuery_preferredMaxHeight = NULL;
    char * valueQuery_preferredMaxHeight = NULL;
    keyValuePair_t *keyPairQuery_preferredMaxHeight = 0;
    if (preferredMaxHeight)
    {
        keyQuery_preferredMaxHeight = strdup("preferredMaxHeight");
        valueQuery_preferredMaxHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMaxHeight, MAX_NUMBER_LENGTH, "%d", *preferredMaxHeight);
        keyPairQuery_preferredMaxHeight = keyValuePair_create(keyQuery_preferredMaxHeight, valueQuery_preferredMaxHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMaxHeight);
    }

    // query parameters
    char *keyQuery_preferredGender = NULL;
    char * valueQuery_preferredGender = NULL;
    keyValuePair_t *keyPairQuery_preferredGender = 0;
    if (preferredGender)
    {
        keyQuery_preferredGender = strdup("preferredGender");
        valueQuery_preferredGender = strdup((preferredGender));
        keyPairQuery_preferredGender = keyValuePair_create(keyQuery_preferredGender, valueQuery_preferredGender);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredGender);
    }

    // query parameters
    char *keyQuery_preferredEducation = NULL;
    char * valueQuery_preferredEducation = NULL;
    keyValuePair_t *keyPairQuery_preferredEducation = 0;
    if (preferredEducation)
    {
        keyQuery_preferredEducation = strdup("preferredEducation");
        valueQuery_preferredEducation = strdup((preferredEducation));
        keyPairQuery_preferredEducation = keyValuePair_create(keyQuery_preferredEducation, valueQuery_preferredEducation);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEducation);
    }

    // query parameters
    char *keyQuery_preferredEducationIndex = NULL;
    char * valueQuery_preferredEducationIndex = NULL;
    keyValuePair_t *keyPairQuery_preferredEducationIndex = 0;
    if (preferredEducationIndex)
    {
        keyQuery_preferredEducationIndex = strdup("preferredEducationIndex");
        valueQuery_preferredEducationIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredEducationIndex, MAX_NUMBER_LENGTH, "%d", *preferredEducationIndex);
        keyPairQuery_preferredEducationIndex = keyValuePair_create(keyQuery_preferredEducationIndex, valueQuery_preferredEducationIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEducationIndex);
    }

    // query parameters
    char *keyQuery_preferredBodyType = NULL;
    char * valueQuery_preferredBodyType = NULL;
    keyValuePair_t *keyPairQuery_preferredBodyType = 0;
    if (preferredBodyType)
    {
        keyQuery_preferredBodyType = strdup("preferredBodyType");
        valueQuery_preferredBodyType = strdup((preferredBodyType));
        keyPairQuery_preferredBodyType = keyValuePair_create(keyQuery_preferredBodyType, valueQuery_preferredBodyType);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredBodyType);
    }

    // query parameters
    char *keyQuery_preferredEthnicity = NULL;
    char * valueQuery_preferredEthnicity = NULL;
    keyValuePair_t *keyPairQuery_preferredEthnicity = 0;
    if (preferredEthnicity)
    {
        keyQuery_preferredEthnicity = strdup("preferredEthnicity");
        valueQuery_preferredEthnicity = strdup((preferredEthnicity));
        keyPairQuery_preferredEthnicity = keyValuePair_create(keyQuery_preferredEthnicity, valueQuery_preferredEthnicity);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEthnicity);
    }

    // query parameters
    char *keyQuery_preferredLocation = NULL;
    char * valueQuery_preferredLocation = NULL;
    keyValuePair_t *keyPairQuery_preferredLocation = 0;
    if (preferredLocation)
    {
        keyQuery_preferredLocation = strdup("preferredLocation");
        valueQuery_preferredLocation = strdup((preferredLocation));
        keyPairQuery_preferredLocation = keyValuePair_create(keyQuery_preferredLocation, valueQuery_preferredLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredLocation);
    }

    // query parameters
    char *keyQuery_preferredLocationRange = NULL;
    char * valueQuery_preferredLocationRange = NULL;
    keyValuePair_t *keyPairQuery_preferredLocationRange = 0;
    {
        keyQuery_preferredLocationRange = strdup("preferredLocationRange");
        int s = snprintf(NULL, 0, "%.16e", preferredLocationRange);
        if (s >= 0)
        {
            valueQuery_preferredLocationRange = calloc(1,s+1);
            snprintf(valueQuery_preferredLocationRange, s+1, "%.16e", preferredLocationRange);
        }
        keyPairQuery_preferredLocationRange = keyValuePair_create(keyQuery_preferredLocationRange, valueQuery_preferredLocationRange);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredLocationRange);
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
    char *keyQuery_acceptedTerms = NULL;
    char * valueQuery_acceptedTerms = NULL;
    keyValuePair_t *keyPairQuery_acceptedTerms = 0;
    if (acceptedTerms)
    {
        keyQuery_acceptedTerms = strdup("acceptedTerms");
        valueQuery_acceptedTerms = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_acceptedTerms, MAX_NUMBER_LENGTH, "%d", *acceptedTerms);
        keyPairQuery_acceptedTerms = keyValuePair_create(keyQuery_acceptedTerms, valueQuery_acceptedTerms);
        list_addElement(localVarQueryParameters,keyPairQuery_acceptedTerms);
    }

    // query parameters
    char *keyQuery_inviteToken = NULL;
    char * valueQuery_inviteToken = NULL;
    keyValuePair_t *keyPairQuery_inviteToken = 0;
    if (inviteToken)
    {
        keyQuery_inviteToken = strdup("inviteToken");
        valueQuery_inviteToken = strdup((inviteToken));
        keyPairQuery_inviteToken = keyValuePair_create(keyQuery_inviteToken, valueQuery_inviteToken);
        list_addElement(localVarQueryParameters,keyPairQuery_inviteToken);
    }

    // query parameters
    char *keyQuery_referralAccountId = NULL;
    char * valueQuery_referralAccountId ;
    keyValuePair_t *keyPairQuery_referralAccountId = 0;
    {
        keyQuery_referralAccountId = strdup("referralAccountId");
        valueQuery_referralAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_referralAccountId, MAX_NUMBER_LENGTH_LONG, "%d", referralAccountId);
        keyPairQuery_referralAccountId = keyValuePair_create(keyQuery_referralAccountId, valueQuery_referralAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_referralAccountId);
    }

    // query parameters
    char *keyQuery_sendValidation = NULL;
    char * valueQuery_sendValidation = NULL;
    keyValuePair_t *keyPairQuery_sendValidation = 0;
    if (sendValidation)
    {
        keyQuery_sendValidation = strdup("sendValidation");
        valueQuery_sendValidation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sendValidation, MAX_NUMBER_LENGTH, "%d", *sendValidation);
        keyPairQuery_sendValidation = keyValuePair_create(keyQuery_sendValidation, valueQuery_sendValidation);
        list_addElement(localVarQueryParameters,keyPairQuery_sendValidation);
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
    char *keyQuery_appVersion = NULL;
    char * valueQuery_appVersion = NULL;
    keyValuePair_t *keyPairQuery_appVersion = 0;
    if (appVersion)
    {
        keyQuery_appVersion = strdup("appVersion");
        valueQuery_appVersion = strdup((appVersion));
        keyPairQuery_appVersion = keyValuePair_create(keyQuery_appVersion, valueQuery_appVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_appVersion);
    }

    // query parameters
    char *keyQuery_responseType = NULL;
    char * valueQuery_responseType = NULL;
    keyValuePair_t *keyPairQuery_responseType = 0;
    if (responseType)
    {
        keyQuery_responseType = strdup("responseType");
        valueQuery_responseType = strdup((responseType));
        keyPairQuery_responseType = keyValuePair_create(keyQuery_responseType, valueQuery_responseType);
        list_addElement(localVarQueryParameters,keyPairQuery_responseType);
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
    char *keyQuery_appBlob = NULL;
    char * valueQuery_appBlob = NULL;
    keyValuePair_t *keyPairQuery_appBlob = 0;
    if (appBlob)
    {
        keyQuery_appBlob = strdup("appBlob");
        valueQuery_appBlob = strdup((appBlob));
        keyPairQuery_appBlob = keyValuePair_create(keyQuery_appBlob, valueQuery_appBlob);
        list_addElement(localVarQueryParameters,keyPairQuery_appBlob);
    }

    // query parameters
    char *keyQuery_appEnablePush = NULL;
    char * valueQuery_appEnablePush = NULL;
    keyValuePair_t *keyPairQuery_appEnablePush = 0;
    if (appEnablePush)
    {
        keyQuery_appEnablePush = strdup("appEnablePush");
        valueQuery_appEnablePush = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_appEnablePush, MAX_NUMBER_LENGTH, "%d", *appEnablePush);
        keyPairQuery_appEnablePush = keyValuePair_create(keyQuery_appEnablePush, valueQuery_appEnablePush);
        list_addElement(localVarQueryParameters,keyPairQuery_appEnablePush);
    }

    // query parameters
    char *keyQuery_appEnableSMS = NULL;
    char * valueQuery_appEnableSMS = NULL;
    keyValuePair_t *keyPairQuery_appEnableSMS = 0;
    if (appEnableSMS)
    {
        keyQuery_appEnableSMS = strdup("appEnableSMS");
        valueQuery_appEnableSMS = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_appEnableSMS, MAX_NUMBER_LENGTH, "%d", *appEnableSMS);
        keyPairQuery_appEnableSMS = keyValuePair_create(keyQuery_appEnableSMS, valueQuery_appEnableSMS);
        list_addElement(localVarQueryParameters,keyPairQuery_appEnableSMS);
    }

    // query parameters
    char *keyQuery_appEnableEmail = NULL;
    char * valueQuery_appEnableEmail = NULL;
    keyValuePair_t *keyPairQuery_appEnableEmail = 0;
    if (appEnableEmail)
    {
        keyQuery_appEnableEmail = strdup("appEnableEmail");
        valueQuery_appEnableEmail = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_appEnableEmail, MAX_NUMBER_LENGTH, "%d", *appEnableEmail);
        keyPairQuery_appEnableEmail = keyValuePair_create(keyQuery_appEnableEmail, valueQuery_appEnableEmail);
        list_addElement(localVarQueryParameters,keyPairQuery_appEnableEmail);
    }

    // query parameters
    char *keyQuery_locationVisibility = NULL;
    char * valueQuery_locationVisibility = NULL;
    keyValuePair_t *keyPairQuery_locationVisibility = 0;
    if (locationVisibility)
    {
        keyQuery_locationVisibility = strdup("locationVisibility");
        valueQuery_locationVisibility = strdup((locationVisibility));
        keyPairQuery_locationVisibility = keyValuePair_create(keyQuery_locationVisibility, valueQuery_locationVisibility);
        list_addElement(localVarQueryParameters,keyPairQuery_locationVisibility);
    }

    // query parameters
    char *keyQuery_homeLatitude = NULL;
    char * valueQuery_homeLatitude = NULL;
    keyValuePair_t *keyPairQuery_homeLatitude = 0;
    {
        keyQuery_homeLatitude = strdup("homeLatitude");
        int s = snprintf(NULL, 0, "%.16e", homeLatitude);
        if (s >= 0)
        {
            valueQuery_homeLatitude = calloc(1,s+1);
            snprintf(valueQuery_homeLatitude, s+1, "%.16e", homeLatitude);
        }
        keyPairQuery_homeLatitude = keyValuePair_create(keyQuery_homeLatitude, valueQuery_homeLatitude);
        list_addElement(localVarQueryParameters,keyPairQuery_homeLatitude);
    }

    // query parameters
    char *keyQuery_homeLongitude = NULL;
    char * valueQuery_homeLongitude = NULL;
    keyValuePair_t *keyPairQuery_homeLongitude = 0;
    {
        keyQuery_homeLongitude = strdup("homeLongitude");
        int s = snprintf(NULL, 0, "%.16e", homeLongitude);
        if (s >= 0)
        {
            valueQuery_homeLongitude = calloc(1,s+1);
            snprintf(valueQuery_homeLongitude, s+1, "%.16e", homeLongitude);
        }
        keyPairQuery_homeLongitude = keyValuePair_create(keyQuery_homeLongitude, valueQuery_homeLongitude);
        list_addElement(localVarQueryParameters,keyPairQuery_homeLongitude);
    }

    // query parameters
    char *keyQuery_appNickname = NULL;
    char * valueQuery_appNickname = NULL;
    keyValuePair_t *keyPairQuery_appNickname = 0;
    if (appNickname)
    {
        keyQuery_appNickname = strdup("appNickname");
        valueQuery_appNickname = strdup((appNickname));
        keyPairQuery_appNickname = keyValuePair_create(keyQuery_appNickname, valueQuery_appNickname);
        list_addElement(localVarQueryParameters,keyPairQuery_appNickname);
    }

    // query parameters
    char *keyQuery_personalAudienceId = NULL;
    char * valueQuery_personalAudienceId ;
    keyValuePair_t *keyPairQuery_personalAudienceId = 0;
    {
        keyQuery_personalAudienceId = strdup("personalAudienceId");
        valueQuery_personalAudienceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_personalAudienceId, MAX_NUMBER_LENGTH_LONG, "%d", personalAudienceId);
        keyPairQuery_personalAudienceId = keyValuePair_create(keyQuery_personalAudienceId, valueQuery_personalAudienceId);
        list_addElement(localVarQueryParameters,keyPairQuery_personalAudienceId);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = account_login_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_prefixName){
        free(keyQuery_prefixName);
        keyQuery_prefixName = NULL;
    }
    if(valueQuery_prefixName){
        free(valueQuery_prefixName);
        valueQuery_prefixName = NULL;
    }
    if(keyPairQuery_prefixName){
        keyValuePair_free(keyPairQuery_prefixName);
        keyPairQuery_prefixName = NULL;
    }
    if(keyQuery_firstName){
        free(keyQuery_firstName);
        keyQuery_firstName = NULL;
    }
    if(valueQuery_firstName){
        free(valueQuery_firstName);
        valueQuery_firstName = NULL;
    }
    if(keyPairQuery_firstName){
        keyValuePair_free(keyPairQuery_firstName);
        keyPairQuery_firstName = NULL;
    }
    if(keyQuery_middleName){
        free(keyQuery_middleName);
        keyQuery_middleName = NULL;
    }
    if(valueQuery_middleName){
        free(valueQuery_middleName);
        valueQuery_middleName = NULL;
    }
    if(keyPairQuery_middleName){
        keyValuePair_free(keyPairQuery_middleName);
        keyPairQuery_middleName = NULL;
    }
    if(keyQuery_lastName){
        free(keyQuery_lastName);
        keyQuery_lastName = NULL;
    }
    if(valueQuery_lastName){
        free(valueQuery_lastName);
        valueQuery_lastName = NULL;
    }
    if(keyPairQuery_lastName){
        keyValuePair_free(keyPairQuery_lastName);
        keyPairQuery_lastName = NULL;
    }
    if(keyQuery_suffixName){
        free(keyQuery_suffixName);
        keyQuery_suffixName = NULL;
    }
    if(valueQuery_suffixName){
        free(valueQuery_suffixName);
        valueQuery_suffixName = NULL;
    }
    if(keyPairQuery_suffixName){
        keyValuePair_free(keyPairQuery_suffixName);
        keyPairQuery_suffixName = NULL;
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
    if(keyQuery_deviceIdType){
        free(keyQuery_deviceIdType);
        keyQuery_deviceIdType = NULL;
    }
    if(valueQuery_deviceIdType){
        free(valueQuery_deviceIdType);
        valueQuery_deviceIdType = NULL;
    }
    if(keyPairQuery_deviceIdType){
        keyValuePair_free(keyPairQuery_deviceIdType);
        keyPairQuery_deviceIdType = NULL;
    }
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
    if(keyQuery_emailAddress){
        free(keyQuery_emailAddress);
        keyQuery_emailAddress = NULL;
    }
    if(valueQuery_emailAddress){
        free(valueQuery_emailAddress);
        valueQuery_emailAddress = NULL;
    }
    if(keyPairQuery_emailAddress){
        keyValuePair_free(keyPairQuery_emailAddress);
        keyPairQuery_emailAddress = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
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
    if(keyQuery_zipcode){
        free(keyQuery_zipcode);
        keyQuery_zipcode = NULL;
    }
    if(valueQuery_zipcode){
        free(valueQuery_zipcode);
        valueQuery_zipcode = NULL;
    }
    if(keyPairQuery_zipcode){
        keyValuePair_free(keyPairQuery_zipcode);
        keyPairQuery_zipcode = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_birthday){
        free(keyQuery_birthday);
        keyQuery_birthday = NULL;
    }
    if(keyPairQuery_birthday){
        keyValuePair_free(keyPairQuery_birthday);
        keyPairQuery_birthday = NULL;
    }
    if(keyQuery_homePhone){
        free(keyQuery_homePhone);
        keyQuery_homePhone = NULL;
    }
    if(valueQuery_homePhone){
        free(valueQuery_homePhone);
        valueQuery_homePhone = NULL;
    }
    if(keyPairQuery_homePhone){
        keyValuePair_free(keyPairQuery_homePhone);
        keyPairQuery_homePhone = NULL;
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
    if(keyQuery_cellPhoneCarrier){
        free(keyQuery_cellPhoneCarrier);
        keyQuery_cellPhoneCarrier = NULL;
    }
    if(valueQuery_cellPhoneCarrier){
        free(valueQuery_cellPhoneCarrier);
        valueQuery_cellPhoneCarrier = NULL;
    }
    if(keyPairQuery_cellPhoneCarrier){
        keyValuePair_free(keyPairQuery_cellPhoneCarrier);
        keyPairQuery_cellPhoneCarrier = NULL;
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
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
    }
    if(keyQuery_platforms){
        free(keyQuery_platforms);
        keyQuery_platforms = NULL;
    }
    if(valueQuery_platforms){
        free(valueQuery_platforms);
        valueQuery_platforms = NULL;
    }
    if(keyPairQuery_platforms){
        keyValuePair_free(keyPairQuery_platforms);
        keyPairQuery_platforms = NULL;
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
    if(keyQuery_aboutUs){
        free(keyQuery_aboutUs);
        keyQuery_aboutUs = NULL;
    }
    if(valueQuery_aboutUs){
        free(valueQuery_aboutUs);
        valueQuery_aboutUs = NULL;
    }
    if(keyPairQuery_aboutUs){
        keyValuePair_free(keyPairQuery_aboutUs);
        keyPairQuery_aboutUs = NULL;
    }
    if(keyQuery_gameExperience){
        free(keyQuery_gameExperience);
        keyQuery_gameExperience = NULL;
    }
    if(valueQuery_gameExperience){
        free(valueQuery_gameExperience);
        valueQuery_gameExperience = NULL;
    }
    if(keyPairQuery_gameExperience){
        keyValuePair_free(keyPairQuery_gameExperience);
        keyPairQuery_gameExperience = NULL;
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
    if(keyQuery_hometown){
        free(keyQuery_hometown);
        keyQuery_hometown = NULL;
    }
    if(valueQuery_hometown){
        free(valueQuery_hometown);
        valueQuery_hometown = NULL;
    }
    if(keyPairQuery_hometown){
        keyValuePair_free(keyPairQuery_hometown);
        keyPairQuery_hometown = NULL;
    }
    if(keyQuery_height){
        free(keyQuery_height);
        keyQuery_height = NULL;
    }
    if(valueQuery_height){
        free(valueQuery_height);
        valueQuery_height = NULL;
    }
    if(keyPairQuery_height){
        keyValuePair_free(keyPairQuery_height);
        keyPairQuery_height = NULL;
    }
    if(keyQuery_heightIndex){
        free(keyQuery_heightIndex);
        keyQuery_heightIndex = NULL;
    }
    if(valueQuery_heightIndex){
        free(valueQuery_heightIndex);
        valueQuery_heightIndex = NULL;
    }
    if(keyPairQuery_heightIndex){
        keyValuePair_free(keyPairQuery_heightIndex);
        keyPairQuery_heightIndex = NULL;
    }
    if(keyQuery_ethnicity){
        free(keyQuery_ethnicity);
        keyQuery_ethnicity = NULL;
    }
    if(valueQuery_ethnicity){
        free(valueQuery_ethnicity);
        valueQuery_ethnicity = NULL;
    }
    if(keyPairQuery_ethnicity){
        keyValuePair_free(keyPairQuery_ethnicity);
        keyPairQuery_ethnicity = NULL;
    }
    if(keyQuery_bodyType){
        free(keyQuery_bodyType);
        keyQuery_bodyType = NULL;
    }
    if(valueQuery_bodyType){
        free(valueQuery_bodyType);
        valueQuery_bodyType = NULL;
    }
    if(keyPairQuery_bodyType){
        keyValuePair_free(keyPairQuery_bodyType);
        keyPairQuery_bodyType = NULL;
    }
    if(keyQuery_maritalStatus){
        free(keyQuery_maritalStatus);
        keyQuery_maritalStatus = NULL;
    }
    if(valueQuery_maritalStatus){
        free(valueQuery_maritalStatus);
        valueQuery_maritalStatus = NULL;
    }
    if(keyPairQuery_maritalStatus){
        keyValuePair_free(keyPairQuery_maritalStatus);
        keyPairQuery_maritalStatus = NULL;
    }
    if(keyQuery_children){
        free(keyQuery_children);
        keyQuery_children = NULL;
    }
    if(valueQuery_children){
        free(valueQuery_children);
        valueQuery_children = NULL;
    }
    if(keyPairQuery_children){
        keyValuePair_free(keyPairQuery_children);
        keyPairQuery_children = NULL;
    }
    if(keyQuery_religion){
        free(keyQuery_religion);
        keyQuery_religion = NULL;
    }
    if(valueQuery_religion){
        free(valueQuery_religion);
        valueQuery_religion = NULL;
    }
    if(keyPairQuery_religion){
        keyValuePair_free(keyPairQuery_religion);
        keyPairQuery_religion = NULL;
    }
    if(keyQuery_education){
        free(keyQuery_education);
        keyQuery_education = NULL;
    }
    if(valueQuery_education){
        free(valueQuery_education);
        valueQuery_education = NULL;
    }
    if(keyPairQuery_education){
        keyValuePair_free(keyPairQuery_education);
        keyPairQuery_education = NULL;
    }
    if(keyQuery_educationIndex){
        free(keyQuery_educationIndex);
        keyQuery_educationIndex = NULL;
    }
    if(valueQuery_educationIndex){
        free(valueQuery_educationIndex);
        valueQuery_educationIndex = NULL;
    }
    if(keyPairQuery_educationIndex){
        keyValuePair_free(keyPairQuery_educationIndex);
        keyPairQuery_educationIndex = NULL;
    }
    if(keyQuery_smoke){
        free(keyQuery_smoke);
        keyQuery_smoke = NULL;
    }
    if(valueQuery_smoke){
        free(valueQuery_smoke);
        valueQuery_smoke = NULL;
    }
    if(keyPairQuery_smoke){
        keyValuePair_free(keyPairQuery_smoke);
        keyPairQuery_smoke = NULL;
    }
    if(keyQuery_drink){
        free(keyQuery_drink);
        keyQuery_drink = NULL;
    }
    if(valueQuery_drink){
        free(valueQuery_drink);
        valueQuery_drink = NULL;
    }
    if(keyPairQuery_drink){
        keyValuePair_free(keyPairQuery_drink);
        keyPairQuery_drink = NULL;
    }
    if(keyQuery_companionship){
        free(keyQuery_companionship);
        keyQuery_companionship = NULL;
    }
    if(valueQuery_companionship){
        free(valueQuery_companionship);
        valueQuery_companionship = NULL;
    }
    if(keyPairQuery_companionship){
        keyValuePair_free(keyPairQuery_companionship);
        keyPairQuery_companionship = NULL;
    }
    if(keyQuery_companionshipIndex){
        free(keyQuery_companionshipIndex);
        keyQuery_companionshipIndex = NULL;
    }
    if(valueQuery_companionshipIndex){
        free(valueQuery_companionshipIndex);
        valueQuery_companionshipIndex = NULL;
    }
    if(keyPairQuery_companionshipIndex){
        keyValuePair_free(keyPairQuery_companionshipIndex);
        keyPairQuery_companionshipIndex = NULL;
    }
    if(keyQuery_preferredMinAge){
        free(keyQuery_preferredMinAge);
        keyQuery_preferredMinAge = NULL;
    }
    if(valueQuery_preferredMinAge){
        free(valueQuery_preferredMinAge);
        valueQuery_preferredMinAge = NULL;
    }
    if(keyPairQuery_preferredMinAge){
        keyValuePair_free(keyPairQuery_preferredMinAge);
        keyPairQuery_preferredMinAge = NULL;
    }
    if(keyQuery_preferredMaxAge){
        free(keyQuery_preferredMaxAge);
        keyQuery_preferredMaxAge = NULL;
    }
    if(valueQuery_preferredMaxAge){
        free(valueQuery_preferredMaxAge);
        valueQuery_preferredMaxAge = NULL;
    }
    if(keyPairQuery_preferredMaxAge){
        keyValuePair_free(keyPairQuery_preferredMaxAge);
        keyPairQuery_preferredMaxAge = NULL;
    }
    if(keyQuery_preferredMinHeight){
        free(keyQuery_preferredMinHeight);
        keyQuery_preferredMinHeight = NULL;
    }
    if(valueQuery_preferredMinHeight){
        free(valueQuery_preferredMinHeight);
        valueQuery_preferredMinHeight = NULL;
    }
    if(keyPairQuery_preferredMinHeight){
        keyValuePair_free(keyPairQuery_preferredMinHeight);
        keyPairQuery_preferredMinHeight = NULL;
    }
    if(keyQuery_preferredMaxHeight){
        free(keyQuery_preferredMaxHeight);
        keyQuery_preferredMaxHeight = NULL;
    }
    if(valueQuery_preferredMaxHeight){
        free(valueQuery_preferredMaxHeight);
        valueQuery_preferredMaxHeight = NULL;
    }
    if(keyPairQuery_preferredMaxHeight){
        keyValuePair_free(keyPairQuery_preferredMaxHeight);
        keyPairQuery_preferredMaxHeight = NULL;
    }
    if(keyQuery_preferredGender){
        free(keyQuery_preferredGender);
        keyQuery_preferredGender = NULL;
    }
    if(valueQuery_preferredGender){
        free(valueQuery_preferredGender);
        valueQuery_preferredGender = NULL;
    }
    if(keyPairQuery_preferredGender){
        keyValuePair_free(keyPairQuery_preferredGender);
        keyPairQuery_preferredGender = NULL;
    }
    if(keyQuery_preferredEducation){
        free(keyQuery_preferredEducation);
        keyQuery_preferredEducation = NULL;
    }
    if(valueQuery_preferredEducation){
        free(valueQuery_preferredEducation);
        valueQuery_preferredEducation = NULL;
    }
    if(keyPairQuery_preferredEducation){
        keyValuePair_free(keyPairQuery_preferredEducation);
        keyPairQuery_preferredEducation = NULL;
    }
    if(keyQuery_preferredEducationIndex){
        free(keyQuery_preferredEducationIndex);
        keyQuery_preferredEducationIndex = NULL;
    }
    if(valueQuery_preferredEducationIndex){
        free(valueQuery_preferredEducationIndex);
        valueQuery_preferredEducationIndex = NULL;
    }
    if(keyPairQuery_preferredEducationIndex){
        keyValuePair_free(keyPairQuery_preferredEducationIndex);
        keyPairQuery_preferredEducationIndex = NULL;
    }
    if(keyQuery_preferredBodyType){
        free(keyQuery_preferredBodyType);
        keyQuery_preferredBodyType = NULL;
    }
    if(valueQuery_preferredBodyType){
        free(valueQuery_preferredBodyType);
        valueQuery_preferredBodyType = NULL;
    }
    if(keyPairQuery_preferredBodyType){
        keyValuePair_free(keyPairQuery_preferredBodyType);
        keyPairQuery_preferredBodyType = NULL;
    }
    if(keyQuery_preferredEthnicity){
        free(keyQuery_preferredEthnicity);
        keyQuery_preferredEthnicity = NULL;
    }
    if(valueQuery_preferredEthnicity){
        free(valueQuery_preferredEthnicity);
        valueQuery_preferredEthnicity = NULL;
    }
    if(keyPairQuery_preferredEthnicity){
        keyValuePair_free(keyPairQuery_preferredEthnicity);
        keyPairQuery_preferredEthnicity = NULL;
    }
    if(keyQuery_preferredLocation){
        free(keyQuery_preferredLocation);
        keyQuery_preferredLocation = NULL;
    }
    if(valueQuery_preferredLocation){
        free(valueQuery_preferredLocation);
        valueQuery_preferredLocation = NULL;
    }
    if(keyPairQuery_preferredLocation){
        keyValuePair_free(keyPairQuery_preferredLocation);
        keyPairQuery_preferredLocation = NULL;
    }
    if(keyQuery_preferredLocationRange){
        free(keyQuery_preferredLocationRange);
        keyQuery_preferredLocationRange = NULL;
    }
    if(keyPairQuery_preferredLocationRange){
        keyValuePair_free(keyPairQuery_preferredLocationRange);
        keyPairQuery_preferredLocationRange = NULL;
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
    if(keyQuery_acceptedTerms){
        free(keyQuery_acceptedTerms);
        keyQuery_acceptedTerms = NULL;
    }
    if(valueQuery_acceptedTerms){
        free(valueQuery_acceptedTerms);
        valueQuery_acceptedTerms = NULL;
    }
    if(keyPairQuery_acceptedTerms){
        keyValuePair_free(keyPairQuery_acceptedTerms);
        keyPairQuery_acceptedTerms = NULL;
    }
    if(keyQuery_inviteToken){
        free(keyQuery_inviteToken);
        keyQuery_inviteToken = NULL;
    }
    if(valueQuery_inviteToken){
        free(valueQuery_inviteToken);
        valueQuery_inviteToken = NULL;
    }
    if(keyPairQuery_inviteToken){
        keyValuePair_free(keyPairQuery_inviteToken);
        keyPairQuery_inviteToken = NULL;
    }
    if(keyQuery_referralAccountId){
        free(keyQuery_referralAccountId);
        keyQuery_referralAccountId = NULL;
    }
    if(keyPairQuery_referralAccountId){
        keyValuePair_free(keyPairQuery_referralAccountId);
        keyPairQuery_referralAccountId = NULL;
    }
    if(keyQuery_sendValidation){
        free(keyQuery_sendValidation);
        keyQuery_sendValidation = NULL;
    }
    if(valueQuery_sendValidation){
        free(valueQuery_sendValidation);
        valueQuery_sendValidation = NULL;
    }
    if(keyPairQuery_sendValidation){
        keyValuePair_free(keyPairQuery_sendValidation);
        keyPairQuery_sendValidation = NULL;
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
    if(keyQuery_appVersion){
        free(keyQuery_appVersion);
        keyQuery_appVersion = NULL;
    }
    if(valueQuery_appVersion){
        free(valueQuery_appVersion);
        valueQuery_appVersion = NULL;
    }
    if(keyPairQuery_appVersion){
        keyValuePair_free(keyPairQuery_appVersion);
        keyPairQuery_appVersion = NULL;
    }
    if(keyQuery_responseType){
        free(keyQuery_responseType);
        keyQuery_responseType = NULL;
    }
    if(valueQuery_responseType){
        free(valueQuery_responseType);
        valueQuery_responseType = NULL;
    }
    if(keyPairQuery_responseType){
        keyValuePair_free(keyPairQuery_responseType);
        keyPairQuery_responseType = NULL;
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
    if(keyQuery_appBlob){
        free(keyQuery_appBlob);
        keyQuery_appBlob = NULL;
    }
    if(valueQuery_appBlob){
        free(valueQuery_appBlob);
        valueQuery_appBlob = NULL;
    }
    if(keyPairQuery_appBlob){
        keyValuePair_free(keyPairQuery_appBlob);
        keyPairQuery_appBlob = NULL;
    }
    if(keyQuery_appEnablePush){
        free(keyQuery_appEnablePush);
        keyQuery_appEnablePush = NULL;
    }
    if(valueQuery_appEnablePush){
        free(valueQuery_appEnablePush);
        valueQuery_appEnablePush = NULL;
    }
    if(keyPairQuery_appEnablePush){
        keyValuePair_free(keyPairQuery_appEnablePush);
        keyPairQuery_appEnablePush = NULL;
    }
    if(keyQuery_appEnableSMS){
        free(keyQuery_appEnableSMS);
        keyQuery_appEnableSMS = NULL;
    }
    if(valueQuery_appEnableSMS){
        free(valueQuery_appEnableSMS);
        valueQuery_appEnableSMS = NULL;
    }
    if(keyPairQuery_appEnableSMS){
        keyValuePair_free(keyPairQuery_appEnableSMS);
        keyPairQuery_appEnableSMS = NULL;
    }
    if(keyQuery_appEnableEmail){
        free(keyQuery_appEnableEmail);
        keyQuery_appEnableEmail = NULL;
    }
    if(valueQuery_appEnableEmail){
        free(valueQuery_appEnableEmail);
        valueQuery_appEnableEmail = NULL;
    }
    if(keyPairQuery_appEnableEmail){
        keyValuePair_free(keyPairQuery_appEnableEmail);
        keyPairQuery_appEnableEmail = NULL;
    }
    if(keyQuery_locationVisibility){
        free(keyQuery_locationVisibility);
        keyQuery_locationVisibility = NULL;
    }
    if(valueQuery_locationVisibility){
        free(valueQuery_locationVisibility);
        valueQuery_locationVisibility = NULL;
    }
    if(keyPairQuery_locationVisibility){
        keyValuePair_free(keyPairQuery_locationVisibility);
        keyPairQuery_locationVisibility = NULL;
    }
    if(keyQuery_homeLatitude){
        free(keyQuery_homeLatitude);
        keyQuery_homeLatitude = NULL;
    }
    if(keyPairQuery_homeLatitude){
        keyValuePair_free(keyPairQuery_homeLatitude);
        keyPairQuery_homeLatitude = NULL;
    }
    if(keyQuery_homeLongitude){
        free(keyQuery_homeLongitude);
        keyQuery_homeLongitude = NULL;
    }
    if(keyPairQuery_homeLongitude){
        keyValuePair_free(keyPairQuery_homeLongitude);
        keyPairQuery_homeLongitude = NULL;
    }
    if(keyQuery_appNickname){
        free(keyQuery_appNickname);
        keyQuery_appNickname = NULL;
    }
    if(valueQuery_appNickname){
        free(valueQuery_appNickname);
        valueQuery_appNickname = NULL;
    }
    if(keyPairQuery_appNickname){
        keyValuePair_free(keyPairQuery_appNickname);
        keyPairQuery_appNickname = NULL;
    }
    if(keyQuery_personalAudienceId){
        free(keyQuery_personalAudienceId);
        keyQuery_personalAudienceId = NULL;
    }
    if(keyPairQuery_personalAudienceId){
        keyValuePair_free(keyPairQuery_personalAudienceId);
        keyPairQuery_personalAudienceId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Account
//
// Edit the user's profile information
//
profile_info_response_t*
AccountAPI_editAccount(apiClient_t *apiClient, double version, char *deviceId, long accountId, long connectionAccountId, char *role, long assetId, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *gender, int *age, long birthday, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *emailAddress, char *streetAddress, char *streetAddress2, char *city, char *state, char *zipcode, char *country, int *makeProfileInfoPublic, int *makeGameInfoPublic, int *makeFriendsInfoPublic, char *hometown, char *height, int *heightIndex, char *ethnicity, char *bodyType, char *maritalStatus, char *children, char *religion, char *education, int *educationIndex, char *smoke, char *drink, char *companionship, int *companionshipIndex, int *preferredMinAge, int *preferredMaxAge, int *preferredMinHeight, int *preferredMaxHeight, char *preferredGender, char *preferredEducation, int *preferredEducationIndex, char *preferredBodyType, char *preferredEthnicity, char *preferredLocation, double preferredLocationRange, char *platforms, char *tags, char *aboutUs, char *matchToken, char *gameExperience, char *categories, char *categoryIds, char *responseFilters, int *showAsZipcode, int *showExactLocation, int *showOthersExactLocation, int *acceptedTerms, char *locationVisibility, char *appBlob, int *appEnablePush, int *appEnableSMS, int *appEnableEmail, char *gameType, char *appKey, double latitude, double longitude, int *returnProfile, char *audienceIdsToAdd, char *audienceIdsToRemove, long referralAccountId, char *appNickname, long personalAudienceId, char *nonGuestUsername)
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
    char *localVarPath = strdup("/api/{version}/account/profile/update");



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
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
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
    char *keyQuery_prefixName = NULL;
    char * valueQuery_prefixName = NULL;
    keyValuePair_t *keyPairQuery_prefixName = 0;
    if (prefixName)
    {
        keyQuery_prefixName = strdup("prefixName");
        valueQuery_prefixName = strdup((prefixName));
        keyPairQuery_prefixName = keyValuePair_create(keyQuery_prefixName, valueQuery_prefixName);
        list_addElement(localVarQueryParameters,keyPairQuery_prefixName);
    }

    // query parameters
    char *keyQuery_firstName = NULL;
    char * valueQuery_firstName = NULL;
    keyValuePair_t *keyPairQuery_firstName = 0;
    if (firstName)
    {
        keyQuery_firstName = strdup("firstName");
        valueQuery_firstName = strdup((firstName));
        keyPairQuery_firstName = keyValuePair_create(keyQuery_firstName, valueQuery_firstName);
        list_addElement(localVarQueryParameters,keyPairQuery_firstName);
    }

    // query parameters
    char *keyQuery_middleName = NULL;
    char * valueQuery_middleName = NULL;
    keyValuePair_t *keyPairQuery_middleName = 0;
    if (middleName)
    {
        keyQuery_middleName = strdup("middleName");
        valueQuery_middleName = strdup((middleName));
        keyPairQuery_middleName = keyValuePair_create(keyQuery_middleName, valueQuery_middleName);
        list_addElement(localVarQueryParameters,keyPairQuery_middleName);
    }

    // query parameters
    char *keyQuery_lastName = NULL;
    char * valueQuery_lastName = NULL;
    keyValuePair_t *keyPairQuery_lastName = 0;
    if (lastName)
    {
        keyQuery_lastName = strdup("lastName");
        valueQuery_lastName = strdup((lastName));
        keyPairQuery_lastName = keyValuePair_create(keyQuery_lastName, valueQuery_lastName);
        list_addElement(localVarQueryParameters,keyPairQuery_lastName);
    }

    // query parameters
    char *keyQuery_suffixName = NULL;
    char * valueQuery_suffixName = NULL;
    keyValuePair_t *keyPairQuery_suffixName = 0;
    if (suffixName)
    {
        keyQuery_suffixName = strdup("suffixName");
        valueQuery_suffixName = strdup((suffixName));
        keyPairQuery_suffixName = keyValuePair_create(keyQuery_suffixName, valueQuery_suffixName);
        list_addElement(localVarQueryParameters,keyPairQuery_suffixName);
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
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_age = NULL;
    char * valueQuery_age = NULL;
    keyValuePair_t *keyPairQuery_age = 0;
    if (age)
    {
        keyQuery_age = strdup("age");
        valueQuery_age = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_age, MAX_NUMBER_LENGTH, "%d", *age);
        keyPairQuery_age = keyValuePair_create(keyQuery_age, valueQuery_age);
        list_addElement(localVarQueryParameters,keyPairQuery_age);
    }

    // query parameters
    char *keyQuery_birthday = NULL;
    char * valueQuery_birthday ;
    keyValuePair_t *keyPairQuery_birthday = 0;
    {
        keyQuery_birthday = strdup("birthday");
        valueQuery_birthday = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_birthday, MAX_NUMBER_LENGTH_LONG, "%d", birthday);
        keyPairQuery_birthday = keyValuePair_create(keyQuery_birthday, valueQuery_birthday);
        list_addElement(localVarQueryParameters,keyPairQuery_birthday);
    }

    // query parameters
    char *keyQuery_homePhone = NULL;
    char * valueQuery_homePhone = NULL;
    keyValuePair_t *keyPairQuery_homePhone = 0;
    if (homePhone)
    {
        keyQuery_homePhone = strdup("homePhone");
        valueQuery_homePhone = strdup((homePhone));
        keyPairQuery_homePhone = keyValuePair_create(keyQuery_homePhone, valueQuery_homePhone);
        list_addElement(localVarQueryParameters,keyPairQuery_homePhone);
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
    char *keyQuery_cellPhoneCarrier = NULL;
    char * valueQuery_cellPhoneCarrier = NULL;
    keyValuePair_t *keyPairQuery_cellPhoneCarrier = 0;
    if (cellPhoneCarrier)
    {
        keyQuery_cellPhoneCarrier = strdup("cellPhoneCarrier");
        valueQuery_cellPhoneCarrier = strdup((cellPhoneCarrier));
        keyPairQuery_cellPhoneCarrier = keyValuePair_create(keyQuery_cellPhoneCarrier, valueQuery_cellPhoneCarrier);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhoneCarrier);
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
    char *keyQuery_emailAddress = NULL;
    char * valueQuery_emailAddress = NULL;
    keyValuePair_t *keyPairQuery_emailAddress = 0;
    if (emailAddress)
    {
        keyQuery_emailAddress = strdup("emailAddress");
        valueQuery_emailAddress = strdup((emailAddress));
        keyPairQuery_emailAddress = keyValuePair_create(keyQuery_emailAddress, valueQuery_emailAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_emailAddress);
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
    char *keyQuery_zipcode = NULL;
    char * valueQuery_zipcode = NULL;
    keyValuePair_t *keyPairQuery_zipcode = 0;
    if (zipcode)
    {
        keyQuery_zipcode = strdup("zipcode");
        valueQuery_zipcode = strdup((zipcode));
        keyPairQuery_zipcode = keyValuePair_create(keyQuery_zipcode, valueQuery_zipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_zipcode);
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
    char *keyQuery_makeProfileInfoPublic = NULL;
    char * valueQuery_makeProfileInfoPublic = NULL;
    keyValuePair_t *keyPairQuery_makeProfileInfoPublic = 0;
    if (makeProfileInfoPublic)
    {
        keyQuery_makeProfileInfoPublic = strdup("makeProfileInfoPublic");
        valueQuery_makeProfileInfoPublic = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_makeProfileInfoPublic, MAX_NUMBER_LENGTH, "%d", *makeProfileInfoPublic);
        keyPairQuery_makeProfileInfoPublic = keyValuePair_create(keyQuery_makeProfileInfoPublic, valueQuery_makeProfileInfoPublic);
        list_addElement(localVarQueryParameters,keyPairQuery_makeProfileInfoPublic);
    }

    // query parameters
    char *keyQuery_makeGameInfoPublic = NULL;
    char * valueQuery_makeGameInfoPublic = NULL;
    keyValuePair_t *keyPairQuery_makeGameInfoPublic = 0;
    if (makeGameInfoPublic)
    {
        keyQuery_makeGameInfoPublic = strdup("makeGameInfoPublic");
        valueQuery_makeGameInfoPublic = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_makeGameInfoPublic, MAX_NUMBER_LENGTH, "%d", *makeGameInfoPublic);
        keyPairQuery_makeGameInfoPublic = keyValuePair_create(keyQuery_makeGameInfoPublic, valueQuery_makeGameInfoPublic);
        list_addElement(localVarQueryParameters,keyPairQuery_makeGameInfoPublic);
    }

    // query parameters
    char *keyQuery_makeFriendsInfoPublic = NULL;
    char * valueQuery_makeFriendsInfoPublic = NULL;
    keyValuePair_t *keyPairQuery_makeFriendsInfoPublic = 0;
    if (makeFriendsInfoPublic)
    {
        keyQuery_makeFriendsInfoPublic = strdup("makeFriendsInfoPublic");
        valueQuery_makeFriendsInfoPublic = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_makeFriendsInfoPublic, MAX_NUMBER_LENGTH, "%d", *makeFriendsInfoPublic);
        keyPairQuery_makeFriendsInfoPublic = keyValuePair_create(keyQuery_makeFriendsInfoPublic, valueQuery_makeFriendsInfoPublic);
        list_addElement(localVarQueryParameters,keyPairQuery_makeFriendsInfoPublic);
    }

    // query parameters
    char *keyQuery_hometown = NULL;
    char * valueQuery_hometown = NULL;
    keyValuePair_t *keyPairQuery_hometown = 0;
    if (hometown)
    {
        keyQuery_hometown = strdup("hometown");
        valueQuery_hometown = strdup((hometown));
        keyPairQuery_hometown = keyValuePair_create(keyQuery_hometown, valueQuery_hometown);
        list_addElement(localVarQueryParameters,keyPairQuery_hometown);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    if (height)
    {
        keyQuery_height = strdup("height");
        valueQuery_height = strdup((height));
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_heightIndex = NULL;
    char * valueQuery_heightIndex = NULL;
    keyValuePair_t *keyPairQuery_heightIndex = 0;
    if (heightIndex)
    {
        keyQuery_heightIndex = strdup("heightIndex");
        valueQuery_heightIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_heightIndex, MAX_NUMBER_LENGTH, "%d", *heightIndex);
        keyPairQuery_heightIndex = keyValuePair_create(keyQuery_heightIndex, valueQuery_heightIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_heightIndex);
    }

    // query parameters
    char *keyQuery_ethnicity = NULL;
    char * valueQuery_ethnicity = NULL;
    keyValuePair_t *keyPairQuery_ethnicity = 0;
    if (ethnicity)
    {
        keyQuery_ethnicity = strdup("ethnicity");
        valueQuery_ethnicity = strdup((ethnicity));
        keyPairQuery_ethnicity = keyValuePair_create(keyQuery_ethnicity, valueQuery_ethnicity);
        list_addElement(localVarQueryParameters,keyPairQuery_ethnicity);
    }

    // query parameters
    char *keyQuery_bodyType = NULL;
    char * valueQuery_bodyType = NULL;
    keyValuePair_t *keyPairQuery_bodyType = 0;
    if (bodyType)
    {
        keyQuery_bodyType = strdup("bodyType");
        valueQuery_bodyType = strdup((bodyType));
        keyPairQuery_bodyType = keyValuePair_create(keyQuery_bodyType, valueQuery_bodyType);
        list_addElement(localVarQueryParameters,keyPairQuery_bodyType);
    }

    // query parameters
    char *keyQuery_maritalStatus = NULL;
    char * valueQuery_maritalStatus = NULL;
    keyValuePair_t *keyPairQuery_maritalStatus = 0;
    if (maritalStatus)
    {
        keyQuery_maritalStatus = strdup("maritalStatus");
        valueQuery_maritalStatus = strdup((maritalStatus));
        keyPairQuery_maritalStatus = keyValuePair_create(keyQuery_maritalStatus, valueQuery_maritalStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_maritalStatus);
    }

    // query parameters
    char *keyQuery_children = NULL;
    char * valueQuery_children = NULL;
    keyValuePair_t *keyPairQuery_children = 0;
    if (children)
    {
        keyQuery_children = strdup("children");
        valueQuery_children = strdup((children));
        keyPairQuery_children = keyValuePair_create(keyQuery_children, valueQuery_children);
        list_addElement(localVarQueryParameters,keyPairQuery_children);
    }

    // query parameters
    char *keyQuery_religion = NULL;
    char * valueQuery_religion = NULL;
    keyValuePair_t *keyPairQuery_religion = 0;
    if (religion)
    {
        keyQuery_religion = strdup("religion");
        valueQuery_religion = strdup((religion));
        keyPairQuery_religion = keyValuePair_create(keyQuery_religion, valueQuery_religion);
        list_addElement(localVarQueryParameters,keyPairQuery_religion);
    }

    // query parameters
    char *keyQuery_education = NULL;
    char * valueQuery_education = NULL;
    keyValuePair_t *keyPairQuery_education = 0;
    if (education)
    {
        keyQuery_education = strdup("education");
        valueQuery_education = strdup((education));
        keyPairQuery_education = keyValuePair_create(keyQuery_education, valueQuery_education);
        list_addElement(localVarQueryParameters,keyPairQuery_education);
    }

    // query parameters
    char *keyQuery_educationIndex = NULL;
    char * valueQuery_educationIndex = NULL;
    keyValuePair_t *keyPairQuery_educationIndex = 0;
    if (educationIndex)
    {
        keyQuery_educationIndex = strdup("educationIndex");
        valueQuery_educationIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_educationIndex, MAX_NUMBER_LENGTH, "%d", *educationIndex);
        keyPairQuery_educationIndex = keyValuePair_create(keyQuery_educationIndex, valueQuery_educationIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_educationIndex);
    }

    // query parameters
    char *keyQuery_smoke = NULL;
    char * valueQuery_smoke = NULL;
    keyValuePair_t *keyPairQuery_smoke = 0;
    if (smoke)
    {
        keyQuery_smoke = strdup("smoke");
        valueQuery_smoke = strdup((smoke));
        keyPairQuery_smoke = keyValuePair_create(keyQuery_smoke, valueQuery_smoke);
        list_addElement(localVarQueryParameters,keyPairQuery_smoke);
    }

    // query parameters
    char *keyQuery_drink = NULL;
    char * valueQuery_drink = NULL;
    keyValuePair_t *keyPairQuery_drink = 0;
    if (drink)
    {
        keyQuery_drink = strdup("drink");
        valueQuery_drink = strdup((drink));
        keyPairQuery_drink = keyValuePair_create(keyQuery_drink, valueQuery_drink);
        list_addElement(localVarQueryParameters,keyPairQuery_drink);
    }

    // query parameters
    char *keyQuery_companionship = NULL;
    char * valueQuery_companionship = NULL;
    keyValuePair_t *keyPairQuery_companionship = 0;
    if (companionship)
    {
        keyQuery_companionship = strdup("companionship");
        valueQuery_companionship = strdup((companionship));
        keyPairQuery_companionship = keyValuePair_create(keyQuery_companionship, valueQuery_companionship);
        list_addElement(localVarQueryParameters,keyPairQuery_companionship);
    }

    // query parameters
    char *keyQuery_companionshipIndex = NULL;
    char * valueQuery_companionshipIndex = NULL;
    keyValuePair_t *keyPairQuery_companionshipIndex = 0;
    if (companionshipIndex)
    {
        keyQuery_companionshipIndex = strdup("companionshipIndex");
        valueQuery_companionshipIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_companionshipIndex, MAX_NUMBER_LENGTH, "%d", *companionshipIndex);
        keyPairQuery_companionshipIndex = keyValuePair_create(keyQuery_companionshipIndex, valueQuery_companionshipIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_companionshipIndex);
    }

    // query parameters
    char *keyQuery_preferredMinAge = NULL;
    char * valueQuery_preferredMinAge = NULL;
    keyValuePair_t *keyPairQuery_preferredMinAge = 0;
    if (preferredMinAge)
    {
        keyQuery_preferredMinAge = strdup("preferredMinAge");
        valueQuery_preferredMinAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMinAge, MAX_NUMBER_LENGTH, "%d", *preferredMinAge);
        keyPairQuery_preferredMinAge = keyValuePair_create(keyQuery_preferredMinAge, valueQuery_preferredMinAge);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMinAge);
    }

    // query parameters
    char *keyQuery_preferredMaxAge = NULL;
    char * valueQuery_preferredMaxAge = NULL;
    keyValuePair_t *keyPairQuery_preferredMaxAge = 0;
    if (preferredMaxAge)
    {
        keyQuery_preferredMaxAge = strdup("preferredMaxAge");
        valueQuery_preferredMaxAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMaxAge, MAX_NUMBER_LENGTH, "%d", *preferredMaxAge);
        keyPairQuery_preferredMaxAge = keyValuePair_create(keyQuery_preferredMaxAge, valueQuery_preferredMaxAge);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMaxAge);
    }

    // query parameters
    char *keyQuery_preferredMinHeight = NULL;
    char * valueQuery_preferredMinHeight = NULL;
    keyValuePair_t *keyPairQuery_preferredMinHeight = 0;
    if (preferredMinHeight)
    {
        keyQuery_preferredMinHeight = strdup("preferredMinHeight");
        valueQuery_preferredMinHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMinHeight, MAX_NUMBER_LENGTH, "%d", *preferredMinHeight);
        keyPairQuery_preferredMinHeight = keyValuePair_create(keyQuery_preferredMinHeight, valueQuery_preferredMinHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMinHeight);
    }

    // query parameters
    char *keyQuery_preferredMaxHeight = NULL;
    char * valueQuery_preferredMaxHeight = NULL;
    keyValuePair_t *keyPairQuery_preferredMaxHeight = 0;
    if (preferredMaxHeight)
    {
        keyQuery_preferredMaxHeight = strdup("preferredMaxHeight");
        valueQuery_preferredMaxHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMaxHeight, MAX_NUMBER_LENGTH, "%d", *preferredMaxHeight);
        keyPairQuery_preferredMaxHeight = keyValuePair_create(keyQuery_preferredMaxHeight, valueQuery_preferredMaxHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMaxHeight);
    }

    // query parameters
    char *keyQuery_preferredGender = NULL;
    char * valueQuery_preferredGender = NULL;
    keyValuePair_t *keyPairQuery_preferredGender = 0;
    if (preferredGender)
    {
        keyQuery_preferredGender = strdup("preferredGender");
        valueQuery_preferredGender = strdup((preferredGender));
        keyPairQuery_preferredGender = keyValuePair_create(keyQuery_preferredGender, valueQuery_preferredGender);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredGender);
    }

    // query parameters
    char *keyQuery_preferredEducation = NULL;
    char * valueQuery_preferredEducation = NULL;
    keyValuePair_t *keyPairQuery_preferredEducation = 0;
    if (preferredEducation)
    {
        keyQuery_preferredEducation = strdup("preferredEducation");
        valueQuery_preferredEducation = strdup((preferredEducation));
        keyPairQuery_preferredEducation = keyValuePair_create(keyQuery_preferredEducation, valueQuery_preferredEducation);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEducation);
    }

    // query parameters
    char *keyQuery_preferredEducationIndex = NULL;
    char * valueQuery_preferredEducationIndex = NULL;
    keyValuePair_t *keyPairQuery_preferredEducationIndex = 0;
    if (preferredEducationIndex)
    {
        keyQuery_preferredEducationIndex = strdup("preferredEducationIndex");
        valueQuery_preferredEducationIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredEducationIndex, MAX_NUMBER_LENGTH, "%d", *preferredEducationIndex);
        keyPairQuery_preferredEducationIndex = keyValuePair_create(keyQuery_preferredEducationIndex, valueQuery_preferredEducationIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEducationIndex);
    }

    // query parameters
    char *keyQuery_preferredBodyType = NULL;
    char * valueQuery_preferredBodyType = NULL;
    keyValuePair_t *keyPairQuery_preferredBodyType = 0;
    if (preferredBodyType)
    {
        keyQuery_preferredBodyType = strdup("preferredBodyType");
        valueQuery_preferredBodyType = strdup((preferredBodyType));
        keyPairQuery_preferredBodyType = keyValuePair_create(keyQuery_preferredBodyType, valueQuery_preferredBodyType);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredBodyType);
    }

    // query parameters
    char *keyQuery_preferredEthnicity = NULL;
    char * valueQuery_preferredEthnicity = NULL;
    keyValuePair_t *keyPairQuery_preferredEthnicity = 0;
    if (preferredEthnicity)
    {
        keyQuery_preferredEthnicity = strdup("preferredEthnicity");
        valueQuery_preferredEthnicity = strdup((preferredEthnicity));
        keyPairQuery_preferredEthnicity = keyValuePair_create(keyQuery_preferredEthnicity, valueQuery_preferredEthnicity);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEthnicity);
    }

    // query parameters
    char *keyQuery_preferredLocation = NULL;
    char * valueQuery_preferredLocation = NULL;
    keyValuePair_t *keyPairQuery_preferredLocation = 0;
    if (preferredLocation)
    {
        keyQuery_preferredLocation = strdup("preferredLocation");
        valueQuery_preferredLocation = strdup((preferredLocation));
        keyPairQuery_preferredLocation = keyValuePair_create(keyQuery_preferredLocation, valueQuery_preferredLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredLocation);
    }

    // query parameters
    char *keyQuery_preferredLocationRange = NULL;
    char * valueQuery_preferredLocationRange = NULL;
    keyValuePair_t *keyPairQuery_preferredLocationRange = 0;
    {
        keyQuery_preferredLocationRange = strdup("preferredLocationRange");
        int s = snprintf(NULL, 0, "%.16e", preferredLocationRange);
        if (s >= 0)
        {
            valueQuery_preferredLocationRange = calloc(1,s+1);
            snprintf(valueQuery_preferredLocationRange, s+1, "%.16e", preferredLocationRange);
        }
        keyPairQuery_preferredLocationRange = keyValuePair_create(keyQuery_preferredLocationRange, valueQuery_preferredLocationRange);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredLocationRange);
    }

    // query parameters
    char *keyQuery_platforms = NULL;
    char * valueQuery_platforms = NULL;
    keyValuePair_t *keyPairQuery_platforms = 0;
    if (platforms)
    {
        keyQuery_platforms = strdup("platforms");
        valueQuery_platforms = strdup((platforms));
        keyPairQuery_platforms = keyValuePair_create(keyQuery_platforms, valueQuery_platforms);
        list_addElement(localVarQueryParameters,keyPairQuery_platforms);
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
    char *keyQuery_aboutUs = NULL;
    char * valueQuery_aboutUs = NULL;
    keyValuePair_t *keyPairQuery_aboutUs = 0;
    if (aboutUs)
    {
        keyQuery_aboutUs = strdup("aboutUs");
        valueQuery_aboutUs = strdup((aboutUs));
        keyPairQuery_aboutUs = keyValuePair_create(keyQuery_aboutUs, valueQuery_aboutUs);
        list_addElement(localVarQueryParameters,keyPairQuery_aboutUs);
    }

    // query parameters
    char *keyQuery_matchToken = NULL;
    char * valueQuery_matchToken = NULL;
    keyValuePair_t *keyPairQuery_matchToken = 0;
    if (matchToken)
    {
        keyQuery_matchToken = strdup("matchToken");
        valueQuery_matchToken = strdup((matchToken));
        keyPairQuery_matchToken = keyValuePair_create(keyQuery_matchToken, valueQuery_matchToken);
        list_addElement(localVarQueryParameters,keyPairQuery_matchToken);
    }

    // query parameters
    char *keyQuery_gameExperience = NULL;
    char * valueQuery_gameExperience = NULL;
    keyValuePair_t *keyPairQuery_gameExperience = 0;
    if (gameExperience)
    {
        keyQuery_gameExperience = strdup("gameExperience");
        valueQuery_gameExperience = strdup((gameExperience));
        keyPairQuery_gameExperience = keyValuePair_create(keyQuery_gameExperience, valueQuery_gameExperience);
        list_addElement(localVarQueryParameters,keyPairQuery_gameExperience);
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
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
    }

    // query parameters
    char *keyQuery_showAsZipcode = NULL;
    char * valueQuery_showAsZipcode = NULL;
    keyValuePair_t *keyPairQuery_showAsZipcode = 0;
    if (showAsZipcode)
    {
        keyQuery_showAsZipcode = strdup("showAsZipcode");
        valueQuery_showAsZipcode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showAsZipcode, MAX_NUMBER_LENGTH, "%d", *showAsZipcode);
        keyPairQuery_showAsZipcode = keyValuePair_create(keyQuery_showAsZipcode, valueQuery_showAsZipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_showAsZipcode);
    }

    // query parameters
    char *keyQuery_showExactLocation = NULL;
    char * valueQuery_showExactLocation = NULL;
    keyValuePair_t *keyPairQuery_showExactLocation = 0;
    if (showExactLocation)
    {
        keyQuery_showExactLocation = strdup("showExactLocation");
        valueQuery_showExactLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showExactLocation, MAX_NUMBER_LENGTH, "%d", *showExactLocation);
        keyPairQuery_showExactLocation = keyValuePair_create(keyQuery_showExactLocation, valueQuery_showExactLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_showExactLocation);
    }

    // query parameters
    char *keyQuery_showOthersExactLocation = NULL;
    char * valueQuery_showOthersExactLocation = NULL;
    keyValuePair_t *keyPairQuery_showOthersExactLocation = 0;
    if (showOthersExactLocation)
    {
        keyQuery_showOthersExactLocation = strdup("showOthersExactLocation");
        valueQuery_showOthersExactLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showOthersExactLocation, MAX_NUMBER_LENGTH, "%d", *showOthersExactLocation);
        keyPairQuery_showOthersExactLocation = keyValuePair_create(keyQuery_showOthersExactLocation, valueQuery_showOthersExactLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_showOthersExactLocation);
    }

    // query parameters
    char *keyQuery_acceptedTerms = NULL;
    char * valueQuery_acceptedTerms = NULL;
    keyValuePair_t *keyPairQuery_acceptedTerms = 0;
    if (acceptedTerms)
    {
        keyQuery_acceptedTerms = strdup("acceptedTerms");
        valueQuery_acceptedTerms = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_acceptedTerms, MAX_NUMBER_LENGTH, "%d", *acceptedTerms);
        keyPairQuery_acceptedTerms = keyValuePair_create(keyQuery_acceptedTerms, valueQuery_acceptedTerms);
        list_addElement(localVarQueryParameters,keyPairQuery_acceptedTerms);
    }

    // query parameters
    char *keyQuery_locationVisibility = NULL;
    char * valueQuery_locationVisibility = NULL;
    keyValuePair_t *keyPairQuery_locationVisibility = 0;
    if (locationVisibility)
    {
        keyQuery_locationVisibility = strdup("locationVisibility");
        valueQuery_locationVisibility = strdup((locationVisibility));
        keyPairQuery_locationVisibility = keyValuePair_create(keyQuery_locationVisibility, valueQuery_locationVisibility);
        list_addElement(localVarQueryParameters,keyPairQuery_locationVisibility);
    }

    // query parameters
    char *keyQuery_appBlob = NULL;
    char * valueQuery_appBlob = NULL;
    keyValuePair_t *keyPairQuery_appBlob = 0;
    if (appBlob)
    {
        keyQuery_appBlob = strdup("appBlob");
        valueQuery_appBlob = strdup((appBlob));
        keyPairQuery_appBlob = keyValuePair_create(keyQuery_appBlob, valueQuery_appBlob);
        list_addElement(localVarQueryParameters,keyPairQuery_appBlob);
    }

    // query parameters
    char *keyQuery_appEnablePush = NULL;
    char * valueQuery_appEnablePush = NULL;
    keyValuePair_t *keyPairQuery_appEnablePush = 0;
    if (appEnablePush)
    {
        keyQuery_appEnablePush = strdup("appEnablePush");
        valueQuery_appEnablePush = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_appEnablePush, MAX_NUMBER_LENGTH, "%d", *appEnablePush);
        keyPairQuery_appEnablePush = keyValuePair_create(keyQuery_appEnablePush, valueQuery_appEnablePush);
        list_addElement(localVarQueryParameters,keyPairQuery_appEnablePush);
    }

    // query parameters
    char *keyQuery_appEnableSMS = NULL;
    char * valueQuery_appEnableSMS = NULL;
    keyValuePair_t *keyPairQuery_appEnableSMS = 0;
    if (appEnableSMS)
    {
        keyQuery_appEnableSMS = strdup("appEnableSMS");
        valueQuery_appEnableSMS = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_appEnableSMS, MAX_NUMBER_LENGTH, "%d", *appEnableSMS);
        keyPairQuery_appEnableSMS = keyValuePair_create(keyQuery_appEnableSMS, valueQuery_appEnableSMS);
        list_addElement(localVarQueryParameters,keyPairQuery_appEnableSMS);
    }

    // query parameters
    char *keyQuery_appEnableEmail = NULL;
    char * valueQuery_appEnableEmail = NULL;
    keyValuePair_t *keyPairQuery_appEnableEmail = 0;
    if (appEnableEmail)
    {
        keyQuery_appEnableEmail = strdup("appEnableEmail");
        valueQuery_appEnableEmail = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_appEnableEmail, MAX_NUMBER_LENGTH, "%d", *appEnableEmail);
        keyPairQuery_appEnableEmail = keyValuePair_create(keyQuery_appEnableEmail, valueQuery_appEnableEmail);
        list_addElement(localVarQueryParameters,keyPairQuery_appEnableEmail);
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
    char *keyQuery_returnProfile = NULL;
    char * valueQuery_returnProfile = NULL;
    keyValuePair_t *keyPairQuery_returnProfile = 0;
    if (returnProfile)
    {
        keyQuery_returnProfile = strdup("returnProfile");
        valueQuery_returnProfile = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnProfile, MAX_NUMBER_LENGTH, "%d", *returnProfile);
        keyPairQuery_returnProfile = keyValuePair_create(keyQuery_returnProfile, valueQuery_returnProfile);
        list_addElement(localVarQueryParameters,keyPairQuery_returnProfile);
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
    char *keyQuery_referralAccountId = NULL;
    char * valueQuery_referralAccountId ;
    keyValuePair_t *keyPairQuery_referralAccountId = 0;
    {
        keyQuery_referralAccountId = strdup("referralAccountId");
        valueQuery_referralAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_referralAccountId, MAX_NUMBER_LENGTH_LONG, "%d", referralAccountId);
        keyPairQuery_referralAccountId = keyValuePair_create(keyQuery_referralAccountId, valueQuery_referralAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_referralAccountId);
    }

    // query parameters
    char *keyQuery_appNickname = NULL;
    char * valueQuery_appNickname = NULL;
    keyValuePair_t *keyPairQuery_appNickname = 0;
    if (appNickname)
    {
        keyQuery_appNickname = strdup("appNickname");
        valueQuery_appNickname = strdup((appNickname));
        keyPairQuery_appNickname = keyValuePair_create(keyQuery_appNickname, valueQuery_appNickname);
        list_addElement(localVarQueryParameters,keyPairQuery_appNickname);
    }

    // query parameters
    char *keyQuery_personalAudienceId = NULL;
    char * valueQuery_personalAudienceId ;
    keyValuePair_t *keyPairQuery_personalAudienceId = 0;
    {
        keyQuery_personalAudienceId = strdup("personalAudienceId");
        valueQuery_personalAudienceId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_personalAudienceId, MAX_NUMBER_LENGTH_LONG, "%d", personalAudienceId);
        keyPairQuery_personalAudienceId = keyValuePair_create(keyQuery_personalAudienceId, valueQuery_personalAudienceId);
        list_addElement(localVarQueryParameters,keyPairQuery_personalAudienceId);
    }

    // query parameters
    char *keyQuery_nonGuestUsername = NULL;
    char * valueQuery_nonGuestUsername = NULL;
    keyValuePair_t *keyPairQuery_nonGuestUsername = 0;
    if (nonGuestUsername)
    {
        keyQuery_nonGuestUsername = strdup("nonGuestUsername");
        valueQuery_nonGuestUsername = strdup((nonGuestUsername));
        keyPairQuery_nonGuestUsername = keyValuePair_create(keyQuery_nonGuestUsername, valueQuery_nonGuestUsername);
        list_addElement(localVarQueryParameters,keyPairQuery_nonGuestUsername);
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
    profile_info_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_info_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
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
    if(keyQuery_prefixName){
        free(keyQuery_prefixName);
        keyQuery_prefixName = NULL;
    }
    if(valueQuery_prefixName){
        free(valueQuery_prefixName);
        valueQuery_prefixName = NULL;
    }
    if(keyPairQuery_prefixName){
        keyValuePair_free(keyPairQuery_prefixName);
        keyPairQuery_prefixName = NULL;
    }
    if(keyQuery_firstName){
        free(keyQuery_firstName);
        keyQuery_firstName = NULL;
    }
    if(valueQuery_firstName){
        free(valueQuery_firstName);
        valueQuery_firstName = NULL;
    }
    if(keyPairQuery_firstName){
        keyValuePair_free(keyPairQuery_firstName);
        keyPairQuery_firstName = NULL;
    }
    if(keyQuery_middleName){
        free(keyQuery_middleName);
        keyQuery_middleName = NULL;
    }
    if(valueQuery_middleName){
        free(valueQuery_middleName);
        valueQuery_middleName = NULL;
    }
    if(keyPairQuery_middleName){
        keyValuePair_free(keyPairQuery_middleName);
        keyPairQuery_middleName = NULL;
    }
    if(keyQuery_lastName){
        free(keyQuery_lastName);
        keyQuery_lastName = NULL;
    }
    if(valueQuery_lastName){
        free(valueQuery_lastName);
        valueQuery_lastName = NULL;
    }
    if(keyPairQuery_lastName){
        keyValuePair_free(keyPairQuery_lastName);
        keyPairQuery_lastName = NULL;
    }
    if(keyQuery_suffixName){
        free(keyQuery_suffixName);
        keyQuery_suffixName = NULL;
    }
    if(valueQuery_suffixName){
        free(valueQuery_suffixName);
        valueQuery_suffixName = NULL;
    }
    if(keyPairQuery_suffixName){
        keyValuePair_free(keyPairQuery_suffixName);
        keyPairQuery_suffixName = NULL;
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
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_age){
        free(keyQuery_age);
        keyQuery_age = NULL;
    }
    if(valueQuery_age){
        free(valueQuery_age);
        valueQuery_age = NULL;
    }
    if(keyPairQuery_age){
        keyValuePair_free(keyPairQuery_age);
        keyPairQuery_age = NULL;
    }
    if(keyQuery_birthday){
        free(keyQuery_birthday);
        keyQuery_birthday = NULL;
    }
    if(keyPairQuery_birthday){
        keyValuePair_free(keyPairQuery_birthday);
        keyPairQuery_birthday = NULL;
    }
    if(keyQuery_homePhone){
        free(keyQuery_homePhone);
        keyQuery_homePhone = NULL;
    }
    if(valueQuery_homePhone){
        free(valueQuery_homePhone);
        valueQuery_homePhone = NULL;
    }
    if(keyPairQuery_homePhone){
        keyValuePair_free(keyPairQuery_homePhone);
        keyPairQuery_homePhone = NULL;
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
    if(keyQuery_cellPhoneCarrier){
        free(keyQuery_cellPhoneCarrier);
        keyQuery_cellPhoneCarrier = NULL;
    }
    if(valueQuery_cellPhoneCarrier){
        free(valueQuery_cellPhoneCarrier);
        valueQuery_cellPhoneCarrier = NULL;
    }
    if(keyPairQuery_cellPhoneCarrier){
        keyValuePair_free(keyPairQuery_cellPhoneCarrier);
        keyPairQuery_cellPhoneCarrier = NULL;
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
    if(keyQuery_emailAddress){
        free(keyQuery_emailAddress);
        keyQuery_emailAddress = NULL;
    }
    if(valueQuery_emailAddress){
        free(valueQuery_emailAddress);
        valueQuery_emailAddress = NULL;
    }
    if(keyPairQuery_emailAddress){
        keyValuePair_free(keyPairQuery_emailAddress);
        keyPairQuery_emailAddress = NULL;
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
    if(keyQuery_zipcode){
        free(keyQuery_zipcode);
        keyQuery_zipcode = NULL;
    }
    if(valueQuery_zipcode){
        free(valueQuery_zipcode);
        valueQuery_zipcode = NULL;
    }
    if(keyPairQuery_zipcode){
        keyValuePair_free(keyPairQuery_zipcode);
        keyPairQuery_zipcode = NULL;
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
    if(keyQuery_makeProfileInfoPublic){
        free(keyQuery_makeProfileInfoPublic);
        keyQuery_makeProfileInfoPublic = NULL;
    }
    if(valueQuery_makeProfileInfoPublic){
        free(valueQuery_makeProfileInfoPublic);
        valueQuery_makeProfileInfoPublic = NULL;
    }
    if(keyPairQuery_makeProfileInfoPublic){
        keyValuePair_free(keyPairQuery_makeProfileInfoPublic);
        keyPairQuery_makeProfileInfoPublic = NULL;
    }
    if(keyQuery_makeGameInfoPublic){
        free(keyQuery_makeGameInfoPublic);
        keyQuery_makeGameInfoPublic = NULL;
    }
    if(valueQuery_makeGameInfoPublic){
        free(valueQuery_makeGameInfoPublic);
        valueQuery_makeGameInfoPublic = NULL;
    }
    if(keyPairQuery_makeGameInfoPublic){
        keyValuePair_free(keyPairQuery_makeGameInfoPublic);
        keyPairQuery_makeGameInfoPublic = NULL;
    }
    if(keyQuery_makeFriendsInfoPublic){
        free(keyQuery_makeFriendsInfoPublic);
        keyQuery_makeFriendsInfoPublic = NULL;
    }
    if(valueQuery_makeFriendsInfoPublic){
        free(valueQuery_makeFriendsInfoPublic);
        valueQuery_makeFriendsInfoPublic = NULL;
    }
    if(keyPairQuery_makeFriendsInfoPublic){
        keyValuePair_free(keyPairQuery_makeFriendsInfoPublic);
        keyPairQuery_makeFriendsInfoPublic = NULL;
    }
    if(keyQuery_hometown){
        free(keyQuery_hometown);
        keyQuery_hometown = NULL;
    }
    if(valueQuery_hometown){
        free(valueQuery_hometown);
        valueQuery_hometown = NULL;
    }
    if(keyPairQuery_hometown){
        keyValuePair_free(keyPairQuery_hometown);
        keyPairQuery_hometown = NULL;
    }
    if(keyQuery_height){
        free(keyQuery_height);
        keyQuery_height = NULL;
    }
    if(valueQuery_height){
        free(valueQuery_height);
        valueQuery_height = NULL;
    }
    if(keyPairQuery_height){
        keyValuePair_free(keyPairQuery_height);
        keyPairQuery_height = NULL;
    }
    if(keyQuery_heightIndex){
        free(keyQuery_heightIndex);
        keyQuery_heightIndex = NULL;
    }
    if(valueQuery_heightIndex){
        free(valueQuery_heightIndex);
        valueQuery_heightIndex = NULL;
    }
    if(keyPairQuery_heightIndex){
        keyValuePair_free(keyPairQuery_heightIndex);
        keyPairQuery_heightIndex = NULL;
    }
    if(keyQuery_ethnicity){
        free(keyQuery_ethnicity);
        keyQuery_ethnicity = NULL;
    }
    if(valueQuery_ethnicity){
        free(valueQuery_ethnicity);
        valueQuery_ethnicity = NULL;
    }
    if(keyPairQuery_ethnicity){
        keyValuePair_free(keyPairQuery_ethnicity);
        keyPairQuery_ethnicity = NULL;
    }
    if(keyQuery_bodyType){
        free(keyQuery_bodyType);
        keyQuery_bodyType = NULL;
    }
    if(valueQuery_bodyType){
        free(valueQuery_bodyType);
        valueQuery_bodyType = NULL;
    }
    if(keyPairQuery_bodyType){
        keyValuePair_free(keyPairQuery_bodyType);
        keyPairQuery_bodyType = NULL;
    }
    if(keyQuery_maritalStatus){
        free(keyQuery_maritalStatus);
        keyQuery_maritalStatus = NULL;
    }
    if(valueQuery_maritalStatus){
        free(valueQuery_maritalStatus);
        valueQuery_maritalStatus = NULL;
    }
    if(keyPairQuery_maritalStatus){
        keyValuePair_free(keyPairQuery_maritalStatus);
        keyPairQuery_maritalStatus = NULL;
    }
    if(keyQuery_children){
        free(keyQuery_children);
        keyQuery_children = NULL;
    }
    if(valueQuery_children){
        free(valueQuery_children);
        valueQuery_children = NULL;
    }
    if(keyPairQuery_children){
        keyValuePair_free(keyPairQuery_children);
        keyPairQuery_children = NULL;
    }
    if(keyQuery_religion){
        free(keyQuery_religion);
        keyQuery_religion = NULL;
    }
    if(valueQuery_religion){
        free(valueQuery_religion);
        valueQuery_religion = NULL;
    }
    if(keyPairQuery_religion){
        keyValuePair_free(keyPairQuery_religion);
        keyPairQuery_religion = NULL;
    }
    if(keyQuery_education){
        free(keyQuery_education);
        keyQuery_education = NULL;
    }
    if(valueQuery_education){
        free(valueQuery_education);
        valueQuery_education = NULL;
    }
    if(keyPairQuery_education){
        keyValuePair_free(keyPairQuery_education);
        keyPairQuery_education = NULL;
    }
    if(keyQuery_educationIndex){
        free(keyQuery_educationIndex);
        keyQuery_educationIndex = NULL;
    }
    if(valueQuery_educationIndex){
        free(valueQuery_educationIndex);
        valueQuery_educationIndex = NULL;
    }
    if(keyPairQuery_educationIndex){
        keyValuePair_free(keyPairQuery_educationIndex);
        keyPairQuery_educationIndex = NULL;
    }
    if(keyQuery_smoke){
        free(keyQuery_smoke);
        keyQuery_smoke = NULL;
    }
    if(valueQuery_smoke){
        free(valueQuery_smoke);
        valueQuery_smoke = NULL;
    }
    if(keyPairQuery_smoke){
        keyValuePair_free(keyPairQuery_smoke);
        keyPairQuery_smoke = NULL;
    }
    if(keyQuery_drink){
        free(keyQuery_drink);
        keyQuery_drink = NULL;
    }
    if(valueQuery_drink){
        free(valueQuery_drink);
        valueQuery_drink = NULL;
    }
    if(keyPairQuery_drink){
        keyValuePair_free(keyPairQuery_drink);
        keyPairQuery_drink = NULL;
    }
    if(keyQuery_companionship){
        free(keyQuery_companionship);
        keyQuery_companionship = NULL;
    }
    if(valueQuery_companionship){
        free(valueQuery_companionship);
        valueQuery_companionship = NULL;
    }
    if(keyPairQuery_companionship){
        keyValuePair_free(keyPairQuery_companionship);
        keyPairQuery_companionship = NULL;
    }
    if(keyQuery_companionshipIndex){
        free(keyQuery_companionshipIndex);
        keyQuery_companionshipIndex = NULL;
    }
    if(valueQuery_companionshipIndex){
        free(valueQuery_companionshipIndex);
        valueQuery_companionshipIndex = NULL;
    }
    if(keyPairQuery_companionshipIndex){
        keyValuePair_free(keyPairQuery_companionshipIndex);
        keyPairQuery_companionshipIndex = NULL;
    }
    if(keyQuery_preferredMinAge){
        free(keyQuery_preferredMinAge);
        keyQuery_preferredMinAge = NULL;
    }
    if(valueQuery_preferredMinAge){
        free(valueQuery_preferredMinAge);
        valueQuery_preferredMinAge = NULL;
    }
    if(keyPairQuery_preferredMinAge){
        keyValuePair_free(keyPairQuery_preferredMinAge);
        keyPairQuery_preferredMinAge = NULL;
    }
    if(keyQuery_preferredMaxAge){
        free(keyQuery_preferredMaxAge);
        keyQuery_preferredMaxAge = NULL;
    }
    if(valueQuery_preferredMaxAge){
        free(valueQuery_preferredMaxAge);
        valueQuery_preferredMaxAge = NULL;
    }
    if(keyPairQuery_preferredMaxAge){
        keyValuePair_free(keyPairQuery_preferredMaxAge);
        keyPairQuery_preferredMaxAge = NULL;
    }
    if(keyQuery_preferredMinHeight){
        free(keyQuery_preferredMinHeight);
        keyQuery_preferredMinHeight = NULL;
    }
    if(valueQuery_preferredMinHeight){
        free(valueQuery_preferredMinHeight);
        valueQuery_preferredMinHeight = NULL;
    }
    if(keyPairQuery_preferredMinHeight){
        keyValuePair_free(keyPairQuery_preferredMinHeight);
        keyPairQuery_preferredMinHeight = NULL;
    }
    if(keyQuery_preferredMaxHeight){
        free(keyQuery_preferredMaxHeight);
        keyQuery_preferredMaxHeight = NULL;
    }
    if(valueQuery_preferredMaxHeight){
        free(valueQuery_preferredMaxHeight);
        valueQuery_preferredMaxHeight = NULL;
    }
    if(keyPairQuery_preferredMaxHeight){
        keyValuePair_free(keyPairQuery_preferredMaxHeight);
        keyPairQuery_preferredMaxHeight = NULL;
    }
    if(keyQuery_preferredGender){
        free(keyQuery_preferredGender);
        keyQuery_preferredGender = NULL;
    }
    if(valueQuery_preferredGender){
        free(valueQuery_preferredGender);
        valueQuery_preferredGender = NULL;
    }
    if(keyPairQuery_preferredGender){
        keyValuePair_free(keyPairQuery_preferredGender);
        keyPairQuery_preferredGender = NULL;
    }
    if(keyQuery_preferredEducation){
        free(keyQuery_preferredEducation);
        keyQuery_preferredEducation = NULL;
    }
    if(valueQuery_preferredEducation){
        free(valueQuery_preferredEducation);
        valueQuery_preferredEducation = NULL;
    }
    if(keyPairQuery_preferredEducation){
        keyValuePair_free(keyPairQuery_preferredEducation);
        keyPairQuery_preferredEducation = NULL;
    }
    if(keyQuery_preferredEducationIndex){
        free(keyQuery_preferredEducationIndex);
        keyQuery_preferredEducationIndex = NULL;
    }
    if(valueQuery_preferredEducationIndex){
        free(valueQuery_preferredEducationIndex);
        valueQuery_preferredEducationIndex = NULL;
    }
    if(keyPairQuery_preferredEducationIndex){
        keyValuePair_free(keyPairQuery_preferredEducationIndex);
        keyPairQuery_preferredEducationIndex = NULL;
    }
    if(keyQuery_preferredBodyType){
        free(keyQuery_preferredBodyType);
        keyQuery_preferredBodyType = NULL;
    }
    if(valueQuery_preferredBodyType){
        free(valueQuery_preferredBodyType);
        valueQuery_preferredBodyType = NULL;
    }
    if(keyPairQuery_preferredBodyType){
        keyValuePair_free(keyPairQuery_preferredBodyType);
        keyPairQuery_preferredBodyType = NULL;
    }
    if(keyQuery_preferredEthnicity){
        free(keyQuery_preferredEthnicity);
        keyQuery_preferredEthnicity = NULL;
    }
    if(valueQuery_preferredEthnicity){
        free(valueQuery_preferredEthnicity);
        valueQuery_preferredEthnicity = NULL;
    }
    if(keyPairQuery_preferredEthnicity){
        keyValuePair_free(keyPairQuery_preferredEthnicity);
        keyPairQuery_preferredEthnicity = NULL;
    }
    if(keyQuery_preferredLocation){
        free(keyQuery_preferredLocation);
        keyQuery_preferredLocation = NULL;
    }
    if(valueQuery_preferredLocation){
        free(valueQuery_preferredLocation);
        valueQuery_preferredLocation = NULL;
    }
    if(keyPairQuery_preferredLocation){
        keyValuePair_free(keyPairQuery_preferredLocation);
        keyPairQuery_preferredLocation = NULL;
    }
    if(keyQuery_preferredLocationRange){
        free(keyQuery_preferredLocationRange);
        keyQuery_preferredLocationRange = NULL;
    }
    if(keyPairQuery_preferredLocationRange){
        keyValuePair_free(keyPairQuery_preferredLocationRange);
        keyPairQuery_preferredLocationRange = NULL;
    }
    if(keyQuery_platforms){
        free(keyQuery_platforms);
        keyQuery_platforms = NULL;
    }
    if(valueQuery_platforms){
        free(valueQuery_platforms);
        valueQuery_platforms = NULL;
    }
    if(keyPairQuery_platforms){
        keyValuePair_free(keyPairQuery_platforms);
        keyPairQuery_platforms = NULL;
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
    if(keyQuery_aboutUs){
        free(keyQuery_aboutUs);
        keyQuery_aboutUs = NULL;
    }
    if(valueQuery_aboutUs){
        free(valueQuery_aboutUs);
        valueQuery_aboutUs = NULL;
    }
    if(keyPairQuery_aboutUs){
        keyValuePair_free(keyPairQuery_aboutUs);
        keyPairQuery_aboutUs = NULL;
    }
    if(keyQuery_matchToken){
        free(keyQuery_matchToken);
        keyQuery_matchToken = NULL;
    }
    if(valueQuery_matchToken){
        free(valueQuery_matchToken);
        valueQuery_matchToken = NULL;
    }
    if(keyPairQuery_matchToken){
        keyValuePair_free(keyPairQuery_matchToken);
        keyPairQuery_matchToken = NULL;
    }
    if(keyQuery_gameExperience){
        free(keyQuery_gameExperience);
        keyQuery_gameExperience = NULL;
    }
    if(valueQuery_gameExperience){
        free(valueQuery_gameExperience);
        valueQuery_gameExperience = NULL;
    }
    if(keyPairQuery_gameExperience){
        keyValuePair_free(keyPairQuery_gameExperience);
        keyPairQuery_gameExperience = NULL;
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
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
    }
    if(keyQuery_showAsZipcode){
        free(keyQuery_showAsZipcode);
        keyQuery_showAsZipcode = NULL;
    }
    if(valueQuery_showAsZipcode){
        free(valueQuery_showAsZipcode);
        valueQuery_showAsZipcode = NULL;
    }
    if(keyPairQuery_showAsZipcode){
        keyValuePair_free(keyPairQuery_showAsZipcode);
        keyPairQuery_showAsZipcode = NULL;
    }
    if(keyQuery_showExactLocation){
        free(keyQuery_showExactLocation);
        keyQuery_showExactLocation = NULL;
    }
    if(valueQuery_showExactLocation){
        free(valueQuery_showExactLocation);
        valueQuery_showExactLocation = NULL;
    }
    if(keyPairQuery_showExactLocation){
        keyValuePair_free(keyPairQuery_showExactLocation);
        keyPairQuery_showExactLocation = NULL;
    }
    if(keyQuery_showOthersExactLocation){
        free(keyQuery_showOthersExactLocation);
        keyQuery_showOthersExactLocation = NULL;
    }
    if(valueQuery_showOthersExactLocation){
        free(valueQuery_showOthersExactLocation);
        valueQuery_showOthersExactLocation = NULL;
    }
    if(keyPairQuery_showOthersExactLocation){
        keyValuePair_free(keyPairQuery_showOthersExactLocation);
        keyPairQuery_showOthersExactLocation = NULL;
    }
    if(keyQuery_acceptedTerms){
        free(keyQuery_acceptedTerms);
        keyQuery_acceptedTerms = NULL;
    }
    if(valueQuery_acceptedTerms){
        free(valueQuery_acceptedTerms);
        valueQuery_acceptedTerms = NULL;
    }
    if(keyPairQuery_acceptedTerms){
        keyValuePair_free(keyPairQuery_acceptedTerms);
        keyPairQuery_acceptedTerms = NULL;
    }
    if(keyQuery_locationVisibility){
        free(keyQuery_locationVisibility);
        keyQuery_locationVisibility = NULL;
    }
    if(valueQuery_locationVisibility){
        free(valueQuery_locationVisibility);
        valueQuery_locationVisibility = NULL;
    }
    if(keyPairQuery_locationVisibility){
        keyValuePair_free(keyPairQuery_locationVisibility);
        keyPairQuery_locationVisibility = NULL;
    }
    if(keyQuery_appBlob){
        free(keyQuery_appBlob);
        keyQuery_appBlob = NULL;
    }
    if(valueQuery_appBlob){
        free(valueQuery_appBlob);
        valueQuery_appBlob = NULL;
    }
    if(keyPairQuery_appBlob){
        keyValuePair_free(keyPairQuery_appBlob);
        keyPairQuery_appBlob = NULL;
    }
    if(keyQuery_appEnablePush){
        free(keyQuery_appEnablePush);
        keyQuery_appEnablePush = NULL;
    }
    if(valueQuery_appEnablePush){
        free(valueQuery_appEnablePush);
        valueQuery_appEnablePush = NULL;
    }
    if(keyPairQuery_appEnablePush){
        keyValuePair_free(keyPairQuery_appEnablePush);
        keyPairQuery_appEnablePush = NULL;
    }
    if(keyQuery_appEnableSMS){
        free(keyQuery_appEnableSMS);
        keyQuery_appEnableSMS = NULL;
    }
    if(valueQuery_appEnableSMS){
        free(valueQuery_appEnableSMS);
        valueQuery_appEnableSMS = NULL;
    }
    if(keyPairQuery_appEnableSMS){
        keyValuePair_free(keyPairQuery_appEnableSMS);
        keyPairQuery_appEnableSMS = NULL;
    }
    if(keyQuery_appEnableEmail){
        free(keyQuery_appEnableEmail);
        keyQuery_appEnableEmail = NULL;
    }
    if(valueQuery_appEnableEmail){
        free(valueQuery_appEnableEmail);
        valueQuery_appEnableEmail = NULL;
    }
    if(keyPairQuery_appEnableEmail){
        keyValuePair_free(keyPairQuery_appEnableEmail);
        keyPairQuery_appEnableEmail = NULL;
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
    if(keyQuery_returnProfile){
        free(keyQuery_returnProfile);
        keyQuery_returnProfile = NULL;
    }
    if(valueQuery_returnProfile){
        free(valueQuery_returnProfile);
        valueQuery_returnProfile = NULL;
    }
    if(keyPairQuery_returnProfile){
        keyValuePair_free(keyPairQuery_returnProfile);
        keyPairQuery_returnProfile = NULL;
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
    if(keyQuery_referralAccountId){
        free(keyQuery_referralAccountId);
        keyQuery_referralAccountId = NULL;
    }
    if(keyPairQuery_referralAccountId){
        keyValuePair_free(keyPairQuery_referralAccountId);
        keyPairQuery_referralAccountId = NULL;
    }
    if(keyQuery_appNickname){
        free(keyQuery_appNickname);
        keyQuery_appNickname = NULL;
    }
    if(valueQuery_appNickname){
        free(valueQuery_appNickname);
        valueQuery_appNickname = NULL;
    }
    if(keyPairQuery_appNickname){
        keyValuePair_free(keyPairQuery_appNickname);
        keyPairQuery_appNickname = NULL;
    }
    if(keyQuery_personalAudienceId){
        free(keyQuery_personalAudienceId);
        keyQuery_personalAudienceId = NULL;
    }
    if(keyPairQuery_personalAudienceId){
        keyValuePair_free(keyPairQuery_personalAudienceId);
        keyPairQuery_personalAudienceId = NULL;
    }
    if(keyQuery_nonGuestUsername){
        free(keyQuery_nonGuestUsername);
        keyQuery_nonGuestUsername = NULL;
    }
    if(valueQuery_nonGuestUsername){
        free(valueQuery_nonGuestUsername);
        valueQuery_nonGuestUsername = NULL;
    }
    if(keyPairQuery_nonGuestUsername){
        keyValuePair_free(keyPairQuery_nonGuestUsername);
        keyPairQuery_nonGuestUsername = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Username and Email
//
// Update account's own username and/or emailAddress
//
sirqul_response_t*
AccountAPI_editUsername(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *emailAddress, char *username)
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
    char *localVarPath = strdup("/api/{version}/account/username/update");



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
    char *keyQuery_emailAddress = NULL;
    char * valueQuery_emailAddress = NULL;
    keyValuePair_t *keyPairQuery_emailAddress = 0;
    if (emailAddress)
    {
        keyQuery_emailAddress = strdup("emailAddress");
        valueQuery_emailAddress = strdup((emailAddress));
        keyPairQuery_emailAddress = keyValuePair_create(keyQuery_emailAddress, valueQuery_emailAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_emailAddress);
    }

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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_emailAddress){
        free(keyQuery_emailAddress);
        keyQuery_emailAddress = NULL;
    }
    if(valueQuery_emailAddress){
        free(valueQuery_emailAddress);
        valueQuery_emailAddress = NULL;
    }
    if(keyPairQuery_emailAddress){
        keyValuePair_free(keyPairQuery_emailAddress);
        keyPairQuery_emailAddress = NULL;
    }
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Account
//
// Gets a user's account profile. Application settings and account settings will also be returned for the owner of the account.
//
profile_response_t*
AccountAPI_getAccount(apiClient_t *apiClient, double version, int *returnNulls, char *deviceId, long accountId, char *connectionAccountEmail, long connectionAccountId, char *responseFilters, char *gameType, char *appKey, char *purchaseType, int *updateViewedDate, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/account/profile/get");



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
    char *keyQuery_connectionAccountEmail = NULL;
    char * valueQuery_connectionAccountEmail = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountEmail = 0;
    if (connectionAccountEmail)
    {
        keyQuery_connectionAccountEmail = strdup("connectionAccountEmail");
        valueQuery_connectionAccountEmail = strdup((connectionAccountEmail));
        keyPairQuery_connectionAccountEmail = keyValuePair_create(keyQuery_connectionAccountEmail, valueQuery_connectionAccountEmail);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountEmail);
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
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    char *keyQuery_purchaseType = NULL;
    char * valueQuery_purchaseType = NULL;
    keyValuePair_t *keyPairQuery_purchaseType = 0;
    if (purchaseType)
    {
        keyQuery_purchaseType = strdup("purchaseType");
        valueQuery_purchaseType = strdup((purchaseType));
        keyPairQuery_purchaseType = keyValuePair_create(keyQuery_purchaseType, valueQuery_purchaseType);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseType);
    }

    // query parameters
    char *keyQuery_updateViewedDate = NULL;
    char * valueQuery_updateViewedDate = NULL;
    keyValuePair_t *keyPairQuery_updateViewedDate = 0;
    if (updateViewedDate)
    {
        keyQuery_updateViewedDate = strdup("updateViewedDate");
        valueQuery_updateViewedDate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateViewedDate, MAX_NUMBER_LENGTH, "%d", *updateViewedDate);
        keyPairQuery_updateViewedDate = keyValuePair_create(keyQuery_updateViewedDate, valueQuery_updateViewedDate);
        list_addElement(localVarQueryParameters,keyPairQuery_updateViewedDate);
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
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountEmail){
        free(keyQuery_connectionAccountEmail);
        keyQuery_connectionAccountEmail = NULL;
    }
    if(valueQuery_connectionAccountEmail){
        free(valueQuery_connectionAccountEmail);
        valueQuery_connectionAccountEmail = NULL;
    }
    if(keyPairQuery_connectionAccountEmail){
        keyValuePair_free(keyPairQuery_connectionAccountEmail);
        keyPairQuery_connectionAccountEmail = NULL;
    }
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
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
    if(keyQuery_purchaseType){
        free(keyQuery_purchaseType);
        keyQuery_purchaseType = NULL;
    }
    if(valueQuery_purchaseType){
        free(valueQuery_purchaseType);
        valueQuery_purchaseType = NULL;
    }
    if(keyPairQuery_purchaseType){
        keyValuePair_free(keyPairQuery_purchaseType);
        keyPairQuery_purchaseType = NULL;
    }
    if(keyQuery_updateViewedDate){
        free(keyQuery_updateViewedDate);
        keyQuery_updateViewedDate = NULL;
    }
    if(valueQuery_updateViewedDate){
        free(valueQuery_updateViewedDate);
        valueQuery_updateViewedDate = NULL;
    }
    if(keyPairQuery_updateViewedDate){
        keyValuePair_free(keyPairQuery_updateViewedDate);
        keyPairQuery_updateViewedDate = NULL;
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

// Get Profile Assets
//
// Get a list of assets a person has ever uploaded. Filters the list based on parameters.
//
asset_list_response_t*
AccountAPI_getProfileAssets(apiClient_t *apiClient, double version, int *returnNulls, char *deviceId, long accountId, long ownerId, char *mediaTypes, char *mimeTypes, char *sortField, int *descending, double latitude, double longitude, int *_i, int *start, int *_l, int *limit)
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
    char *localVarPath = strdup("/api/{version}/account/profile/assets");



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
    char *keyQuery_mediaTypes = NULL;
    char * valueQuery_mediaTypes = NULL;
    keyValuePair_t *keyPairQuery_mediaTypes = 0;
    if (mediaTypes)
    {
        keyQuery_mediaTypes = strdup("mediaTypes");
        valueQuery_mediaTypes = strdup((mediaTypes));
        keyPairQuery_mediaTypes = keyValuePair_create(keyQuery_mediaTypes, valueQuery_mediaTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaTypes);
    }

    // query parameters
    char *keyQuery_mimeTypes = NULL;
    char * valueQuery_mimeTypes = NULL;
    keyValuePair_t *keyPairQuery_mimeTypes = 0;
    if (mimeTypes)
    {
        keyQuery_mimeTypes = strdup("mimeTypes");
        valueQuery_mimeTypes = strdup((mimeTypes));
        keyPairQuery_mimeTypes = keyValuePair_create(keyQuery_mimeTypes, valueQuery_mimeTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_mimeTypes);
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
    asset_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = asset_list_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_ownerId){
        free(keyQuery_ownerId);
        keyQuery_ownerId = NULL;
    }
    if(keyPairQuery_ownerId){
        keyValuePair_free(keyPairQuery_ownerId);
        keyPairQuery_ownerId = NULL;
    }
    if(keyQuery_mediaTypes){
        free(keyQuery_mediaTypes);
        keyQuery_mediaTypes = NULL;
    }
    if(valueQuery_mediaTypes){
        free(valueQuery_mediaTypes);
        valueQuery_mediaTypes = NULL;
    }
    if(keyPairQuery_mediaTypes){
        keyValuePair_free(keyPairQuery_mediaTypes);
        keyPairQuery_mediaTypes = NULL;
    }
    if(keyQuery_mimeTypes){
        free(keyQuery_mimeTypes);
        keyQuery_mimeTypes = NULL;
    }
    if(valueQuery_mimeTypes){
        free(valueQuery_mimeTypes);
        valueQuery_mimeTypes = NULL;
    }
    if(keyPairQuery_mimeTypes){
        keyValuePair_free(keyPairQuery_mimeTypes);
        keyPairQuery_mimeTypes = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Accounts
//
// Gets a user's account profile and their referral List.
//
void
AccountAPI_getReferralList(apiClient_t *apiClient, double version, long accountId, char *appKey, char *retrieveType, double levelLimit, double ancestorLevelLimit, double childrenLevelLimit, double ancestorListStart, double ancestorListLimit, double childrenListStart, double childrenListLimit, int *childrenChildren)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = NULL;
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/account/referral/list");



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
    char *keyQuery_retrieveType = NULL;
    char * valueQuery_retrieveType = NULL;
    keyValuePair_t *keyPairQuery_retrieveType = 0;
    if (retrieveType)
    {
        keyQuery_retrieveType = strdup("retrieveType");
        valueQuery_retrieveType = strdup((retrieveType));
        keyPairQuery_retrieveType = keyValuePair_create(keyQuery_retrieveType, valueQuery_retrieveType);
        list_addElement(localVarQueryParameters,keyPairQuery_retrieveType);
    }

    // query parameters
    char *keyQuery_levelLimit = NULL;
    double valueQuery_levelLimit ;
    keyValuePair_t *keyPairQuery_levelLimit = 0;
    if (levelLimit)
    {
        keyQuery_levelLimit = strdup("levelLimit");
        valueQuery_levelLimit = (levelLimit);
        keyPairQuery_levelLimit = keyValuePair_create(keyQuery_levelLimit, &valueQuery_levelLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_levelLimit);
    }

    // query parameters
    char *keyQuery_ancestorLevelLimit = NULL;
    double valueQuery_ancestorLevelLimit ;
    keyValuePair_t *keyPairQuery_ancestorLevelLimit = 0;
    if (ancestorLevelLimit)
    {
        keyQuery_ancestorLevelLimit = strdup("ancestorLevelLimit");
        valueQuery_ancestorLevelLimit = (ancestorLevelLimit);
        keyPairQuery_ancestorLevelLimit = keyValuePair_create(keyQuery_ancestorLevelLimit, &valueQuery_ancestorLevelLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_ancestorLevelLimit);
    }

    // query parameters
    char *keyQuery_childrenLevelLimit = NULL;
    double valueQuery_childrenLevelLimit ;
    keyValuePair_t *keyPairQuery_childrenLevelLimit = 0;
    if (childrenLevelLimit)
    {
        keyQuery_childrenLevelLimit = strdup("childrenLevelLimit");
        valueQuery_childrenLevelLimit = (childrenLevelLimit);
        keyPairQuery_childrenLevelLimit = keyValuePair_create(keyQuery_childrenLevelLimit, &valueQuery_childrenLevelLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_childrenLevelLimit);
    }

    // query parameters
    char *keyQuery_ancestorListStart = NULL;
    double valueQuery_ancestorListStart ;
    keyValuePair_t *keyPairQuery_ancestorListStart = 0;
    if (ancestorListStart)
    {
        keyQuery_ancestorListStart = strdup("ancestorListStart");
        valueQuery_ancestorListStart = (ancestorListStart);
        keyPairQuery_ancestorListStart = keyValuePair_create(keyQuery_ancestorListStart, &valueQuery_ancestorListStart);
        list_addElement(localVarQueryParameters,keyPairQuery_ancestorListStart);
    }

    // query parameters
    char *keyQuery_ancestorListLimit = NULL;
    double valueQuery_ancestorListLimit ;
    keyValuePair_t *keyPairQuery_ancestorListLimit = 0;
    if (ancestorListLimit)
    {
        keyQuery_ancestorListLimit = strdup("ancestorListLimit");
        valueQuery_ancestorListLimit = (ancestorListLimit);
        keyPairQuery_ancestorListLimit = keyValuePair_create(keyQuery_ancestorListLimit, &valueQuery_ancestorListLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_ancestorListLimit);
    }

    // query parameters
    char *keyQuery_childrenListStart = NULL;
    double valueQuery_childrenListStart ;
    keyValuePair_t *keyPairQuery_childrenListStart = 0;
    if (childrenListStart)
    {
        keyQuery_childrenListStart = strdup("childrenListStart");
        valueQuery_childrenListStart = (childrenListStart);
        keyPairQuery_childrenListStart = keyValuePair_create(keyQuery_childrenListStart, &valueQuery_childrenListStart);
        list_addElement(localVarQueryParameters,keyPairQuery_childrenListStart);
    }

    // query parameters
    char *keyQuery_childrenListLimit = NULL;
    double valueQuery_childrenListLimit ;
    keyValuePair_t *keyPairQuery_childrenListLimit = 0;
    if (childrenListLimit)
    {
        keyQuery_childrenListLimit = strdup("childrenListLimit");
        valueQuery_childrenListLimit = (childrenListLimit);
        keyPairQuery_childrenListLimit = keyValuePair_create(keyQuery_childrenListLimit, &valueQuery_childrenListLimit);
        list_addElement(localVarQueryParameters,keyPairQuery_childrenListLimit);
    }

    // query parameters
    char *keyQuery_childrenChildren = NULL;
    char * valueQuery_childrenChildren = NULL;
    keyValuePair_t *keyPairQuery_childrenChildren = 0;
    if (childrenChildren)
    {
        keyQuery_childrenChildren = strdup("childrenChildren");
        valueQuery_childrenChildren = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_childrenChildren, MAX_NUMBER_LENGTH, "%d", *childrenChildren);
        keyPairQuery_childrenChildren = keyValuePair_create(keyQuery_childrenChildren, valueQuery_childrenChildren);
        list_addElement(localVarQueryParameters,keyPairQuery_childrenChildren);
    }
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
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    
    
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_retrieveType){
        free(keyQuery_retrieveType);
        keyQuery_retrieveType = NULL;
    }
    if(valueQuery_retrieveType){
        free(valueQuery_retrieveType);
        valueQuery_retrieveType = NULL;
    }
    if(keyPairQuery_retrieveType){
        keyValuePair_free(keyPairQuery_retrieveType);
        keyPairQuery_retrieveType = NULL;
    }
    if(keyQuery_retrieveType){
        free(keyQuery_retrieveType);
        keyQuery_retrieveType = NULL;
    }
    if(keyPairQuery_retrieveType){
        keyValuePair_free(keyPairQuery_retrieveType);
        keyPairQuery_retrieveType = NULL;
    }

}

// Get Account Settings
//
// Get the account settings for a user
//
user_settings_response_t*
AccountAPI_getSettings(apiClient_t *apiClient, double version, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/account/settings/get");



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
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    user_settings_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = user_settings_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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

// Login as Account
//
// A login service that supports logging in as someone else (accounts that the user manages). Intended for internal use for now.
//
profile_response_t*
AccountAPI_loginDelegate(apiClient_t *apiClient, double version, char *accessToken, char *appKey, char *deviceId, char *accessTokenSecret, long delegatedAccountId, char *delegatedUsername, char *networkUID, int *ageRestriction, char *responseFilters, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/account/login/delegate");



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
    char *keyQuery_accessToken = NULL;
    char * valueQuery_accessToken = NULL;
    keyValuePair_t *keyPairQuery_accessToken = 0;
    if (accessToken)
    {
        keyQuery_accessToken = strdup("accessToken");
        valueQuery_accessToken = strdup((accessToken));
        keyPairQuery_accessToken = keyValuePair_create(keyQuery_accessToken, valueQuery_accessToken);
        list_addElement(localVarQueryParameters,keyPairQuery_accessToken);
    }

    // query parameters
    char *keyQuery_accessTokenSecret = NULL;
    char * valueQuery_accessTokenSecret = NULL;
    keyValuePair_t *keyPairQuery_accessTokenSecret = 0;
    if (accessTokenSecret)
    {
        keyQuery_accessTokenSecret = strdup("accessTokenSecret");
        valueQuery_accessTokenSecret = strdup((accessTokenSecret));
        keyPairQuery_accessTokenSecret = keyValuePair_create(keyQuery_accessTokenSecret, valueQuery_accessTokenSecret);
        list_addElement(localVarQueryParameters,keyPairQuery_accessTokenSecret);
    }

    // query parameters
    char *keyQuery_delegatedAccountId = NULL;
    char * valueQuery_delegatedAccountId ;
    keyValuePair_t *keyPairQuery_delegatedAccountId = 0;
    {
        keyQuery_delegatedAccountId = strdup("delegatedAccountId");
        valueQuery_delegatedAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_delegatedAccountId, MAX_NUMBER_LENGTH_LONG, "%d", delegatedAccountId);
        keyPairQuery_delegatedAccountId = keyValuePair_create(keyQuery_delegatedAccountId, valueQuery_delegatedAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_delegatedAccountId);
    }

    // query parameters
    char *keyQuery_delegatedUsername = NULL;
    char * valueQuery_delegatedUsername = NULL;
    keyValuePair_t *keyPairQuery_delegatedUsername = 0;
    if (delegatedUsername)
    {
        keyQuery_delegatedUsername = strdup("delegatedUsername");
        valueQuery_delegatedUsername = strdup((delegatedUsername));
        keyPairQuery_delegatedUsername = keyValuePair_create(keyQuery_delegatedUsername, valueQuery_delegatedUsername);
        list_addElement(localVarQueryParameters,keyPairQuery_delegatedUsername);
    }

    // query parameters
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
    char *keyQuery_ageRestriction = NULL;
    char * valueQuery_ageRestriction = NULL;
    keyValuePair_t *keyPairQuery_ageRestriction = 0;
    if (ageRestriction)
    {
        keyQuery_ageRestriction = strdup("ageRestriction");
        valueQuery_ageRestriction = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ageRestriction, MAX_NUMBER_LENGTH, "%d", *ageRestriction);
        keyPairQuery_ageRestriction = keyValuePair_create(keyQuery_ageRestriction, valueQuery_ageRestriction);
        list_addElement(localVarQueryParameters,keyPairQuery_ageRestriction);
    }

    // query parameters
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_accessToken){
        free(keyQuery_accessToken);
        keyQuery_accessToken = NULL;
    }
    if(valueQuery_accessToken){
        free(valueQuery_accessToken);
        valueQuery_accessToken = NULL;
    }
    if(keyPairQuery_accessToken){
        keyValuePair_free(keyPairQuery_accessToken);
        keyPairQuery_accessToken = NULL;
    }
    if(keyQuery_accessTokenSecret){
        free(keyQuery_accessTokenSecret);
        keyQuery_accessTokenSecret = NULL;
    }
    if(valueQuery_accessTokenSecret){
        free(valueQuery_accessTokenSecret);
        valueQuery_accessTokenSecret = NULL;
    }
    if(keyPairQuery_accessTokenSecret){
        keyValuePair_free(keyPairQuery_accessTokenSecret);
        keyPairQuery_accessTokenSecret = NULL;
    }
    if(keyQuery_delegatedAccountId){
        free(keyQuery_delegatedAccountId);
        keyQuery_delegatedAccountId = NULL;
    }
    if(keyPairQuery_delegatedAccountId){
        keyValuePair_free(keyPairQuery_delegatedAccountId);
        keyPairQuery_delegatedAccountId = NULL;
    }
    if(keyQuery_delegatedUsername){
        free(keyQuery_delegatedUsername);
        keyQuery_delegatedUsername = NULL;
    }
    if(valueQuery_delegatedUsername){
        free(valueQuery_delegatedUsername);
        valueQuery_delegatedUsername = NULL;
    }
    if(keyPairQuery_delegatedUsername){
        keyValuePair_free(keyPairQuery_delegatedUsername);
        keyPairQuery_delegatedUsername = NULL;
    }
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
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
    if(keyQuery_ageRestriction){
        free(keyQuery_ageRestriction);
        keyQuery_ageRestriction = NULL;
    }
    if(valueQuery_ageRestriction){
        free(valueQuery_ageRestriction);
        valueQuery_ageRestriction = NULL;
    }
    if(keyPairQuery_ageRestriction){
        keyValuePair_free(keyPairQuery_ageRestriction);
        keyPairQuery_ageRestriction = NULL;
    }
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
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

// Login Account
//
// General login service that supports various authentication methods. Currently supports Facebook, Twitter, Sirqul Username, and Sirqul Phone by default. Can also support custom networks created using the {@link ThirdPartyApi}
//
profile_response_t*
AccountAPI_loginGeneral(apiClient_t *apiClient, double version, char *accessToken, char *networkUID, char *appKey, char *deviceId, char *deviceIdType, char *accessTokenSecret, int *ageRestriction, char *responseFilters, double latitude, double longitude, int *emailMatch, long chosenAccountId, long thirdPartyCredentialId)
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
    char *localVarPath = strdup("/api/{version}/account/login");



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
    char *keyQuery_deviceIdType = NULL;
    char * valueQuery_deviceIdType = NULL;
    keyValuePair_t *keyPairQuery_deviceIdType = 0;
    if (deviceIdType)
    {
        keyQuery_deviceIdType = strdup("deviceIdType");
        valueQuery_deviceIdType = strdup((deviceIdType));
        keyPairQuery_deviceIdType = keyValuePair_create(keyQuery_deviceIdType, valueQuery_deviceIdType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIdType);
    }

    // query parameters
    char *keyQuery_accessToken = NULL;
    char * valueQuery_accessToken = NULL;
    keyValuePair_t *keyPairQuery_accessToken = 0;
    if (accessToken)
    {
        keyQuery_accessToken = strdup("accessToken");
        valueQuery_accessToken = strdup((accessToken));
        keyPairQuery_accessToken = keyValuePair_create(keyQuery_accessToken, valueQuery_accessToken);
        list_addElement(localVarQueryParameters,keyPairQuery_accessToken);
    }

    // query parameters
    char *keyQuery_accessTokenSecret = NULL;
    char * valueQuery_accessTokenSecret = NULL;
    keyValuePair_t *keyPairQuery_accessTokenSecret = 0;
    if (accessTokenSecret)
    {
        keyQuery_accessTokenSecret = strdup("accessTokenSecret");
        valueQuery_accessTokenSecret = strdup((accessTokenSecret));
        keyPairQuery_accessTokenSecret = keyValuePair_create(keyQuery_accessTokenSecret, valueQuery_accessTokenSecret);
        list_addElement(localVarQueryParameters,keyPairQuery_accessTokenSecret);
    }

    // query parameters
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
    char *keyQuery_ageRestriction = NULL;
    char * valueQuery_ageRestriction = NULL;
    keyValuePair_t *keyPairQuery_ageRestriction = 0;
    if (ageRestriction)
    {
        keyQuery_ageRestriction = strdup("ageRestriction");
        valueQuery_ageRestriction = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ageRestriction, MAX_NUMBER_LENGTH, "%d", *ageRestriction);
        keyPairQuery_ageRestriction = keyValuePair_create(keyQuery_ageRestriction, valueQuery_ageRestriction);
        list_addElement(localVarQueryParameters,keyPairQuery_ageRestriction);
    }

    // query parameters
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    char *keyQuery_emailMatch = NULL;
    char * valueQuery_emailMatch = NULL;
    keyValuePair_t *keyPairQuery_emailMatch = 0;
    if (emailMatch)
    {
        keyQuery_emailMatch = strdup("emailMatch");
        valueQuery_emailMatch = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_emailMatch, MAX_NUMBER_LENGTH, "%d", *emailMatch);
        keyPairQuery_emailMatch = keyValuePair_create(keyQuery_emailMatch, valueQuery_emailMatch);
        list_addElement(localVarQueryParameters,keyPairQuery_emailMatch);
    }

    // query parameters
    char *keyQuery_chosenAccountId = NULL;
    char * valueQuery_chosenAccountId ;
    keyValuePair_t *keyPairQuery_chosenAccountId = 0;
    {
        keyQuery_chosenAccountId = strdup("chosenAccountId");
        valueQuery_chosenAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_chosenAccountId, MAX_NUMBER_LENGTH_LONG, "%d", chosenAccountId);
        keyPairQuery_chosenAccountId = keyValuePair_create(keyQuery_chosenAccountId, valueQuery_chosenAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_chosenAccountId);
    }

    // query parameters
    char *keyQuery_thirdPartyCredentialId = NULL;
    char * valueQuery_thirdPartyCredentialId ;
    keyValuePair_t *keyPairQuery_thirdPartyCredentialId = 0;
    {
        keyQuery_thirdPartyCredentialId = strdup("thirdPartyCredentialId");
        valueQuery_thirdPartyCredentialId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_thirdPartyCredentialId, MAX_NUMBER_LENGTH_LONG, "%d", thirdPartyCredentialId);
        keyPairQuery_thirdPartyCredentialId = keyValuePair_create(keyQuery_thirdPartyCredentialId, valueQuery_thirdPartyCredentialId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyCredentialId);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_deviceIdType){
        free(keyQuery_deviceIdType);
        keyQuery_deviceIdType = NULL;
    }
    if(valueQuery_deviceIdType){
        free(valueQuery_deviceIdType);
        valueQuery_deviceIdType = NULL;
    }
    if(keyPairQuery_deviceIdType){
        keyValuePair_free(keyPairQuery_deviceIdType);
        keyPairQuery_deviceIdType = NULL;
    }
    if(keyQuery_accessToken){
        free(keyQuery_accessToken);
        keyQuery_accessToken = NULL;
    }
    if(valueQuery_accessToken){
        free(valueQuery_accessToken);
        valueQuery_accessToken = NULL;
    }
    if(keyPairQuery_accessToken){
        keyValuePair_free(keyPairQuery_accessToken);
        keyPairQuery_accessToken = NULL;
    }
    if(keyQuery_accessTokenSecret){
        free(keyQuery_accessTokenSecret);
        keyQuery_accessTokenSecret = NULL;
    }
    if(valueQuery_accessTokenSecret){
        free(valueQuery_accessTokenSecret);
        valueQuery_accessTokenSecret = NULL;
    }
    if(keyPairQuery_accessTokenSecret){
        keyValuePair_free(keyPairQuery_accessTokenSecret);
        keyPairQuery_accessTokenSecret = NULL;
    }
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
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
    if(keyQuery_ageRestriction){
        free(keyQuery_ageRestriction);
        keyQuery_ageRestriction = NULL;
    }
    if(valueQuery_ageRestriction){
        free(valueQuery_ageRestriction);
        valueQuery_ageRestriction = NULL;
    }
    if(keyPairQuery_ageRestriction){
        keyValuePair_free(keyPairQuery_ageRestriction);
        keyPairQuery_ageRestriction = NULL;
    }
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
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
    if(keyQuery_emailMatch){
        free(keyQuery_emailMatch);
        keyQuery_emailMatch = NULL;
    }
    if(valueQuery_emailMatch){
        free(valueQuery_emailMatch);
        valueQuery_emailMatch = NULL;
    }
    if(keyPairQuery_emailMatch){
        keyValuePair_free(keyPairQuery_emailMatch);
        keyPairQuery_emailMatch = NULL;
    }
    if(keyQuery_chosenAccountId){
        free(keyQuery_chosenAccountId);
        keyQuery_chosenAccountId = NULL;
    }
    if(keyPairQuery_chosenAccountId){
        keyValuePair_free(keyPairQuery_chosenAccountId);
        keyPairQuery_chosenAccountId = NULL;
    }
    if(keyQuery_thirdPartyCredentialId){
        free(keyQuery_thirdPartyCredentialId);
        keyQuery_thirdPartyCredentialId = NULL;
    }
    if(keyPairQuery_thirdPartyCredentialId){
        keyValuePair_free(keyPairQuery_thirdPartyCredentialId);
        keyPairQuery_thirdPartyCredentialId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Login Account (Username)
//
// Login to system with an account
//
profile_response_t*
AccountAPI_loginUsername(apiClient_t *apiClient, double version, char *username, char *password, char *deviceId, double latitude, double longitude, char *app, char *gameType, char *appKey, int *returnProfile, char *responseFilters)
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
    char *localVarPath = strdup("/api/{version}/account/get");



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
    char *keyQuery_app = NULL;
    char * valueQuery_app = NULL;
    keyValuePair_t *keyPairQuery_app = 0;
    if (app)
    {
        keyQuery_app = strdup("app");
        valueQuery_app = strdup((app));
        keyPairQuery_app = keyValuePair_create(keyQuery_app, valueQuery_app);
        list_addElement(localVarQueryParameters,keyPairQuery_app);
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
    char *keyQuery_returnProfile = NULL;
    char * valueQuery_returnProfile = NULL;
    keyValuePair_t *keyPairQuery_returnProfile = 0;
    if (returnProfile)
    {
        keyQuery_returnProfile = strdup("returnProfile");
        valueQuery_returnProfile = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnProfile, MAX_NUMBER_LENGTH, "%d", *returnProfile);
        keyPairQuery_returnProfile = keyValuePair_create(keyQuery_returnProfile, valueQuery_returnProfile);
        list_addElement(localVarQueryParameters,keyPairQuery_returnProfile);
    }

    // query parameters
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_app){
        free(keyQuery_app);
        keyQuery_app = NULL;
    }
    if(valueQuery_app){
        free(valueQuery_app);
        valueQuery_app = NULL;
    }
    if(keyPairQuery_app){
        keyValuePair_free(keyPairQuery_app);
        keyPairQuery_app = NULL;
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
    if(keyQuery_returnProfile){
        free(keyQuery_returnProfile);
        keyQuery_returnProfile = NULL;
    }
    if(valueQuery_returnProfile){
        free(valueQuery_returnProfile);
        valueQuery_returnProfile = NULL;
    }
    if(keyPairQuery_returnProfile){
        keyValuePair_free(keyPairQuery_returnProfile);
        keyPairQuery_returnProfile = NULL;
    }
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Logout Account
//
// Cleans up the users data for logging out.
//
sirqul_response_t*
AccountAPI_logout(apiClient_t *apiClient, double version, char *deviceId, char *deviceIdType, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/account/logout");



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
    char *keyQuery_deviceIdType = NULL;
    char * valueQuery_deviceIdType = NULL;
    keyValuePair_t *keyPairQuery_deviceIdType = 0;
    if (deviceIdType)
    {
        keyQuery_deviceIdType = strdup("deviceIdType");
        valueQuery_deviceIdType = strdup((deviceIdType));
        keyPairQuery_deviceIdType = keyValuePair_create(keyQuery_deviceIdType, valueQuery_deviceIdType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIdType);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_deviceIdType){
        free(keyQuery_deviceIdType);
        keyQuery_deviceIdType = NULL;
    }
    if(valueQuery_deviceIdType){
        free(valueQuery_deviceIdType);
        valueQuery_deviceIdType = NULL;
    }
    if(keyPairQuery_deviceIdType){
        keyValuePair_free(keyPairQuery_deviceIdType);
        keyPairQuery_deviceIdType = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
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

// Merge Account
//
// Merges the analytics, achievements, leaderboards of two accounts.
//
sirqul_response_t*
AccountAPI_mergeAccount(apiClient_t *apiClient, double version, long mergeAccountId, char *appKey, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/account/merge");



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
    char *keyQuery_mergeAccountId = NULL;
    char * valueQuery_mergeAccountId ;
    keyValuePair_t *keyPairQuery_mergeAccountId = 0;
    {
        keyQuery_mergeAccountId = strdup("mergeAccountId");
        valueQuery_mergeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_mergeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", mergeAccountId);
        keyPairQuery_mergeAccountId = keyValuePair_create(keyQuery_mergeAccountId, valueQuery_mergeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_mergeAccountId);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_mergeAccountId){
        free(keyQuery_mergeAccountId);
        keyQuery_mergeAccountId = NULL;
    }
    if(keyPairQuery_mergeAccountId){
        keyValuePair_free(keyPairQuery_mergeAccountId);
        keyPairQuery_mergeAccountId = NULL;
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

// Update Password
//
// Update the account password.
//
sirqul_response_t*
AccountAPI_passwordChange(apiClient_t *apiClient, double version, long accountId, char *oldPassword, char *newPassword, char *confirmPassword)
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
    char *localVarPath = strdup("/api/{version}/account/passwordchange");



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
    char *keyQuery_oldPassword = NULL;
    char * valueQuery_oldPassword = NULL;
    keyValuePair_t *keyPairQuery_oldPassword = 0;
    if (oldPassword)
    {
        keyQuery_oldPassword = strdup("oldPassword");
        valueQuery_oldPassword = strdup((oldPassword));
        keyPairQuery_oldPassword = keyValuePair_create(keyQuery_oldPassword, valueQuery_oldPassword);
        list_addElement(localVarQueryParameters,keyPairQuery_oldPassword);
    }

    // query parameters
    char *keyQuery_newPassword = NULL;
    char * valueQuery_newPassword = NULL;
    keyValuePair_t *keyPairQuery_newPassword = 0;
    if (newPassword)
    {
        keyQuery_newPassword = strdup("newPassword");
        valueQuery_newPassword = strdup((newPassword));
        keyPairQuery_newPassword = keyValuePair_create(keyQuery_newPassword, valueQuery_newPassword);
        list_addElement(localVarQueryParameters,keyPairQuery_newPassword);
    }

    // query parameters
    char *keyQuery_confirmPassword = NULL;
    char * valueQuery_confirmPassword = NULL;
    keyValuePair_t *keyPairQuery_confirmPassword = 0;
    if (confirmPassword)
    {
        keyQuery_confirmPassword = strdup("confirmPassword");
        valueQuery_confirmPassword = strdup((confirmPassword));
        keyPairQuery_confirmPassword = keyValuePair_create(keyQuery_confirmPassword, valueQuery_confirmPassword);
        list_addElement(localVarQueryParameters,keyPairQuery_confirmPassword);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_oldPassword){
        free(keyQuery_oldPassword);
        keyQuery_oldPassword = NULL;
    }
    if(valueQuery_oldPassword){
        free(valueQuery_oldPassword);
        valueQuery_oldPassword = NULL;
    }
    if(keyPairQuery_oldPassword){
        keyValuePair_free(keyPairQuery_oldPassword);
        keyPairQuery_oldPassword = NULL;
    }
    if(keyQuery_newPassword){
        free(keyQuery_newPassword);
        keyQuery_newPassword = NULL;
    }
    if(valueQuery_newPassword){
        free(valueQuery_newPassword);
        valueQuery_newPassword = NULL;
    }
    if(keyPairQuery_newPassword){
        keyValuePair_free(keyPairQuery_newPassword);
        keyPairQuery_newPassword = NULL;
    }
    if(keyQuery_confirmPassword){
        free(keyQuery_confirmPassword);
        keyQuery_confirmPassword = NULL;
    }
    if(valueQuery_confirmPassword){
        free(valueQuery_confirmPassword);
        valueQuery_confirmPassword = NULL;
    }
    if(keyPairQuery_confirmPassword){
        keyValuePair_free(keyPairQuery_confirmPassword);
        keyPairQuery_confirmPassword = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Reset Password
//
// Reset the account password. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token.
//
sirqul_response_t*
AccountAPI_passwordReset(apiClient_t *apiClient, double version, char *token, char *password, char *confirm)
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
    char *localVarPath = strdup("/api/{version}/account/passwordreset");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_token = NULL;
    char * valueQuery_token = NULL;
    keyValuePair_t *keyPairQuery_token = 0;
    if (token)
    {
        keyQuery_token = strdup("token");
        valueQuery_token = strdup((token));
        keyPairQuery_token = keyValuePair_create(keyQuery_token, valueQuery_token);
        list_addElement(localVarQueryParameters,keyPairQuery_token);
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
    char *keyQuery_confirm = NULL;
    char * valueQuery_confirm = NULL;
    keyValuePair_t *keyPairQuery_confirm = 0;
    if (confirm)
    {
        keyQuery_confirm = strdup("confirm");
        valueQuery_confirm = strdup((confirm));
        keyPairQuery_confirm = keyValuePair_create(keyQuery_confirm, valueQuery_confirm);
        list_addElement(localVarQueryParameters,keyPairQuery_confirm);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_token){
        free(keyQuery_token);
        keyQuery_token = NULL;
    }
    if(valueQuery_token){
        free(valueQuery_token);
        valueQuery_token = NULL;
    }
    if(keyPairQuery_token){
        keyValuePair_free(keyPairQuery_token);
        keyPairQuery_token = NULL;
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
    if(keyQuery_confirm){
        free(keyQuery_confirm);
        keyQuery_confirm = NULL;
    }
    if(valueQuery_confirm){
        free(valueQuery_confirm);
        valueQuery_confirm = NULL;
    }
    if(keyPairQuery_confirm){
        keyValuePair_free(keyPairQuery_confirm);
        keyPairQuery_confirm = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Request Password Reset
//
// Request that an account password be reset. The account is looked up by email address and then a link is sent via email to that account with a reset token. The token is valid for 24 hours.
//
sirqul_response_t*
AccountAPI_requestPasswordReset(apiClient_t *apiClient, double version, char *email, char *from, char *domain, char *subUrl, char *referer)
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
    char *localVarPath = strdup("/api/{version}/account/requestpasswordreset");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_from = NULL;
    char * valueQuery_from = NULL;
    keyValuePair_t *keyPairQuery_from = 0;
    if (from)
    {
        keyQuery_from = strdup("from");
        valueQuery_from = strdup((from));
        keyPairQuery_from = keyValuePair_create(keyQuery_from, valueQuery_from);
        list_addElement(localVarQueryParameters,keyPairQuery_from);
    }

    // query parameters
    char *keyQuery_domain = NULL;
    char * valueQuery_domain = NULL;
    keyValuePair_t *keyPairQuery_domain = 0;
    if (domain)
    {
        keyQuery_domain = strdup("domain");
        valueQuery_domain = strdup((domain));
        keyPairQuery_domain = keyValuePair_create(keyQuery_domain, valueQuery_domain);
        list_addElement(localVarQueryParameters,keyPairQuery_domain);
    }

    // query parameters
    char *keyQuery_subUrl = NULL;
    char * valueQuery_subUrl = NULL;
    keyValuePair_t *keyPairQuery_subUrl = 0;
    if (subUrl)
    {
        keyQuery_subUrl = strdup("subUrl");
        valueQuery_subUrl = strdup((subUrl));
        keyPairQuery_subUrl = keyValuePair_create(keyQuery_subUrl, valueQuery_subUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_subUrl);
    }

    // query parameters
    char *keyQuery_referer = NULL;
    char * valueQuery_referer = NULL;
    keyValuePair_t *keyPairQuery_referer = 0;
    if (referer)
    {
        keyQuery_referer = strdup("referer");
        valueQuery_referer = strdup((referer));
        keyPairQuery_referer = keyValuePair_create(keyQuery_referer, valueQuery_referer);
        list_addElement(localVarQueryParameters,keyPairQuery_referer);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_from){
        free(keyQuery_from);
        keyQuery_from = NULL;
    }
    if(valueQuery_from){
        free(valueQuery_from);
        valueQuery_from = NULL;
    }
    if(keyPairQuery_from){
        keyValuePair_free(keyPairQuery_from);
        keyPairQuery_from = NULL;
    }
    if(keyQuery_domain){
        free(keyQuery_domain);
        keyQuery_domain = NULL;
    }
    if(valueQuery_domain){
        free(valueQuery_domain);
        valueQuery_domain = NULL;
    }
    if(keyPairQuery_domain){
        keyValuePair_free(keyPairQuery_domain);
        keyPairQuery_domain = NULL;
    }
    if(keyQuery_subUrl){
        free(keyQuery_subUrl);
        keyQuery_subUrl = NULL;
    }
    if(valueQuery_subUrl){
        free(valueQuery_subUrl);
        valueQuery_subUrl = NULL;
    }
    if(keyPairQuery_subUrl){
        keyValuePair_free(keyPairQuery_subUrl);
        keyPairQuery_subUrl = NULL;
    }
    if(keyQuery_referer){
        free(keyQuery_referer);
        keyQuery_referer = NULL;
    }
    if(valueQuery_referer){
        free(valueQuery_referer);
        valueQuery_referer = NULL;
    }
    if(keyPairQuery_referer){
        keyValuePair_free(keyPairQuery_referer);
        keyPairQuery_referer = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Send Validation Request
//
// Send an email to validate a user's account.
//
sirqul_response_t*
AccountAPI_requestValidateAccount(apiClient_t *apiClient, double version, long accountId)
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
    char *localVarPath = strdup("/api/{version}/account/requestValidateAccount");



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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Accounts
//
// Search for account profiles.
//
list_t*
AccountAPI_searchAccounts(apiClient_t *apiClient, double version, long accountId, char *appKey, char *keyword, double latitude, double longitude, double radius, sirqul_iot_platform_searchAccounts_gender_e gender, sirqul_iot_platform_searchAccounts_gameExperience_e gameExperience, int *age, char *categoryIds, int *returnNulls, char *responseFilters, char *purchaseType, char *sortField, int *descending, int *start, int *limit, int *activeOnly)
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
    char *localVarPath = strdup("/api/{version}/account/profile/search");



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
    char *keyQuery_radius = NULL;
    char * valueQuery_radius = NULL;
    keyValuePair_t *keyPairQuery_radius = 0;
    {
        keyQuery_radius = strdup("radius");
        int s = snprintf(NULL, 0, "%.16e", radius);
        if (s >= 0)
        {
            valueQuery_radius = calloc(1,s+1);
            snprintf(valueQuery_radius, s+1, "%.16e", radius);
        }
        keyPairQuery_radius = keyValuePair_create(keyQuery_radius, valueQuery_radius);
        list_addElement(localVarQueryParameters,keyPairQuery_radius);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    sirqul_iot_platform_searchAccounts_gender_e valueQuery_gender ;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = (gender);
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, strdup(searchAccounts_GENDER_ToString(
        valueQuery_gender)));
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_gameExperience = NULL;
    sirqul_iot_platform_searchAccounts_gameExperience_e valueQuery_gameExperience ;
    keyValuePair_t *keyPairQuery_gameExperience = 0;
    if (gameExperience)
    {
        keyQuery_gameExperience = strdup("gameExperience");
        valueQuery_gameExperience = (gameExperience);
        keyPairQuery_gameExperience = keyValuePair_create(keyQuery_gameExperience, strdup(searchAccounts_GAMEEXPERIENCE_ToString(
        valueQuery_gameExperience)));
        list_addElement(localVarQueryParameters,keyPairQuery_gameExperience);
    }

    // query parameters
    char *keyQuery_age = NULL;
    char * valueQuery_age = NULL;
    keyValuePair_t *keyPairQuery_age = 0;
    if (age)
    {
        keyQuery_age = strdup("age");
        valueQuery_age = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_age, MAX_NUMBER_LENGTH, "%d", *age);
        keyPairQuery_age = keyValuePair_create(keyQuery_age, valueQuery_age);
        list_addElement(localVarQueryParameters,keyPairQuery_age);
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
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
    }

    // query parameters
    char *keyQuery_purchaseType = NULL;
    char * valueQuery_purchaseType = NULL;
    keyValuePair_t *keyPairQuery_purchaseType = 0;
    if (purchaseType)
    {
        keyQuery_purchaseType = strdup("purchaseType");
        valueQuery_purchaseType = strdup((purchaseType));
        keyPairQuery_purchaseType = keyValuePair_create(keyQuery_purchaseType, valueQuery_purchaseType);
        list_addElement(localVarQueryParameters,keyPairQuery_purchaseType);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AccountAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AccountAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AccountAPIlocalVarJSON);
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
    if(keyQuery_radius){
        free(keyQuery_radius);
        keyQuery_radius = NULL;
    }
    if(keyPairQuery_radius){
        keyValuePair_free(keyPairQuery_radius);
        keyPairQuery_radius = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_gameExperience){
        free(keyQuery_gameExperience);
        keyQuery_gameExperience = NULL;
    }
    if(keyPairQuery_gameExperience){
        keyValuePair_free(keyPairQuery_gameExperience);
        keyPairQuery_gameExperience = NULL;
    }
    if(keyQuery_age){
        free(keyQuery_age);
        keyQuery_age = NULL;
    }
    if(valueQuery_age){
        free(valueQuery_age);
        valueQuery_age = NULL;
    }
    if(keyPairQuery_age){
        keyValuePair_free(keyPairQuery_age);
        keyPairQuery_age = NULL;
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
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
    }
    if(keyQuery_purchaseType){
        free(keyQuery_purchaseType);
        keyQuery_purchaseType = NULL;
    }
    if(valueQuery_purchaseType){
        free(valueQuery_purchaseType);
        valueQuery_purchaseType = NULL;
    }
    if(keyPairQuery_purchaseType){
        keyValuePair_free(keyPairQuery_purchaseType);
        keyPairQuery_purchaseType = NULL;
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

// Login Account (Encrypted Username)
//
// ogin with encrypted user-name and password.
//
profile_response_t*
AccountAPI_secureLogin(apiClient_t *apiClient, double version, char *username, char *password, char *gameType, char *deviceId, char *charsetName, double latitude, double longitude, int *returnProfile, char *responseFilters)
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
    char *localVarPath = strdup("/api/{version}/account/login/validate");



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
    char *keyQuery_charsetName = NULL;
    char * valueQuery_charsetName = NULL;
    keyValuePair_t *keyPairQuery_charsetName = 0;
    if (charsetName)
    {
        keyQuery_charsetName = strdup("charsetName");
        valueQuery_charsetName = strdup((charsetName));
        keyPairQuery_charsetName = keyValuePair_create(keyQuery_charsetName, valueQuery_charsetName);
        list_addElement(localVarQueryParameters,keyPairQuery_charsetName);
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
    char *keyQuery_returnProfile = NULL;
    char * valueQuery_returnProfile = NULL;
    keyValuePair_t *keyPairQuery_returnProfile = 0;
    if (returnProfile)
    {
        keyQuery_returnProfile = strdup("returnProfile");
        valueQuery_returnProfile = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnProfile, MAX_NUMBER_LENGTH, "%d", *returnProfile);
        keyPairQuery_returnProfile = keyValuePair_create(keyQuery_returnProfile, valueQuery_returnProfile);
        list_addElement(localVarQueryParameters,keyPairQuery_returnProfile);
    }

    // query parameters
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_charsetName){
        free(keyQuery_charsetName);
        keyQuery_charsetName = NULL;
    }
    if(valueQuery_charsetName){
        free(valueQuery_charsetName);
        valueQuery_charsetName = NULL;
    }
    if(keyPairQuery_charsetName){
        keyValuePair_free(keyPairQuery_charsetName);
        keyPairQuery_charsetName = NULL;
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
    if(keyQuery_returnProfile){
        free(keyQuery_returnProfile);
        keyQuery_returnProfile = NULL;
    }
    if(valueQuery_returnProfile){
        free(valueQuery_returnProfile);
        valueQuery_returnProfile = NULL;
    }
    if(keyPairQuery_returnProfile){
        keyValuePair_free(keyPairQuery_returnProfile);
        keyPairQuery_returnProfile = NULL;
    }
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Account (Encrypted Username)
//
// Create a new account by role (with encrypted user-name and password)
//
profile_info_response_t*
AccountAPI_secureSignup(apiClient_t *apiClient, double version, char *deviceId, char *username, char *password, char *name, char *inviteToken, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *deviceIdType, char *emailAddress, long assetId, char *address, char *zipcode, char *gender, long birthday, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *role, char *platforms, char *tags, char *aboutUs, char *gameExperience, char *categoryIds, char *hometown, char *height, int *heightIndex, char *ethnicity, char *bodyType, char *maritalStatus, char *children, char *religion, char *education, int *educationIndex, char *smoke, char *drink, char *companionship, int *companionshipIndex, int *preferredMinAge, int *preferredMaxAge, int *preferredMinHeight, int *preferredMaxHeight, char *preferredGender, char *preferredEducation, int *preferredEducationIndex, char *preferredBodyType, char *preferredEthnicity, char *preferredLocation, double preferredLocationRange, double latitude, double longitude, int *acceptedTerms, char *charsetName, char *gameType, char *appKey, char *appVersion, char *responseType)
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
    char *localVarPath = strdup("/api/{version}/account/create/validate");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_inviteToken = NULL;
    char * valueQuery_inviteToken = NULL;
    keyValuePair_t *keyPairQuery_inviteToken = 0;
    if (inviteToken)
    {
        keyQuery_inviteToken = strdup("inviteToken");
        valueQuery_inviteToken = strdup((inviteToken));
        keyPairQuery_inviteToken = keyValuePair_create(keyQuery_inviteToken, valueQuery_inviteToken);
        list_addElement(localVarQueryParameters,keyPairQuery_inviteToken);
    }

    // query parameters
    char *keyQuery_prefixName = NULL;
    char * valueQuery_prefixName = NULL;
    keyValuePair_t *keyPairQuery_prefixName = 0;
    if (prefixName)
    {
        keyQuery_prefixName = strdup("prefixName");
        valueQuery_prefixName = strdup((prefixName));
        keyPairQuery_prefixName = keyValuePair_create(keyQuery_prefixName, valueQuery_prefixName);
        list_addElement(localVarQueryParameters,keyPairQuery_prefixName);
    }

    // query parameters
    char *keyQuery_firstName = NULL;
    char * valueQuery_firstName = NULL;
    keyValuePair_t *keyPairQuery_firstName = 0;
    if (firstName)
    {
        keyQuery_firstName = strdup("firstName");
        valueQuery_firstName = strdup((firstName));
        keyPairQuery_firstName = keyValuePair_create(keyQuery_firstName, valueQuery_firstName);
        list_addElement(localVarQueryParameters,keyPairQuery_firstName);
    }

    // query parameters
    char *keyQuery_middleName = NULL;
    char * valueQuery_middleName = NULL;
    keyValuePair_t *keyPairQuery_middleName = 0;
    if (middleName)
    {
        keyQuery_middleName = strdup("middleName");
        valueQuery_middleName = strdup((middleName));
        keyPairQuery_middleName = keyValuePair_create(keyQuery_middleName, valueQuery_middleName);
        list_addElement(localVarQueryParameters,keyPairQuery_middleName);
    }

    // query parameters
    char *keyQuery_lastName = NULL;
    char * valueQuery_lastName = NULL;
    keyValuePair_t *keyPairQuery_lastName = 0;
    if (lastName)
    {
        keyQuery_lastName = strdup("lastName");
        valueQuery_lastName = strdup((lastName));
        keyPairQuery_lastName = keyValuePair_create(keyQuery_lastName, valueQuery_lastName);
        list_addElement(localVarQueryParameters,keyPairQuery_lastName);
    }

    // query parameters
    char *keyQuery_suffixName = NULL;
    char * valueQuery_suffixName = NULL;
    keyValuePair_t *keyPairQuery_suffixName = 0;
    if (suffixName)
    {
        keyQuery_suffixName = strdup("suffixName");
        valueQuery_suffixName = strdup((suffixName));
        keyPairQuery_suffixName = keyValuePair_create(keyQuery_suffixName, valueQuery_suffixName);
        list_addElement(localVarQueryParameters,keyPairQuery_suffixName);
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
    char *keyQuery_deviceIdType = NULL;
    char * valueQuery_deviceIdType = NULL;
    keyValuePair_t *keyPairQuery_deviceIdType = 0;
    if (deviceIdType)
    {
        keyQuery_deviceIdType = strdup("deviceIdType");
        valueQuery_deviceIdType = strdup((deviceIdType));
        keyPairQuery_deviceIdType = keyValuePair_create(keyQuery_deviceIdType, valueQuery_deviceIdType);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceIdType);
    }

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
    char *keyQuery_emailAddress = NULL;
    char * valueQuery_emailAddress = NULL;
    keyValuePair_t *keyPairQuery_emailAddress = 0;
    if (emailAddress)
    {
        keyQuery_emailAddress = strdup("emailAddress");
        valueQuery_emailAddress = strdup((emailAddress));
        keyPairQuery_emailAddress = keyValuePair_create(keyQuery_emailAddress, valueQuery_emailAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_emailAddress);
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
    char *keyQuery_zipcode = NULL;
    char * valueQuery_zipcode = NULL;
    keyValuePair_t *keyPairQuery_zipcode = 0;
    if (zipcode)
    {
        keyQuery_zipcode = strdup("zipcode");
        valueQuery_zipcode = strdup((zipcode));
        keyPairQuery_zipcode = keyValuePair_create(keyQuery_zipcode, valueQuery_zipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_zipcode);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    char * valueQuery_gender = NULL;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = strdup((gender));
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, valueQuery_gender);
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_birthday = NULL;
    char * valueQuery_birthday ;
    keyValuePair_t *keyPairQuery_birthday = 0;
    {
        keyQuery_birthday = strdup("birthday");
        valueQuery_birthday = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_birthday, MAX_NUMBER_LENGTH_LONG, "%d", birthday);
        keyPairQuery_birthday = keyValuePair_create(keyQuery_birthday, valueQuery_birthday);
        list_addElement(localVarQueryParameters,keyPairQuery_birthday);
    }

    // query parameters
    char *keyQuery_homePhone = NULL;
    char * valueQuery_homePhone = NULL;
    keyValuePair_t *keyPairQuery_homePhone = 0;
    if (homePhone)
    {
        keyQuery_homePhone = strdup("homePhone");
        valueQuery_homePhone = strdup((homePhone));
        keyPairQuery_homePhone = keyValuePair_create(keyQuery_homePhone, valueQuery_homePhone);
        list_addElement(localVarQueryParameters,keyPairQuery_homePhone);
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
    char *keyQuery_cellPhoneCarrier = NULL;
    char * valueQuery_cellPhoneCarrier = NULL;
    keyValuePair_t *keyPairQuery_cellPhoneCarrier = 0;
    if (cellPhoneCarrier)
    {
        keyQuery_cellPhoneCarrier = strdup("cellPhoneCarrier");
        valueQuery_cellPhoneCarrier = strdup((cellPhoneCarrier));
        keyPairQuery_cellPhoneCarrier = keyValuePair_create(keyQuery_cellPhoneCarrier, valueQuery_cellPhoneCarrier);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhoneCarrier);
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
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
    }

    // query parameters
    char *keyQuery_platforms = NULL;
    char * valueQuery_platforms = NULL;
    keyValuePair_t *keyPairQuery_platforms = 0;
    if (platforms)
    {
        keyQuery_platforms = strdup("platforms");
        valueQuery_platforms = strdup((platforms));
        keyPairQuery_platforms = keyValuePair_create(keyQuery_platforms, valueQuery_platforms);
        list_addElement(localVarQueryParameters,keyPairQuery_platforms);
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
    char *keyQuery_aboutUs = NULL;
    char * valueQuery_aboutUs = NULL;
    keyValuePair_t *keyPairQuery_aboutUs = 0;
    if (aboutUs)
    {
        keyQuery_aboutUs = strdup("aboutUs");
        valueQuery_aboutUs = strdup((aboutUs));
        keyPairQuery_aboutUs = keyValuePair_create(keyQuery_aboutUs, valueQuery_aboutUs);
        list_addElement(localVarQueryParameters,keyPairQuery_aboutUs);
    }

    // query parameters
    char *keyQuery_gameExperience = NULL;
    char * valueQuery_gameExperience = NULL;
    keyValuePair_t *keyPairQuery_gameExperience = 0;
    if (gameExperience)
    {
        keyQuery_gameExperience = strdup("gameExperience");
        valueQuery_gameExperience = strdup((gameExperience));
        keyPairQuery_gameExperience = keyValuePair_create(keyQuery_gameExperience, valueQuery_gameExperience);
        list_addElement(localVarQueryParameters,keyPairQuery_gameExperience);
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
    char *keyQuery_hometown = NULL;
    char * valueQuery_hometown = NULL;
    keyValuePair_t *keyPairQuery_hometown = 0;
    if (hometown)
    {
        keyQuery_hometown = strdup("hometown");
        valueQuery_hometown = strdup((hometown));
        keyPairQuery_hometown = keyValuePair_create(keyQuery_hometown, valueQuery_hometown);
        list_addElement(localVarQueryParameters,keyPairQuery_hometown);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    if (height)
    {
        keyQuery_height = strdup("height");
        valueQuery_height = strdup((height));
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_heightIndex = NULL;
    char * valueQuery_heightIndex = NULL;
    keyValuePair_t *keyPairQuery_heightIndex = 0;
    if (heightIndex)
    {
        keyQuery_heightIndex = strdup("heightIndex");
        valueQuery_heightIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_heightIndex, MAX_NUMBER_LENGTH, "%d", *heightIndex);
        keyPairQuery_heightIndex = keyValuePair_create(keyQuery_heightIndex, valueQuery_heightIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_heightIndex);
    }

    // query parameters
    char *keyQuery_ethnicity = NULL;
    char * valueQuery_ethnicity = NULL;
    keyValuePair_t *keyPairQuery_ethnicity = 0;
    if (ethnicity)
    {
        keyQuery_ethnicity = strdup("ethnicity");
        valueQuery_ethnicity = strdup((ethnicity));
        keyPairQuery_ethnicity = keyValuePair_create(keyQuery_ethnicity, valueQuery_ethnicity);
        list_addElement(localVarQueryParameters,keyPairQuery_ethnicity);
    }

    // query parameters
    char *keyQuery_bodyType = NULL;
    char * valueQuery_bodyType = NULL;
    keyValuePair_t *keyPairQuery_bodyType = 0;
    if (bodyType)
    {
        keyQuery_bodyType = strdup("bodyType");
        valueQuery_bodyType = strdup((bodyType));
        keyPairQuery_bodyType = keyValuePair_create(keyQuery_bodyType, valueQuery_bodyType);
        list_addElement(localVarQueryParameters,keyPairQuery_bodyType);
    }

    // query parameters
    char *keyQuery_maritalStatus = NULL;
    char * valueQuery_maritalStatus = NULL;
    keyValuePair_t *keyPairQuery_maritalStatus = 0;
    if (maritalStatus)
    {
        keyQuery_maritalStatus = strdup("maritalStatus");
        valueQuery_maritalStatus = strdup((maritalStatus));
        keyPairQuery_maritalStatus = keyValuePair_create(keyQuery_maritalStatus, valueQuery_maritalStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_maritalStatus);
    }

    // query parameters
    char *keyQuery_children = NULL;
    char * valueQuery_children = NULL;
    keyValuePair_t *keyPairQuery_children = 0;
    if (children)
    {
        keyQuery_children = strdup("children");
        valueQuery_children = strdup((children));
        keyPairQuery_children = keyValuePair_create(keyQuery_children, valueQuery_children);
        list_addElement(localVarQueryParameters,keyPairQuery_children);
    }

    // query parameters
    char *keyQuery_religion = NULL;
    char * valueQuery_religion = NULL;
    keyValuePair_t *keyPairQuery_religion = 0;
    if (religion)
    {
        keyQuery_religion = strdup("religion");
        valueQuery_religion = strdup((religion));
        keyPairQuery_religion = keyValuePair_create(keyQuery_religion, valueQuery_religion);
        list_addElement(localVarQueryParameters,keyPairQuery_religion);
    }

    // query parameters
    char *keyQuery_education = NULL;
    char * valueQuery_education = NULL;
    keyValuePair_t *keyPairQuery_education = 0;
    if (education)
    {
        keyQuery_education = strdup("education");
        valueQuery_education = strdup((education));
        keyPairQuery_education = keyValuePair_create(keyQuery_education, valueQuery_education);
        list_addElement(localVarQueryParameters,keyPairQuery_education);
    }

    // query parameters
    char *keyQuery_educationIndex = NULL;
    char * valueQuery_educationIndex = NULL;
    keyValuePair_t *keyPairQuery_educationIndex = 0;
    if (educationIndex)
    {
        keyQuery_educationIndex = strdup("educationIndex");
        valueQuery_educationIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_educationIndex, MAX_NUMBER_LENGTH, "%d", *educationIndex);
        keyPairQuery_educationIndex = keyValuePair_create(keyQuery_educationIndex, valueQuery_educationIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_educationIndex);
    }

    // query parameters
    char *keyQuery_smoke = NULL;
    char * valueQuery_smoke = NULL;
    keyValuePair_t *keyPairQuery_smoke = 0;
    if (smoke)
    {
        keyQuery_smoke = strdup("smoke");
        valueQuery_smoke = strdup((smoke));
        keyPairQuery_smoke = keyValuePair_create(keyQuery_smoke, valueQuery_smoke);
        list_addElement(localVarQueryParameters,keyPairQuery_smoke);
    }

    // query parameters
    char *keyQuery_drink = NULL;
    char * valueQuery_drink = NULL;
    keyValuePair_t *keyPairQuery_drink = 0;
    if (drink)
    {
        keyQuery_drink = strdup("drink");
        valueQuery_drink = strdup((drink));
        keyPairQuery_drink = keyValuePair_create(keyQuery_drink, valueQuery_drink);
        list_addElement(localVarQueryParameters,keyPairQuery_drink);
    }

    // query parameters
    char *keyQuery_companionship = NULL;
    char * valueQuery_companionship = NULL;
    keyValuePair_t *keyPairQuery_companionship = 0;
    if (companionship)
    {
        keyQuery_companionship = strdup("companionship");
        valueQuery_companionship = strdup((companionship));
        keyPairQuery_companionship = keyValuePair_create(keyQuery_companionship, valueQuery_companionship);
        list_addElement(localVarQueryParameters,keyPairQuery_companionship);
    }

    // query parameters
    char *keyQuery_companionshipIndex = NULL;
    char * valueQuery_companionshipIndex = NULL;
    keyValuePair_t *keyPairQuery_companionshipIndex = 0;
    if (companionshipIndex)
    {
        keyQuery_companionshipIndex = strdup("companionshipIndex");
        valueQuery_companionshipIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_companionshipIndex, MAX_NUMBER_LENGTH, "%d", *companionshipIndex);
        keyPairQuery_companionshipIndex = keyValuePair_create(keyQuery_companionshipIndex, valueQuery_companionshipIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_companionshipIndex);
    }

    // query parameters
    char *keyQuery_preferredMinAge = NULL;
    char * valueQuery_preferredMinAge = NULL;
    keyValuePair_t *keyPairQuery_preferredMinAge = 0;
    if (preferredMinAge)
    {
        keyQuery_preferredMinAge = strdup("preferredMinAge");
        valueQuery_preferredMinAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMinAge, MAX_NUMBER_LENGTH, "%d", *preferredMinAge);
        keyPairQuery_preferredMinAge = keyValuePair_create(keyQuery_preferredMinAge, valueQuery_preferredMinAge);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMinAge);
    }

    // query parameters
    char *keyQuery_preferredMaxAge = NULL;
    char * valueQuery_preferredMaxAge = NULL;
    keyValuePair_t *keyPairQuery_preferredMaxAge = 0;
    if (preferredMaxAge)
    {
        keyQuery_preferredMaxAge = strdup("preferredMaxAge");
        valueQuery_preferredMaxAge = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMaxAge, MAX_NUMBER_LENGTH, "%d", *preferredMaxAge);
        keyPairQuery_preferredMaxAge = keyValuePair_create(keyQuery_preferredMaxAge, valueQuery_preferredMaxAge);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMaxAge);
    }

    // query parameters
    char *keyQuery_preferredMinHeight = NULL;
    char * valueQuery_preferredMinHeight = NULL;
    keyValuePair_t *keyPairQuery_preferredMinHeight = 0;
    if (preferredMinHeight)
    {
        keyQuery_preferredMinHeight = strdup("preferredMinHeight");
        valueQuery_preferredMinHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMinHeight, MAX_NUMBER_LENGTH, "%d", *preferredMinHeight);
        keyPairQuery_preferredMinHeight = keyValuePair_create(keyQuery_preferredMinHeight, valueQuery_preferredMinHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMinHeight);
    }

    // query parameters
    char *keyQuery_preferredMaxHeight = NULL;
    char * valueQuery_preferredMaxHeight = NULL;
    keyValuePair_t *keyPairQuery_preferredMaxHeight = 0;
    if (preferredMaxHeight)
    {
        keyQuery_preferredMaxHeight = strdup("preferredMaxHeight");
        valueQuery_preferredMaxHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredMaxHeight, MAX_NUMBER_LENGTH, "%d", *preferredMaxHeight);
        keyPairQuery_preferredMaxHeight = keyValuePair_create(keyQuery_preferredMaxHeight, valueQuery_preferredMaxHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredMaxHeight);
    }

    // query parameters
    char *keyQuery_preferredGender = NULL;
    char * valueQuery_preferredGender = NULL;
    keyValuePair_t *keyPairQuery_preferredGender = 0;
    if (preferredGender)
    {
        keyQuery_preferredGender = strdup("preferredGender");
        valueQuery_preferredGender = strdup((preferredGender));
        keyPairQuery_preferredGender = keyValuePair_create(keyQuery_preferredGender, valueQuery_preferredGender);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredGender);
    }

    // query parameters
    char *keyQuery_preferredEducation = NULL;
    char * valueQuery_preferredEducation = NULL;
    keyValuePair_t *keyPairQuery_preferredEducation = 0;
    if (preferredEducation)
    {
        keyQuery_preferredEducation = strdup("preferredEducation");
        valueQuery_preferredEducation = strdup((preferredEducation));
        keyPairQuery_preferredEducation = keyValuePair_create(keyQuery_preferredEducation, valueQuery_preferredEducation);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEducation);
    }

    // query parameters
    char *keyQuery_preferredEducationIndex = NULL;
    char * valueQuery_preferredEducationIndex = NULL;
    keyValuePair_t *keyPairQuery_preferredEducationIndex = 0;
    if (preferredEducationIndex)
    {
        keyQuery_preferredEducationIndex = strdup("preferredEducationIndex");
        valueQuery_preferredEducationIndex = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_preferredEducationIndex, MAX_NUMBER_LENGTH, "%d", *preferredEducationIndex);
        keyPairQuery_preferredEducationIndex = keyValuePair_create(keyQuery_preferredEducationIndex, valueQuery_preferredEducationIndex);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEducationIndex);
    }

    // query parameters
    char *keyQuery_preferredBodyType = NULL;
    char * valueQuery_preferredBodyType = NULL;
    keyValuePair_t *keyPairQuery_preferredBodyType = 0;
    if (preferredBodyType)
    {
        keyQuery_preferredBodyType = strdup("preferredBodyType");
        valueQuery_preferredBodyType = strdup((preferredBodyType));
        keyPairQuery_preferredBodyType = keyValuePair_create(keyQuery_preferredBodyType, valueQuery_preferredBodyType);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredBodyType);
    }

    // query parameters
    char *keyQuery_preferredEthnicity = NULL;
    char * valueQuery_preferredEthnicity = NULL;
    keyValuePair_t *keyPairQuery_preferredEthnicity = 0;
    if (preferredEthnicity)
    {
        keyQuery_preferredEthnicity = strdup("preferredEthnicity");
        valueQuery_preferredEthnicity = strdup((preferredEthnicity));
        keyPairQuery_preferredEthnicity = keyValuePair_create(keyQuery_preferredEthnicity, valueQuery_preferredEthnicity);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredEthnicity);
    }

    // query parameters
    char *keyQuery_preferredLocation = NULL;
    char * valueQuery_preferredLocation = NULL;
    keyValuePair_t *keyPairQuery_preferredLocation = 0;
    if (preferredLocation)
    {
        keyQuery_preferredLocation = strdup("preferredLocation");
        valueQuery_preferredLocation = strdup((preferredLocation));
        keyPairQuery_preferredLocation = keyValuePair_create(keyQuery_preferredLocation, valueQuery_preferredLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredLocation);
    }

    // query parameters
    char *keyQuery_preferredLocationRange = NULL;
    char * valueQuery_preferredLocationRange = NULL;
    keyValuePair_t *keyPairQuery_preferredLocationRange = 0;
    {
        keyQuery_preferredLocationRange = strdup("preferredLocationRange");
        int s = snprintf(NULL, 0, "%.16e", preferredLocationRange);
        if (s >= 0)
        {
            valueQuery_preferredLocationRange = calloc(1,s+1);
            snprintf(valueQuery_preferredLocationRange, s+1, "%.16e", preferredLocationRange);
        }
        keyPairQuery_preferredLocationRange = keyValuePair_create(keyQuery_preferredLocationRange, valueQuery_preferredLocationRange);
        list_addElement(localVarQueryParameters,keyPairQuery_preferredLocationRange);
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
    char *keyQuery_acceptedTerms = NULL;
    char * valueQuery_acceptedTerms = NULL;
    keyValuePair_t *keyPairQuery_acceptedTerms = 0;
    if (acceptedTerms)
    {
        keyQuery_acceptedTerms = strdup("acceptedTerms");
        valueQuery_acceptedTerms = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_acceptedTerms, MAX_NUMBER_LENGTH, "%d", *acceptedTerms);
        keyPairQuery_acceptedTerms = keyValuePair_create(keyQuery_acceptedTerms, valueQuery_acceptedTerms);
        list_addElement(localVarQueryParameters,keyPairQuery_acceptedTerms);
    }

    // query parameters
    char *keyQuery_charsetName = NULL;
    char * valueQuery_charsetName = NULL;
    keyValuePair_t *keyPairQuery_charsetName = 0;
    if (charsetName)
    {
        keyQuery_charsetName = strdup("charsetName");
        valueQuery_charsetName = strdup((charsetName));
        keyPairQuery_charsetName = keyValuePair_create(keyQuery_charsetName, valueQuery_charsetName);
        list_addElement(localVarQueryParameters,keyPairQuery_charsetName);
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
    char *keyQuery_appVersion = NULL;
    char * valueQuery_appVersion = NULL;
    keyValuePair_t *keyPairQuery_appVersion = 0;
    if (appVersion)
    {
        keyQuery_appVersion = strdup("appVersion");
        valueQuery_appVersion = strdup((appVersion));
        keyPairQuery_appVersion = keyValuePair_create(keyQuery_appVersion, valueQuery_appVersion);
        list_addElement(localVarQueryParameters,keyPairQuery_appVersion);
    }

    // query parameters
    char *keyQuery_responseType = NULL;
    char * valueQuery_responseType = NULL;
    keyValuePair_t *keyPairQuery_responseType = 0;
    if (responseType)
    {
        keyQuery_responseType = strdup("responseType");
        valueQuery_responseType = strdup((responseType));
        keyPairQuery_responseType = keyValuePair_create(keyQuery_responseType, valueQuery_responseType);
        list_addElement(localVarQueryParameters,keyPairQuery_responseType);
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
    profile_info_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_info_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_inviteToken){
        free(keyQuery_inviteToken);
        keyQuery_inviteToken = NULL;
    }
    if(valueQuery_inviteToken){
        free(valueQuery_inviteToken);
        valueQuery_inviteToken = NULL;
    }
    if(keyPairQuery_inviteToken){
        keyValuePair_free(keyPairQuery_inviteToken);
        keyPairQuery_inviteToken = NULL;
    }
    if(keyQuery_prefixName){
        free(keyQuery_prefixName);
        keyQuery_prefixName = NULL;
    }
    if(valueQuery_prefixName){
        free(valueQuery_prefixName);
        valueQuery_prefixName = NULL;
    }
    if(keyPairQuery_prefixName){
        keyValuePair_free(keyPairQuery_prefixName);
        keyPairQuery_prefixName = NULL;
    }
    if(keyQuery_firstName){
        free(keyQuery_firstName);
        keyQuery_firstName = NULL;
    }
    if(valueQuery_firstName){
        free(valueQuery_firstName);
        valueQuery_firstName = NULL;
    }
    if(keyPairQuery_firstName){
        keyValuePair_free(keyPairQuery_firstName);
        keyPairQuery_firstName = NULL;
    }
    if(keyQuery_middleName){
        free(keyQuery_middleName);
        keyQuery_middleName = NULL;
    }
    if(valueQuery_middleName){
        free(valueQuery_middleName);
        valueQuery_middleName = NULL;
    }
    if(keyPairQuery_middleName){
        keyValuePair_free(keyPairQuery_middleName);
        keyPairQuery_middleName = NULL;
    }
    if(keyQuery_lastName){
        free(keyQuery_lastName);
        keyQuery_lastName = NULL;
    }
    if(valueQuery_lastName){
        free(valueQuery_lastName);
        valueQuery_lastName = NULL;
    }
    if(keyPairQuery_lastName){
        keyValuePair_free(keyPairQuery_lastName);
        keyPairQuery_lastName = NULL;
    }
    if(keyQuery_suffixName){
        free(keyQuery_suffixName);
        keyQuery_suffixName = NULL;
    }
    if(valueQuery_suffixName){
        free(valueQuery_suffixName);
        valueQuery_suffixName = NULL;
    }
    if(keyPairQuery_suffixName){
        keyValuePair_free(keyPairQuery_suffixName);
        keyPairQuery_suffixName = NULL;
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
    if(keyQuery_deviceIdType){
        free(keyQuery_deviceIdType);
        keyQuery_deviceIdType = NULL;
    }
    if(valueQuery_deviceIdType){
        free(valueQuery_deviceIdType);
        valueQuery_deviceIdType = NULL;
    }
    if(keyPairQuery_deviceIdType){
        keyValuePair_free(keyPairQuery_deviceIdType);
        keyPairQuery_deviceIdType = NULL;
    }
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
    if(keyQuery_emailAddress){
        free(keyQuery_emailAddress);
        keyQuery_emailAddress = NULL;
    }
    if(valueQuery_emailAddress){
        free(valueQuery_emailAddress);
        valueQuery_emailAddress = NULL;
    }
    if(keyPairQuery_emailAddress){
        keyValuePair_free(keyPairQuery_emailAddress);
        keyPairQuery_emailAddress = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
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
    if(keyQuery_zipcode){
        free(keyQuery_zipcode);
        keyQuery_zipcode = NULL;
    }
    if(valueQuery_zipcode){
        free(valueQuery_zipcode);
        valueQuery_zipcode = NULL;
    }
    if(keyPairQuery_zipcode){
        keyValuePair_free(keyPairQuery_zipcode);
        keyPairQuery_zipcode = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(valueQuery_gender){
        free(valueQuery_gender);
        valueQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_birthday){
        free(keyQuery_birthday);
        keyQuery_birthday = NULL;
    }
    if(keyPairQuery_birthday){
        keyValuePair_free(keyPairQuery_birthday);
        keyPairQuery_birthday = NULL;
    }
    if(keyQuery_homePhone){
        free(keyQuery_homePhone);
        keyQuery_homePhone = NULL;
    }
    if(valueQuery_homePhone){
        free(valueQuery_homePhone);
        valueQuery_homePhone = NULL;
    }
    if(keyPairQuery_homePhone){
        keyValuePair_free(keyPairQuery_homePhone);
        keyPairQuery_homePhone = NULL;
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
    if(keyQuery_cellPhoneCarrier){
        free(keyQuery_cellPhoneCarrier);
        keyQuery_cellPhoneCarrier = NULL;
    }
    if(valueQuery_cellPhoneCarrier){
        free(valueQuery_cellPhoneCarrier);
        valueQuery_cellPhoneCarrier = NULL;
    }
    if(keyPairQuery_cellPhoneCarrier){
        keyValuePair_free(keyPairQuery_cellPhoneCarrier);
        keyPairQuery_cellPhoneCarrier = NULL;
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
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
    }
    if(keyQuery_platforms){
        free(keyQuery_platforms);
        keyQuery_platforms = NULL;
    }
    if(valueQuery_platforms){
        free(valueQuery_platforms);
        valueQuery_platforms = NULL;
    }
    if(keyPairQuery_platforms){
        keyValuePair_free(keyPairQuery_platforms);
        keyPairQuery_platforms = NULL;
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
    if(keyQuery_aboutUs){
        free(keyQuery_aboutUs);
        keyQuery_aboutUs = NULL;
    }
    if(valueQuery_aboutUs){
        free(valueQuery_aboutUs);
        valueQuery_aboutUs = NULL;
    }
    if(keyPairQuery_aboutUs){
        keyValuePair_free(keyPairQuery_aboutUs);
        keyPairQuery_aboutUs = NULL;
    }
    if(keyQuery_gameExperience){
        free(keyQuery_gameExperience);
        keyQuery_gameExperience = NULL;
    }
    if(valueQuery_gameExperience){
        free(valueQuery_gameExperience);
        valueQuery_gameExperience = NULL;
    }
    if(keyPairQuery_gameExperience){
        keyValuePair_free(keyPairQuery_gameExperience);
        keyPairQuery_gameExperience = NULL;
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
    if(keyQuery_hometown){
        free(keyQuery_hometown);
        keyQuery_hometown = NULL;
    }
    if(valueQuery_hometown){
        free(valueQuery_hometown);
        valueQuery_hometown = NULL;
    }
    if(keyPairQuery_hometown){
        keyValuePair_free(keyPairQuery_hometown);
        keyPairQuery_hometown = NULL;
    }
    if(keyQuery_height){
        free(keyQuery_height);
        keyQuery_height = NULL;
    }
    if(valueQuery_height){
        free(valueQuery_height);
        valueQuery_height = NULL;
    }
    if(keyPairQuery_height){
        keyValuePair_free(keyPairQuery_height);
        keyPairQuery_height = NULL;
    }
    if(keyQuery_heightIndex){
        free(keyQuery_heightIndex);
        keyQuery_heightIndex = NULL;
    }
    if(valueQuery_heightIndex){
        free(valueQuery_heightIndex);
        valueQuery_heightIndex = NULL;
    }
    if(keyPairQuery_heightIndex){
        keyValuePair_free(keyPairQuery_heightIndex);
        keyPairQuery_heightIndex = NULL;
    }
    if(keyQuery_ethnicity){
        free(keyQuery_ethnicity);
        keyQuery_ethnicity = NULL;
    }
    if(valueQuery_ethnicity){
        free(valueQuery_ethnicity);
        valueQuery_ethnicity = NULL;
    }
    if(keyPairQuery_ethnicity){
        keyValuePair_free(keyPairQuery_ethnicity);
        keyPairQuery_ethnicity = NULL;
    }
    if(keyQuery_bodyType){
        free(keyQuery_bodyType);
        keyQuery_bodyType = NULL;
    }
    if(valueQuery_bodyType){
        free(valueQuery_bodyType);
        valueQuery_bodyType = NULL;
    }
    if(keyPairQuery_bodyType){
        keyValuePair_free(keyPairQuery_bodyType);
        keyPairQuery_bodyType = NULL;
    }
    if(keyQuery_maritalStatus){
        free(keyQuery_maritalStatus);
        keyQuery_maritalStatus = NULL;
    }
    if(valueQuery_maritalStatus){
        free(valueQuery_maritalStatus);
        valueQuery_maritalStatus = NULL;
    }
    if(keyPairQuery_maritalStatus){
        keyValuePair_free(keyPairQuery_maritalStatus);
        keyPairQuery_maritalStatus = NULL;
    }
    if(keyQuery_children){
        free(keyQuery_children);
        keyQuery_children = NULL;
    }
    if(valueQuery_children){
        free(valueQuery_children);
        valueQuery_children = NULL;
    }
    if(keyPairQuery_children){
        keyValuePair_free(keyPairQuery_children);
        keyPairQuery_children = NULL;
    }
    if(keyQuery_religion){
        free(keyQuery_religion);
        keyQuery_religion = NULL;
    }
    if(valueQuery_religion){
        free(valueQuery_religion);
        valueQuery_religion = NULL;
    }
    if(keyPairQuery_religion){
        keyValuePair_free(keyPairQuery_religion);
        keyPairQuery_religion = NULL;
    }
    if(keyQuery_education){
        free(keyQuery_education);
        keyQuery_education = NULL;
    }
    if(valueQuery_education){
        free(valueQuery_education);
        valueQuery_education = NULL;
    }
    if(keyPairQuery_education){
        keyValuePair_free(keyPairQuery_education);
        keyPairQuery_education = NULL;
    }
    if(keyQuery_educationIndex){
        free(keyQuery_educationIndex);
        keyQuery_educationIndex = NULL;
    }
    if(valueQuery_educationIndex){
        free(valueQuery_educationIndex);
        valueQuery_educationIndex = NULL;
    }
    if(keyPairQuery_educationIndex){
        keyValuePair_free(keyPairQuery_educationIndex);
        keyPairQuery_educationIndex = NULL;
    }
    if(keyQuery_smoke){
        free(keyQuery_smoke);
        keyQuery_smoke = NULL;
    }
    if(valueQuery_smoke){
        free(valueQuery_smoke);
        valueQuery_smoke = NULL;
    }
    if(keyPairQuery_smoke){
        keyValuePair_free(keyPairQuery_smoke);
        keyPairQuery_smoke = NULL;
    }
    if(keyQuery_drink){
        free(keyQuery_drink);
        keyQuery_drink = NULL;
    }
    if(valueQuery_drink){
        free(valueQuery_drink);
        valueQuery_drink = NULL;
    }
    if(keyPairQuery_drink){
        keyValuePair_free(keyPairQuery_drink);
        keyPairQuery_drink = NULL;
    }
    if(keyQuery_companionship){
        free(keyQuery_companionship);
        keyQuery_companionship = NULL;
    }
    if(valueQuery_companionship){
        free(valueQuery_companionship);
        valueQuery_companionship = NULL;
    }
    if(keyPairQuery_companionship){
        keyValuePair_free(keyPairQuery_companionship);
        keyPairQuery_companionship = NULL;
    }
    if(keyQuery_companionshipIndex){
        free(keyQuery_companionshipIndex);
        keyQuery_companionshipIndex = NULL;
    }
    if(valueQuery_companionshipIndex){
        free(valueQuery_companionshipIndex);
        valueQuery_companionshipIndex = NULL;
    }
    if(keyPairQuery_companionshipIndex){
        keyValuePair_free(keyPairQuery_companionshipIndex);
        keyPairQuery_companionshipIndex = NULL;
    }
    if(keyQuery_preferredMinAge){
        free(keyQuery_preferredMinAge);
        keyQuery_preferredMinAge = NULL;
    }
    if(valueQuery_preferredMinAge){
        free(valueQuery_preferredMinAge);
        valueQuery_preferredMinAge = NULL;
    }
    if(keyPairQuery_preferredMinAge){
        keyValuePair_free(keyPairQuery_preferredMinAge);
        keyPairQuery_preferredMinAge = NULL;
    }
    if(keyQuery_preferredMaxAge){
        free(keyQuery_preferredMaxAge);
        keyQuery_preferredMaxAge = NULL;
    }
    if(valueQuery_preferredMaxAge){
        free(valueQuery_preferredMaxAge);
        valueQuery_preferredMaxAge = NULL;
    }
    if(keyPairQuery_preferredMaxAge){
        keyValuePair_free(keyPairQuery_preferredMaxAge);
        keyPairQuery_preferredMaxAge = NULL;
    }
    if(keyQuery_preferredMinHeight){
        free(keyQuery_preferredMinHeight);
        keyQuery_preferredMinHeight = NULL;
    }
    if(valueQuery_preferredMinHeight){
        free(valueQuery_preferredMinHeight);
        valueQuery_preferredMinHeight = NULL;
    }
    if(keyPairQuery_preferredMinHeight){
        keyValuePair_free(keyPairQuery_preferredMinHeight);
        keyPairQuery_preferredMinHeight = NULL;
    }
    if(keyQuery_preferredMaxHeight){
        free(keyQuery_preferredMaxHeight);
        keyQuery_preferredMaxHeight = NULL;
    }
    if(valueQuery_preferredMaxHeight){
        free(valueQuery_preferredMaxHeight);
        valueQuery_preferredMaxHeight = NULL;
    }
    if(keyPairQuery_preferredMaxHeight){
        keyValuePair_free(keyPairQuery_preferredMaxHeight);
        keyPairQuery_preferredMaxHeight = NULL;
    }
    if(keyQuery_preferredGender){
        free(keyQuery_preferredGender);
        keyQuery_preferredGender = NULL;
    }
    if(valueQuery_preferredGender){
        free(valueQuery_preferredGender);
        valueQuery_preferredGender = NULL;
    }
    if(keyPairQuery_preferredGender){
        keyValuePair_free(keyPairQuery_preferredGender);
        keyPairQuery_preferredGender = NULL;
    }
    if(keyQuery_preferredEducation){
        free(keyQuery_preferredEducation);
        keyQuery_preferredEducation = NULL;
    }
    if(valueQuery_preferredEducation){
        free(valueQuery_preferredEducation);
        valueQuery_preferredEducation = NULL;
    }
    if(keyPairQuery_preferredEducation){
        keyValuePair_free(keyPairQuery_preferredEducation);
        keyPairQuery_preferredEducation = NULL;
    }
    if(keyQuery_preferredEducationIndex){
        free(keyQuery_preferredEducationIndex);
        keyQuery_preferredEducationIndex = NULL;
    }
    if(valueQuery_preferredEducationIndex){
        free(valueQuery_preferredEducationIndex);
        valueQuery_preferredEducationIndex = NULL;
    }
    if(keyPairQuery_preferredEducationIndex){
        keyValuePair_free(keyPairQuery_preferredEducationIndex);
        keyPairQuery_preferredEducationIndex = NULL;
    }
    if(keyQuery_preferredBodyType){
        free(keyQuery_preferredBodyType);
        keyQuery_preferredBodyType = NULL;
    }
    if(valueQuery_preferredBodyType){
        free(valueQuery_preferredBodyType);
        valueQuery_preferredBodyType = NULL;
    }
    if(keyPairQuery_preferredBodyType){
        keyValuePair_free(keyPairQuery_preferredBodyType);
        keyPairQuery_preferredBodyType = NULL;
    }
    if(keyQuery_preferredEthnicity){
        free(keyQuery_preferredEthnicity);
        keyQuery_preferredEthnicity = NULL;
    }
    if(valueQuery_preferredEthnicity){
        free(valueQuery_preferredEthnicity);
        valueQuery_preferredEthnicity = NULL;
    }
    if(keyPairQuery_preferredEthnicity){
        keyValuePair_free(keyPairQuery_preferredEthnicity);
        keyPairQuery_preferredEthnicity = NULL;
    }
    if(keyQuery_preferredLocation){
        free(keyQuery_preferredLocation);
        keyQuery_preferredLocation = NULL;
    }
    if(valueQuery_preferredLocation){
        free(valueQuery_preferredLocation);
        valueQuery_preferredLocation = NULL;
    }
    if(keyPairQuery_preferredLocation){
        keyValuePair_free(keyPairQuery_preferredLocation);
        keyPairQuery_preferredLocation = NULL;
    }
    if(keyQuery_preferredLocationRange){
        free(keyQuery_preferredLocationRange);
        keyQuery_preferredLocationRange = NULL;
    }
    if(keyPairQuery_preferredLocationRange){
        keyValuePair_free(keyPairQuery_preferredLocationRange);
        keyPairQuery_preferredLocationRange = NULL;
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
    if(keyQuery_acceptedTerms){
        free(keyQuery_acceptedTerms);
        keyQuery_acceptedTerms = NULL;
    }
    if(valueQuery_acceptedTerms){
        free(valueQuery_acceptedTerms);
        valueQuery_acceptedTerms = NULL;
    }
    if(keyPairQuery_acceptedTerms){
        keyValuePair_free(keyPairQuery_acceptedTerms);
        keyPairQuery_acceptedTerms = NULL;
    }
    if(keyQuery_charsetName){
        free(keyQuery_charsetName);
        keyQuery_charsetName = NULL;
    }
    if(valueQuery_charsetName){
        free(valueQuery_charsetName);
        valueQuery_charsetName = NULL;
    }
    if(keyPairQuery_charsetName){
        keyValuePair_free(keyPairQuery_charsetName);
        keyPairQuery_charsetName = NULL;
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
    if(keyQuery_appVersion){
        free(keyQuery_appVersion);
        keyQuery_appVersion = NULL;
    }
    if(valueQuery_appVersion){
        free(valueQuery_appVersion);
        valueQuery_appVersion = NULL;
    }
    if(keyPairQuery_appVersion){
        keyValuePair_free(keyPairQuery_appVersion);
        keyPairQuery_appVersion = NULL;
    }
    if(keyQuery_responseType){
        free(keyQuery_responseType);
        keyQuery_responseType = NULL;
    }
    if(valueQuery_responseType){
        free(valueQuery_responseType);
        valueQuery_responseType = NULL;
    }
    if(keyPairQuery_responseType){
        keyValuePair_free(keyPairQuery_responseType);
        keyPairQuery_responseType = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Save Match Token
//
// Save user's match token to be used for profile match making
//
sirqul_response_t*
AccountAPI_setMatchToken(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *matchToken, char *gameType, char *appKey, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/profile/matchToken");



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
    char *keyQuery_matchToken = NULL;
    char * valueQuery_matchToken = NULL;
    keyValuePair_t *keyPairQuery_matchToken = 0;
    if (matchToken)
    {
        keyQuery_matchToken = strdup("matchToken");
        valueQuery_matchToken = strdup((matchToken));
        keyPairQuery_matchToken = keyValuePair_create(keyQuery_matchToken, valueQuery_matchToken);
        list_addElement(localVarQueryParameters,keyPairQuery_matchToken);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_matchToken){
        free(keyQuery_matchToken);
        keyQuery_matchToken = NULL;
    }
    if(valueQuery_matchToken){
        free(valueQuery_matchToken);
        valueQuery_matchToken = NULL;
    }
    if(keyPairQuery_matchToken){
        keyValuePair_free(keyPairQuery_matchToken);
        keyPairQuery_matchToken = NULL;
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

// Update Account Active Status
//
// Activate or deactivate an account (requires appropriate permissions).
//
sirqul_response_t*
AccountAPI_updateActveStatus(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, int *active, char *deviceId, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/account/active/update");



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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
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

// Update Location
//
// Update the account location
//
sirqul_response_t*
AccountAPI_updateLocation(apiClient_t *apiClient, double version, char *deviceId, long accountId, double latitude, double longitude, long clientTime)
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
    char *localVarPath = strdup("/api/{version}/account/location/update");



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
    char *keyQuery_clientTime = NULL;
    char * valueQuery_clientTime ;
    keyValuePair_t *keyPairQuery_clientTime = 0;
    {
        keyQuery_clientTime = strdup("clientTime");
        valueQuery_clientTime = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_clientTime, MAX_NUMBER_LENGTH_LONG, "%d", clientTime);
        keyPairQuery_clientTime = keyValuePair_create(keyQuery_clientTime, valueQuery_clientTime);
        list_addElement(localVarQueryParameters,keyPairQuery_clientTime);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_clientTime){
        free(keyQuery_clientTime);
        keyQuery_clientTime = NULL;
    }
    if(keyPairQuery_clientTime){
        keyValuePair_free(keyPairQuery_clientTime);
        keyPairQuery_clientTime = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Account Settings
//
// Update the account settings for a user
//
user_settings_response_t*
AccountAPI_updateSettings(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *blockedNotifications, char *suggestionMethod, int *suggestionCount, int *suggestionTimeFrame, int *showOthersExactLocation, int *showAsZipcode, int *showExactLocation, char *favoriteVisibility, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/account/settings/update");



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
    char *keyQuery_blockedNotifications = NULL;
    char * valueQuery_blockedNotifications = NULL;
    keyValuePair_t *keyPairQuery_blockedNotifications = 0;
    if (blockedNotifications)
    {
        keyQuery_blockedNotifications = strdup("blockedNotifications");
        valueQuery_blockedNotifications = strdup((blockedNotifications));
        keyPairQuery_blockedNotifications = keyValuePair_create(keyQuery_blockedNotifications, valueQuery_blockedNotifications);
        list_addElement(localVarQueryParameters,keyPairQuery_blockedNotifications);
    }

    // query parameters
    char *keyQuery_suggestionMethod = NULL;
    char * valueQuery_suggestionMethod = NULL;
    keyValuePair_t *keyPairQuery_suggestionMethod = 0;
    if (suggestionMethod)
    {
        keyQuery_suggestionMethod = strdup("suggestionMethod");
        valueQuery_suggestionMethod = strdup((suggestionMethod));
        keyPairQuery_suggestionMethod = keyValuePair_create(keyQuery_suggestionMethod, valueQuery_suggestionMethod);
        list_addElement(localVarQueryParameters,keyPairQuery_suggestionMethod);
    }

    // query parameters
    char *keyQuery_suggestionCount = NULL;
    char * valueQuery_suggestionCount = NULL;
    keyValuePair_t *keyPairQuery_suggestionCount = 0;
    if (suggestionCount)
    {
        keyQuery_suggestionCount = strdup("suggestionCount");
        valueQuery_suggestionCount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_suggestionCount, MAX_NUMBER_LENGTH, "%d", *suggestionCount);
        keyPairQuery_suggestionCount = keyValuePair_create(keyQuery_suggestionCount, valueQuery_suggestionCount);
        list_addElement(localVarQueryParameters,keyPairQuery_suggestionCount);
    }

    // query parameters
    char *keyQuery_suggestionTimeFrame = NULL;
    char * valueQuery_suggestionTimeFrame = NULL;
    keyValuePair_t *keyPairQuery_suggestionTimeFrame = 0;
    if (suggestionTimeFrame)
    {
        keyQuery_suggestionTimeFrame = strdup("suggestionTimeFrame");
        valueQuery_suggestionTimeFrame = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_suggestionTimeFrame, MAX_NUMBER_LENGTH, "%d", *suggestionTimeFrame);
        keyPairQuery_suggestionTimeFrame = keyValuePair_create(keyQuery_suggestionTimeFrame, valueQuery_suggestionTimeFrame);
        list_addElement(localVarQueryParameters,keyPairQuery_suggestionTimeFrame);
    }

    // query parameters
    char *keyQuery_showOthersExactLocation = NULL;
    char * valueQuery_showOthersExactLocation = NULL;
    keyValuePair_t *keyPairQuery_showOthersExactLocation = 0;
    if (showOthersExactLocation)
    {
        keyQuery_showOthersExactLocation = strdup("showOthersExactLocation");
        valueQuery_showOthersExactLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showOthersExactLocation, MAX_NUMBER_LENGTH, "%d", *showOthersExactLocation);
        keyPairQuery_showOthersExactLocation = keyValuePair_create(keyQuery_showOthersExactLocation, valueQuery_showOthersExactLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_showOthersExactLocation);
    }

    // query parameters
    char *keyQuery_showAsZipcode = NULL;
    char * valueQuery_showAsZipcode = NULL;
    keyValuePair_t *keyPairQuery_showAsZipcode = 0;
    if (showAsZipcode)
    {
        keyQuery_showAsZipcode = strdup("showAsZipcode");
        valueQuery_showAsZipcode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showAsZipcode, MAX_NUMBER_LENGTH, "%d", *showAsZipcode);
        keyPairQuery_showAsZipcode = keyValuePair_create(keyQuery_showAsZipcode, valueQuery_showAsZipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_showAsZipcode);
    }

    // query parameters
    char *keyQuery_showExactLocation = NULL;
    char * valueQuery_showExactLocation = NULL;
    keyValuePair_t *keyPairQuery_showExactLocation = 0;
    if (showExactLocation)
    {
        keyQuery_showExactLocation = strdup("showExactLocation");
        valueQuery_showExactLocation = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_showExactLocation, MAX_NUMBER_LENGTH, "%d", *showExactLocation);
        keyPairQuery_showExactLocation = keyValuePair_create(keyQuery_showExactLocation, valueQuery_showExactLocation);
        list_addElement(localVarQueryParameters,keyPairQuery_showExactLocation);
    }

    // query parameters
    char *keyQuery_favoriteVisibility = NULL;
    char * valueQuery_favoriteVisibility = NULL;
    keyValuePair_t *keyPairQuery_favoriteVisibility = 0;
    if (favoriteVisibility)
    {
        keyQuery_favoriteVisibility = strdup("favoriteVisibility");
        valueQuery_favoriteVisibility = strdup((favoriteVisibility));
        keyPairQuery_favoriteVisibility = keyValuePair_create(keyQuery_favoriteVisibility, valueQuery_favoriteVisibility);
        list_addElement(localVarQueryParameters,keyPairQuery_favoriteVisibility);
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
    user_settings_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = user_settings_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_blockedNotifications){
        free(keyQuery_blockedNotifications);
        keyQuery_blockedNotifications = NULL;
    }
    if(valueQuery_blockedNotifications){
        free(valueQuery_blockedNotifications);
        valueQuery_blockedNotifications = NULL;
    }
    if(keyPairQuery_blockedNotifications){
        keyValuePair_free(keyPairQuery_blockedNotifications);
        keyPairQuery_blockedNotifications = NULL;
    }
    if(keyQuery_suggestionMethod){
        free(keyQuery_suggestionMethod);
        keyQuery_suggestionMethod = NULL;
    }
    if(valueQuery_suggestionMethod){
        free(valueQuery_suggestionMethod);
        valueQuery_suggestionMethod = NULL;
    }
    if(keyPairQuery_suggestionMethod){
        keyValuePair_free(keyPairQuery_suggestionMethod);
        keyPairQuery_suggestionMethod = NULL;
    }
    if(keyQuery_suggestionCount){
        free(keyQuery_suggestionCount);
        keyQuery_suggestionCount = NULL;
    }
    if(valueQuery_suggestionCount){
        free(valueQuery_suggestionCount);
        valueQuery_suggestionCount = NULL;
    }
    if(keyPairQuery_suggestionCount){
        keyValuePair_free(keyPairQuery_suggestionCount);
        keyPairQuery_suggestionCount = NULL;
    }
    if(keyQuery_suggestionTimeFrame){
        free(keyQuery_suggestionTimeFrame);
        keyQuery_suggestionTimeFrame = NULL;
    }
    if(valueQuery_suggestionTimeFrame){
        free(valueQuery_suggestionTimeFrame);
        valueQuery_suggestionTimeFrame = NULL;
    }
    if(keyPairQuery_suggestionTimeFrame){
        keyValuePair_free(keyPairQuery_suggestionTimeFrame);
        keyPairQuery_suggestionTimeFrame = NULL;
    }
    if(keyQuery_showOthersExactLocation){
        free(keyQuery_showOthersExactLocation);
        keyQuery_showOthersExactLocation = NULL;
    }
    if(valueQuery_showOthersExactLocation){
        free(valueQuery_showOthersExactLocation);
        valueQuery_showOthersExactLocation = NULL;
    }
    if(keyPairQuery_showOthersExactLocation){
        keyValuePair_free(keyPairQuery_showOthersExactLocation);
        keyPairQuery_showOthersExactLocation = NULL;
    }
    if(keyQuery_showAsZipcode){
        free(keyQuery_showAsZipcode);
        keyQuery_showAsZipcode = NULL;
    }
    if(valueQuery_showAsZipcode){
        free(valueQuery_showAsZipcode);
        valueQuery_showAsZipcode = NULL;
    }
    if(keyPairQuery_showAsZipcode){
        keyValuePair_free(keyPairQuery_showAsZipcode);
        keyPairQuery_showAsZipcode = NULL;
    }
    if(keyQuery_showExactLocation){
        free(keyQuery_showExactLocation);
        keyQuery_showExactLocation = NULL;
    }
    if(valueQuery_showExactLocation){
        free(valueQuery_showExactLocation);
        valueQuery_showExactLocation = NULL;
    }
    if(keyPairQuery_showExactLocation){
        keyValuePair_free(keyPairQuery_showExactLocation);
        keyPairQuery_showExactLocation = NULL;
    }
    if(keyQuery_favoriteVisibility){
        free(keyQuery_favoriteVisibility);
        keyQuery_favoriteVisibility = NULL;
    }
    if(valueQuery_favoriteVisibility){
        free(valueQuery_favoriteVisibility);
        valueQuery_favoriteVisibility = NULL;
    }
    if(keyPairQuery_favoriteVisibility){
        keyValuePair_free(keyPairQuery_favoriteVisibility);
        keyPairQuery_favoriteVisibility = NULL;
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

// Save Validation Status
//
// Validate the account's email address. The token must be valid and not expired. Use the RequestValidateAccount end point to request a new token.
//
account_login_response_t*
AccountAPI_validateAccountSignup(apiClient_t *apiClient, double version, char *token)
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
    char *localVarPath = strdup("/api/{version}/account/validateAccountSignup");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_token = NULL;
    char * valueQuery_token = NULL;
    keyValuePair_t *keyPairQuery_token = 0;
    if (token)
    {
        keyQuery_token = strdup("token");
        valueQuery_token = strdup((token));
        keyPairQuery_token = keyValuePair_create(keyQuery_token, valueQuery_token);
        list_addElement(localVarQueryParameters,keyPairQuery_token);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = account_login_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_token){
        free(keyQuery_token);
        keyQuery_token = NULL;
    }
    if(valueQuery_token){
        free(valueQuery_token);
        valueQuery_token = NULL;
    }
    if(keyPairQuery_token){
        keyValuePair_free(keyPairQuery_token);
        keyPairQuery_token = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Validate Password Reset Token
//
// Validate the password reset token. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token. The user receives and email with the reset page, therefore it should be validated before bwing used to reset the password.
//
sirqul_response_t*
AccountAPI_validatePasswordReset(apiClient_t *apiClient, double version, char *token)
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
    char *localVarPath = strdup("/api/{version}/account/validatepasswordreset");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_token = NULL;
    char * valueQuery_token = NULL;
    keyValuePair_t *keyPairQuery_token = 0;
    if (token)
    {
        keyQuery_token = strdup("token");
        valueQuery_token = strdup((token));
        keyPairQuery_token = keyValuePair_create(keyQuery_token, valueQuery_token);
        list_addElement(localVarQueryParameters,keyPairQuery_token);
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
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
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
    if(keyQuery_token){
        free(keyQuery_token);
        keyQuery_token = NULL;
    }
    if(valueQuery_token){
        free(valueQuery_token);
        valueQuery_token = NULL;
    }
    if(keyPairQuery_token){
        keyValuePair_free(keyPairQuery_token);
        keyPairQuery_token = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

