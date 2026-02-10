#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ThemeDescriptorAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum VISIBILITY for ThemeDescriptorAPI_addOrUpdateThemeDescriptor

static char* addOrUpdateThemeDescriptor_VISIBILITY_ToString(sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e VISIBILITY){
    char *VISIBILITYArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return VISIBILITYArray[VISIBILITY];
}

static sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e addOrUpdateThemeDescriptor_VISIBILITY_FromString(char* VISIBILITY){
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
// Function addOrUpdateThemeDescriptor_VISIBILITY_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *addOrUpdateThemeDescriptor_VISIBILITY_convertToJSON(sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e VISIBILITY) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "visibility", addOrUpdateThemeDescriptor_VISIBILITY_ToString(VISIBILITY)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function addOrUpdateThemeDescriptor_VISIBILITY_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e addOrUpdateThemeDescriptor_VISIBILITY_parseFromJSON(cJSON* VISIBILITYJSON) {
    sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e VISIBILITYVariable = 0;
    cJSON *VISIBILITYVar = cJSON_GetObjectItemCaseSensitive(VISIBILITYJSON, "visibility");
    if(!cJSON_IsString(VISIBILITYVar) || (VISIBILITYVar->valuestring == NULL))
    {
        goto end;
    }
    VISIBILITYVariable = addOrUpdateThemeDescriptor_VISIBILITY_FromString(VISIBILITYVar->valuestring);
    return VISIBILITYVariable;
end:
    return 0;
}
*/


