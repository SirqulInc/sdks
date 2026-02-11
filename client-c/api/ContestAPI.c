#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ContestAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum VISIBILITY for ContestAPI_addOrUpdateAlbumContest

static char* addOrUpdateAlbumContest_VISIBILITY_ToString(sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e addOrUpdateAlbumContest_VISIBILITY_FromString(char* VISIBILITY){
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
// Function addOrUpdateAlbumContest_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *addOrUpdateAlbumContest_VISIBILITY_convertToJSON(sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", addOrUpdateAlbumContest_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function addOrUpdateAlbumContest_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e addOrUpdateAlbumContest_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = addOrUpdateAlbumContest_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/

// Functions for enum APPROVALSTATUS for ContestAPI_approveAlbumContest

static char* approveAlbumContest_APPROVALSTATUS_ToString(sirqul_iot_platform_approveAlbumContest_approvalStatus_e APPROVALSTATUS){
    char *APPROVALSTATUSArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return APPROVALSTATUSArray[APPROVALSTATUS];
}

static sirqul_iot_platform_approveAlbumContest_approvalStatus_e approveAlbumContest_APPROVALSTATUS_FromString(char* APPROVALSTATUS){
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
// Function approveAlbumContest_APPROVALSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *approveAlbumContest_APPROVALSTATUS_convertToJSON(sirqul_iot_platform_approveAlbumContest_approvalStatus_e APPROVALSTATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "approvalStatus", approveAlbumContest_APPROVALSTATUS_ToString(APPROVALSTATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function approveAlbumContest_APPROVALSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_approveAlbumContest_approvalStatus_e approveAlbumContest_APPROVALSTATUS_parseFromJSON(cJSON* APPROVALSTATUSJSON) {
    sirqul_iot_platform_approveAlbumContest_approvalStatus_e APPROVALSTATUSVariable = 0;
    cJSON *APPROVALSTATUSVar = cJSON_GetObjectItemCaseSensitive(APPROVALSTATUSJSON, "approvalStatus");
    if(!cJSON_IsString(APPROVALSTATUSVar) || (APPROVALSTATUSVar->valuestring == NULL))
    {
        goto end;
    }
    APPROVALSTATUSVariable = approveAlbumContest_APPROVALSTATUS_FromString(APPROVALSTATUSVar->valuestring);
    return APPROVALSTATUSVariable;
end:
    return 0;
}
*/


// Create or Update Contest
//
// Creates or updates a contest.
//
album_contest_response_t*
ContestAPI_addOrUpdateAlbumContest(apiClient_t *apiClient, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e visibility, int *includeFriendGroup, char *deviceId, long accountId, char *gameType, char *appKey, char *contestType, long albumContestId, char *title, char *description, long albumId1, int *removeAlbum1, long albumId2, int *removeAlbum2, long startDate, long endDate, char *locationDescription, char *connectionIdsToAdd, char *connectionGroupIdsToAdd, double latitude, double longitude)
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
    char *localVarPath = strdup("/consumer/album/contest");





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
    char *keyQuery_contestType = NULL;
    char * valueQuery_contestType = NULL;
    keyValuePair_t *keyPairQuery_contestType = 0;
    if (contestType)
    {
        keyQuery_contestType = strdup("contestType");
        valueQuery_contestType = strdup((contestType));
        keyPairQuery_contestType = keyValuePair_create(keyQuery_contestType, valueQuery_contestType);
        list_addElement(localVarQueryParameters,keyPairQuery_contestType);
    }

    // query parameters
    char *keyQuery_albumContestId = NULL;
    char * valueQuery_albumContestId ;
    keyValuePair_t *keyPairQuery_albumContestId = 0;
    {
        keyQuery_albumContestId = strdup("albumContestId");
        valueQuery_albumContestId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumContestId, MAX_NUMBER_LENGTH_LONG, "%d", albumContestId);
        keyPairQuery_albumContestId = keyValuePair_create(keyQuery_albumContestId, valueQuery_albumContestId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumContestId);
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
    char *keyQuery_albumId1 = NULL;
    char * valueQuery_albumId1 ;
    keyValuePair_t *keyPairQuery_albumId1 = 0;
    {
        keyQuery_albumId1 = strdup("albumId1");
        valueQuery_albumId1 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId1, MAX_NUMBER_LENGTH_LONG, "%d", albumId1);
        keyPairQuery_albumId1 = keyValuePair_create(keyQuery_albumId1, valueQuery_albumId1);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId1);
    }

    // query parameters
    char *keyQuery_removeAlbum1 = NULL;
    char * valueQuery_removeAlbum1 = NULL;
    keyValuePair_t *keyPairQuery_removeAlbum1 = 0;
    if (removeAlbum1)
    {
        keyQuery_removeAlbum1 = strdup("removeAlbum1");
        valueQuery_removeAlbum1 = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeAlbum1, MAX_NUMBER_LENGTH, "%d", *removeAlbum1);
        keyPairQuery_removeAlbum1 = keyValuePair_create(keyQuery_removeAlbum1, valueQuery_removeAlbum1);
        list_addElement(localVarQueryParameters,keyPairQuery_removeAlbum1);
    }

    // query parameters
    char *keyQuery_albumId2 = NULL;
    char * valueQuery_albumId2 ;
    keyValuePair_t *keyPairQuery_albumId2 = 0;
    {
        keyQuery_albumId2 = strdup("albumId2");
        valueQuery_albumId2 = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumId2, MAX_NUMBER_LENGTH_LONG, "%d", albumId2);
        keyPairQuery_albumId2 = keyValuePair_create(keyQuery_albumId2, valueQuery_albumId2);
        list_addElement(localVarQueryParameters,keyPairQuery_albumId2);
    }

    // query parameters
    char *keyQuery_removeAlbum2 = NULL;
    char * valueQuery_removeAlbum2 = NULL;
    keyValuePair_t *keyPairQuery_removeAlbum2 = 0;
    if (removeAlbum2)
    {
        keyQuery_removeAlbum2 = strdup("removeAlbum2");
        valueQuery_removeAlbum2 = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeAlbum2, MAX_NUMBER_LENGTH, "%d", *removeAlbum2);
        keyPairQuery_removeAlbum2 = keyValuePair_create(keyQuery_removeAlbum2, valueQuery_removeAlbum2);
        list_addElement(localVarQueryParameters,keyPairQuery_removeAlbum2);
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
    sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(addOrUpdateAlbumContest_VISIBILITY_ToString(
        valueQuery_visibility)));
        list_addElement(localVarQueryParameters,keyPairQuery_visibility);
    }

    // query parameters
    char *keyQuery_connectionIdsToAdd = NULL;
    char * valueQuery_connectionIdsToAdd = NULL;
    keyValuePair_t *keyPairQuery_connectionIdsToAdd = 0;
    if (connectionIdsToAdd)
    {
        keyQuery_connectionIdsToAdd = strdup("connectionIdsToAdd");
        valueQuery_connectionIdsToAdd = strdup((connectionIdsToAdd));
        keyPairQuery_connectionIdsToAdd = keyValuePair_create(keyQuery_connectionIdsToAdd, valueQuery_connectionIdsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionIdsToAdd);
    }

    // query parameters
    char *keyQuery_connectionGroupIdsToAdd = NULL;
    char * valueQuery_connectionGroupIdsToAdd = NULL;
    keyValuePair_t *keyPairQuery_connectionGroupIdsToAdd = 0;
    if (connectionGroupIdsToAdd)
    {
        keyQuery_connectionGroupIdsToAdd = strdup("connectionGroupIdsToAdd");
        valueQuery_connectionGroupIdsToAdd = strdup((connectionGroupIdsToAdd));
        keyPairQuery_connectionGroupIdsToAdd = keyValuePair_create(keyQuery_connectionGroupIdsToAdd, valueQuery_connectionGroupIdsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupIdsToAdd);
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
    album_contest_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ContestAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = album_contest_response_parseFromJSON(ContestAPIlocalVarJSON);
        cJSON_Delete(ContestAPIlocalVarJSON);
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
    if(keyQuery_contestType){
        free(keyQuery_contestType);
        keyQuery_contestType = NULL;
    }
    if(valueQuery_contestType){
        free(valueQuery_contestType);
        valueQuery_contestType = NULL;
    }
    if(keyPairQuery_contestType){
        keyValuePair_free(keyPairQuery_contestType);
        keyPairQuery_contestType = NULL;
    }
    if(keyQuery_albumContestId){
        free(keyQuery_albumContestId);
        keyQuery_albumContestId = NULL;
    }
    if(keyPairQuery_albumContestId){
        keyValuePair_free(keyPairQuery_albumContestId);
        keyPairQuery_albumContestId = NULL;
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
    if(keyQuery_albumId1){
        free(keyQuery_albumId1);
        keyQuery_albumId1 = NULL;
    }
    if(keyPairQuery_albumId1){
        keyValuePair_free(keyPairQuery_albumId1);
        keyPairQuery_albumId1 = NULL;
    }
    if(keyQuery_removeAlbum1){
        free(keyQuery_removeAlbum1);
        keyQuery_removeAlbum1 = NULL;
    }
    if(valueQuery_removeAlbum1){
        free(valueQuery_removeAlbum1);
        valueQuery_removeAlbum1 = NULL;
    }
    if(keyPairQuery_removeAlbum1){
        keyValuePair_free(keyPairQuery_removeAlbum1);
        keyPairQuery_removeAlbum1 = NULL;
    }
    if(keyQuery_albumId2){
        free(keyQuery_albumId2);
        keyQuery_albumId2 = NULL;
    }
    if(keyPairQuery_albumId2){
        keyValuePair_free(keyPairQuery_albumId2);
        keyPairQuery_albumId2 = NULL;
    }
    if(keyQuery_removeAlbum2){
        free(keyQuery_removeAlbum2);
        keyQuery_removeAlbum2 = NULL;
    }
    if(valueQuery_removeAlbum2){
        free(valueQuery_removeAlbum2);
        valueQuery_removeAlbum2 = NULL;
    }
    if(keyPairQuery_removeAlbum2){
        keyValuePair_free(keyPairQuery_removeAlbum2);
        keyPairQuery_removeAlbum2 = NULL;
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
    if(keyQuery_connectionIdsToAdd){
        free(keyQuery_connectionIdsToAdd);
        keyQuery_connectionIdsToAdd = NULL;
    }
    if(valueQuery_connectionIdsToAdd){
        free(valueQuery_connectionIdsToAdd);
        valueQuery_connectionIdsToAdd = NULL;
    }
    if(keyPairQuery_connectionIdsToAdd){
        keyValuePair_free(keyPairQuery_connectionIdsToAdd);
        keyPairQuery_connectionIdsToAdd = NULL;
    }
    if(keyQuery_connectionGroupIdsToAdd){
        free(keyQuery_connectionGroupIdsToAdd);
        keyQuery_connectionGroupIdsToAdd = NULL;
    }
    if(valueQuery_connectionGroupIdsToAdd){
        free(valueQuery_connectionGroupIdsToAdd);
        valueQuery_connectionGroupIdsToAdd = NULL;
    }
    if(keyPairQuery_connectionGroupIdsToAdd){
        keyValuePair_free(keyPairQuery_connectionGroupIdsToAdd);
        keyPairQuery_connectionGroupIdsToAdd = NULL;
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

// Approve Contest
//
// Sets the approval status of a contest.
//
sirqul_response_t*
ContestAPI_approveAlbumContest(apiClient_t *apiClient, long albumContestId, sirqul_iot_platform_approveAlbumContest_approvalStatus_e approvalStatus, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/consumer/album/contest/approve");





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
    char *keyQuery_albumContestId = NULL;
    char * valueQuery_albumContestId ;
    keyValuePair_t *keyPairQuery_albumContestId = 0;
    {
        keyQuery_albumContestId = strdup("albumContestId");
        valueQuery_albumContestId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumContestId, MAX_NUMBER_LENGTH_LONG, "%d", albumContestId);
        keyPairQuery_albumContestId = keyValuePair_create(keyQuery_albumContestId, valueQuery_albumContestId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumContestId);
    }

    // query parameters
    char *keyQuery_approvalStatus = NULL;
    sirqul_iot_platform_approveAlbumContest_approvalStatus_e valueQuery_approvalStatus ;
    keyValuePair_t *keyPairQuery_approvalStatus = 0;
    if (approvalStatus)
    {
        keyQuery_approvalStatus = strdup("approvalStatus");
        valueQuery_approvalStatus = (approvalStatus);
        keyPairQuery_approvalStatus = keyValuePair_create(keyQuery_approvalStatus, strdup(approveAlbumContest_APPROVALSTATUS_ToString(
        valueQuery_approvalStatus)));
        list_addElement(localVarQueryParameters,keyPairQuery_approvalStatus);
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
        cJSON *ContestAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ContestAPIlocalVarJSON);
        cJSON_Delete(ContestAPIlocalVarJSON);
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
    if(keyQuery_albumContestId){
        free(keyQuery_albumContestId);
        keyQuery_albumContestId = NULL;
    }
    if(keyPairQuery_albumContestId){
        keyValuePair_free(keyPairQuery_albumContestId);
        keyPairQuery_albumContestId = NULL;
    }
    if(keyQuery_approvalStatus){
        free(keyQuery_approvalStatus);
        keyQuery_approvalStatus = NULL;
    }
    if(keyPairQuery_approvalStatus){
        keyValuePair_free(keyPairQuery_approvalStatus);
        keyPairQuery_approvalStatus = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Contest
//
// Deletes a contest.
//
sirqul_response_t*
ContestAPI_deleteContest(apiClient_t *apiClient, long albumContestId, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/consumer/album/contest/remove");





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
    char *keyQuery_albumContestId = NULL;
    char * valueQuery_albumContestId ;
    keyValuePair_t *keyPairQuery_albumContestId = 0;
    {
        keyQuery_albumContestId = strdup("albumContestId");
        valueQuery_albumContestId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumContestId, MAX_NUMBER_LENGTH_LONG, "%d", albumContestId);
        keyPairQuery_albumContestId = keyValuePair_create(keyQuery_albumContestId, valueQuery_albumContestId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumContestId);
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
        cJSON *ContestAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ContestAPIlocalVarJSON);
        cJSON_Delete(ContestAPIlocalVarJSON);
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
    if(keyQuery_albumContestId){
        free(keyQuery_albumContestId);
        keyQuery_albumContestId = NULL;
    }
    if(keyPairQuery_albumContestId){
        keyValuePair_free(keyPairQuery_albumContestId);
        keyPairQuery_albumContestId = NULL;
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

// Get Contest
//
// Gets the contest object including the likes and notes
//
album_contest_response_t*
ContestAPI_getAlbumContest(apiClient_t *apiClient, long albumContestId, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/consumer/album/contest/get");





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
    char *keyQuery_albumContestId = NULL;
    char * valueQuery_albumContestId ;
    keyValuePair_t *keyPairQuery_albumContestId = 0;
    {
        keyQuery_albumContestId = strdup("albumContestId");
        valueQuery_albumContestId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumContestId, MAX_NUMBER_LENGTH_LONG, "%d", albumContestId);
        keyPairQuery_albumContestId = keyValuePair_create(keyQuery_albumContestId, valueQuery_albumContestId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumContestId);
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
    album_contest_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ContestAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = album_contest_response_parseFromJSON(ContestAPIlocalVarJSON);
        cJSON_Delete(ContestAPIlocalVarJSON);
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
    if(keyQuery_albumContestId){
        free(keyQuery_albumContestId);
        keyQuery_albumContestId = NULL;
    }
    if(keyPairQuery_albumContestId){
        keyValuePair_free(keyPairQuery_albumContestId);
        keyPairQuery_albumContestId = NULL;
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

// Search Contests
//
// Searches on contests.
//
album_contest_list_response_t*
ContestAPI_getAlbumContests(apiClient_t *apiClient, char *filter, char *sortField, int *descending, int *start, int *limit, char *deviceId, long accountId, char *gameType, char *appKey, char *appType, char *contestType, long ownerId, char *q, char *keyword, int *_i, int *_l, long dateCreated, double latitude, double longitude)
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
    char *localVarPath = strdup("/consumer/album/contest/search");





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
    char *keyQuery_appType = NULL;
    char * valueQuery_appType = NULL;
    keyValuePair_t *keyPairQuery_appType = 0;
    if (appType)
    {
        keyQuery_appType = strdup("appType");
        valueQuery_appType = strdup((appType));
        keyPairQuery_appType = keyValuePair_create(keyQuery_appType, valueQuery_appType);
        list_addElement(localVarQueryParameters,keyPairQuery_appType);
    }

    // query parameters
    char *keyQuery_contestType = NULL;
    char * valueQuery_contestType = NULL;
    keyValuePair_t *keyPairQuery_contestType = 0;
    if (contestType)
    {
        keyQuery_contestType = strdup("contestType");
        valueQuery_contestType = strdup((contestType));
        keyPairQuery_contestType = keyValuePair_create(keyQuery_contestType, valueQuery_contestType);
        list_addElement(localVarQueryParameters,keyPairQuery_contestType);
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
    album_contest_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ContestAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = album_contest_list_response_parseFromJSON(ContestAPIlocalVarJSON);
        cJSON_Delete(ContestAPIlocalVarJSON);
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
    if(keyQuery_appType){
        free(keyQuery_appType);
        keyQuery_appType = NULL;
    }
    if(valueQuery_appType){
        free(valueQuery_appType);
        valueQuery_appType = NULL;
    }
    if(keyPairQuery_appType){
        keyValuePair_free(keyPairQuery_appType);
        keyPairQuery_appType = NULL;
    }
    if(keyQuery_contestType){
        free(keyQuery_contestType);
        keyQuery_contestType = NULL;
    }
    if(valueQuery_contestType){
        free(valueQuery_contestType);
        valueQuery_contestType = NULL;
    }
    if(keyPairQuery_contestType){
        keyValuePair_free(keyPairQuery_contestType);
        keyPairQuery_contestType = NULL;
    }
    if(keyQuery_ownerId){
        free(keyQuery_ownerId);
        keyQuery_ownerId = NULL;
    }
    if(keyPairQuery_ownerId){
        keyValuePair_free(keyPairQuery_ownerId);
        keyPairQuery_ownerId = NULL;
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
    if(keyQuery_dateCreated){
        free(keyQuery_dateCreated);
        keyQuery_dateCreated = NULL;
    }
    if(keyPairQuery_dateCreated){
        keyValuePair_free(keyPairQuery_dateCreated);
        keyPairQuery_dateCreated = NULL;
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

// Vote on Contest
//
// Vote on a collection in a contest.
//
album_contest_response_t*
ContestAPI_voteOnAlbumContest(apiClient_t *apiClient, long albumContestId, long albumId, char *deviceId, long accountId, char *contestType, double latitude, double longitude)
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
    char *localVarPath = strdup("/consumer/album/contest/vote");





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
    char *keyQuery_albumContestId = NULL;
    char * valueQuery_albumContestId ;
    keyValuePair_t *keyPairQuery_albumContestId = 0;
    {
        keyQuery_albumContestId = strdup("albumContestId");
        valueQuery_albumContestId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_albumContestId, MAX_NUMBER_LENGTH_LONG, "%d", albumContestId);
        keyPairQuery_albumContestId = keyValuePair_create(keyQuery_albumContestId, valueQuery_albumContestId);
        list_addElement(localVarQueryParameters,keyPairQuery_albumContestId);
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
    char *keyQuery_contestType = NULL;
    char * valueQuery_contestType = NULL;
    keyValuePair_t *keyPairQuery_contestType = 0;
    if (contestType)
    {
        keyQuery_contestType = strdup("contestType");
        valueQuery_contestType = strdup((contestType));
        keyPairQuery_contestType = keyValuePair_create(keyQuery_contestType, valueQuery_contestType);
        list_addElement(localVarQueryParameters,keyPairQuery_contestType);
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
    album_contest_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ContestAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = album_contest_response_parseFromJSON(ContestAPIlocalVarJSON);
        cJSON_Delete(ContestAPIlocalVarJSON);
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
    if(keyQuery_albumContestId){
        free(keyQuery_albumContestId);
        keyQuery_albumContestId = NULL;
    }
    if(keyPairQuery_albumContestId){
        keyValuePair_free(keyPairQuery_albumContestId);
        keyPairQuery_albumContestId = NULL;
    }
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_contestType){
        free(keyQuery_contestType);
        keyQuery_contestType = NULL;
    }
    if(valueQuery_contestType){
        free(valueQuery_contestType);
        valueQuery_contestType = NULL;
    }
    if(keyPairQuery_contestType){
        keyValuePair_free(keyPairQuery_contestType);
        keyPairQuery_contestType = NULL;
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

