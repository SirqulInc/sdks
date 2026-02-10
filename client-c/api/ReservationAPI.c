#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ReservationAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum RESERVABLETYPE for ReservationAPI_reservableAvailability

static char* reservableAvailability_RESERVABLETYPE_ToString(sirqul_iot_platform_reservableAvailability_reservableType_e RESERVABLETYPE){
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    return RESERVABLETYPEArray[RESERVABLETYPE];
}

static sirqul_iot_platform_reservableAvailability_reservableType_e reservableAvailability_RESERVABLETYPE_FromString(char* RESERVABLETYPE){
    int stringToReturn = 0;
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    size_t sizeofArray = sizeof(RESERVABLETYPEArray) / sizeof(RESERVABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESERVABLETYPE, RESERVABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function reservableAvailability_RESERVABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *reservableAvailability_RESERVABLETYPE_convertToJSON(sirqul_iot_platform_reservableAvailability_reservableType_e RESERVABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "reservableType", reservableAvailability_RESERVABLETYPE_ToString(RESERVABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function reservableAvailability_RESERVABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_reservableAvailability_reservableType_e reservableAvailability_RESERVABLETYPE_parseFromJSON(cJSON* RESERVABLETYPEJSON) {
    sirqul_iot_platform_reservableAvailability_reservableType_e RESERVABLETYPEVariable = 0;
    cJSON *RESERVABLETYPEVar = cJSON_GetObjectItemCaseSensitive(RESERVABLETYPEJSON, "reservableType");
    if(!cJSON_IsString(RESERVABLETYPEVar) || (RESERVABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    RESERVABLETYPEVariable = reservableAvailability_RESERVABLETYPE_FromString(RESERVABLETYPEVar->valuestring);
    return RESERVABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum RESERVABLETYPE for ReservationAPI_searchAvailability

static char* searchAvailability_RESERVABLETYPE_ToString(sirqul_iot_platform_searchAvailability_reservableType_e RESERVABLETYPE){
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    return RESERVABLETYPEArray[RESERVABLETYPE];
}

static sirqul_iot_platform_searchAvailability_reservableType_e searchAvailability_RESERVABLETYPE_FromString(char* RESERVABLETYPE){
    int stringToReturn = 0;
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    size_t sizeofArray = sizeof(RESERVABLETYPEArray) / sizeof(RESERVABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESERVABLETYPE, RESERVABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchAvailability_RESERVABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchAvailability_RESERVABLETYPE_convertToJSON(sirqul_iot_platform_searchAvailability_reservableType_e RESERVABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "reservableType", searchAvailability_RESERVABLETYPE_ToString(RESERVABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchAvailability_RESERVABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchAvailability_reservableType_e searchAvailability_RESERVABLETYPE_parseFromJSON(cJSON* RESERVABLETYPEJSON) {
    sirqul_iot_platform_searchAvailability_reservableType_e RESERVABLETYPEVariable = 0;
    cJSON *RESERVABLETYPEVar = cJSON_GetObjectItemCaseSensitive(RESERVABLETYPEJSON, "reservableType");
    if(!cJSON_IsString(RESERVABLETYPEVar) || (RESERVABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    RESERVABLETYPEVariable = searchAvailability_RESERVABLETYPE_FromString(RESERVABLETYPEVar->valuestring);
    return RESERVABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum RESERVABLETYPE for ReservationAPI_searchReservations

static char* searchReservations_RESERVABLETYPE_ToString(sirqul_iot_platform_searchReservations_reservableType_e RESERVABLETYPE){
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    return RESERVABLETYPEArray[RESERVABLETYPE];
}

static sirqul_iot_platform_searchReservations_reservableType_e searchReservations_RESERVABLETYPE_FromString(char* RESERVABLETYPE){
    int stringToReturn = 0;
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    size_t sizeofArray = sizeof(RESERVABLETYPEArray) / sizeof(RESERVABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESERVABLETYPE, RESERVABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchReservations_RESERVABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchReservations_RESERVABLETYPE_convertToJSON(sirqul_iot_platform_searchReservations_reservableType_e RESERVABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "reservableType", searchReservations_RESERVABLETYPE_ToString(RESERVABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchReservations_RESERVABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchReservations_reservableType_e searchReservations_RESERVABLETYPE_parseFromJSON(cJSON* RESERVABLETYPEJSON) {
    sirqul_iot_platform_searchReservations_reservableType_e RESERVABLETYPEVariable = 0;
    cJSON *RESERVABLETYPEVar = cJSON_GetObjectItemCaseSensitive(RESERVABLETYPEJSON, "reservableType");
    if(!cJSON_IsString(RESERVABLETYPEVar) || (RESERVABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    RESERVABLETYPEVariable = searchReservations_RESERVABLETYPE_FromString(RESERVABLETYPEVar->valuestring);
    return RESERVABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum RESERVABLETYPE for ReservationAPI_searchSchedule

static char* searchSchedule_RESERVABLETYPE_ToString(sirqul_iot_platform_searchSchedule_reservableType_e RESERVABLETYPE){
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    return RESERVABLETYPEArray[RESERVABLETYPE];
}

static sirqul_iot_platform_searchSchedule_reservableType_e searchSchedule_RESERVABLETYPE_FromString(char* RESERVABLETYPE){
    int stringToReturn = 0;
    char *RESERVABLETYPEArray[] =  { "NULL", "LOCATABLE", "RESERVABLE", "PERMISSIONABLE", "NOTABLE", "ASSETABLE", "LIKABLE", "FLAGABLE", "FAVORITABLE", "RATABLE", "ALBUM", "COLLECTION", "APPLICATION", "APPLICATION_SETTING", "APPLICATION_CERT", "APPLICATION_PLACEMENT", "ACCOUNT", "ACCOUNT_SETTING", "GAME_LEVEL", "PACK", "MISSION", "TOURNAMENT", "ASSET", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "OFFER", "OFFER_LOCATION", "EVENT", "RETAILER", "RETAILER_LOCATION", "NOTE", "CREATIVE", "FAVORITE", "LIKE", "RATING", "ANALYTIC", "THIRD_PARTY_CREDENTIAL", "THIRD_PARTY_NETWORK", "REGION" };
    size_t sizeofArray = sizeof(RESERVABLETYPEArray) / sizeof(RESERVABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(RESERVABLETYPE, RESERVABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchSchedule_RESERVABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchSchedule_RESERVABLETYPE_convertToJSON(sirqul_iot_platform_searchSchedule_reservableType_e RESERVABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "reservableType", searchSchedule_RESERVABLETYPE_ToString(RESERVABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchSchedule_RESERVABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchSchedule_reservableType_e searchSchedule_RESERVABLETYPE_parseFromJSON(cJSON* RESERVABLETYPEJSON) {
    sirqul_iot_platform_searchSchedule_reservableType_e RESERVABLETYPEVariable = 0;
    cJSON *RESERVABLETYPEVar = cJSON_GetObjectItemCaseSensitive(RESERVABLETYPEJSON, "reservableType");
    if(!cJSON_IsString(RESERVABLETYPEVar) || (RESERVABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    RESERVABLETYPEVariable = searchSchedule_RESERVABLETYPE_FromString(RESERVABLETYPEVar->valuestring);
    return RESERVABLETYPEVariable;
end:
    return 0;
}
*/


// Create Reservation
//
// Creates a reservation on an offer object
//
void
ReservationAPI_createReservation(apiClient_t *apiClient, double version, char *deviceId, long accountId, long startDate, long endDate, long offerId, long offerLocationId, char *appKey, char *metaData)
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
    char *localVarPath = strdup("/api/{version}/reservation/create");



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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
    }

    // query parameters
    char *keyQuery_offerLocationId = NULL;
    char * valueQuery_offerLocationId ;
    keyValuePair_t *keyPairQuery_offerLocationId = 0;
    {
        keyQuery_offerLocationId = strdup("offerLocationId");
        valueQuery_offerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", offerLocationId);
        keyPairQuery_offerLocationId = keyValuePair_create(keyQuery_offerLocationId, valueQuery_offerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerLocationId);
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
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
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
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }

}

// Delete Reservation
//
// Deleted a reservation on a reservation object
//
void
ReservationAPI_deleteReservation(apiClient_t *apiClient, double version, long reservationId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/reservation/delete");



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
    char *keyQuery_reservationId = NULL;
    char * valueQuery_reservationId ;
    keyValuePair_t *keyPairQuery_reservationId = 0;
    {
        keyQuery_reservationId = strdup("reservationId");
        valueQuery_reservationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_reservationId, MAX_NUMBER_LENGTH_LONG, "%d", reservationId);
        keyPairQuery_reservationId = keyValuePair_create(keyQuery_reservationId, valueQuery_reservationId);
        list_addElement(localVarQueryParameters,keyPairQuery_reservationId);
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
                    "POST");

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
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }

}

// Update Availability
//
list_t*
ReservationAPI_reservableAvailability(apiClient_t *apiClient, double version, long reservableId, sirqul_iot_platform_reservableAvailability_reservableType_e reservableType, char *deviceId, long accountId, char *availability, char *availabilitySummary)
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
    char *localVarPath = strdup("/api/{version}/reservable/availability/update");



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
    char *keyQuery_reservableId = NULL;
    char * valueQuery_reservableId ;
    keyValuePair_t *keyPairQuery_reservableId = 0;
    {
        keyQuery_reservableId = strdup("reservableId");
        valueQuery_reservableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_reservableId, MAX_NUMBER_LENGTH_LONG, "%d", reservableId);
        keyPairQuery_reservableId = keyValuePair_create(keyQuery_reservableId, valueQuery_reservableId);
        list_addElement(localVarQueryParameters,keyPairQuery_reservableId);
    }

    // query parameters
    char *keyQuery_reservableType = NULL;
    sirqul_iot_platform_reservableAvailability_reservableType_e valueQuery_reservableType ;
    keyValuePair_t *keyPairQuery_reservableType = 0;
    if (reservableType)
    {
        keyQuery_reservableType = strdup("reservableType");
        valueQuery_reservableType = (reservableType);
        keyPairQuery_reservableType = keyValuePair_create(keyQuery_reservableType, strdup(reservableAvailability_RESERVABLETYPE_ToString(
        valueQuery_reservableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_reservableType);
    }

    // query parameters
    char *keyQuery_availability = NULL;
    char * valueQuery_availability = NULL;
    keyValuePair_t *keyPairQuery_availability = 0;
    if (availability)
    {
        keyQuery_availability = strdup("availability");
        valueQuery_availability = strdup((availability));
        keyPairQuery_availability = keyValuePair_create(keyQuery_availability, valueQuery_availability);
        list_addElement(localVarQueryParameters,keyPairQuery_availability);
    }

    // query parameters
    char *keyQuery_availabilitySummary = NULL;
    char * valueQuery_availabilitySummary = NULL;
    keyValuePair_t *keyPairQuery_availabilitySummary = 0;
    if (availabilitySummary)
    {
        keyQuery_availabilitySummary = strdup("availabilitySummary");
        valueQuery_availabilitySummary = strdup((availabilitySummary));
        keyPairQuery_availabilitySummary = keyValuePair_create(keyQuery_availabilitySummary, valueQuery_availabilitySummary);
        list_addElement(localVarQueryParameters,keyPairQuery_availabilitySummary);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ReservationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ReservationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ReservationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ReservationAPIlocalVarJSON);
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
    if(keyQuery_reservableId){
        free(keyQuery_reservableId);
        keyQuery_reservableId = NULL;
    }
    if(keyPairQuery_reservableId){
        keyValuePair_free(keyPairQuery_reservableId);
        keyPairQuery_reservableId = NULL;
    }
    if(keyQuery_reservableType){
        free(keyQuery_reservableType);
        keyQuery_reservableType = NULL;
    }
    if(keyPairQuery_reservableType){
        keyValuePair_free(keyPairQuery_reservableType);
        keyPairQuery_reservableType = NULL;
    }
    if(keyQuery_availability){
        free(keyQuery_availability);
        keyQuery_availability = NULL;
    }
    if(valueQuery_availability){
        free(valueQuery_availability);
        valueQuery_availability = NULL;
    }
    if(keyPairQuery_availability){
        keyValuePair_free(keyPairQuery_availability);
        keyPairQuery_availability = NULL;
    }
    if(keyQuery_availabilitySummary){
        free(keyQuery_availabilitySummary);
        keyQuery_availabilitySummary = NULL;
    }
    if(valueQuery_availabilitySummary){
        free(valueQuery_availabilitySummary);
        valueQuery_availabilitySummary = NULL;
    }
    if(keyPairQuery_availabilitySummary){
        keyValuePair_free(keyPairQuery_availabilitySummary);
        keyPairQuery_availabilitySummary = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Availability
//
list_t*
ReservationAPI_searchAvailability(apiClient_t *apiClient, double version, long reservableId, sirqul_iot_platform_searchAvailability_reservableType_e reservableType, char *deviceId, long accountId, long startDate, long endDate, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/reservable/availability/search");



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
    char *keyQuery_reservableId = NULL;
    char * valueQuery_reservableId ;
    keyValuePair_t *keyPairQuery_reservableId = 0;
    {
        keyQuery_reservableId = strdup("reservableId");
        valueQuery_reservableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_reservableId, MAX_NUMBER_LENGTH_LONG, "%d", reservableId);
        keyPairQuery_reservableId = keyValuePair_create(keyQuery_reservableId, valueQuery_reservableId);
        list_addElement(localVarQueryParameters,keyPairQuery_reservableId);
    }

    // query parameters
    char *keyQuery_reservableType = NULL;
    sirqul_iot_platform_searchAvailability_reservableType_e valueQuery_reservableType ;
    keyValuePair_t *keyPairQuery_reservableType = 0;
    if (reservableType)
    {
        keyQuery_reservableType = strdup("reservableType");
        valueQuery_reservableType = (reservableType);
        keyPairQuery_reservableType = keyValuePair_create(keyQuery_reservableType, strdup(searchAvailability_RESERVABLETYPE_ToString(
        valueQuery_reservableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_reservableType);
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
        cJSON *ReservationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ReservationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ReservationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ReservationAPIlocalVarJSON);
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
    if(keyQuery_reservableId){
        free(keyQuery_reservableId);
        keyQuery_reservableId = NULL;
    }
    if(keyPairQuery_reservableId){
        keyValuePair_free(keyPairQuery_reservableId);
        keyPairQuery_reservableId = NULL;
    }
    if(keyQuery_reservableType){
        free(keyQuery_reservableType);
        keyQuery_reservableType = NULL;
    }
    if(keyPairQuery_reservableType){
        keyValuePair_free(keyPairQuery_reservableType);
        keyPairQuery_reservableType = NULL;
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

// Search Reservations
//
list_t*
ReservationAPI_searchReservations(apiClient_t *apiClient, double version, char *deviceId, char *appKey, long accountId, long filterAccountId, long reservableId, sirqul_iot_platform_searchReservations_reservableType_e reservableType, char *keyword, long startDate, long endDate, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/reservation/search");



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
    char *keyQuery_reservableId = NULL;
    char * valueQuery_reservableId ;
    keyValuePair_t *keyPairQuery_reservableId = 0;
    {
        keyQuery_reservableId = strdup("reservableId");
        valueQuery_reservableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_reservableId, MAX_NUMBER_LENGTH_LONG, "%d", reservableId);
        keyPairQuery_reservableId = keyValuePair_create(keyQuery_reservableId, valueQuery_reservableId);
        list_addElement(localVarQueryParameters,keyPairQuery_reservableId);
    }

    // query parameters
    char *keyQuery_reservableType = NULL;
    sirqul_iot_platform_searchReservations_reservableType_e valueQuery_reservableType ;
    keyValuePair_t *keyPairQuery_reservableType = 0;
    if (reservableType)
    {
        keyQuery_reservableType = strdup("reservableType");
        valueQuery_reservableType = (reservableType);
        keyPairQuery_reservableType = keyValuePair_create(keyQuery_reservableType, strdup(searchReservations_RESERVABLETYPE_ToString(
        valueQuery_reservableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_reservableType);
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
        cJSON *ReservationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ReservationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ReservationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ReservationAPIlocalVarJSON);
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
    if(keyQuery_filterAccountId){
        free(keyQuery_filterAccountId);
        keyQuery_filterAccountId = NULL;
    }
    if(keyPairQuery_filterAccountId){
        keyValuePair_free(keyPairQuery_filterAccountId);
        keyPairQuery_filterAccountId = NULL;
    }
    if(keyQuery_reservableId){
        free(keyQuery_reservableId);
        keyQuery_reservableId = NULL;
    }
    if(keyPairQuery_reservableId){
        keyValuePair_free(keyPairQuery_reservableId);
        keyPairQuery_reservableId = NULL;
    }
    if(keyQuery_reservableType){
        free(keyQuery_reservableType);
        keyQuery_reservableType = NULL;
    }
    if(keyPairQuery_reservableType){
        keyValuePair_free(keyPairQuery_reservableType);
        keyPairQuery_reservableType = NULL;
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

// Search Schedule
//
list_t*
ReservationAPI_searchSchedule(apiClient_t *apiClient, double version, long reservableId, sirqul_iot_platform_searchSchedule_reservableType_e reservableType, long startDate, long endDate, char *deviceId, long accountId, int *timeBucketMins)
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
    char *localVarPath = strdup("/api/{version}/reservable/schedule/search");



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
    char *keyQuery_reservableId = NULL;
    char * valueQuery_reservableId ;
    keyValuePair_t *keyPairQuery_reservableId = 0;
    {
        keyQuery_reservableId = strdup("reservableId");
        valueQuery_reservableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_reservableId, MAX_NUMBER_LENGTH_LONG, "%d", reservableId);
        keyPairQuery_reservableId = keyValuePair_create(keyQuery_reservableId, valueQuery_reservableId);
        list_addElement(localVarQueryParameters,keyPairQuery_reservableId);
    }

    // query parameters
    char *keyQuery_reservableType = NULL;
    sirqul_iot_platform_searchSchedule_reservableType_e valueQuery_reservableType ;
    keyValuePair_t *keyPairQuery_reservableType = 0;
    if (reservableType)
    {
        keyQuery_reservableType = strdup("reservableType");
        valueQuery_reservableType = (reservableType);
        keyPairQuery_reservableType = keyValuePair_create(keyQuery_reservableType, strdup(searchSchedule_RESERVABLETYPE_ToString(
        valueQuery_reservableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_reservableType);
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
    char *keyQuery_timeBucketMins = NULL;
    char * valueQuery_timeBucketMins = NULL;
    keyValuePair_t *keyPairQuery_timeBucketMins = 0;
    if (timeBucketMins)
    {
        keyQuery_timeBucketMins = strdup("timeBucketMins");
        valueQuery_timeBucketMins = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_timeBucketMins, MAX_NUMBER_LENGTH, "%d", *timeBucketMins);
        keyPairQuery_timeBucketMins = keyValuePair_create(keyQuery_timeBucketMins, valueQuery_timeBucketMins);
        list_addElement(localVarQueryParameters,keyPairQuery_timeBucketMins);
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
        cJSON *ReservationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ReservationAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ReservationAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ReservationAPIlocalVarJSON);
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
    if(keyQuery_reservableId){
        free(keyQuery_reservableId);
        keyQuery_reservableId = NULL;
    }
    if(keyPairQuery_reservableId){
        keyValuePair_free(keyPairQuery_reservableId);
        keyPairQuery_reservableId = NULL;
    }
    if(keyQuery_reservableType){
        free(keyQuery_reservableType);
        keyQuery_reservableType = NULL;
    }
    if(keyPairQuery_reservableType){
        keyValuePair_free(keyPairQuery_reservableType);
        keyPairQuery_reservableType = NULL;
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
    if(keyQuery_timeBucketMins){
        free(keyQuery_timeBucketMins);
        keyQuery_timeBucketMins = NULL;
    }
    if(valueQuery_timeBucketMins){
        free(valueQuery_timeBucketMins);
        valueQuery_timeBucketMins = NULL;
    }
    if(keyPairQuery_timeBucketMins){
        keyValuePair_free(keyPairQuery_timeBucketMins);
        keyPairQuery_timeBucketMins = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

