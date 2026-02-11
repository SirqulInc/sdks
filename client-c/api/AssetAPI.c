#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AssetAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum ADSIZE for AssetAPI_assetMorph

static char* assetMorph_ADSIZE_ToString(sirqul_iot_platform_assetMorph_adSize_e ADSIZE){
    char *ADSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return ADSIZEArray[ADSIZE];
}

static sirqul_iot_platform_assetMorph_adSize_e assetMorph_ADSIZE_FromString(char* ADSIZE){
    int stringToReturn = 0;
    char *ADSIZEArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(ADSIZEArray) / sizeof(ADSIZEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(ADSIZE, ADSIZEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function assetMorph_ADSIZE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *assetMorph_ADSIZE_convertToJSON(sirqul_iot_platform_assetMorph_adSize_e ADSIZE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "adSize", assetMorph_ADSIZE_ToString(ADSIZE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function assetMorph_ADSIZE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_assetMorph_adSize_e assetMorph_ADSIZE_parseFromJSON(cJSON* ADSIZEJSON) {
    sirqul_iot_platform_assetMorph_adSize_e ADSIZEVariable = 0;
    cJSON *ADSIZEVar = cJSON_GetObjectItemCaseSensitive(ADSIZEJSON, "adSize");
    if(!cJSON_IsString(ADSIZEVar) || (ADSIZEVar->valuestring == NULL))
    {
        goto end;
    }
    ADSIZEVariable = assetMorph_ADSIZE_FromString(ADSIZEVar->valuestring);
    return ADSIZEVariable;
end:
    return 0;
}
*/


// Download Asset
//
// Downloads an asset from the server for assets that have been uploaded to the server.
//
sirqul_response_t*
AssetAPI_assetDownload(apiClient_t *apiClient, char *filename)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/asset/download/{filename}");

    if(!filename)
        goto end;


    // Path Params
    long sizeOfPathParams_filename = strlen(filename)+3 + sizeof("{ filename }") - 1;
    if(filename == NULL) {
        goto end;
    }
    char* localVarToReplace_filename = malloc(sizeOfPathParams_filename);
    sprintf(localVarToReplace_filename, "{%s}", "filename");

    localVarPath = strReplace(localVarPath, localVarToReplace_filename, filename);


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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AssetAPIlocalVarJSON);
        cJSON_Delete(AssetAPIlocalVarJSON);
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
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_filename);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Convert Offer to Creative
//
// Converts an offer image + text into a creative image.
//
asset_short_response_t*
AssetAPI_assetMorph(apiClient_t *apiClient, long offerId, sirqul_iot_platform_assetMorph_adSize_e adSize, long creativeId, int *width, int *height, char *backgroundSize, char *_template)
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
    char *localVarPath = strdup("/asset/morph");





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
    char *keyQuery_creativeId = NULL;
    char * valueQuery_creativeId ;
    keyValuePair_t *keyPairQuery_creativeId = 0;
    {
        keyQuery_creativeId = strdup("creativeId");
        valueQuery_creativeId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_creativeId, MAX_NUMBER_LENGTH_LONG, "%d", creativeId);
        keyPairQuery_creativeId = keyValuePair_create(keyQuery_creativeId, valueQuery_creativeId);
        list_addElement(localVarQueryParameters,keyPairQuery_creativeId);
    }

    // query parameters
    char *keyQuery_adSize = NULL;
    sirqul_iot_platform_assetMorph_adSize_e valueQuery_adSize ;
    keyValuePair_t *keyPairQuery_adSize = 0;
    if (adSize)
    {
        keyQuery_adSize = strdup("adSize");
        valueQuery_adSize = (adSize);
        keyPairQuery_adSize = keyValuePair_create(keyQuery_adSize, strdup(assetMorph_ADSIZE_ToString(
        valueQuery_adSize)));
        list_addElement(localVarQueryParameters,keyPairQuery_adSize);
    }

    // query parameters
    char *keyQuery_width = NULL;
    char * valueQuery_width = NULL;
    keyValuePair_t *keyPairQuery_width = 0;
    if (width)
    {
        keyQuery_width = strdup("width");
        valueQuery_width = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_width, MAX_NUMBER_LENGTH, "%d", *width);
        keyPairQuery_width = keyValuePair_create(keyQuery_width, valueQuery_width);
        list_addElement(localVarQueryParameters,keyPairQuery_width);
    }

    // query parameters
    char *keyQuery_height = NULL;
    char * valueQuery_height = NULL;
    keyValuePair_t *keyPairQuery_height = 0;
    if (height)
    {
        keyQuery_height = strdup("height");
        valueQuery_height = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_height, MAX_NUMBER_LENGTH, "%d", *height);
        keyPairQuery_height = keyValuePair_create(keyQuery_height, valueQuery_height);
        list_addElement(localVarQueryParameters,keyPairQuery_height);
    }

    // query parameters
    char *keyQuery_backgroundSize = NULL;
    char * valueQuery_backgroundSize = NULL;
    keyValuePair_t *keyPairQuery_backgroundSize = 0;
    if (backgroundSize)
    {
        keyQuery_backgroundSize = strdup("backgroundSize");
        valueQuery_backgroundSize = strdup((backgroundSize));
        keyPairQuery_backgroundSize = keyValuePair_create(keyQuery_backgroundSize, valueQuery_backgroundSize);
        list_addElement(localVarQueryParameters,keyPairQuery_backgroundSize);
    }

    // query parameters
    char *keyQuery__template = NULL;
    char * valueQuery__template = NULL;
    keyValuePair_t *keyPairQuery__template = 0;
    if (_template)
    {
        keyQuery__template = strdup("template");
        valueQuery__template = strdup((_template));
        keyPairQuery__template = keyValuePair_create(keyQuery__template, valueQuery__template);
        list_addElement(localVarQueryParameters,keyPairQuery__template);
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
    asset_short_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = asset_short_response_parseFromJSON(AssetAPIlocalVarJSON);
        cJSON_Delete(AssetAPIlocalVarJSON);
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
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_creativeId){
        free(keyQuery_creativeId);
        keyQuery_creativeId = NULL;
    }
    if(keyPairQuery_creativeId){
        keyValuePair_free(keyPairQuery_creativeId);
        keyPairQuery_creativeId = NULL;
    }
    if(keyQuery_adSize){
        free(keyQuery_adSize);
        keyQuery_adSize = NULL;
    }
    if(keyPairQuery_adSize){
        keyValuePair_free(keyPairQuery_adSize);
        keyPairQuery_adSize = NULL;
    }
    if(keyQuery_width){
        free(keyQuery_width);
        keyQuery_width = NULL;
    }
    if(valueQuery_width){
        free(valueQuery_width);
        valueQuery_width = NULL;
    }
    if(keyPairQuery_width){
        keyValuePair_free(keyPairQuery_width);
        keyPairQuery_width = NULL;
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
    if(keyQuery_backgroundSize){
        free(keyQuery_backgroundSize);
        keyQuery_backgroundSize = NULL;
    }
    if(valueQuery_backgroundSize){
        free(valueQuery_backgroundSize);
        valueQuery_backgroundSize = NULL;
    }
    if(keyPairQuery_backgroundSize){
        keyValuePair_free(keyPairQuery_backgroundSize);
        keyPairQuery_backgroundSize = NULL;
    }
    if(keyQuery__template){
        free(keyQuery__template);
        keyQuery__template = NULL;
    }
    if(valueQuery__template){
        free(valueQuery__template);
        valueQuery__template = NULL;
    }
    if(keyPairQuery__template){
        keyValuePair_free(keyPairQuery__template);
        keyPairQuery__template = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Asset
//
// Uploads an asset to server and returns an asset id which can be used to assign to various objects.
//
asset_response_t*
AssetAPI_createAsset(apiClient_t *apiClient, int *returnNulls, char *deviceId, long accountId, long albumId, long collectionId, char *addToDefaultAlbum, int *addToMediaLibrary, int *versionCode, char *versionName, char *metaData, char *caption, char *assetType, char *approvalStatus, long assignedAccountId, binary_t* media, char *mediaUrl, char *mediaString, char *mediaStringFileName, char *mediaStringContentType, int *mediaHeight, int *mediaWidth, binary_t* attachedMedia, char *attachedMediaUrl, char *attachedMediaString, char *attachedMediaStringFileName, char *attachedMediaStringContentType, int *attachedMediaHeight, int *attachedMediaWidth, char *locationDescription, char *app, char *appKey, char *searchTags, double latitude, double longitude)
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
    char *localVarPath = strdup("/asset/create");





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
    char *keyQuery_collectionId = NULL;
    char * valueQuery_collectionId ;
    keyValuePair_t *keyPairQuery_collectionId = 0;
    {
        keyQuery_collectionId = strdup("collectionId");
        valueQuery_collectionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_collectionId, MAX_NUMBER_LENGTH_LONG, "%d", collectionId);
        keyPairQuery_collectionId = keyValuePair_create(keyQuery_collectionId, valueQuery_collectionId);
        list_addElement(localVarQueryParameters,keyPairQuery_collectionId);
    }

    // query parameters
    char *keyQuery_addToDefaultAlbum = NULL;
    char * valueQuery_addToDefaultAlbum = NULL;
    keyValuePair_t *keyPairQuery_addToDefaultAlbum = 0;
    if (addToDefaultAlbum)
    {
        keyQuery_addToDefaultAlbum = strdup("addToDefaultAlbum");
        valueQuery_addToDefaultAlbum = strdup((addToDefaultAlbum));
        keyPairQuery_addToDefaultAlbum = keyValuePair_create(keyQuery_addToDefaultAlbum, valueQuery_addToDefaultAlbum);
        list_addElement(localVarQueryParameters,keyPairQuery_addToDefaultAlbum);
    }

    // query parameters
    char *keyQuery_addToMediaLibrary = NULL;
    char * valueQuery_addToMediaLibrary = NULL;
    keyValuePair_t *keyPairQuery_addToMediaLibrary = 0;
    if (addToMediaLibrary)
    {
        keyQuery_addToMediaLibrary = strdup("addToMediaLibrary");
        valueQuery_addToMediaLibrary = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_addToMediaLibrary, MAX_NUMBER_LENGTH, "%d", *addToMediaLibrary);
        keyPairQuery_addToMediaLibrary = keyValuePair_create(keyQuery_addToMediaLibrary, valueQuery_addToMediaLibrary);
        list_addElement(localVarQueryParameters,keyPairQuery_addToMediaLibrary);
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
    char *keyQuery_versionName = NULL;
    char * valueQuery_versionName = NULL;
    keyValuePair_t *keyPairQuery_versionName = 0;
    if (versionName)
    {
        keyQuery_versionName = strdup("versionName");
        valueQuery_versionName = strdup((versionName));
        keyPairQuery_versionName = keyValuePair_create(keyQuery_versionName, valueQuery_versionName);
        list_addElement(localVarQueryParameters,keyPairQuery_versionName);
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
    char *keyQuery_caption = NULL;
    char * valueQuery_caption = NULL;
    keyValuePair_t *keyPairQuery_caption = 0;
    if (caption)
    {
        keyQuery_caption = strdup("caption");
        valueQuery_caption = strdup((caption));
        keyPairQuery_caption = keyValuePair_create(keyQuery_caption, valueQuery_caption);
        list_addElement(localVarQueryParameters,keyPairQuery_caption);
    }

    // query parameters
    char *keyQuery_assetType = NULL;
    char * valueQuery_assetType = NULL;
    keyValuePair_t *keyPairQuery_assetType = 0;
    if (assetType)
    {
        keyQuery_assetType = strdup("assetType");
        valueQuery_assetType = strdup((assetType));
        keyPairQuery_assetType = keyValuePair_create(keyQuery_assetType, valueQuery_assetType);
        list_addElement(localVarQueryParameters,keyPairQuery_assetType);
    }

    // query parameters
    char *keyQuery_approvalStatus = NULL;
    char * valueQuery_approvalStatus = NULL;
    keyValuePair_t *keyPairQuery_approvalStatus = 0;
    if (approvalStatus)
    {
        keyQuery_approvalStatus = strdup("approvalStatus");
        valueQuery_approvalStatus = strdup((approvalStatus));
        keyPairQuery_approvalStatus = keyValuePair_create(keyQuery_approvalStatus, valueQuery_approvalStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_approvalStatus);
    }

    // query parameters
    char *keyQuery_assignedAccountId = NULL;
    char * valueQuery_assignedAccountId ;
    keyValuePair_t *keyPairQuery_assignedAccountId = 0;
    {
        keyQuery_assignedAccountId = strdup("assignedAccountId");
        valueQuery_assignedAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignedAccountId, MAX_NUMBER_LENGTH_LONG, "%d", assignedAccountId);
        keyPairQuery_assignedAccountId = keyValuePair_create(keyQuery_assignedAccountId, valueQuery_assignedAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignedAccountId);
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
    char *keyQuery_mediaUrl = NULL;
    char * valueQuery_mediaUrl = NULL;
    keyValuePair_t *keyPairQuery_mediaUrl = 0;
    if (mediaUrl)
    {
        keyQuery_mediaUrl = strdup("mediaUrl");
        valueQuery_mediaUrl = strdup((mediaUrl));
        keyPairQuery_mediaUrl = keyValuePair_create(keyQuery_mediaUrl, valueQuery_mediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaUrl);
    }

    // query parameters
    char *keyQuery_mediaString = NULL;
    char * valueQuery_mediaString = NULL;
    keyValuePair_t *keyPairQuery_mediaString = 0;
    if (mediaString)
    {
        keyQuery_mediaString = strdup("mediaString");
        valueQuery_mediaString = strdup((mediaString));
        keyPairQuery_mediaString = keyValuePair_create(keyQuery_mediaString, valueQuery_mediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaString);
    }

    // query parameters
    char *keyQuery_mediaStringFileName = NULL;
    char * valueQuery_mediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_mediaStringFileName = 0;
    if (mediaStringFileName)
    {
        keyQuery_mediaStringFileName = strdup("mediaStringFileName");
        valueQuery_mediaStringFileName = strdup((mediaStringFileName));
        keyPairQuery_mediaStringFileName = keyValuePair_create(keyQuery_mediaStringFileName, valueQuery_mediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaStringFileName);
    }

    // query parameters
    char *keyQuery_mediaStringContentType = NULL;
    char * valueQuery_mediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_mediaStringContentType = 0;
    if (mediaStringContentType)
    {
        keyQuery_mediaStringContentType = strdup("mediaStringContentType");
        valueQuery_mediaStringContentType = strdup((mediaStringContentType));
        keyPairQuery_mediaStringContentType = keyValuePair_create(keyQuery_mediaStringContentType, valueQuery_mediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaStringContentType);
    }

    // query parameters
    char *keyQuery_mediaHeight = NULL;
    char * valueQuery_mediaHeight = NULL;
    keyValuePair_t *keyPairQuery_mediaHeight = 0;
    if (mediaHeight)
    {
        keyQuery_mediaHeight = strdup("mediaHeight");
        valueQuery_mediaHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_mediaHeight, MAX_NUMBER_LENGTH, "%d", *mediaHeight);
        keyPairQuery_mediaHeight = keyValuePair_create(keyQuery_mediaHeight, valueQuery_mediaHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaHeight);
    }

    // query parameters
    char *keyQuery_mediaWidth = NULL;
    char * valueQuery_mediaWidth = NULL;
    keyValuePair_t *keyPairQuery_mediaWidth = 0;
    if (mediaWidth)
    {
        keyQuery_mediaWidth = strdup("mediaWidth");
        valueQuery_mediaWidth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_mediaWidth, MAX_NUMBER_LENGTH, "%d", *mediaWidth);
        keyPairQuery_mediaWidth = keyValuePair_create(keyQuery_mediaWidth, valueQuery_mediaWidth);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaWidth);
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
    char *keyQuery_attachedMediaUrl = NULL;
    char * valueQuery_attachedMediaUrl = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaUrl = 0;
    if (attachedMediaUrl)
    {
        keyQuery_attachedMediaUrl = strdup("attachedMediaUrl");
        valueQuery_attachedMediaUrl = strdup((attachedMediaUrl));
        keyPairQuery_attachedMediaUrl = keyValuePair_create(keyQuery_attachedMediaUrl, valueQuery_attachedMediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaUrl);
    }

    // query parameters
    char *keyQuery_attachedMediaString = NULL;
    char * valueQuery_attachedMediaString = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaString = 0;
    if (attachedMediaString)
    {
        keyQuery_attachedMediaString = strdup("attachedMediaString");
        valueQuery_attachedMediaString = strdup((attachedMediaString));
        keyPairQuery_attachedMediaString = keyValuePair_create(keyQuery_attachedMediaString, valueQuery_attachedMediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaString);
    }

    // query parameters
    char *keyQuery_attachedMediaStringFileName = NULL;
    char * valueQuery_attachedMediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaStringFileName = 0;
    if (attachedMediaStringFileName)
    {
        keyQuery_attachedMediaStringFileName = strdup("attachedMediaStringFileName");
        valueQuery_attachedMediaStringFileName = strdup((attachedMediaStringFileName));
        keyPairQuery_attachedMediaStringFileName = keyValuePair_create(keyQuery_attachedMediaStringFileName, valueQuery_attachedMediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaStringFileName);
    }

    // query parameters
    char *keyQuery_attachedMediaStringContentType = NULL;
    char * valueQuery_attachedMediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaStringContentType = 0;
    if (attachedMediaStringContentType)
    {
        keyQuery_attachedMediaStringContentType = strdup("attachedMediaStringContentType");
        valueQuery_attachedMediaStringContentType = strdup((attachedMediaStringContentType));
        keyPairQuery_attachedMediaStringContentType = keyValuePair_create(keyQuery_attachedMediaStringContentType, valueQuery_attachedMediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaStringContentType);
    }

    // query parameters
    char *keyQuery_attachedMediaHeight = NULL;
    char * valueQuery_attachedMediaHeight = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaHeight = 0;
    if (attachedMediaHeight)
    {
        keyQuery_attachedMediaHeight = strdup("attachedMediaHeight");
        valueQuery_attachedMediaHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_attachedMediaHeight, MAX_NUMBER_LENGTH, "%d", *attachedMediaHeight);
        keyPairQuery_attachedMediaHeight = keyValuePair_create(keyQuery_attachedMediaHeight, valueQuery_attachedMediaHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaHeight);
    }

    // query parameters
    char *keyQuery_attachedMediaWidth = NULL;
    char * valueQuery_attachedMediaWidth = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaWidth = 0;
    if (attachedMediaWidth)
    {
        keyQuery_attachedMediaWidth = strdup("attachedMediaWidth");
        valueQuery_attachedMediaWidth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_attachedMediaWidth, MAX_NUMBER_LENGTH, "%d", *attachedMediaWidth);
        keyPairQuery_attachedMediaWidth = keyValuePair_create(keyQuery_attachedMediaWidth, valueQuery_attachedMediaWidth);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaWidth);
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
    asset_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = asset_response_parseFromJSON(AssetAPIlocalVarJSON);
        cJSON_Delete(AssetAPIlocalVarJSON);
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
    if(keyQuery_collectionId){
        free(keyQuery_collectionId);
        keyQuery_collectionId = NULL;
    }
    if(keyPairQuery_collectionId){
        keyValuePair_free(keyPairQuery_collectionId);
        keyPairQuery_collectionId = NULL;
    }
    if(keyQuery_addToDefaultAlbum){
        free(keyQuery_addToDefaultAlbum);
        keyQuery_addToDefaultAlbum = NULL;
    }
    if(valueQuery_addToDefaultAlbum){
        free(valueQuery_addToDefaultAlbum);
        valueQuery_addToDefaultAlbum = NULL;
    }
    if(keyPairQuery_addToDefaultAlbum){
        keyValuePair_free(keyPairQuery_addToDefaultAlbum);
        keyPairQuery_addToDefaultAlbum = NULL;
    }
    if(keyQuery_addToMediaLibrary){
        free(keyQuery_addToMediaLibrary);
        keyQuery_addToMediaLibrary = NULL;
    }
    if(valueQuery_addToMediaLibrary){
        free(valueQuery_addToMediaLibrary);
        valueQuery_addToMediaLibrary = NULL;
    }
    if(keyPairQuery_addToMediaLibrary){
        keyValuePair_free(keyPairQuery_addToMediaLibrary);
        keyPairQuery_addToMediaLibrary = NULL;
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
    if(keyQuery_versionName){
        free(keyQuery_versionName);
        keyQuery_versionName = NULL;
    }
    if(valueQuery_versionName){
        free(valueQuery_versionName);
        valueQuery_versionName = NULL;
    }
    if(keyPairQuery_versionName){
        keyValuePair_free(keyPairQuery_versionName);
        keyPairQuery_versionName = NULL;
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
    if(keyQuery_caption){
        free(keyQuery_caption);
        keyQuery_caption = NULL;
    }
    if(valueQuery_caption){
        free(valueQuery_caption);
        valueQuery_caption = NULL;
    }
    if(keyPairQuery_caption){
        keyValuePair_free(keyPairQuery_caption);
        keyPairQuery_caption = NULL;
    }
    if(keyQuery_assetType){
        free(keyQuery_assetType);
        keyQuery_assetType = NULL;
    }
    if(valueQuery_assetType){
        free(valueQuery_assetType);
        valueQuery_assetType = NULL;
    }
    if(keyPairQuery_assetType){
        keyValuePair_free(keyPairQuery_assetType);
        keyPairQuery_assetType = NULL;
    }
    if(keyQuery_approvalStatus){
        free(keyQuery_approvalStatus);
        keyQuery_approvalStatus = NULL;
    }
    if(valueQuery_approvalStatus){
        free(valueQuery_approvalStatus);
        valueQuery_approvalStatus = NULL;
    }
    if(keyPairQuery_approvalStatus){
        keyValuePair_free(keyPairQuery_approvalStatus);
        keyPairQuery_approvalStatus = NULL;
    }
    if(keyQuery_assignedAccountId){
        free(keyQuery_assignedAccountId);
        keyQuery_assignedAccountId = NULL;
    }
    if(keyPairQuery_assignedAccountId){
        keyValuePair_free(keyPairQuery_assignedAccountId);
        keyPairQuery_assignedAccountId = NULL;
    }
    if(keyQuery_media){
        free(keyQuery_media);
        keyQuery_media = NULL;
    }
    if(keyPairQuery_media){
        keyValuePair_free(keyPairQuery_media);
        keyPairQuery_media = NULL;
    }
    if(keyQuery_mediaUrl){
        free(keyQuery_mediaUrl);
        keyQuery_mediaUrl = NULL;
    }
    if(valueQuery_mediaUrl){
        free(valueQuery_mediaUrl);
        valueQuery_mediaUrl = NULL;
    }
    if(keyPairQuery_mediaUrl){
        keyValuePair_free(keyPairQuery_mediaUrl);
        keyPairQuery_mediaUrl = NULL;
    }
    if(keyQuery_mediaString){
        free(keyQuery_mediaString);
        keyQuery_mediaString = NULL;
    }
    if(valueQuery_mediaString){
        free(valueQuery_mediaString);
        valueQuery_mediaString = NULL;
    }
    if(keyPairQuery_mediaString){
        keyValuePair_free(keyPairQuery_mediaString);
        keyPairQuery_mediaString = NULL;
    }
    if(keyQuery_mediaStringFileName){
        free(keyQuery_mediaStringFileName);
        keyQuery_mediaStringFileName = NULL;
    }
    if(valueQuery_mediaStringFileName){
        free(valueQuery_mediaStringFileName);
        valueQuery_mediaStringFileName = NULL;
    }
    if(keyPairQuery_mediaStringFileName){
        keyValuePair_free(keyPairQuery_mediaStringFileName);
        keyPairQuery_mediaStringFileName = NULL;
    }
    if(keyQuery_mediaStringContentType){
        free(keyQuery_mediaStringContentType);
        keyQuery_mediaStringContentType = NULL;
    }
    if(valueQuery_mediaStringContentType){
        free(valueQuery_mediaStringContentType);
        valueQuery_mediaStringContentType = NULL;
    }
    if(keyPairQuery_mediaStringContentType){
        keyValuePair_free(keyPairQuery_mediaStringContentType);
        keyPairQuery_mediaStringContentType = NULL;
    }
    if(keyQuery_mediaHeight){
        free(keyQuery_mediaHeight);
        keyQuery_mediaHeight = NULL;
    }
    if(valueQuery_mediaHeight){
        free(valueQuery_mediaHeight);
        valueQuery_mediaHeight = NULL;
    }
    if(keyPairQuery_mediaHeight){
        keyValuePair_free(keyPairQuery_mediaHeight);
        keyPairQuery_mediaHeight = NULL;
    }
    if(keyQuery_mediaWidth){
        free(keyQuery_mediaWidth);
        keyQuery_mediaWidth = NULL;
    }
    if(valueQuery_mediaWidth){
        free(valueQuery_mediaWidth);
        valueQuery_mediaWidth = NULL;
    }
    if(keyPairQuery_mediaWidth){
        keyValuePair_free(keyPairQuery_mediaWidth);
        keyPairQuery_mediaWidth = NULL;
    }
    if(keyQuery_attachedMedia){
        free(keyQuery_attachedMedia);
        keyQuery_attachedMedia = NULL;
    }
    if(keyPairQuery_attachedMedia){
        keyValuePair_free(keyPairQuery_attachedMedia);
        keyPairQuery_attachedMedia = NULL;
    }
    if(keyQuery_attachedMediaUrl){
        free(keyQuery_attachedMediaUrl);
        keyQuery_attachedMediaUrl = NULL;
    }
    if(valueQuery_attachedMediaUrl){
        free(valueQuery_attachedMediaUrl);
        valueQuery_attachedMediaUrl = NULL;
    }
    if(keyPairQuery_attachedMediaUrl){
        keyValuePair_free(keyPairQuery_attachedMediaUrl);
        keyPairQuery_attachedMediaUrl = NULL;
    }
    if(keyQuery_attachedMediaString){
        free(keyQuery_attachedMediaString);
        keyQuery_attachedMediaString = NULL;
    }
    if(valueQuery_attachedMediaString){
        free(valueQuery_attachedMediaString);
        valueQuery_attachedMediaString = NULL;
    }
    if(keyPairQuery_attachedMediaString){
        keyValuePair_free(keyPairQuery_attachedMediaString);
        keyPairQuery_attachedMediaString = NULL;
    }
    if(keyQuery_attachedMediaStringFileName){
        free(keyQuery_attachedMediaStringFileName);
        keyQuery_attachedMediaStringFileName = NULL;
    }
    if(valueQuery_attachedMediaStringFileName){
        free(valueQuery_attachedMediaStringFileName);
        valueQuery_attachedMediaStringFileName = NULL;
    }
    if(keyPairQuery_attachedMediaStringFileName){
        keyValuePair_free(keyPairQuery_attachedMediaStringFileName);
        keyPairQuery_attachedMediaStringFileName = NULL;
    }
    if(keyQuery_attachedMediaStringContentType){
        free(keyQuery_attachedMediaStringContentType);
        keyQuery_attachedMediaStringContentType = NULL;
    }
    if(valueQuery_attachedMediaStringContentType){
        free(valueQuery_attachedMediaStringContentType);
        valueQuery_attachedMediaStringContentType = NULL;
    }
    if(keyPairQuery_attachedMediaStringContentType){
        keyValuePair_free(keyPairQuery_attachedMediaStringContentType);
        keyPairQuery_attachedMediaStringContentType = NULL;
    }
    if(keyQuery_attachedMediaHeight){
        free(keyQuery_attachedMediaHeight);
        keyQuery_attachedMediaHeight = NULL;
    }
    if(valueQuery_attachedMediaHeight){
        free(valueQuery_attachedMediaHeight);
        valueQuery_attachedMediaHeight = NULL;
    }
    if(keyPairQuery_attachedMediaHeight){
        keyValuePair_free(keyPairQuery_attachedMediaHeight);
        keyPairQuery_attachedMediaHeight = NULL;
    }
    if(keyQuery_attachedMediaWidth){
        free(keyQuery_attachedMediaWidth);
        keyQuery_attachedMediaWidth = NULL;
    }
    if(valueQuery_attachedMediaWidth){
        free(valueQuery_attachedMediaWidth);
        valueQuery_attachedMediaWidth = NULL;
    }
    if(keyPairQuery_attachedMediaWidth){
        keyValuePair_free(keyPairQuery_attachedMediaWidth);
        keyPairQuery_attachedMediaWidth = NULL;
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

// Delete Asset
//
// Delete an asset.
//
sirqul_response_t*
AssetAPI_deleteAsset(apiClient_t *apiClient, char *assetId, char *deviceId, long accountId, double latitude, double longitude)
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
    char *localVarPath = strdup("/asset/delete");





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
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId = NULL;
    keyValuePair_t *keyPairQuery_assetId = 0;
    if (assetId)
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = strdup((assetId));
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
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
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AssetAPIlocalVarJSON);
        cJSON_Delete(AssetAPIlocalVarJSON);
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
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(valueQuery_assetId){
        free(valueQuery_assetId);
        valueQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
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

// Get Asset
//
// Gets the full asset response including attached likes and notes.
//
asset_full_response_t*
AssetAPI_getAsset(apiClient_t *apiClient, long assetId, char *deviceId, long accountId, int *noteDescending)
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
    char *localVarPath = strdup("/asset/get");





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
    char *keyQuery_noteDescending = NULL;
    char * valueQuery_noteDescending = NULL;
    keyValuePair_t *keyPairQuery_noteDescending = 0;
    if (noteDescending)
    {
        keyQuery_noteDescending = strdup("noteDescending");
        valueQuery_noteDescending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_noteDescending, MAX_NUMBER_LENGTH, "%d", *noteDescending);
        keyPairQuery_noteDescending = keyValuePair_create(keyQuery_noteDescending, valueQuery_noteDescending);
        list_addElement(localVarQueryParameters,keyPairQuery_noteDescending);
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
    asset_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = asset_full_response_parseFromJSON(AssetAPIlocalVarJSON);
        cJSON_Delete(AssetAPIlocalVarJSON);
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
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_noteDescending){
        free(keyQuery_noteDescending);
        keyQuery_noteDescending = NULL;
    }
    if(valueQuery_noteDescending){
        free(valueQuery_noteDescending);
        valueQuery_noteDescending = NULL;
    }
    if(keyPairQuery_noteDescending){
        keyValuePair_free(keyPairQuery_noteDescending);
        keyPairQuery_noteDescending = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Remove Asset from Collection
//
// Remove assets from collections
//
sirqul_response_t*
AssetAPI_removeAsset(apiClient_t *apiClient, char *assetId, char *deviceId, long accountId, long albumId, long collectionId, int *removeFromDefaultAlbums, double latitude, double longitude)
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
    char *localVarPath = strdup("/asset/remove");





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
    char *keyQuery_collectionId = NULL;
    char * valueQuery_collectionId ;
    keyValuePair_t *keyPairQuery_collectionId = 0;
    {
        keyQuery_collectionId = strdup("collectionId");
        valueQuery_collectionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_collectionId, MAX_NUMBER_LENGTH_LONG, "%d", collectionId);
        keyPairQuery_collectionId = keyValuePair_create(keyQuery_collectionId, valueQuery_collectionId);
        list_addElement(localVarQueryParameters,keyPairQuery_collectionId);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId = NULL;
    keyValuePair_t *keyPairQuery_assetId = 0;
    if (assetId)
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = strdup((assetId));
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
    }

    // query parameters
    char *keyQuery_removeFromDefaultAlbums = NULL;
    char * valueQuery_removeFromDefaultAlbums = NULL;
    keyValuePair_t *keyPairQuery_removeFromDefaultAlbums = 0;
    if (removeFromDefaultAlbums)
    {
        keyQuery_removeFromDefaultAlbums = strdup("removeFromDefaultAlbums");
        valueQuery_removeFromDefaultAlbums = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeFromDefaultAlbums, MAX_NUMBER_LENGTH, "%d", *removeFromDefaultAlbums);
        keyPairQuery_removeFromDefaultAlbums = keyValuePair_create(keyQuery_removeFromDefaultAlbums, valueQuery_removeFromDefaultAlbums);
        list_addElement(localVarQueryParameters,keyPairQuery_removeFromDefaultAlbums);
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
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AssetAPIlocalVarJSON);
        cJSON_Delete(AssetAPIlocalVarJSON);
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
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_collectionId){
        free(keyQuery_collectionId);
        keyQuery_collectionId = NULL;
    }
    if(keyPairQuery_collectionId){
        keyValuePair_free(keyPairQuery_collectionId);
        keyPairQuery_collectionId = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(valueQuery_assetId){
        free(valueQuery_assetId);
        valueQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_removeFromDefaultAlbums){
        free(keyQuery_removeFromDefaultAlbums);
        keyQuery_removeFromDefaultAlbums = NULL;
    }
    if(valueQuery_removeFromDefaultAlbums){
        free(valueQuery_removeFromDefaultAlbums);
        valueQuery_removeFromDefaultAlbums = NULL;
    }
    if(keyPairQuery_removeFromDefaultAlbums){
        keyValuePair_free(keyPairQuery_removeFromDefaultAlbums);
        keyPairQuery_removeFromDefaultAlbums = NULL;
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

// Search Assets
//
// Searches for assets
//
list_t*
AssetAPI_searchAssets(apiClient_t *apiClient, char *deviceId, long accountId, char *albumIds, char *assetIds, char *appKey, char *mediaType, char *mimeType, char *keyword, int *versionCode, char *versionName, long updatedSince, long updatedBefore, char *sortField, int *descending, int *searchMediaLibrary, int *filterByBillable, int *activeOnly, int *returnApp, int *start, int *limit, char *searchMode, char *assetType, char *approvalStatus, long assignedAccountId)
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
    char *localVarPath = strdup("/asset/search");





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
    char *keyQuery_assetIds = NULL;
    char * valueQuery_assetIds = NULL;
    keyValuePair_t *keyPairQuery_assetIds = 0;
    if (assetIds)
    {
        keyQuery_assetIds = strdup("assetIds");
        valueQuery_assetIds = strdup((assetIds));
        keyPairQuery_assetIds = keyValuePair_create(keyQuery_assetIds, valueQuery_assetIds);
        list_addElement(localVarQueryParameters,keyPairQuery_assetIds);
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
    char *keyQuery_mediaType = NULL;
    char * valueQuery_mediaType = NULL;
    keyValuePair_t *keyPairQuery_mediaType = 0;
    if (mediaType)
    {
        keyQuery_mediaType = strdup("mediaType");
        valueQuery_mediaType = strdup((mediaType));
        keyPairQuery_mediaType = keyValuePair_create(keyQuery_mediaType, valueQuery_mediaType);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaType);
    }

    // query parameters
    char *keyQuery_mimeType = NULL;
    char * valueQuery_mimeType = NULL;
    keyValuePair_t *keyPairQuery_mimeType = 0;
    if (mimeType)
    {
        keyQuery_mimeType = strdup("mimeType");
        valueQuery_mimeType = strdup((mimeType));
        keyPairQuery_mimeType = keyValuePair_create(keyQuery_mimeType, valueQuery_mimeType);
        list_addElement(localVarQueryParameters,keyPairQuery_mimeType);
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
    char *keyQuery_versionName = NULL;
    char * valueQuery_versionName = NULL;
    keyValuePair_t *keyPairQuery_versionName = 0;
    if (versionName)
    {
        keyQuery_versionName = strdup("versionName");
        valueQuery_versionName = strdup((versionName));
        keyPairQuery_versionName = keyValuePair_create(keyQuery_versionName, valueQuery_versionName);
        list_addElement(localVarQueryParameters,keyPairQuery_versionName);
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
    char *keyQuery_searchMediaLibrary = NULL;
    char * valueQuery_searchMediaLibrary = NULL;
    keyValuePair_t *keyPairQuery_searchMediaLibrary = 0;
    if (searchMediaLibrary)
    {
        keyQuery_searchMediaLibrary = strdup("searchMediaLibrary");
        valueQuery_searchMediaLibrary = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_searchMediaLibrary, MAX_NUMBER_LENGTH, "%d", *searchMediaLibrary);
        keyPairQuery_searchMediaLibrary = keyValuePair_create(keyQuery_searchMediaLibrary, valueQuery_searchMediaLibrary);
        list_addElement(localVarQueryParameters,keyPairQuery_searchMediaLibrary);
    }

    // query parameters
    char *keyQuery_filterByBillable = NULL;
    char * valueQuery_filterByBillable = NULL;
    keyValuePair_t *keyPairQuery_filterByBillable = 0;
    if (filterByBillable)
    {
        keyQuery_filterByBillable = strdup("filterByBillable");
        valueQuery_filterByBillable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_filterByBillable, MAX_NUMBER_LENGTH, "%d", *filterByBillable);
        keyPairQuery_filterByBillable = keyValuePair_create(keyQuery_filterByBillable, valueQuery_filterByBillable);
        list_addElement(localVarQueryParameters,keyPairQuery_filterByBillable);
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
    char *keyQuery_returnApp = NULL;
    char * valueQuery_returnApp = NULL;
    keyValuePair_t *keyPairQuery_returnApp = 0;
    if (returnApp)
    {
        keyQuery_returnApp = strdup("returnApp");
        valueQuery_returnApp = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnApp, MAX_NUMBER_LENGTH, "%d", *returnApp);
        keyPairQuery_returnApp = keyValuePair_create(keyQuery_returnApp, valueQuery_returnApp);
        list_addElement(localVarQueryParameters,keyPairQuery_returnApp);
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
    char *keyQuery_assetType = NULL;
    char * valueQuery_assetType = NULL;
    keyValuePair_t *keyPairQuery_assetType = 0;
    if (assetType)
    {
        keyQuery_assetType = strdup("assetType");
        valueQuery_assetType = strdup((assetType));
        keyPairQuery_assetType = keyValuePair_create(keyQuery_assetType, valueQuery_assetType);
        list_addElement(localVarQueryParameters,keyPairQuery_assetType);
    }

    // query parameters
    char *keyQuery_approvalStatus = NULL;
    char * valueQuery_approvalStatus = NULL;
    keyValuePair_t *keyPairQuery_approvalStatus = 0;
    if (approvalStatus)
    {
        keyQuery_approvalStatus = strdup("approvalStatus");
        valueQuery_approvalStatus = strdup((approvalStatus));
        keyPairQuery_approvalStatus = keyValuePair_create(keyQuery_approvalStatus, valueQuery_approvalStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_approvalStatus);
    }

    // query parameters
    char *keyQuery_assignedAccountId = NULL;
    char * valueQuery_assignedAccountId ;
    keyValuePair_t *keyPairQuery_assignedAccountId = 0;
    {
        keyQuery_assignedAccountId = strdup("assignedAccountId");
        valueQuery_assignedAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignedAccountId, MAX_NUMBER_LENGTH_LONG, "%d", assignedAccountId);
        keyPairQuery_assignedAccountId = keyValuePair_create(keyQuery_assignedAccountId, valueQuery_assignedAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignedAccountId);
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
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(AssetAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, AssetAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( AssetAPIlocalVarJSON);
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
    if(keyQuery_assetIds){
        free(keyQuery_assetIds);
        keyQuery_assetIds = NULL;
    }
    if(valueQuery_assetIds){
        free(valueQuery_assetIds);
        valueQuery_assetIds = NULL;
    }
    if(keyPairQuery_assetIds){
        keyValuePair_free(keyPairQuery_assetIds);
        keyPairQuery_assetIds = NULL;
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
    if(keyQuery_mediaType){
        free(keyQuery_mediaType);
        keyQuery_mediaType = NULL;
    }
    if(valueQuery_mediaType){
        free(valueQuery_mediaType);
        valueQuery_mediaType = NULL;
    }
    if(keyPairQuery_mediaType){
        keyValuePair_free(keyPairQuery_mediaType);
        keyPairQuery_mediaType = NULL;
    }
    if(keyQuery_mimeType){
        free(keyQuery_mimeType);
        keyQuery_mimeType = NULL;
    }
    if(valueQuery_mimeType){
        free(valueQuery_mimeType);
        valueQuery_mimeType = NULL;
    }
    if(keyPairQuery_mimeType){
        keyValuePair_free(keyPairQuery_mimeType);
        keyPairQuery_mimeType = NULL;
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
    if(keyQuery_versionName){
        free(keyQuery_versionName);
        keyQuery_versionName = NULL;
    }
    if(valueQuery_versionName){
        free(valueQuery_versionName);
        valueQuery_versionName = NULL;
    }
    if(keyPairQuery_versionName){
        keyValuePair_free(keyPairQuery_versionName);
        keyPairQuery_versionName = NULL;
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
    if(keyQuery_searchMediaLibrary){
        free(keyQuery_searchMediaLibrary);
        keyQuery_searchMediaLibrary = NULL;
    }
    if(valueQuery_searchMediaLibrary){
        free(valueQuery_searchMediaLibrary);
        valueQuery_searchMediaLibrary = NULL;
    }
    if(keyPairQuery_searchMediaLibrary){
        keyValuePair_free(keyPairQuery_searchMediaLibrary);
        keyPairQuery_searchMediaLibrary = NULL;
    }
    if(keyQuery_filterByBillable){
        free(keyQuery_filterByBillable);
        keyQuery_filterByBillable = NULL;
    }
    if(valueQuery_filterByBillable){
        free(valueQuery_filterByBillable);
        valueQuery_filterByBillable = NULL;
    }
    if(keyPairQuery_filterByBillable){
        keyValuePair_free(keyPairQuery_filterByBillable);
        keyPairQuery_filterByBillable = NULL;
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
    if(keyQuery_returnApp){
        free(keyQuery_returnApp);
        keyQuery_returnApp = NULL;
    }
    if(valueQuery_returnApp){
        free(valueQuery_returnApp);
        valueQuery_returnApp = NULL;
    }
    if(keyPairQuery_returnApp){
        keyValuePair_free(keyPairQuery_returnApp);
        keyPairQuery_returnApp = NULL;
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
    if(keyQuery_assetType){
        free(keyQuery_assetType);
        keyQuery_assetType = NULL;
    }
    if(valueQuery_assetType){
        free(valueQuery_assetType);
        valueQuery_assetType = NULL;
    }
    if(keyPairQuery_assetType){
        keyValuePair_free(keyPairQuery_assetType);
        keyPairQuery_assetType = NULL;
    }
    if(keyQuery_approvalStatus){
        free(keyQuery_approvalStatus);
        keyQuery_approvalStatus = NULL;
    }
    if(valueQuery_approvalStatus){
        free(valueQuery_approvalStatus);
        valueQuery_approvalStatus = NULL;
    }
    if(keyPairQuery_approvalStatus){
        keyValuePair_free(keyPairQuery_approvalStatus);
        keyPairQuery_approvalStatus = NULL;
    }
    if(keyQuery_assignedAccountId){
        free(keyQuery_assignedAccountId);
        keyQuery_assignedAccountId = NULL;
    }
    if(keyPairQuery_assignedAccountId){
        keyValuePair_free(keyPairQuery_assignedAccountId);
        keyPairQuery_assignedAccountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Asset
//
// Updates an asset's meta data. If an album reference is passed in, the participants with write permissions are allowed to edit the asset. Otherwise, only the asset up-loader has permission to edit the data.
//
sirqul_response_t*
AssetAPI_updateAsset(apiClient_t *apiClient, long assetId, char *deviceId, long accountId, long albumId, long attachedAssetId, int *versionCode, char *versionName, char *metaData, char *caption, char *assetType, char *approvalStatus, long assignedAccountId, binary_t* media, char *mediaUrl, char *mediaString, char *mediaStringFileName, char *mediaStringContentType, int *mediaHeight, int *mediaWidth, binary_t* attachedMedia, char *attachedMediaUrl, char *attachedMediaString, char *attachedMediaStringFileName, char *attachedMediaStringContentType, int *attachedMediaHeight, int *attachedMediaWidth, char *locationDescription, char *searchTags, char *appKey, double latitude, double longitude)
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
    char *localVarPath = strdup("/asset/update");





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
    char *keyQuery_attachedAssetId = NULL;
    char * valueQuery_attachedAssetId ;
    keyValuePair_t *keyPairQuery_attachedAssetId = 0;
    {
        keyQuery_attachedAssetId = strdup("attachedAssetId");
        valueQuery_attachedAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_attachedAssetId, MAX_NUMBER_LENGTH_LONG, "%d", attachedAssetId);
        keyPairQuery_attachedAssetId = keyValuePair_create(keyQuery_attachedAssetId, valueQuery_attachedAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedAssetId);
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
    char *keyQuery_versionName = NULL;
    char * valueQuery_versionName = NULL;
    keyValuePair_t *keyPairQuery_versionName = 0;
    if (versionName)
    {
        keyQuery_versionName = strdup("versionName");
        valueQuery_versionName = strdup((versionName));
        keyPairQuery_versionName = keyValuePair_create(keyQuery_versionName, valueQuery_versionName);
        list_addElement(localVarQueryParameters,keyPairQuery_versionName);
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
    char *keyQuery_caption = NULL;
    char * valueQuery_caption = NULL;
    keyValuePair_t *keyPairQuery_caption = 0;
    if (caption)
    {
        keyQuery_caption = strdup("caption");
        valueQuery_caption = strdup((caption));
        keyPairQuery_caption = keyValuePair_create(keyQuery_caption, valueQuery_caption);
        list_addElement(localVarQueryParameters,keyPairQuery_caption);
    }

    // query parameters
    char *keyQuery_assetType = NULL;
    char * valueQuery_assetType = NULL;
    keyValuePair_t *keyPairQuery_assetType = 0;
    if (assetType)
    {
        keyQuery_assetType = strdup("assetType");
        valueQuery_assetType = strdup((assetType));
        keyPairQuery_assetType = keyValuePair_create(keyQuery_assetType, valueQuery_assetType);
        list_addElement(localVarQueryParameters,keyPairQuery_assetType);
    }

    // query parameters
    char *keyQuery_approvalStatus = NULL;
    char * valueQuery_approvalStatus = NULL;
    keyValuePair_t *keyPairQuery_approvalStatus = 0;
    if (approvalStatus)
    {
        keyQuery_approvalStatus = strdup("approvalStatus");
        valueQuery_approvalStatus = strdup((approvalStatus));
        keyPairQuery_approvalStatus = keyValuePair_create(keyQuery_approvalStatus, valueQuery_approvalStatus);
        list_addElement(localVarQueryParameters,keyPairQuery_approvalStatus);
    }

    // query parameters
    char *keyQuery_assignedAccountId = NULL;
    char * valueQuery_assignedAccountId ;
    keyValuePair_t *keyPairQuery_assignedAccountId = 0;
    {
        keyQuery_assignedAccountId = strdup("assignedAccountId");
        valueQuery_assignedAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assignedAccountId, MAX_NUMBER_LENGTH_LONG, "%d", assignedAccountId);
        keyPairQuery_assignedAccountId = keyValuePair_create(keyQuery_assignedAccountId, valueQuery_assignedAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignedAccountId);
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
    char *keyQuery_mediaUrl = NULL;
    char * valueQuery_mediaUrl = NULL;
    keyValuePair_t *keyPairQuery_mediaUrl = 0;
    if (mediaUrl)
    {
        keyQuery_mediaUrl = strdup("mediaUrl");
        valueQuery_mediaUrl = strdup((mediaUrl));
        keyPairQuery_mediaUrl = keyValuePair_create(keyQuery_mediaUrl, valueQuery_mediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaUrl);
    }

    // query parameters
    char *keyQuery_mediaString = NULL;
    char * valueQuery_mediaString = NULL;
    keyValuePair_t *keyPairQuery_mediaString = 0;
    if (mediaString)
    {
        keyQuery_mediaString = strdup("mediaString");
        valueQuery_mediaString = strdup((mediaString));
        keyPairQuery_mediaString = keyValuePair_create(keyQuery_mediaString, valueQuery_mediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaString);
    }

    // query parameters
    char *keyQuery_mediaStringFileName = NULL;
    char * valueQuery_mediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_mediaStringFileName = 0;
    if (mediaStringFileName)
    {
        keyQuery_mediaStringFileName = strdup("mediaStringFileName");
        valueQuery_mediaStringFileName = strdup((mediaStringFileName));
        keyPairQuery_mediaStringFileName = keyValuePair_create(keyQuery_mediaStringFileName, valueQuery_mediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaStringFileName);
    }

    // query parameters
    char *keyQuery_mediaStringContentType = NULL;
    char * valueQuery_mediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_mediaStringContentType = 0;
    if (mediaStringContentType)
    {
        keyQuery_mediaStringContentType = strdup("mediaStringContentType");
        valueQuery_mediaStringContentType = strdup((mediaStringContentType));
        keyPairQuery_mediaStringContentType = keyValuePair_create(keyQuery_mediaStringContentType, valueQuery_mediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaStringContentType);
    }

    // query parameters
    char *keyQuery_mediaHeight = NULL;
    char * valueQuery_mediaHeight = NULL;
    keyValuePair_t *keyPairQuery_mediaHeight = 0;
    if (mediaHeight)
    {
        keyQuery_mediaHeight = strdup("mediaHeight");
        valueQuery_mediaHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_mediaHeight, MAX_NUMBER_LENGTH, "%d", *mediaHeight);
        keyPairQuery_mediaHeight = keyValuePair_create(keyQuery_mediaHeight, valueQuery_mediaHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaHeight);
    }

    // query parameters
    char *keyQuery_mediaWidth = NULL;
    char * valueQuery_mediaWidth = NULL;
    keyValuePair_t *keyPairQuery_mediaWidth = 0;
    if (mediaWidth)
    {
        keyQuery_mediaWidth = strdup("mediaWidth");
        valueQuery_mediaWidth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_mediaWidth, MAX_NUMBER_LENGTH, "%d", *mediaWidth);
        keyPairQuery_mediaWidth = keyValuePair_create(keyQuery_mediaWidth, valueQuery_mediaWidth);
        list_addElement(localVarQueryParameters,keyPairQuery_mediaWidth);
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
    char *keyQuery_attachedMediaUrl = NULL;
    char * valueQuery_attachedMediaUrl = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaUrl = 0;
    if (attachedMediaUrl)
    {
        keyQuery_attachedMediaUrl = strdup("attachedMediaUrl");
        valueQuery_attachedMediaUrl = strdup((attachedMediaUrl));
        keyPairQuery_attachedMediaUrl = keyValuePair_create(keyQuery_attachedMediaUrl, valueQuery_attachedMediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaUrl);
    }

    // query parameters
    char *keyQuery_attachedMediaString = NULL;
    char * valueQuery_attachedMediaString = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaString = 0;
    if (attachedMediaString)
    {
        keyQuery_attachedMediaString = strdup("attachedMediaString");
        valueQuery_attachedMediaString = strdup((attachedMediaString));
        keyPairQuery_attachedMediaString = keyValuePair_create(keyQuery_attachedMediaString, valueQuery_attachedMediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaString);
    }

    // query parameters
    char *keyQuery_attachedMediaStringFileName = NULL;
    char * valueQuery_attachedMediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaStringFileName = 0;
    if (attachedMediaStringFileName)
    {
        keyQuery_attachedMediaStringFileName = strdup("attachedMediaStringFileName");
        valueQuery_attachedMediaStringFileName = strdup((attachedMediaStringFileName));
        keyPairQuery_attachedMediaStringFileName = keyValuePair_create(keyQuery_attachedMediaStringFileName, valueQuery_attachedMediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaStringFileName);
    }

    // query parameters
    char *keyQuery_attachedMediaStringContentType = NULL;
    char * valueQuery_attachedMediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaStringContentType = 0;
    if (attachedMediaStringContentType)
    {
        keyQuery_attachedMediaStringContentType = strdup("attachedMediaStringContentType");
        valueQuery_attachedMediaStringContentType = strdup((attachedMediaStringContentType));
        keyPairQuery_attachedMediaStringContentType = keyValuePair_create(keyQuery_attachedMediaStringContentType, valueQuery_attachedMediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaStringContentType);
    }

    // query parameters
    char *keyQuery_attachedMediaHeight = NULL;
    char * valueQuery_attachedMediaHeight = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaHeight = 0;
    if (attachedMediaHeight)
    {
        keyQuery_attachedMediaHeight = strdup("attachedMediaHeight");
        valueQuery_attachedMediaHeight = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_attachedMediaHeight, MAX_NUMBER_LENGTH, "%d", *attachedMediaHeight);
        keyPairQuery_attachedMediaHeight = keyValuePair_create(keyQuery_attachedMediaHeight, valueQuery_attachedMediaHeight);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaHeight);
    }

    // query parameters
    char *keyQuery_attachedMediaWidth = NULL;
    char * valueQuery_attachedMediaWidth = NULL;
    keyValuePair_t *keyPairQuery_attachedMediaWidth = 0;
    if (attachedMediaWidth)
    {
        keyQuery_attachedMediaWidth = strdup("attachedMediaWidth");
        valueQuery_attachedMediaWidth = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_attachedMediaWidth, MAX_NUMBER_LENGTH, "%d", *attachedMediaWidth);
        keyPairQuery_attachedMediaWidth = keyValuePair_create(keyQuery_attachedMediaWidth, valueQuery_attachedMediaWidth);
        list_addElement(localVarQueryParameters,keyPairQuery_attachedMediaWidth);
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
        cJSON *AssetAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(AssetAPIlocalVarJSON);
        cJSON_Delete(AssetAPIlocalVarJSON);
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
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_albumId){
        free(keyQuery_albumId);
        keyQuery_albumId = NULL;
    }
    if(keyPairQuery_albumId){
        keyValuePair_free(keyPairQuery_albumId);
        keyPairQuery_albumId = NULL;
    }
    if(keyQuery_attachedAssetId){
        free(keyQuery_attachedAssetId);
        keyQuery_attachedAssetId = NULL;
    }
    if(keyPairQuery_attachedAssetId){
        keyValuePair_free(keyPairQuery_attachedAssetId);
        keyPairQuery_attachedAssetId = NULL;
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
    if(keyQuery_versionName){
        free(keyQuery_versionName);
        keyQuery_versionName = NULL;
    }
    if(valueQuery_versionName){
        free(valueQuery_versionName);
        valueQuery_versionName = NULL;
    }
    if(keyPairQuery_versionName){
        keyValuePair_free(keyPairQuery_versionName);
        keyPairQuery_versionName = NULL;
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
    if(keyQuery_caption){
        free(keyQuery_caption);
        keyQuery_caption = NULL;
    }
    if(valueQuery_caption){
        free(valueQuery_caption);
        valueQuery_caption = NULL;
    }
    if(keyPairQuery_caption){
        keyValuePair_free(keyPairQuery_caption);
        keyPairQuery_caption = NULL;
    }
    if(keyQuery_assetType){
        free(keyQuery_assetType);
        keyQuery_assetType = NULL;
    }
    if(valueQuery_assetType){
        free(valueQuery_assetType);
        valueQuery_assetType = NULL;
    }
    if(keyPairQuery_assetType){
        keyValuePair_free(keyPairQuery_assetType);
        keyPairQuery_assetType = NULL;
    }
    if(keyQuery_approvalStatus){
        free(keyQuery_approvalStatus);
        keyQuery_approvalStatus = NULL;
    }
    if(valueQuery_approvalStatus){
        free(valueQuery_approvalStatus);
        valueQuery_approvalStatus = NULL;
    }
    if(keyPairQuery_approvalStatus){
        keyValuePair_free(keyPairQuery_approvalStatus);
        keyPairQuery_approvalStatus = NULL;
    }
    if(keyQuery_assignedAccountId){
        free(keyQuery_assignedAccountId);
        keyQuery_assignedAccountId = NULL;
    }
    if(keyPairQuery_assignedAccountId){
        keyValuePair_free(keyPairQuery_assignedAccountId);
        keyPairQuery_assignedAccountId = NULL;
    }
    if(keyQuery_media){
        free(keyQuery_media);
        keyQuery_media = NULL;
    }
    if(keyPairQuery_media){
        keyValuePair_free(keyPairQuery_media);
        keyPairQuery_media = NULL;
    }
    if(keyQuery_mediaUrl){
        free(keyQuery_mediaUrl);
        keyQuery_mediaUrl = NULL;
    }
    if(valueQuery_mediaUrl){
        free(valueQuery_mediaUrl);
        valueQuery_mediaUrl = NULL;
    }
    if(keyPairQuery_mediaUrl){
        keyValuePair_free(keyPairQuery_mediaUrl);
        keyPairQuery_mediaUrl = NULL;
    }
    if(keyQuery_mediaString){
        free(keyQuery_mediaString);
        keyQuery_mediaString = NULL;
    }
    if(valueQuery_mediaString){
        free(valueQuery_mediaString);
        valueQuery_mediaString = NULL;
    }
    if(keyPairQuery_mediaString){
        keyValuePair_free(keyPairQuery_mediaString);
        keyPairQuery_mediaString = NULL;
    }
    if(keyQuery_mediaStringFileName){
        free(keyQuery_mediaStringFileName);
        keyQuery_mediaStringFileName = NULL;
    }
    if(valueQuery_mediaStringFileName){
        free(valueQuery_mediaStringFileName);
        valueQuery_mediaStringFileName = NULL;
    }
    if(keyPairQuery_mediaStringFileName){
        keyValuePair_free(keyPairQuery_mediaStringFileName);
        keyPairQuery_mediaStringFileName = NULL;
    }
    if(keyQuery_mediaStringContentType){
        free(keyQuery_mediaStringContentType);
        keyQuery_mediaStringContentType = NULL;
    }
    if(valueQuery_mediaStringContentType){
        free(valueQuery_mediaStringContentType);
        valueQuery_mediaStringContentType = NULL;
    }
    if(keyPairQuery_mediaStringContentType){
        keyValuePair_free(keyPairQuery_mediaStringContentType);
        keyPairQuery_mediaStringContentType = NULL;
    }
    if(keyQuery_mediaHeight){
        free(keyQuery_mediaHeight);
        keyQuery_mediaHeight = NULL;
    }
    if(valueQuery_mediaHeight){
        free(valueQuery_mediaHeight);
        valueQuery_mediaHeight = NULL;
    }
    if(keyPairQuery_mediaHeight){
        keyValuePair_free(keyPairQuery_mediaHeight);
        keyPairQuery_mediaHeight = NULL;
    }
    if(keyQuery_mediaWidth){
        free(keyQuery_mediaWidth);
        keyQuery_mediaWidth = NULL;
    }
    if(valueQuery_mediaWidth){
        free(valueQuery_mediaWidth);
        valueQuery_mediaWidth = NULL;
    }
    if(keyPairQuery_mediaWidth){
        keyValuePair_free(keyPairQuery_mediaWidth);
        keyPairQuery_mediaWidth = NULL;
    }
    if(keyQuery_attachedMedia){
        free(keyQuery_attachedMedia);
        keyQuery_attachedMedia = NULL;
    }
    if(keyPairQuery_attachedMedia){
        keyValuePair_free(keyPairQuery_attachedMedia);
        keyPairQuery_attachedMedia = NULL;
    }
    if(keyQuery_attachedMediaUrl){
        free(keyQuery_attachedMediaUrl);
        keyQuery_attachedMediaUrl = NULL;
    }
    if(valueQuery_attachedMediaUrl){
        free(valueQuery_attachedMediaUrl);
        valueQuery_attachedMediaUrl = NULL;
    }
    if(keyPairQuery_attachedMediaUrl){
        keyValuePair_free(keyPairQuery_attachedMediaUrl);
        keyPairQuery_attachedMediaUrl = NULL;
    }
    if(keyQuery_attachedMediaString){
        free(keyQuery_attachedMediaString);
        keyQuery_attachedMediaString = NULL;
    }
    if(valueQuery_attachedMediaString){
        free(valueQuery_attachedMediaString);
        valueQuery_attachedMediaString = NULL;
    }
    if(keyPairQuery_attachedMediaString){
        keyValuePair_free(keyPairQuery_attachedMediaString);
        keyPairQuery_attachedMediaString = NULL;
    }
    if(keyQuery_attachedMediaStringFileName){
        free(keyQuery_attachedMediaStringFileName);
        keyQuery_attachedMediaStringFileName = NULL;
    }
    if(valueQuery_attachedMediaStringFileName){
        free(valueQuery_attachedMediaStringFileName);
        valueQuery_attachedMediaStringFileName = NULL;
    }
    if(keyPairQuery_attachedMediaStringFileName){
        keyValuePair_free(keyPairQuery_attachedMediaStringFileName);
        keyPairQuery_attachedMediaStringFileName = NULL;
    }
    if(keyQuery_attachedMediaStringContentType){
        free(keyQuery_attachedMediaStringContentType);
        keyQuery_attachedMediaStringContentType = NULL;
    }
    if(valueQuery_attachedMediaStringContentType){
        free(valueQuery_attachedMediaStringContentType);
        valueQuery_attachedMediaStringContentType = NULL;
    }
    if(keyPairQuery_attachedMediaStringContentType){
        keyValuePair_free(keyPairQuery_attachedMediaStringContentType);
        keyPairQuery_attachedMediaStringContentType = NULL;
    }
    if(keyQuery_attachedMediaHeight){
        free(keyQuery_attachedMediaHeight);
        keyQuery_attachedMediaHeight = NULL;
    }
    if(valueQuery_attachedMediaHeight){
        free(valueQuery_attachedMediaHeight);
        valueQuery_attachedMediaHeight = NULL;
    }
    if(keyPairQuery_attachedMediaHeight){
        keyValuePair_free(keyPairQuery_attachedMediaHeight);
        keyPairQuery_attachedMediaHeight = NULL;
    }
    if(keyQuery_attachedMediaWidth){
        free(keyQuery_attachedMediaWidth);
        keyQuery_attachedMediaWidth = NULL;
    }
    if(valueQuery_attachedMediaWidth){
        free(valueQuery_attachedMediaWidth);
        valueQuery_attachedMediaWidth = NULL;
    }
    if(keyPairQuery_attachedMediaWidth){
        keyValuePair_free(keyPairQuery_attachedMediaWidth);
        keyPairQuery_attachedMediaWidth = NULL;
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