// Create/Update Theme
//
// Creates or updates a theme descriptor that can be used to give applications a customized look and feel. The theme can be created by consumers and shared to other users, allowing them to use and/or collaborate on making the theme.
//
theme_descriptor_response_t*
ThemeDescriptorAPI_addOrUpdateThemeDescriptor(apiClient_t *apiClient, double version, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e visibility, int *includeFriendGroup, int *completeWithDefaultValues, char *deviceId, long accountId, char *gameType, long themeDescriptorId, char *title, char *description, char *connectionIdsToAdd, char *connectionGroupIdsToAdd, char *appVersion, char *colorValueJson, char *stringReplacerJson, char *customJsonObjects, binary_t* iconImage, binary_t* sceneAtlasImage, binary_t* bgImage, binary_t* bgSound, char *musicSelection, char *locationDescription, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/theme");



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
    char *keyQuery_themeDescriptorId = NULL;
    char * valueQuery_themeDescriptorId ;
    keyValuePair_t *keyPairQuery_themeDescriptorId = 0;
    {
        keyQuery_themeDescriptorId = strdup("themeDescriptorId");
        valueQuery_themeDescriptorId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_themeDescriptorId, MAX_NUMBER_LENGTH_LONG, "%d", themeDescriptorId);
        keyPairQuery_themeDescriptorId = keyValuePair_create(keyQuery_themeDescriptorId, valueQuery_themeDescriptorId);
        list_addElement(localVarQueryParameters,keyPairQuery_themeDescriptorId);
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
    char *keyQuery_visibility = NULL;
    sirqul_iot_platform_addOrUpdateThemeDescriptor_visibility_e valueQuery_visibility ;
    keyValuePair_t *keyPairQuery_visibility = 0;
    if (visibility)
    {
        keyQuery_visibility = strdup("visibility");
        valueQuery_visibility = (visibility);
        keyPairQuery_visibility = keyValuePair_create(keyQuery_visibility, strdup(addOrUpdateThemeDescriptor_VISIBILITY_ToString(
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
    char *keyQuery_colorValueJson = NULL;
    char * valueQuery_colorValueJson = NULL;
    keyValuePair_t *keyPairQuery_colorValueJson = 0;
    if (colorValueJson)
    {
        keyQuery_colorValueJson = strdup("colorValueJson");
        valueQuery_colorValueJson = strdup((colorValueJson));
        keyPairQuery_colorValueJson = keyValuePair_create(keyQuery_colorValueJson, valueQuery_colorValueJson);
        list_addElement(localVarQueryParameters,keyPairQuery_colorValueJson);
    }

    // query parameters
    char *keyQuery_stringReplacerJson = NULL;
    char * valueQuery_stringReplacerJson = NULL;
    keyValuePair_t *keyPairQuery_stringReplacerJson = 0;
    if (stringReplacerJson)
    {
        keyQuery_stringReplacerJson = strdup("stringReplacerJson");
        valueQuery_stringReplacerJson = strdup((stringReplacerJson));
        keyPairQuery_stringReplacerJson = keyValuePair_create(keyQuery_stringReplacerJson, valueQuery_stringReplacerJson);
        list_addElement(localVarQueryParameters,keyPairQuery_stringReplacerJson);
    }

    // query parameters
    char *keyQuery_customJsonObjects = NULL;
    char * valueQuery_customJsonObjects = NULL;
    keyValuePair_t *keyPairQuery_customJsonObjects = 0;
    if (customJsonObjects)
    {
        keyQuery_customJsonObjects = strdup("customJsonObjects");
        valueQuery_customJsonObjects = strdup((customJsonObjects));
        keyPairQuery_customJsonObjects = keyValuePair_create(keyQuery_customJsonObjects, valueQuery_customJsonObjects);
        list_addElement(localVarQueryParameters,keyPairQuery_customJsonObjects);
    }

    // query parameters
    char *keyQuery_iconImage = NULL;
    binary_t* valueQuery_iconImage ;
    keyValuePair_t *keyPairQuery_iconImage = 0;
    if (iconImage)
    {
        keyQuery_iconImage = strdup("iconImage");
        valueQuery_iconImage = (iconImage);
        keyPairQuery_iconImage = keyValuePair_create(keyQuery_iconImage, &valueQuery_iconImage);
        list_addElement(localVarQueryParameters,keyPairQuery_iconImage);
    }

    // query parameters
    char *keyQuery_sceneAtlasImage = NULL;
    binary_t* valueQuery_sceneAtlasImage ;
    keyValuePair_t *keyPairQuery_sceneAtlasImage = 0;
    if (sceneAtlasImage)
    {
        keyQuery_sceneAtlasImage = strdup("sceneAtlasImage");
        valueQuery_sceneAtlasImage = (sceneAtlasImage);
        keyPairQuery_sceneAtlasImage = keyValuePair_create(keyQuery_sceneAtlasImage, &valueQuery_sceneAtlasImage);
        list_addElement(localVarQueryParameters,keyPairQuery_sceneAtlasImage);
    }

    // query parameters
    char *keyQuery_bgImage = NULL;
    binary_t* valueQuery_bgImage ;
    keyValuePair_t *keyPairQuery_bgImage = 0;
    if (bgImage)
    {
        keyQuery_bgImage = strdup("bgImage");
        valueQuery_bgImage = (bgImage);
        keyPairQuery_bgImage = keyValuePair_create(keyQuery_bgImage, &valueQuery_bgImage);
        list_addElement(localVarQueryParameters,keyPairQuery_bgImage);
    }

    // query parameters
    char *keyQuery_bgSound = NULL;
    binary_t* valueQuery_bgSound ;
    keyValuePair_t *keyPairQuery_bgSound = 0;
    if (bgSound)
    {
        keyQuery_bgSound = strdup("bgSound");
        valueQuery_bgSound = (bgSound);
        keyPairQuery_bgSound = keyValuePair_create(keyQuery_bgSound, &valueQuery_bgSound);
        list_addElement(localVarQueryParameters,keyPairQuery_bgSound);
    }

    // query parameters
    char *keyQuery_musicSelection = NULL;
    char * valueQuery_musicSelection = NULL;
    keyValuePair_t *keyPairQuery_musicSelection = 0;
    if (musicSelection)
    {
        keyQuery_musicSelection = strdup("musicSelection");
        valueQuery_musicSelection = strdup((musicSelection));
        keyPairQuery_musicSelection = keyValuePair_create(keyQuery_musicSelection, valueQuery_musicSelection);
        list_addElement(localVarQueryParameters,keyPairQuery_musicSelection);
    }

    // query parameters
    char *keyQuery_completeWithDefaultValues = NULL;
    char * valueQuery_completeWithDefaultValues = NULL;
    keyValuePair_t *keyPairQuery_completeWithDefaultValues = 0;
    if (completeWithDefaultValues)
    {
        keyQuery_completeWithDefaultValues = strdup("completeWithDefaultValues");
        valueQuery_completeWithDefaultValues = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_completeWithDefaultValues, MAX_NUMBER_LENGTH, "%d", *completeWithDefaultValues);
        keyPairQuery_completeWithDefaultValues = keyValuePair_create(keyQuery_completeWithDefaultValues, valueQuery_completeWithDefaultValues);
        list_addElement(localVarQueryParameters,keyPairQuery_completeWithDefaultValues);
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
    theme_descriptor_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThemeDescriptorAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = theme_descriptor_response_parseFromJSON(ThemeDescriptorAPIlocalVarJSON);
        cJSON_Delete(ThemeDescriptorAPIlocalVarJSON);
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
    if(keyQuery_themeDescriptorId){
        free(keyQuery_themeDescriptorId);
        keyQuery_themeDescriptorId = NULL;
    }
    if(keyPairQuery_themeDescriptorId){
        keyValuePair_free(keyPairQuery_themeDescriptorId);
        keyPairQuery_themeDescriptorId = NULL;
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
    if(keyQuery_colorValueJson){
        free(keyQuery_colorValueJson);
        keyQuery_colorValueJson = NULL;
    }
    if(valueQuery_colorValueJson){
        free(valueQuery_colorValueJson);
        valueQuery_colorValueJson = NULL;
    }
    if(keyPairQuery_colorValueJson){
        keyValuePair_free(keyPairQuery_colorValueJson);
        keyPairQuery_colorValueJson = NULL;
    }
    if(keyQuery_stringReplacerJson){
        free(keyQuery_stringReplacerJson);
        keyQuery_stringReplacerJson = NULL;
    }
    if(valueQuery_stringReplacerJson){
        free(valueQuery_stringReplacerJson);
        valueQuery_stringReplacerJson = NULL;
    }
    if(keyPairQuery_stringReplacerJson){
        keyValuePair_free(keyPairQuery_stringReplacerJson);
        keyPairQuery_stringReplacerJson = NULL;
    }
    if(keyQuery_customJsonObjects){
        free(keyQuery_customJsonObjects);
        keyQuery_customJsonObjects = NULL;
    }
    if(valueQuery_customJsonObjects){
        free(valueQuery_customJsonObjects);
        valueQuery_customJsonObjects = NULL;
    }
    if(keyPairQuery_customJsonObjects){
        keyValuePair_free(keyPairQuery_customJsonObjects);
        keyPairQuery_customJsonObjects = NULL;
    }
    if(keyQuery_iconImage){
        free(keyQuery_iconImage);
        keyQuery_iconImage = NULL;
    }
    if(keyPairQuery_iconImage){
        keyValuePair_free(keyPairQuery_iconImage);
        keyPairQuery_iconImage = NULL;
    }
    if(keyQuery_sceneAtlasImage){
        free(keyQuery_sceneAtlasImage);
        keyQuery_sceneAtlasImage = NULL;
    }
    if(keyPairQuery_sceneAtlasImage){
        keyValuePair_free(keyPairQuery_sceneAtlasImage);
        keyPairQuery_sceneAtlasImage = NULL;
    }
    if(keyQuery_bgImage){
        free(keyQuery_bgImage);
        keyQuery_bgImage = NULL;
    }
    if(keyPairQuery_bgImage){
        keyValuePair_free(keyPairQuery_bgImage);
        keyPairQuery_bgImage = NULL;
    }
    if(keyQuery_bgSound){
        free(keyQuery_bgSound);
        keyQuery_bgSound = NULL;
    }
    if(keyPairQuery_bgSound){
        keyValuePair_free(keyPairQuery_bgSound);
        keyPairQuery_bgSound = NULL;
    }
    if(keyQuery_musicSelection){
        free(keyQuery_musicSelection);
        keyQuery_musicSelection = NULL;
    }
    if(valueQuery_musicSelection){
        free(valueQuery_musicSelection);
        valueQuery_musicSelection = NULL;
    }
    if(keyPairQuery_musicSelection){
        keyValuePair_free(keyPairQuery_musicSelection);
        keyPairQuery_musicSelection = NULL;
    }
    if(keyQuery_completeWithDefaultValues){
        free(keyQuery_completeWithDefaultValues);
        keyQuery_completeWithDefaultValues = NULL;
    }
    if(valueQuery_completeWithDefaultValues){
        free(valueQuery_completeWithDefaultValues);
        valueQuery_completeWithDefaultValues = NULL;
    }
    if(keyPairQuery_completeWithDefaultValues){
        keyValuePair_free(keyPairQuery_completeWithDefaultValues);
        keyPairQuery_completeWithDefaultValues = NULL;
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

// Get Theme
//
// Gets a theme.
//
purchase_item_list_response_t*
ThemeDescriptorAPI_getThemeDescriptor(apiClient_t *apiClient, double version, long themeDescriptorId, char *deviceId, long accountId, char *gameType, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/theme/get");



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
    char *keyQuery_themeDescriptorId = NULL;
    char * valueQuery_themeDescriptorId ;
    keyValuePair_t *keyPairQuery_themeDescriptorId = 0;
    {
        keyQuery_themeDescriptorId = strdup("themeDescriptorId");
        valueQuery_themeDescriptorId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_themeDescriptorId, MAX_NUMBER_LENGTH_LONG, "%d", themeDescriptorId);
        keyPairQuery_themeDescriptorId = keyValuePair_create(keyQuery_themeDescriptorId, valueQuery_themeDescriptorId);
        list_addElement(localVarQueryParameters,keyPairQuery_themeDescriptorId);
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
    purchase_item_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThemeDescriptorAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = purchase_item_list_response_parseFromJSON(ThemeDescriptorAPIlocalVarJSON);
        cJSON_Delete(ThemeDescriptorAPIlocalVarJSON);
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
    if(keyQuery_themeDescriptorId){
        free(keyQuery_themeDescriptorId);
        keyQuery_themeDescriptorId = NULL;
    }
    if(keyPairQuery_themeDescriptorId){
        keyValuePair_free(keyPairQuery_themeDescriptorId);
        keyPairQuery_themeDescriptorId = NULL;
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

// Search Themes
//
// Searches for themes.
//
purchase_item_list_response_t*
ThemeDescriptorAPI_getThemeDescriptors(apiClient_t *apiClient, double version, char *filter, char *sortField, int *descending, int *start, int *limit, char *deviceId, long accountId, char *gameType, char *contestType, long ownerId, char *q, char *keyword, int *_i, int *_l, long dateCreated, char *appVersion, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/theme/search");



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
    purchase_item_list_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThemeDescriptorAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = purchase_item_list_response_parseFromJSON(ThemeDescriptorAPIlocalVarJSON);
        cJSON_Delete(ThemeDescriptorAPIlocalVarJSON);
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

// Delete Theme
//
// Removes a theme.
//
sirqul_response_t*
ThemeDescriptorAPI_removeThemeDescriptor(apiClient_t *apiClient, double version, long themeDescriptorId, char *deviceId, long accountId, char *gameType, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/consumer/theme/remove");



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
    char *keyQuery_themeDescriptorId = NULL;
    char * valueQuery_themeDescriptorId ;
    keyValuePair_t *keyPairQuery_themeDescriptorId = 0;
    {
        keyQuery_themeDescriptorId = strdup("themeDescriptorId");
        valueQuery_themeDescriptorId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_themeDescriptorId, MAX_NUMBER_LENGTH_LONG, "%d", themeDescriptorId);
        keyPairQuery_themeDescriptorId = keyValuePair_create(keyQuery_themeDescriptorId, valueQuery_themeDescriptorId);
        list_addElement(localVarQueryParameters,keyPairQuery_themeDescriptorId);
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
        cJSON *ThemeDescriptorAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ThemeDescriptorAPIlocalVarJSON);
        cJSON_Delete(ThemeDescriptorAPIlocalVarJSON);
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
    if(keyQuery_themeDescriptorId){
        free(keyQuery_themeDescriptorId);
        keyQuery_themeDescriptorId = NULL;
    }
    if(keyPairQuery_themeDescriptorId){
        keyValuePair_free(keyPairQuery_themeDescriptorId);
        keyPairQuery_themeDescriptorId = NULL;
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

