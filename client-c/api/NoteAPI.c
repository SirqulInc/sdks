#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "NoteAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for NoteAPI_searchNotes

static char* searchNotes_SORTFIELD_ToString(sirqul_iot_platform_searchNotes_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OWNER_DISPLAY", "NOTABLE_TYPE", "NOTE_TAG", "NOTE_COUNT", "LIKES", "DISLIKES" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchNotes_sortField_e searchNotes_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "OWNER_DISPLAY", "NOTABLE_TYPE", "NOTE_TAG", "NOTE_COUNT", "LIKES", "DISLIKES" };
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
// Function searchNotes_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchNotes_SORTFIELD_convertToJSON(sirqul_iot_platform_searchNotes_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchNotes_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchNotes_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchNotes_sortField_e searchNotes_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchNotes_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchNotes_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Batch Note Operation
//
// Perform a batch operation on notes for a notable object (for example: DELETE_ALL_NOTES_IN_NOTABLE). 
//
sirqul_response_t*
NoteAPI_batchOperation(apiClient_t *apiClient, long notableId, char *notableType, char *deviceId, long accountId, char *batchOperation)
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
    char *localVarPath = strdup("/note/batch");





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
    char *keyQuery_notableId = NULL;
    char * valueQuery_notableId ;
    keyValuePair_t *keyPairQuery_notableId = 0;
    {
        keyQuery_notableId = strdup("notableId");
        valueQuery_notableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_notableId, MAX_NUMBER_LENGTH_LONG, "%d", notableId);
        keyPairQuery_notableId = keyValuePair_create(keyQuery_notableId, valueQuery_notableId);
        list_addElement(localVarQueryParameters,keyPairQuery_notableId);
    }

    // query parameters
    char *keyQuery_notableType = NULL;
    char * valueQuery_notableType = NULL;
    keyValuePair_t *keyPairQuery_notableType = 0;
    if (notableType)
    {
        keyQuery_notableType = strdup("notableType");
        valueQuery_notableType = strdup((notableType));
        keyPairQuery_notableType = keyValuePair_create(keyQuery_notableType, valueQuery_notableType);
        list_addElement(localVarQueryParameters,keyPairQuery_notableType);
    }

    // query parameters
    char *keyQuery_batchOperation = NULL;
    char * valueQuery_batchOperation = NULL;
    keyValuePair_t *keyPairQuery_batchOperation = 0;
    if (batchOperation)
    {
        keyQuery_batchOperation = strdup("batchOperation");
        valueQuery_batchOperation = strdup((batchOperation));
        keyPairQuery_batchOperation = keyValuePair_create(keyQuery_batchOperation, valueQuery_batchOperation);
        list_addElement(localVarQueryParameters,keyPairQuery_batchOperation);
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
        cJSON *NoteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(NoteAPIlocalVarJSON);
        cJSON_Delete(NoteAPIlocalVarJSON);
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
    if(keyQuery_notableId){
        free(keyQuery_notableId);
        keyQuery_notableId = NULL;
    }
    if(keyPairQuery_notableId){
        keyValuePair_free(keyPairQuery_notableId);
        keyPairQuery_notableId = NULL;
    }
    if(keyQuery_notableType){
        free(keyQuery_notableType);
        keyQuery_notableType = NULL;
    }
    if(valueQuery_notableType){
        free(valueQuery_notableType);
        valueQuery_notableType = NULL;
    }
    if(keyPairQuery_notableType){
        keyValuePair_free(keyPairQuery_notableType);
        keyPairQuery_notableType = NULL;
    }
    if(keyQuery_batchOperation){
        free(keyQuery_batchOperation);
        keyQuery_batchOperation = NULL;
    }
    if(valueQuery_batchOperation){
        free(valueQuery_batchOperation);
        valueQuery_batchOperation = NULL;
    }
    if(keyPairQuery_batchOperation){
        keyValuePair_free(keyPairQuery_batchOperation);
        keyPairQuery_batchOperation = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Note
//
// This is used to leave a comment (note) on a notable object (i.e. albums, album contests, assets, game levels, offers, offer locations, retailers, retailer locations, and theme descriptors). Leaving a comment on a notable object will be visiable to everyone who has access to view the object.
//
note_response_t*
NoteAPI_createNote(apiClient_t *apiClient, char *comment, char *deviceId, long accountId, char *notableType, long notableId, char *noteType, char *assetIds, char *tags, char *permissionableType, long permissionableId, char *appKey, char *locationDescription, double latitude, double longitude, char *metaData, char *receiverAccountIds, int *returnFullResponse, int *initializeAsset, int *assetReturnNulls, long assetAlbumId, long assetCollectionId, char *assetAddToDefaultAlbum, int *assetAddToMediaLibrary, int *assetVersionCode, char *assetVersionName, char *assetMetaData, char *assetCaption, binary_t* assetMedia, char *assetMediaUrl, char *assetMediaString, char *assetMediaStringFileName, char *assetMediaStringContentType, binary_t* assetAttachedMedia, char *assetAttachedMediaUrl, char *assetAttachedMediaString, char *assetAttachedMediaStringFileName, char *assetAttachedMediaStringContentType, char *assetLocationDescription, char *assetApp, char *assetSearchTags, double assetLatitude, double assetLongitude)
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
    char *localVarPath = strdup("/note/create");





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
    char *keyQuery_notableType = NULL;
    char * valueQuery_notableType = NULL;
    keyValuePair_t *keyPairQuery_notableType = 0;
    if (notableType)
    {
        keyQuery_notableType = strdup("notableType");
        valueQuery_notableType = strdup((notableType));
        keyPairQuery_notableType = keyValuePair_create(keyQuery_notableType, valueQuery_notableType);
        list_addElement(localVarQueryParameters,keyPairQuery_notableType);
    }

    // query parameters
    char *keyQuery_notableId = NULL;
    char * valueQuery_notableId ;
    keyValuePair_t *keyPairQuery_notableId = 0;
    {
        keyQuery_notableId = strdup("notableId");
        valueQuery_notableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_notableId, MAX_NUMBER_LENGTH_LONG, "%d", notableId);
        keyPairQuery_notableId = keyValuePair_create(keyQuery_notableId, valueQuery_notableId);
        list_addElement(localVarQueryParameters,keyPairQuery_notableId);
    }

    // query parameters
    char *keyQuery_comment = NULL;
    char * valueQuery_comment = NULL;
    keyValuePair_t *keyPairQuery_comment = 0;
    if (comment)
    {
        keyQuery_comment = strdup("comment");
        valueQuery_comment = strdup((comment));
        keyPairQuery_comment = keyValuePair_create(keyQuery_comment, valueQuery_comment);
        list_addElement(localVarQueryParameters,keyPairQuery_comment);
    }

    // query parameters
    char *keyQuery_noteType = NULL;
    char * valueQuery_noteType = NULL;
    keyValuePair_t *keyPairQuery_noteType = 0;
    if (noteType)
    {
        keyQuery_noteType = strdup("noteType");
        valueQuery_noteType = strdup((noteType));
        keyPairQuery_noteType = keyValuePair_create(keyQuery_noteType, valueQuery_noteType);
        list_addElement(localVarQueryParameters,keyPairQuery_noteType);
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
    char *keyQuery_permissionableType = NULL;
    char * valueQuery_permissionableType = NULL;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = strdup((permissionableType));
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, valueQuery_permissionableType);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
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
    char *keyQuery_receiverAccountIds = NULL;
    char * valueQuery_receiverAccountIds = NULL;
    keyValuePair_t *keyPairQuery_receiverAccountIds = 0;
    if (receiverAccountIds)
    {
        keyQuery_receiverAccountIds = strdup("receiverAccountIds");
        valueQuery_receiverAccountIds = strdup((receiverAccountIds));
        keyPairQuery_receiverAccountIds = keyValuePair_create(keyQuery_receiverAccountIds, valueQuery_receiverAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_receiverAccountIds);
    }

    // query parameters
    char *keyQuery_returnFullResponse = NULL;
    char * valueQuery_returnFullResponse = NULL;
    keyValuePair_t *keyPairQuery_returnFullResponse = 0;
    if (returnFullResponse)
    {
        keyQuery_returnFullResponse = strdup("returnFullResponse");
        valueQuery_returnFullResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFullResponse, MAX_NUMBER_LENGTH, "%d", *returnFullResponse);
        keyPairQuery_returnFullResponse = keyValuePair_create(keyQuery_returnFullResponse, valueQuery_returnFullResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFullResponse);
    }

    // query parameters
    char *keyQuery_initializeAsset = NULL;
    char * valueQuery_initializeAsset = NULL;
    keyValuePair_t *keyPairQuery_initializeAsset = 0;
    if (initializeAsset)
    {
        keyQuery_initializeAsset = strdup("initializeAsset");
        valueQuery_initializeAsset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_initializeAsset, MAX_NUMBER_LENGTH, "%d", *initializeAsset);
        keyPairQuery_initializeAsset = keyValuePair_create(keyQuery_initializeAsset, valueQuery_initializeAsset);
        list_addElement(localVarQueryParameters,keyPairQuery_initializeAsset);
    }

    // query parameters
    char *keyQuery_assetReturnNulls = NULL;
    char * valueQuery_assetReturnNulls = NULL;
    keyValuePair_t *keyPairQuery_assetReturnNulls = 0;
    if (assetReturnNulls)
    {
        keyQuery_assetReturnNulls = strdup("assetReturnNulls");
        valueQuery_assetReturnNulls = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetReturnNulls, MAX_NUMBER_LENGTH, "%d", *assetReturnNulls);
        keyPairQuery_assetReturnNulls = keyValuePair_create(keyQuery_assetReturnNulls, valueQuery_assetReturnNulls);
        list_addElement(localVarQueryParameters,keyPairQuery_assetReturnNulls);
    }

    // query parameters
    char *keyQuery_assetAlbumId = NULL;
    char * valueQuery_assetAlbumId ;
    keyValuePair_t *keyPairQuery_assetAlbumId = 0;
    {
        keyQuery_assetAlbumId = strdup("assetAlbumId");
        valueQuery_assetAlbumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetAlbumId, MAX_NUMBER_LENGTH_LONG, "%d", assetAlbumId);
        keyPairQuery_assetAlbumId = keyValuePair_create(keyQuery_assetAlbumId, valueQuery_assetAlbumId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAlbumId);
    }

    // query parameters
    char *keyQuery_assetCollectionId = NULL;
    char * valueQuery_assetCollectionId ;
    keyValuePair_t *keyPairQuery_assetCollectionId = 0;
    {
        keyQuery_assetCollectionId = strdup("assetCollectionId");
        valueQuery_assetCollectionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetCollectionId, MAX_NUMBER_LENGTH_LONG, "%d", assetCollectionId);
        keyPairQuery_assetCollectionId = keyValuePair_create(keyQuery_assetCollectionId, valueQuery_assetCollectionId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetCollectionId);
    }

    // query parameters
    char *keyQuery_assetAddToDefaultAlbum = NULL;
    char * valueQuery_assetAddToDefaultAlbum = NULL;
    keyValuePair_t *keyPairQuery_assetAddToDefaultAlbum = 0;
    if (assetAddToDefaultAlbum)
    {
        keyQuery_assetAddToDefaultAlbum = strdup("assetAddToDefaultAlbum");
        valueQuery_assetAddToDefaultAlbum = strdup((assetAddToDefaultAlbum));
        keyPairQuery_assetAddToDefaultAlbum = keyValuePair_create(keyQuery_assetAddToDefaultAlbum, valueQuery_assetAddToDefaultAlbum);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAddToDefaultAlbum);
    }

    // query parameters
    char *keyQuery_assetAddToMediaLibrary = NULL;
    char * valueQuery_assetAddToMediaLibrary = NULL;
    keyValuePair_t *keyPairQuery_assetAddToMediaLibrary = 0;
    if (assetAddToMediaLibrary)
    {
        keyQuery_assetAddToMediaLibrary = strdup("assetAddToMediaLibrary");
        valueQuery_assetAddToMediaLibrary = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetAddToMediaLibrary, MAX_NUMBER_LENGTH, "%d", *assetAddToMediaLibrary);
        keyPairQuery_assetAddToMediaLibrary = keyValuePair_create(keyQuery_assetAddToMediaLibrary, valueQuery_assetAddToMediaLibrary);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAddToMediaLibrary);
    }

    // query parameters
    char *keyQuery_assetVersionCode = NULL;
    char * valueQuery_assetVersionCode = NULL;
    keyValuePair_t *keyPairQuery_assetVersionCode = 0;
    if (assetVersionCode)
    {
        keyQuery_assetVersionCode = strdup("assetVersionCode");
        valueQuery_assetVersionCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetVersionCode, MAX_NUMBER_LENGTH, "%d", *assetVersionCode);
        keyPairQuery_assetVersionCode = keyValuePair_create(keyQuery_assetVersionCode, valueQuery_assetVersionCode);
        list_addElement(localVarQueryParameters,keyPairQuery_assetVersionCode);
    }

    // query parameters
    char *keyQuery_assetVersionName = NULL;
    char * valueQuery_assetVersionName = NULL;
    keyValuePair_t *keyPairQuery_assetVersionName = 0;
    if (assetVersionName)
    {
        keyQuery_assetVersionName = strdup("assetVersionName");
        valueQuery_assetVersionName = strdup((assetVersionName));
        keyPairQuery_assetVersionName = keyValuePair_create(keyQuery_assetVersionName, valueQuery_assetVersionName);
        list_addElement(localVarQueryParameters,keyPairQuery_assetVersionName);
    }

    // query parameters
    char *keyQuery_assetMetaData = NULL;
    char * valueQuery_assetMetaData = NULL;
    keyValuePair_t *keyPairQuery_assetMetaData = 0;
    if (assetMetaData)
    {
        keyQuery_assetMetaData = strdup("assetMetaData");
        valueQuery_assetMetaData = strdup((assetMetaData));
        keyPairQuery_assetMetaData = keyValuePair_create(keyQuery_assetMetaData, valueQuery_assetMetaData);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMetaData);
    }

    // query parameters
    char *keyQuery_assetCaption = NULL;
    char * valueQuery_assetCaption = NULL;
    keyValuePair_t *keyPairQuery_assetCaption = 0;
    if (assetCaption)
    {
        keyQuery_assetCaption = strdup("assetCaption");
        valueQuery_assetCaption = strdup((assetCaption));
        keyPairQuery_assetCaption = keyValuePair_create(keyQuery_assetCaption, valueQuery_assetCaption);
        list_addElement(localVarQueryParameters,keyPairQuery_assetCaption);
    }

    // query parameters
    char *keyQuery_assetMedia = NULL;
    binary_t* valueQuery_assetMedia ;
    keyValuePair_t *keyPairQuery_assetMedia = 0;
    if (assetMedia)
    {
        keyQuery_assetMedia = strdup("assetMedia");
        valueQuery_assetMedia = (assetMedia);
        keyPairQuery_assetMedia = keyValuePair_create(keyQuery_assetMedia, &valueQuery_assetMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMedia);
    }

    // query parameters
    char *keyQuery_assetMediaUrl = NULL;
    char * valueQuery_assetMediaUrl = NULL;
    keyValuePair_t *keyPairQuery_assetMediaUrl = 0;
    if (assetMediaUrl)
    {
        keyQuery_assetMediaUrl = strdup("assetMediaUrl");
        valueQuery_assetMediaUrl = strdup((assetMediaUrl));
        keyPairQuery_assetMediaUrl = keyValuePair_create(keyQuery_assetMediaUrl, valueQuery_assetMediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaUrl);
    }

    // query parameters
    char *keyQuery_assetMediaString = NULL;
    char * valueQuery_assetMediaString = NULL;
    keyValuePair_t *keyPairQuery_assetMediaString = 0;
    if (assetMediaString)
    {
        keyQuery_assetMediaString = strdup("assetMediaString");
        valueQuery_assetMediaString = strdup((assetMediaString));
        keyPairQuery_assetMediaString = keyValuePair_create(keyQuery_assetMediaString, valueQuery_assetMediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaString);
    }

    // query parameters
    char *keyQuery_assetMediaStringFileName = NULL;
    char * valueQuery_assetMediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_assetMediaStringFileName = 0;
    if (assetMediaStringFileName)
    {
        keyQuery_assetMediaStringFileName = strdup("assetMediaStringFileName");
        valueQuery_assetMediaStringFileName = strdup((assetMediaStringFileName));
        keyPairQuery_assetMediaStringFileName = keyValuePair_create(keyQuery_assetMediaStringFileName, valueQuery_assetMediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaStringFileName);
    }

    // query parameters
    char *keyQuery_assetMediaStringContentType = NULL;
    char * valueQuery_assetMediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_assetMediaStringContentType = 0;
    if (assetMediaStringContentType)
    {
        keyQuery_assetMediaStringContentType = strdup("assetMediaStringContentType");
        valueQuery_assetMediaStringContentType = strdup((assetMediaStringContentType));
        keyPairQuery_assetMediaStringContentType = keyValuePair_create(keyQuery_assetMediaStringContentType, valueQuery_assetMediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaStringContentType);
    }

    // query parameters
    char *keyQuery_assetAttachedMedia = NULL;
    binary_t* valueQuery_assetAttachedMedia ;
    keyValuePair_t *keyPairQuery_assetAttachedMedia = 0;
    if (assetAttachedMedia)
    {
        keyQuery_assetAttachedMedia = strdup("assetAttachedMedia");
        valueQuery_assetAttachedMedia = (assetAttachedMedia);
        keyPairQuery_assetAttachedMedia = keyValuePair_create(keyQuery_assetAttachedMedia, &valueQuery_assetAttachedMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMedia);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaUrl = NULL;
    char * valueQuery_assetAttachedMediaUrl = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaUrl = 0;
    if (assetAttachedMediaUrl)
    {
        keyQuery_assetAttachedMediaUrl = strdup("assetAttachedMediaUrl");
        valueQuery_assetAttachedMediaUrl = strdup((assetAttachedMediaUrl));
        keyPairQuery_assetAttachedMediaUrl = keyValuePair_create(keyQuery_assetAttachedMediaUrl, valueQuery_assetAttachedMediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaUrl);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaString = NULL;
    char * valueQuery_assetAttachedMediaString = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaString = 0;
    if (assetAttachedMediaString)
    {
        keyQuery_assetAttachedMediaString = strdup("assetAttachedMediaString");
        valueQuery_assetAttachedMediaString = strdup((assetAttachedMediaString));
        keyPairQuery_assetAttachedMediaString = keyValuePair_create(keyQuery_assetAttachedMediaString, valueQuery_assetAttachedMediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaString);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaStringFileName = NULL;
    char * valueQuery_assetAttachedMediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaStringFileName = 0;
    if (assetAttachedMediaStringFileName)
    {
        keyQuery_assetAttachedMediaStringFileName = strdup("assetAttachedMediaStringFileName");
        valueQuery_assetAttachedMediaStringFileName = strdup((assetAttachedMediaStringFileName));
        keyPairQuery_assetAttachedMediaStringFileName = keyValuePair_create(keyQuery_assetAttachedMediaStringFileName, valueQuery_assetAttachedMediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaStringFileName);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaStringContentType = NULL;
    char * valueQuery_assetAttachedMediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaStringContentType = 0;
    if (assetAttachedMediaStringContentType)
    {
        keyQuery_assetAttachedMediaStringContentType = strdup("assetAttachedMediaStringContentType");
        valueQuery_assetAttachedMediaStringContentType = strdup((assetAttachedMediaStringContentType));
        keyPairQuery_assetAttachedMediaStringContentType = keyValuePair_create(keyQuery_assetAttachedMediaStringContentType, valueQuery_assetAttachedMediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaStringContentType);
    }

    // query parameters
    char *keyQuery_assetLocationDescription = NULL;
    char * valueQuery_assetLocationDescription = NULL;
    keyValuePair_t *keyPairQuery_assetLocationDescription = 0;
    if (assetLocationDescription)
    {
        keyQuery_assetLocationDescription = strdup("assetLocationDescription");
        valueQuery_assetLocationDescription = strdup((assetLocationDescription));
        keyPairQuery_assetLocationDescription = keyValuePair_create(keyQuery_assetLocationDescription, valueQuery_assetLocationDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_assetLocationDescription);
    }

    // query parameters
    char *keyQuery_assetApp = NULL;
    char * valueQuery_assetApp = NULL;
    keyValuePair_t *keyPairQuery_assetApp = 0;
    if (assetApp)
    {
        keyQuery_assetApp = strdup("assetApp");
        valueQuery_assetApp = strdup((assetApp));
        keyPairQuery_assetApp = keyValuePair_create(keyQuery_assetApp, valueQuery_assetApp);
        list_addElement(localVarQueryParameters,keyPairQuery_assetApp);
    }

    // query parameters
    char *keyQuery_assetSearchTags = NULL;
    char * valueQuery_assetSearchTags = NULL;
    keyValuePair_t *keyPairQuery_assetSearchTags = 0;
    if (assetSearchTags)
    {
        keyQuery_assetSearchTags = strdup("assetSearchTags");
        valueQuery_assetSearchTags = strdup((assetSearchTags));
        keyPairQuery_assetSearchTags = keyValuePair_create(keyQuery_assetSearchTags, valueQuery_assetSearchTags);
        list_addElement(localVarQueryParameters,keyPairQuery_assetSearchTags);
    }

    // query parameters
    char *keyQuery_assetLatitude = NULL;
    char * valueQuery_assetLatitude = NULL;
    keyValuePair_t *keyPairQuery_assetLatitude = 0;
    {
        keyQuery_assetLatitude = strdup("assetLatitude");
        int s = snprintf(NULL, 0, "%.16e", assetLatitude);
        if (s >= 0)
        {
            valueQuery_assetLatitude = calloc(1,s+1);
            snprintf(valueQuery_assetLatitude, s+1, "%.16e", assetLatitude);
        }
        keyPairQuery_assetLatitude = keyValuePair_create(keyQuery_assetLatitude, valueQuery_assetLatitude);
        list_addElement(localVarQueryParameters,keyPairQuery_assetLatitude);
    }

    // query parameters
    char *keyQuery_assetLongitude = NULL;
    double valueQuery_assetLongitude ;
    keyValuePair_t *keyPairQuery_assetLongitude = 0;
    if (assetLongitude)
    {
        keyQuery_assetLongitude = strdup("assetLongitude");
        valueQuery_assetLongitude = (assetLongitude);
        keyPairQuery_assetLongitude = keyValuePair_create(keyQuery_assetLongitude, &valueQuery_assetLongitude);
        list_addElement(localVarQueryParameters,keyPairQuery_assetLongitude);
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
    note_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NoteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = note_response_parseFromJSON(NoteAPIlocalVarJSON);
        cJSON_Delete(NoteAPIlocalVarJSON);
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
    if(keyQuery_notableType){
        free(keyQuery_notableType);
        keyQuery_notableType = NULL;
    }
    if(valueQuery_notableType){
        free(valueQuery_notableType);
        valueQuery_notableType = NULL;
    }
    if(keyPairQuery_notableType){
        keyValuePair_free(keyPairQuery_notableType);
        keyPairQuery_notableType = NULL;
    }
    if(keyQuery_notableId){
        free(keyQuery_notableId);
        keyQuery_notableId = NULL;
    }
    if(keyPairQuery_notableId){
        keyValuePair_free(keyPairQuery_notableId);
        keyPairQuery_notableId = NULL;
    }
    if(keyQuery_comment){
        free(keyQuery_comment);
        keyQuery_comment = NULL;
    }
    if(valueQuery_comment){
        free(valueQuery_comment);
        valueQuery_comment = NULL;
    }
    if(keyPairQuery_comment){
        keyValuePair_free(keyPairQuery_comment);
        keyPairQuery_comment = NULL;
    }
    if(keyQuery_noteType){
        free(keyQuery_noteType);
        keyQuery_noteType = NULL;
    }
    if(valueQuery_noteType){
        free(valueQuery_noteType);
        valueQuery_noteType = NULL;
    }
    if(keyPairQuery_noteType){
        keyValuePair_free(keyPairQuery_noteType);
        keyPairQuery_noteType = NULL;
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
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(valueQuery_permissionableType){
        free(valueQuery_permissionableType);
        valueQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
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
    if(keyQuery_receiverAccountIds){
        free(keyQuery_receiverAccountIds);
        keyQuery_receiverAccountIds = NULL;
    }
    if(valueQuery_receiverAccountIds){
        free(valueQuery_receiverAccountIds);
        valueQuery_receiverAccountIds = NULL;
    }
    if(keyPairQuery_receiverAccountIds){
        keyValuePair_free(keyPairQuery_receiverAccountIds);
        keyPairQuery_receiverAccountIds = NULL;
    }
    if(keyQuery_returnFullResponse){
        free(keyQuery_returnFullResponse);
        keyQuery_returnFullResponse = NULL;
    }
    if(valueQuery_returnFullResponse){
        free(valueQuery_returnFullResponse);
        valueQuery_returnFullResponse = NULL;
    }
    if(keyPairQuery_returnFullResponse){
        keyValuePair_free(keyPairQuery_returnFullResponse);
        keyPairQuery_returnFullResponse = NULL;
    }
    if(keyQuery_initializeAsset){
        free(keyQuery_initializeAsset);
        keyQuery_initializeAsset = NULL;
    }
    if(valueQuery_initializeAsset){
        free(valueQuery_initializeAsset);
        valueQuery_initializeAsset = NULL;
    }
    if(keyPairQuery_initializeAsset){
        keyValuePair_free(keyPairQuery_initializeAsset);
        keyPairQuery_initializeAsset = NULL;
    }
    if(keyQuery_assetReturnNulls){
        free(keyQuery_assetReturnNulls);
        keyQuery_assetReturnNulls = NULL;
    }
    if(valueQuery_assetReturnNulls){
        free(valueQuery_assetReturnNulls);
        valueQuery_assetReturnNulls = NULL;
    }
    if(keyPairQuery_assetReturnNulls){
        keyValuePair_free(keyPairQuery_assetReturnNulls);
        keyPairQuery_assetReturnNulls = NULL;
    }
    if(keyQuery_assetAlbumId){
        free(keyQuery_assetAlbumId);
        keyQuery_assetAlbumId = NULL;
    }
    if(keyPairQuery_assetAlbumId){
        keyValuePair_free(keyPairQuery_assetAlbumId);
        keyPairQuery_assetAlbumId = NULL;
    }
    if(keyQuery_assetCollectionId){
        free(keyQuery_assetCollectionId);
        keyQuery_assetCollectionId = NULL;
    }
    if(keyPairQuery_assetCollectionId){
        keyValuePair_free(keyPairQuery_assetCollectionId);
        keyPairQuery_assetCollectionId = NULL;
    }
    if(keyQuery_assetAddToDefaultAlbum){
        free(keyQuery_assetAddToDefaultAlbum);
        keyQuery_assetAddToDefaultAlbum = NULL;
    }
    if(valueQuery_assetAddToDefaultAlbum){
        free(valueQuery_assetAddToDefaultAlbum);
        valueQuery_assetAddToDefaultAlbum = NULL;
    }
    if(keyPairQuery_assetAddToDefaultAlbum){
        keyValuePair_free(keyPairQuery_assetAddToDefaultAlbum);
        keyPairQuery_assetAddToDefaultAlbum = NULL;
    }
    if(keyQuery_assetAddToMediaLibrary){
        free(keyQuery_assetAddToMediaLibrary);
        keyQuery_assetAddToMediaLibrary = NULL;
    }
    if(valueQuery_assetAddToMediaLibrary){
        free(valueQuery_assetAddToMediaLibrary);
        valueQuery_assetAddToMediaLibrary = NULL;
    }
    if(keyPairQuery_assetAddToMediaLibrary){
        keyValuePair_free(keyPairQuery_assetAddToMediaLibrary);
        keyPairQuery_assetAddToMediaLibrary = NULL;
    }
    if(keyQuery_assetVersionCode){
        free(keyQuery_assetVersionCode);
        keyQuery_assetVersionCode = NULL;
    }
    if(valueQuery_assetVersionCode){
        free(valueQuery_assetVersionCode);
        valueQuery_assetVersionCode = NULL;
    }
    if(keyPairQuery_assetVersionCode){
        keyValuePair_free(keyPairQuery_assetVersionCode);
        keyPairQuery_assetVersionCode = NULL;
    }
    if(keyQuery_assetVersionName){
        free(keyQuery_assetVersionName);
        keyQuery_assetVersionName = NULL;
    }
    if(valueQuery_assetVersionName){
        free(valueQuery_assetVersionName);
        valueQuery_assetVersionName = NULL;
    }
    if(keyPairQuery_assetVersionName){
        keyValuePair_free(keyPairQuery_assetVersionName);
        keyPairQuery_assetVersionName = NULL;
    }
    if(keyQuery_assetMetaData){
        free(keyQuery_assetMetaData);
        keyQuery_assetMetaData = NULL;
    }
    if(valueQuery_assetMetaData){
        free(valueQuery_assetMetaData);
        valueQuery_assetMetaData = NULL;
    }
    if(keyPairQuery_assetMetaData){
        keyValuePair_free(keyPairQuery_assetMetaData);
        keyPairQuery_assetMetaData = NULL;
    }
    if(keyQuery_assetCaption){
        free(keyQuery_assetCaption);
        keyQuery_assetCaption = NULL;
    }
    if(valueQuery_assetCaption){
        free(valueQuery_assetCaption);
        valueQuery_assetCaption = NULL;
    }
    if(keyPairQuery_assetCaption){
        keyValuePair_free(keyPairQuery_assetCaption);
        keyPairQuery_assetCaption = NULL;
    }
    if(keyQuery_assetMedia){
        free(keyQuery_assetMedia);
        keyQuery_assetMedia = NULL;
    }
    if(keyPairQuery_assetMedia){
        keyValuePair_free(keyPairQuery_assetMedia);
        keyPairQuery_assetMedia = NULL;
    }
    if(keyQuery_assetMediaUrl){
        free(keyQuery_assetMediaUrl);
        keyQuery_assetMediaUrl = NULL;
    }
    if(valueQuery_assetMediaUrl){
        free(valueQuery_assetMediaUrl);
        valueQuery_assetMediaUrl = NULL;
    }
    if(keyPairQuery_assetMediaUrl){
        keyValuePair_free(keyPairQuery_assetMediaUrl);
        keyPairQuery_assetMediaUrl = NULL;
    }
    if(keyQuery_assetMediaString){
        free(keyQuery_assetMediaString);
        keyQuery_assetMediaString = NULL;
    }
    if(valueQuery_assetMediaString){
        free(valueQuery_assetMediaString);
        valueQuery_assetMediaString = NULL;
    }
    if(keyPairQuery_assetMediaString){
        keyValuePair_free(keyPairQuery_assetMediaString);
        keyPairQuery_assetMediaString = NULL;
    }
    if(keyQuery_assetMediaStringFileName){
        free(keyQuery_assetMediaStringFileName);
        keyQuery_assetMediaStringFileName = NULL;
    }
    if(valueQuery_assetMediaStringFileName){
        free(valueQuery_assetMediaStringFileName);
        valueQuery_assetMediaStringFileName = NULL;
    }
    if(keyPairQuery_assetMediaStringFileName){
        keyValuePair_free(keyPairQuery_assetMediaStringFileName);
        keyPairQuery_assetMediaStringFileName = NULL;
    }
    if(keyQuery_assetMediaStringContentType){
        free(keyQuery_assetMediaStringContentType);
        keyQuery_assetMediaStringContentType = NULL;
    }
    if(valueQuery_assetMediaStringContentType){
        free(valueQuery_assetMediaStringContentType);
        valueQuery_assetMediaStringContentType = NULL;
    }
    if(keyPairQuery_assetMediaStringContentType){
        keyValuePair_free(keyPairQuery_assetMediaStringContentType);
        keyPairQuery_assetMediaStringContentType = NULL;
    }
    if(keyQuery_assetAttachedMedia){
        free(keyQuery_assetAttachedMedia);
        keyQuery_assetAttachedMedia = NULL;
    }
    if(keyPairQuery_assetAttachedMedia){
        keyValuePair_free(keyPairQuery_assetAttachedMedia);
        keyPairQuery_assetAttachedMedia = NULL;
    }
    if(keyQuery_assetAttachedMediaUrl){
        free(keyQuery_assetAttachedMediaUrl);
        keyQuery_assetAttachedMediaUrl = NULL;
    }
    if(valueQuery_assetAttachedMediaUrl){
        free(valueQuery_assetAttachedMediaUrl);
        valueQuery_assetAttachedMediaUrl = NULL;
    }
    if(keyPairQuery_assetAttachedMediaUrl){
        keyValuePair_free(keyPairQuery_assetAttachedMediaUrl);
        keyPairQuery_assetAttachedMediaUrl = NULL;
    }
    if(keyQuery_assetAttachedMediaString){
        free(keyQuery_assetAttachedMediaString);
        keyQuery_assetAttachedMediaString = NULL;
    }
    if(valueQuery_assetAttachedMediaString){
        free(valueQuery_assetAttachedMediaString);
        valueQuery_assetAttachedMediaString = NULL;
    }
    if(keyPairQuery_assetAttachedMediaString){
        keyValuePair_free(keyPairQuery_assetAttachedMediaString);
        keyPairQuery_assetAttachedMediaString = NULL;
    }
    if(keyQuery_assetAttachedMediaStringFileName){
        free(keyQuery_assetAttachedMediaStringFileName);
        keyQuery_assetAttachedMediaStringFileName = NULL;
    }
    if(valueQuery_assetAttachedMediaStringFileName){
        free(valueQuery_assetAttachedMediaStringFileName);
        valueQuery_assetAttachedMediaStringFileName = NULL;
    }
    if(keyPairQuery_assetAttachedMediaStringFileName){
        keyValuePair_free(keyPairQuery_assetAttachedMediaStringFileName);
        keyPairQuery_assetAttachedMediaStringFileName = NULL;
    }
    if(keyQuery_assetAttachedMediaStringContentType){
        free(keyQuery_assetAttachedMediaStringContentType);
        keyQuery_assetAttachedMediaStringContentType = NULL;
    }
    if(valueQuery_assetAttachedMediaStringContentType){
        free(valueQuery_assetAttachedMediaStringContentType);
        valueQuery_assetAttachedMediaStringContentType = NULL;
    }
    if(keyPairQuery_assetAttachedMediaStringContentType){
        keyValuePair_free(keyPairQuery_assetAttachedMediaStringContentType);
        keyPairQuery_assetAttachedMediaStringContentType = NULL;
    }
    if(keyQuery_assetLocationDescription){
        free(keyQuery_assetLocationDescription);
        keyQuery_assetLocationDescription = NULL;
    }
    if(valueQuery_assetLocationDescription){
        free(valueQuery_assetLocationDescription);
        valueQuery_assetLocationDescription = NULL;
    }
    if(keyPairQuery_assetLocationDescription){
        keyValuePair_free(keyPairQuery_assetLocationDescription);
        keyPairQuery_assetLocationDescription = NULL;
    }
    if(keyQuery_assetApp){
        free(keyQuery_assetApp);
        keyQuery_assetApp = NULL;
    }
    if(valueQuery_assetApp){
        free(valueQuery_assetApp);
        valueQuery_assetApp = NULL;
    }
    if(keyPairQuery_assetApp){
        keyValuePair_free(keyPairQuery_assetApp);
        keyPairQuery_assetApp = NULL;
    }
    if(keyQuery_assetSearchTags){
        free(keyQuery_assetSearchTags);
        keyQuery_assetSearchTags = NULL;
    }
    if(valueQuery_assetSearchTags){
        free(valueQuery_assetSearchTags);
        valueQuery_assetSearchTags = NULL;
    }
    if(keyPairQuery_assetSearchTags){
        keyValuePair_free(keyPairQuery_assetSearchTags);
        keyPairQuery_assetSearchTags = NULL;
    }
    if(keyQuery_assetLatitude){
        free(keyQuery_assetLatitude);
        keyQuery_assetLatitude = NULL;
    }
    if(keyPairQuery_assetLatitude){
        keyValuePair_free(keyPairQuery_assetLatitude);
        keyPairQuery_assetLatitude = NULL;
    }
    if(keyQuery_assetLongitude){
        free(keyQuery_assetLongitude);
        keyQuery_assetLongitude = NULL;
    }
    if(keyPairQuery_assetLongitude){
        keyValuePair_free(keyPairQuery_assetLongitude);
        keyPairQuery_assetLongitude = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Note
//
// Sets a comment (note) as deleted.
//
sirqul_response_t*
NoteAPI_deleteNote(apiClient_t *apiClient, long noteId, char *deviceId, long accountId, double latitude, double longitude, char *appKey)
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
    char *localVarPath = strdup("/note/delete");





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
    char *keyQuery_noteId = NULL;
    char * valueQuery_noteId ;
    keyValuePair_t *keyPairQuery_noteId = 0;
    {
        keyQuery_noteId = strdup("noteId");
        valueQuery_noteId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_noteId, MAX_NUMBER_LENGTH_LONG, "%d", noteId);
        keyPairQuery_noteId = keyValuePair_create(keyQuery_noteId, valueQuery_noteId);
        list_addElement(localVarQueryParameters,keyPairQuery_noteId);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NoteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(NoteAPIlocalVarJSON);
        cJSON_Delete(NoteAPIlocalVarJSON);
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
    if(keyQuery_noteId){
        free(keyQuery_noteId);
        keyQuery_noteId = NULL;
    }
    if(keyPairQuery_noteId){
        keyValuePair_free(keyPairQuery_noteId);
        keyPairQuery_noteId = NULL;
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

// Get Note
//
// Get for a note based on its Id.
//
sirqul_response_t*
NoteAPI_getNote(apiClient_t *apiClient, long noteId, char *deviceId, long accountId, int *returnFullResponse)
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
    char *localVarPath = strdup("/note/get");





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
    char *keyQuery_returnFullResponse = NULL;
    char * valueQuery_returnFullResponse = NULL;
    keyValuePair_t *keyPairQuery_returnFullResponse = 0;
    if (returnFullResponse)
    {
        keyQuery_returnFullResponse = strdup("returnFullResponse");
        valueQuery_returnFullResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFullResponse, MAX_NUMBER_LENGTH, "%d", *returnFullResponse);
        keyPairQuery_returnFullResponse = keyValuePair_create(keyQuery_returnFullResponse, valueQuery_returnFullResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFullResponse);
    }

    // query parameters
    char *keyQuery_noteId = NULL;
    char * valueQuery_noteId ;
    keyValuePair_t *keyPairQuery_noteId = 0;
    {
        keyQuery_noteId = strdup("noteId");
        valueQuery_noteId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_noteId, MAX_NUMBER_LENGTH_LONG, "%d", noteId);
        keyPairQuery_noteId = keyValuePair_create(keyQuery_noteId, valueQuery_noteId);
        list_addElement(localVarQueryParameters,keyPairQuery_noteId);
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
        cJSON *NoteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(NoteAPIlocalVarJSON);
        cJSON_Delete(NoteAPIlocalVarJSON);
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
    if(keyQuery_returnFullResponse){
        free(keyQuery_returnFullResponse);
        keyQuery_returnFullResponse = NULL;
    }
    if(valueQuery_returnFullResponse){
        free(valueQuery_returnFullResponse);
        valueQuery_returnFullResponse = NULL;
    }
    if(keyPairQuery_returnFullResponse){
        keyValuePair_free(keyPairQuery_returnFullResponse);
        keyPairQuery_returnFullResponse = NULL;
    }
    if(keyQuery_noteId){
        free(keyQuery_noteId);
        keyQuery_noteId = NULL;
    }
    if(keyPairQuery_noteId){
        keyValuePair_free(keyPairQuery_noteId);
        keyPairQuery_noteId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Notes
//
// Search for notes on a notable object.
//
list_t*
NoteAPI_searchNotes(apiClient_t *apiClient, char *deviceId, long accountId, char *notableType, long notableId, char *noteTypes, char *appKey, char *keyword, long flagCountMinimum, int *flagsExceedThreshold, int *includeInactive, sirqul_iot_platform_searchNotes_sortField_e sortField, int *descending, int *returnFullResponse, long updatedSince, long updatedBefore, int *start, int *limit)
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
    char *localVarPath = strdup("/note/search");





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
    char *keyQuery_notableType = NULL;
    char * valueQuery_notableType = NULL;
    keyValuePair_t *keyPairQuery_notableType = 0;
    if (notableType)
    {
        keyQuery_notableType = strdup("notableType");
        valueQuery_notableType = strdup((notableType));
        keyPairQuery_notableType = keyValuePair_create(keyQuery_notableType, valueQuery_notableType);
        list_addElement(localVarQueryParameters,keyPairQuery_notableType);
    }

    // query parameters
    char *keyQuery_notableId = NULL;
    char * valueQuery_notableId ;
    keyValuePair_t *keyPairQuery_notableId = 0;
    {
        keyQuery_notableId = strdup("notableId");
        valueQuery_notableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_notableId, MAX_NUMBER_LENGTH_LONG, "%d", notableId);
        keyPairQuery_notableId = keyValuePair_create(keyQuery_notableId, valueQuery_notableId);
        list_addElement(localVarQueryParameters,keyPairQuery_notableId);
    }

    // query parameters
    char *keyQuery_noteTypes = NULL;
    char * valueQuery_noteTypes = NULL;
    keyValuePair_t *keyPairQuery_noteTypes = 0;
    if (noteTypes)
    {
        keyQuery_noteTypes = strdup("noteTypes");
        valueQuery_noteTypes = strdup((noteTypes));
        keyPairQuery_noteTypes = keyValuePair_create(keyQuery_noteTypes, valueQuery_noteTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_noteTypes);
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
    char *keyQuery_flagsExceedThreshold = NULL;
    char * valueQuery_flagsExceedThreshold = NULL;
    keyValuePair_t *keyPairQuery_flagsExceedThreshold = 0;
    if (flagsExceedThreshold)
    {
        keyQuery_flagsExceedThreshold = strdup("flagsExceedThreshold");
        valueQuery_flagsExceedThreshold = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_flagsExceedThreshold, MAX_NUMBER_LENGTH, "%d", *flagsExceedThreshold);
        keyPairQuery_flagsExceedThreshold = keyValuePair_create(keyQuery_flagsExceedThreshold, valueQuery_flagsExceedThreshold);
        list_addElement(localVarQueryParameters,keyPairQuery_flagsExceedThreshold);
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
    sirqul_iot_platform_searchNotes_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchNotes_SORTFIELD_ToString(
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
    char *keyQuery_returnFullResponse = NULL;
    char * valueQuery_returnFullResponse = NULL;
    keyValuePair_t *keyPairQuery_returnFullResponse = 0;
    if (returnFullResponse)
    {
        keyQuery_returnFullResponse = strdup("returnFullResponse");
        valueQuery_returnFullResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFullResponse, MAX_NUMBER_LENGTH, "%d", *returnFullResponse);
        keyPairQuery_returnFullResponse = keyValuePair_create(keyQuery_returnFullResponse, valueQuery_returnFullResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFullResponse);
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NoteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(NoteAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, NoteAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( NoteAPIlocalVarJSON);
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
    if(keyQuery_notableType){
        free(keyQuery_notableType);
        keyQuery_notableType = NULL;
    }
    if(valueQuery_notableType){
        free(valueQuery_notableType);
        valueQuery_notableType = NULL;
    }
    if(keyPairQuery_notableType){
        keyValuePair_free(keyPairQuery_notableType);
        keyPairQuery_notableType = NULL;
    }
    if(keyQuery_notableId){
        free(keyQuery_notableId);
        keyQuery_notableId = NULL;
    }
    if(keyPairQuery_notableId){
        keyValuePair_free(keyPairQuery_notableId);
        keyPairQuery_notableId = NULL;
    }
    if(keyQuery_noteTypes){
        free(keyQuery_noteTypes);
        keyQuery_noteTypes = NULL;
    }
    if(valueQuery_noteTypes){
        free(valueQuery_noteTypes);
        valueQuery_noteTypes = NULL;
    }
    if(keyPairQuery_noteTypes){
        keyValuePair_free(keyPairQuery_noteTypes);
        keyPairQuery_noteTypes = NULL;
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
    if(keyQuery_flagCountMinimum){
        free(keyQuery_flagCountMinimum);
        keyQuery_flagCountMinimum = NULL;
    }
    if(keyPairQuery_flagCountMinimum){
        keyValuePair_free(keyPairQuery_flagCountMinimum);
        keyPairQuery_flagCountMinimum = NULL;
    }
    if(keyQuery_flagsExceedThreshold){
        free(keyQuery_flagsExceedThreshold);
        keyQuery_flagsExceedThreshold = NULL;
    }
    if(valueQuery_flagsExceedThreshold){
        free(valueQuery_flagsExceedThreshold);
        valueQuery_flagsExceedThreshold = NULL;
    }
    if(keyPairQuery_flagsExceedThreshold){
        keyValuePair_free(keyPairQuery_flagsExceedThreshold);
        keyPairQuery_flagsExceedThreshold = NULL;
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
    if(keyQuery_returnFullResponse){
        free(keyQuery_returnFullResponse);
        keyQuery_returnFullResponse = NULL;
    }
    if(valueQuery_returnFullResponse){
        free(valueQuery_returnFullResponse);
        valueQuery_returnFullResponse = NULL;
    }
    if(keyPairQuery_returnFullResponse){
        keyValuePair_free(keyPairQuery_returnFullResponse);
        keyPairQuery_returnFullResponse = NULL;
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

// Update Note
//
// Update an existing comment (note). Only the creator of the note have permission to update.
//
note_response_t*
NoteAPI_updateNote(apiClient_t *apiClient, long noteId, char *deviceId, long accountId, char *comment, char *noteType, char *assetIds, char *tags, char *permissionableType, long permissionableId, char *appKey, char *locationDescription, double latitude, double longitude, char *metaData, int *returnFullResponse, int *active, int *updateAsset, int *assetReturnNulls, long assetAlbumId, long assetCollectionId, char *assetAddToDefaultAlbum, int *assetAddToMediaLibrary, int *assetVersionCode, char *assetVersionName, char *assetMetaData, char *assetCaption, binary_t* assetMedia, char *assetMediaUrl, char *assetMediaString, char *assetMediaStringFileName, char *assetMediaStringContentType, binary_t* assetAttachedMedia, char *assetAttachedMediaUrl, char *assetAttachedMediaString, char *assetAttachedMediaStringFileName, char *assetAttachedMediaStringContentType, char *assetLocationDescription, char *assetApp, char *assetSearchTags, double assetLatitude, double assetLongitude)
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
    char *localVarPath = strdup("/note/update");





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
    char *keyQuery_noteId = NULL;
    char * valueQuery_noteId ;
    keyValuePair_t *keyPairQuery_noteId = 0;
    {
        keyQuery_noteId = strdup("noteId");
        valueQuery_noteId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_noteId, MAX_NUMBER_LENGTH_LONG, "%d", noteId);
        keyPairQuery_noteId = keyValuePair_create(keyQuery_noteId, valueQuery_noteId);
        list_addElement(localVarQueryParameters,keyPairQuery_noteId);
    }

    // query parameters
    char *keyQuery_comment = NULL;
    char * valueQuery_comment = NULL;
    keyValuePair_t *keyPairQuery_comment = 0;
    if (comment)
    {
        keyQuery_comment = strdup("comment");
        valueQuery_comment = strdup((comment));
        keyPairQuery_comment = keyValuePair_create(keyQuery_comment, valueQuery_comment);
        list_addElement(localVarQueryParameters,keyPairQuery_comment);
    }

    // query parameters
    char *keyQuery_noteType = NULL;
    char * valueQuery_noteType = NULL;
    keyValuePair_t *keyPairQuery_noteType = 0;
    if (noteType)
    {
        keyQuery_noteType = strdup("noteType");
        valueQuery_noteType = strdup((noteType));
        keyPairQuery_noteType = keyValuePair_create(keyQuery_noteType, valueQuery_noteType);
        list_addElement(localVarQueryParameters,keyPairQuery_noteType);
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
    char *keyQuery_permissionableType = NULL;
    char * valueQuery_permissionableType = NULL;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = strdup((permissionableType));
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, valueQuery_permissionableType);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
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
    char *keyQuery_returnFullResponse = NULL;
    char * valueQuery_returnFullResponse = NULL;
    keyValuePair_t *keyPairQuery_returnFullResponse = 0;
    if (returnFullResponse)
    {
        keyQuery_returnFullResponse = strdup("returnFullResponse");
        valueQuery_returnFullResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFullResponse, MAX_NUMBER_LENGTH, "%d", *returnFullResponse);
        keyPairQuery_returnFullResponse = keyValuePair_create(keyQuery_returnFullResponse, valueQuery_returnFullResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFullResponse);
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
    char *keyQuery_updateAsset = NULL;
    char * valueQuery_updateAsset = NULL;
    keyValuePair_t *keyPairQuery_updateAsset = 0;
    if (updateAsset)
    {
        keyQuery_updateAsset = strdup("updateAsset");
        valueQuery_updateAsset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_updateAsset, MAX_NUMBER_LENGTH, "%d", *updateAsset);
        keyPairQuery_updateAsset = keyValuePair_create(keyQuery_updateAsset, valueQuery_updateAsset);
        list_addElement(localVarQueryParameters,keyPairQuery_updateAsset);
    }

    // query parameters
    char *keyQuery_assetReturnNulls = NULL;
    char * valueQuery_assetReturnNulls = NULL;
    keyValuePair_t *keyPairQuery_assetReturnNulls = 0;
    if (assetReturnNulls)
    {
        keyQuery_assetReturnNulls = strdup("assetReturnNulls");
        valueQuery_assetReturnNulls = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetReturnNulls, MAX_NUMBER_LENGTH, "%d", *assetReturnNulls);
        keyPairQuery_assetReturnNulls = keyValuePair_create(keyQuery_assetReturnNulls, valueQuery_assetReturnNulls);
        list_addElement(localVarQueryParameters,keyPairQuery_assetReturnNulls);
    }

    // query parameters
    char *keyQuery_assetAlbumId = NULL;
    char * valueQuery_assetAlbumId ;
    keyValuePair_t *keyPairQuery_assetAlbumId = 0;
    {
        keyQuery_assetAlbumId = strdup("assetAlbumId");
        valueQuery_assetAlbumId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetAlbumId, MAX_NUMBER_LENGTH_LONG, "%d", assetAlbumId);
        keyPairQuery_assetAlbumId = keyValuePair_create(keyQuery_assetAlbumId, valueQuery_assetAlbumId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAlbumId);
    }

    // query parameters
    char *keyQuery_assetCollectionId = NULL;
    char * valueQuery_assetCollectionId ;
    keyValuePair_t *keyPairQuery_assetCollectionId = 0;
    {
        keyQuery_assetCollectionId = strdup("assetCollectionId");
        valueQuery_assetCollectionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetCollectionId, MAX_NUMBER_LENGTH_LONG, "%d", assetCollectionId);
        keyPairQuery_assetCollectionId = keyValuePair_create(keyQuery_assetCollectionId, valueQuery_assetCollectionId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetCollectionId);
    }

    // query parameters
    char *keyQuery_assetAddToDefaultAlbum = NULL;
    char * valueQuery_assetAddToDefaultAlbum = NULL;
    keyValuePair_t *keyPairQuery_assetAddToDefaultAlbum = 0;
    if (assetAddToDefaultAlbum)
    {
        keyQuery_assetAddToDefaultAlbum = strdup("assetAddToDefaultAlbum");
        valueQuery_assetAddToDefaultAlbum = strdup((assetAddToDefaultAlbum));
        keyPairQuery_assetAddToDefaultAlbum = keyValuePair_create(keyQuery_assetAddToDefaultAlbum, valueQuery_assetAddToDefaultAlbum);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAddToDefaultAlbum);
    }

    // query parameters
    char *keyQuery_assetAddToMediaLibrary = NULL;
    char * valueQuery_assetAddToMediaLibrary = NULL;
    keyValuePair_t *keyPairQuery_assetAddToMediaLibrary = 0;
    if (assetAddToMediaLibrary)
    {
        keyQuery_assetAddToMediaLibrary = strdup("assetAddToMediaLibrary");
        valueQuery_assetAddToMediaLibrary = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetAddToMediaLibrary, MAX_NUMBER_LENGTH, "%d", *assetAddToMediaLibrary);
        keyPairQuery_assetAddToMediaLibrary = keyValuePair_create(keyQuery_assetAddToMediaLibrary, valueQuery_assetAddToMediaLibrary);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAddToMediaLibrary);
    }

    // query parameters
    char *keyQuery_assetVersionCode = NULL;
    char * valueQuery_assetVersionCode = NULL;
    keyValuePair_t *keyPairQuery_assetVersionCode = 0;
    if (assetVersionCode)
    {
        keyQuery_assetVersionCode = strdup("assetVersionCode");
        valueQuery_assetVersionCode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assetVersionCode, MAX_NUMBER_LENGTH, "%d", *assetVersionCode);
        keyPairQuery_assetVersionCode = keyValuePair_create(keyQuery_assetVersionCode, valueQuery_assetVersionCode);
        list_addElement(localVarQueryParameters,keyPairQuery_assetVersionCode);
    }

    // query parameters
    char *keyQuery_assetVersionName = NULL;
    char * valueQuery_assetVersionName = NULL;
    keyValuePair_t *keyPairQuery_assetVersionName = 0;
    if (assetVersionName)
    {
        keyQuery_assetVersionName = strdup("assetVersionName");
        valueQuery_assetVersionName = strdup((assetVersionName));
        keyPairQuery_assetVersionName = keyValuePair_create(keyQuery_assetVersionName, valueQuery_assetVersionName);
        list_addElement(localVarQueryParameters,keyPairQuery_assetVersionName);
    }

    // query parameters
    char *keyQuery_assetMetaData = NULL;
    char * valueQuery_assetMetaData = NULL;
    keyValuePair_t *keyPairQuery_assetMetaData = 0;
    if (assetMetaData)
    {
        keyQuery_assetMetaData = strdup("assetMetaData");
        valueQuery_assetMetaData = strdup((assetMetaData));
        keyPairQuery_assetMetaData = keyValuePair_create(keyQuery_assetMetaData, valueQuery_assetMetaData);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMetaData);
    }

    // query parameters
    char *keyQuery_assetCaption = NULL;
    char * valueQuery_assetCaption = NULL;
    keyValuePair_t *keyPairQuery_assetCaption = 0;
    if (assetCaption)
    {
        keyQuery_assetCaption = strdup("assetCaption");
        valueQuery_assetCaption = strdup((assetCaption));
        keyPairQuery_assetCaption = keyValuePair_create(keyQuery_assetCaption, valueQuery_assetCaption);
        list_addElement(localVarQueryParameters,keyPairQuery_assetCaption);
    }

    // query parameters
    char *keyQuery_assetMedia = NULL;
    binary_t* valueQuery_assetMedia ;
    keyValuePair_t *keyPairQuery_assetMedia = 0;
    if (assetMedia)
    {
        keyQuery_assetMedia = strdup("assetMedia");
        valueQuery_assetMedia = (assetMedia);
        keyPairQuery_assetMedia = keyValuePair_create(keyQuery_assetMedia, &valueQuery_assetMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMedia);
    }

    // query parameters
    char *keyQuery_assetMediaUrl = NULL;
    char * valueQuery_assetMediaUrl = NULL;
    keyValuePair_t *keyPairQuery_assetMediaUrl = 0;
    if (assetMediaUrl)
    {
        keyQuery_assetMediaUrl = strdup("assetMediaUrl");
        valueQuery_assetMediaUrl = strdup((assetMediaUrl));
        keyPairQuery_assetMediaUrl = keyValuePair_create(keyQuery_assetMediaUrl, valueQuery_assetMediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaUrl);
    }

    // query parameters
    char *keyQuery_assetMediaString = NULL;
    char * valueQuery_assetMediaString = NULL;
    keyValuePair_t *keyPairQuery_assetMediaString = 0;
    if (assetMediaString)
    {
        keyQuery_assetMediaString = strdup("assetMediaString");
        valueQuery_assetMediaString = strdup((assetMediaString));
        keyPairQuery_assetMediaString = keyValuePair_create(keyQuery_assetMediaString, valueQuery_assetMediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaString);
    }

    // query parameters
    char *keyQuery_assetMediaStringFileName = NULL;
    char * valueQuery_assetMediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_assetMediaStringFileName = 0;
    if (assetMediaStringFileName)
    {
        keyQuery_assetMediaStringFileName = strdup("assetMediaStringFileName");
        valueQuery_assetMediaStringFileName = strdup((assetMediaStringFileName));
        keyPairQuery_assetMediaStringFileName = keyValuePair_create(keyQuery_assetMediaStringFileName, valueQuery_assetMediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaStringFileName);
    }

    // query parameters
    char *keyQuery_assetMediaStringContentType = NULL;
    char * valueQuery_assetMediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_assetMediaStringContentType = 0;
    if (assetMediaStringContentType)
    {
        keyQuery_assetMediaStringContentType = strdup("assetMediaStringContentType");
        valueQuery_assetMediaStringContentType = strdup((assetMediaStringContentType));
        keyPairQuery_assetMediaStringContentType = keyValuePair_create(keyQuery_assetMediaStringContentType, valueQuery_assetMediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_assetMediaStringContentType);
    }

    // query parameters
    char *keyQuery_assetAttachedMedia = NULL;
    binary_t* valueQuery_assetAttachedMedia ;
    keyValuePair_t *keyPairQuery_assetAttachedMedia = 0;
    if (assetAttachedMedia)
    {
        keyQuery_assetAttachedMedia = strdup("assetAttachedMedia");
        valueQuery_assetAttachedMedia = (assetAttachedMedia);
        keyPairQuery_assetAttachedMedia = keyValuePair_create(keyQuery_assetAttachedMedia, &valueQuery_assetAttachedMedia);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMedia);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaUrl = NULL;
    char * valueQuery_assetAttachedMediaUrl = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaUrl = 0;
    if (assetAttachedMediaUrl)
    {
        keyQuery_assetAttachedMediaUrl = strdup("assetAttachedMediaUrl");
        valueQuery_assetAttachedMediaUrl = strdup((assetAttachedMediaUrl));
        keyPairQuery_assetAttachedMediaUrl = keyValuePair_create(keyQuery_assetAttachedMediaUrl, valueQuery_assetAttachedMediaUrl);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaUrl);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaString = NULL;
    char * valueQuery_assetAttachedMediaString = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaString = 0;
    if (assetAttachedMediaString)
    {
        keyQuery_assetAttachedMediaString = strdup("assetAttachedMediaString");
        valueQuery_assetAttachedMediaString = strdup((assetAttachedMediaString));
        keyPairQuery_assetAttachedMediaString = keyValuePair_create(keyQuery_assetAttachedMediaString, valueQuery_assetAttachedMediaString);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaString);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaStringFileName = NULL;
    char * valueQuery_assetAttachedMediaStringFileName = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaStringFileName = 0;
    if (assetAttachedMediaStringFileName)
    {
        keyQuery_assetAttachedMediaStringFileName = strdup("assetAttachedMediaStringFileName");
        valueQuery_assetAttachedMediaStringFileName = strdup((assetAttachedMediaStringFileName));
        keyPairQuery_assetAttachedMediaStringFileName = keyValuePair_create(keyQuery_assetAttachedMediaStringFileName, valueQuery_assetAttachedMediaStringFileName);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaStringFileName);
    }

    // query parameters
    char *keyQuery_assetAttachedMediaStringContentType = NULL;
    char * valueQuery_assetAttachedMediaStringContentType = NULL;
    keyValuePair_t *keyPairQuery_assetAttachedMediaStringContentType = 0;
    if (assetAttachedMediaStringContentType)
    {
        keyQuery_assetAttachedMediaStringContentType = strdup("assetAttachedMediaStringContentType");
        valueQuery_assetAttachedMediaStringContentType = strdup((assetAttachedMediaStringContentType));
        keyPairQuery_assetAttachedMediaStringContentType = keyValuePair_create(keyQuery_assetAttachedMediaStringContentType, valueQuery_assetAttachedMediaStringContentType);
        list_addElement(localVarQueryParameters,keyPairQuery_assetAttachedMediaStringContentType);
    }

    // query parameters
    char *keyQuery_assetLocationDescription = NULL;
    char * valueQuery_assetLocationDescription = NULL;
    keyValuePair_t *keyPairQuery_assetLocationDescription = 0;
    if (assetLocationDescription)
    {
        keyQuery_assetLocationDescription = strdup("assetLocationDescription");
        valueQuery_assetLocationDescription = strdup((assetLocationDescription));
        keyPairQuery_assetLocationDescription = keyValuePair_create(keyQuery_assetLocationDescription, valueQuery_assetLocationDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_assetLocationDescription);
    }

    // query parameters
    char *keyQuery_assetApp = NULL;
    char * valueQuery_assetApp = NULL;
    keyValuePair_t *keyPairQuery_assetApp = 0;
    if (assetApp)
    {
        keyQuery_assetApp = strdup("assetApp");
        valueQuery_assetApp = strdup((assetApp));
        keyPairQuery_assetApp = keyValuePair_create(keyQuery_assetApp, valueQuery_assetApp);
        list_addElement(localVarQueryParameters,keyPairQuery_assetApp);
    }

    // query parameters
    char *keyQuery_assetSearchTags = NULL;
    char * valueQuery_assetSearchTags = NULL;
    keyValuePair_t *keyPairQuery_assetSearchTags = 0;
    if (assetSearchTags)
    {
        keyQuery_assetSearchTags = strdup("assetSearchTags");
        valueQuery_assetSearchTags = strdup((assetSearchTags));
        keyPairQuery_assetSearchTags = keyValuePair_create(keyQuery_assetSearchTags, valueQuery_assetSearchTags);
        list_addElement(localVarQueryParameters,keyPairQuery_assetSearchTags);
    }

    // query parameters
    char *keyQuery_assetLatitude = NULL;
    char * valueQuery_assetLatitude = NULL;
    keyValuePair_t *keyPairQuery_assetLatitude = 0;
    {
        keyQuery_assetLatitude = strdup("assetLatitude");
        int s = snprintf(NULL, 0, "%.16e", assetLatitude);
        if (s >= 0)
        {
            valueQuery_assetLatitude = calloc(1,s+1);
            snprintf(valueQuery_assetLatitude, s+1, "%.16e", assetLatitude);
        }
        keyPairQuery_assetLatitude = keyValuePair_create(keyQuery_assetLatitude, valueQuery_assetLatitude);
        list_addElement(localVarQueryParameters,keyPairQuery_assetLatitude);
    }

    // query parameters
    char *keyQuery_assetLongitude = NULL;
    char * valueQuery_assetLongitude = NULL;
    keyValuePair_t *keyPairQuery_assetLongitude = 0;
    {
        keyQuery_assetLongitude = strdup("assetLongitude");
        int s = snprintf(NULL, 0, "%.16e", assetLongitude);
        if (s >= 0)
        {
            valueQuery_assetLongitude = calloc(1,s+1);
            snprintf(valueQuery_assetLongitude, s+1, "%.16e", assetLongitude);
        }
        keyPairQuery_assetLongitude = keyValuePair_create(keyQuery_assetLongitude, valueQuery_assetLongitude);
        list_addElement(localVarQueryParameters,keyPairQuery_assetLongitude);
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
    note_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *NoteAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = note_response_parseFromJSON(NoteAPIlocalVarJSON);
        cJSON_Delete(NoteAPIlocalVarJSON);
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
    if(keyQuery_noteId){
        free(keyQuery_noteId);
        keyQuery_noteId = NULL;
    }
    if(keyPairQuery_noteId){
        keyValuePair_free(keyPairQuery_noteId);
        keyPairQuery_noteId = NULL;
    }
    if(keyQuery_comment){
        free(keyQuery_comment);
        keyQuery_comment = NULL;
    }
    if(valueQuery_comment){
        free(valueQuery_comment);
        valueQuery_comment = NULL;
    }
    if(keyPairQuery_comment){
        keyValuePair_free(keyPairQuery_comment);
        keyPairQuery_comment = NULL;
    }
    if(keyQuery_noteType){
        free(keyQuery_noteType);
        keyQuery_noteType = NULL;
    }
    if(valueQuery_noteType){
        free(valueQuery_noteType);
        valueQuery_noteType = NULL;
    }
    if(keyPairQuery_noteType){
        keyValuePair_free(keyPairQuery_noteType);
        keyPairQuery_noteType = NULL;
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
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(valueQuery_permissionableType){
        free(valueQuery_permissionableType);
        valueQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
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
    if(keyQuery_returnFullResponse){
        free(keyQuery_returnFullResponse);
        keyQuery_returnFullResponse = NULL;
    }
    if(valueQuery_returnFullResponse){
        free(valueQuery_returnFullResponse);
        valueQuery_returnFullResponse = NULL;
    }
    if(keyPairQuery_returnFullResponse){
        keyValuePair_free(keyPairQuery_returnFullResponse);
        keyPairQuery_returnFullResponse = NULL;
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
    if(keyQuery_updateAsset){
        free(keyQuery_updateAsset);
        keyQuery_updateAsset = NULL;
    }
    if(valueQuery_updateAsset){
        free(valueQuery_updateAsset);
        valueQuery_updateAsset = NULL;
    }
    if(keyPairQuery_updateAsset){
        keyValuePair_free(keyPairQuery_updateAsset);
        keyPairQuery_updateAsset = NULL;
    }
    if(keyQuery_assetReturnNulls){
        free(keyQuery_assetReturnNulls);
        keyQuery_assetReturnNulls = NULL;
    }
    if(valueQuery_assetReturnNulls){
        free(valueQuery_assetReturnNulls);
        valueQuery_assetReturnNulls = NULL;
    }
    if(keyPairQuery_assetReturnNulls){
        keyValuePair_free(keyPairQuery_assetReturnNulls);
        keyPairQuery_assetReturnNulls = NULL;
    }
    if(keyQuery_assetAlbumId){
        free(keyQuery_assetAlbumId);
        keyQuery_assetAlbumId = NULL;
    }
    if(keyPairQuery_assetAlbumId){
        keyValuePair_free(keyPairQuery_assetAlbumId);
        keyPairQuery_assetAlbumId = NULL;
    }
    if(keyQuery_assetCollectionId){
        free(keyQuery_assetCollectionId);
        keyQuery_assetCollectionId = NULL;
    }
    if(keyPairQuery_assetCollectionId){
        keyValuePair_free(keyPairQuery_assetCollectionId);
        keyPairQuery_assetCollectionId = NULL;
    }
    if(keyQuery_assetAddToDefaultAlbum){
        free(keyQuery_assetAddToDefaultAlbum);
        keyQuery_assetAddToDefaultAlbum = NULL;
    }
    if(valueQuery_assetAddToDefaultAlbum){
        free(valueQuery_assetAddToDefaultAlbum);
        valueQuery_assetAddToDefaultAlbum = NULL;
    }
    if(keyPairQuery_assetAddToDefaultAlbum){
        keyValuePair_free(keyPairQuery_assetAddToDefaultAlbum);
        keyPairQuery_assetAddToDefaultAlbum = NULL;
    }
    if(keyQuery_assetAddToMediaLibrary){
        free(keyQuery_assetAddToMediaLibrary);
        keyQuery_assetAddToMediaLibrary = NULL;
    }
    if(valueQuery_assetAddToMediaLibrary){
        free(valueQuery_assetAddToMediaLibrary);
        valueQuery_assetAddToMediaLibrary = NULL;
    }
    if(keyPairQuery_assetAddToMediaLibrary){
        keyValuePair_free(keyPairQuery_assetAddToMediaLibrary);
        keyPairQuery_assetAddToMediaLibrary = NULL;
    }
    if(keyQuery_assetVersionCode){
        free(keyQuery_assetVersionCode);
        keyQuery_assetVersionCode = NULL;
    }
    if(valueQuery_assetVersionCode){
        free(valueQuery_assetVersionCode);
        valueQuery_assetVersionCode = NULL;
    }
    if(keyPairQuery_assetVersionCode){
        keyValuePair_free(keyPairQuery_assetVersionCode);
        keyPairQuery_assetVersionCode = NULL;
    }
    if(keyQuery_assetVersionName){
        free(keyQuery_assetVersionName);
        keyQuery_assetVersionName = NULL;
    }
    if(valueQuery_assetVersionName){
        free(valueQuery_assetVersionName);
        valueQuery_assetVersionName = NULL;
    }
    if(keyPairQuery_assetVersionName){
        keyValuePair_free(keyPairQuery_assetVersionName);
        keyPairQuery_assetVersionName = NULL;
    }
    if(keyQuery_assetMetaData){
        free(keyQuery_assetMetaData);
        keyQuery_assetMetaData = NULL;
    }
    if(valueQuery_assetMetaData){
        free(valueQuery_assetMetaData);
        valueQuery_assetMetaData = NULL;
    }
    if(keyPairQuery_assetMetaData){
        keyValuePair_free(keyPairQuery_assetMetaData);
        keyPairQuery_assetMetaData = NULL;
    }
    if(keyQuery_assetCaption){
        free(keyQuery_assetCaption);
        keyQuery_assetCaption = NULL;
    }
    if(valueQuery_assetCaption){
        free(valueQuery_assetCaption);
        valueQuery_assetCaption = NULL;
    }
    if(keyPairQuery_assetCaption){
        keyValuePair_free(keyPairQuery_assetCaption);
        keyPairQuery_assetCaption = NULL;
    }
    if(keyQuery_assetMedia){
        free(keyQuery_assetMedia);
        keyQuery_assetMedia = NULL;
    }
    if(keyPairQuery_assetMedia){
        keyValuePair_free(keyPairQuery_assetMedia);
        keyPairQuery_assetMedia = NULL;
    }
    if(keyQuery_assetMediaUrl){
        free(keyQuery_assetMediaUrl);
        keyQuery_assetMediaUrl = NULL;
    }
    if(valueQuery_assetMediaUrl){
        free(valueQuery_assetMediaUrl);
        valueQuery_assetMediaUrl = NULL;
    }
    if(keyPairQuery_assetMediaUrl){
        keyValuePair_free(keyPairQuery_assetMediaUrl);
        keyPairQuery_assetMediaUrl = NULL;
    }
    if(keyQuery_assetMediaString){
        free(keyQuery_assetMediaString);
        keyQuery_assetMediaString = NULL;
    }
    if(valueQuery_assetMediaString){
        free(valueQuery_assetMediaString);
        valueQuery_assetMediaString = NULL;
    }
    if(keyPairQuery_assetMediaString){
        keyValuePair_free(keyPairQuery_assetMediaString);
        keyPairQuery_assetMediaString = NULL;
    }
    if(keyQuery_assetMediaStringFileName){
        free(keyQuery_assetMediaStringFileName);
        keyQuery_assetMediaStringFileName = NULL;
    }
    if(valueQuery_assetMediaStringFileName){
        free(valueQuery_assetMediaStringFileName);
        valueQuery_assetMediaStringFileName = NULL;
    }
    if(keyPairQuery_assetMediaStringFileName){
        keyValuePair_free(keyPairQuery_assetMediaStringFileName);
        keyPairQuery_assetMediaStringFileName = NULL;
    }
    if(keyQuery_assetMediaStringContentType){
        free(keyQuery_assetMediaStringContentType);
        keyQuery_assetMediaStringContentType = NULL;
    }
    if(valueQuery_assetMediaStringContentType){
        free(valueQuery_assetMediaStringContentType);
        valueQuery_assetMediaStringContentType = NULL;
    }
    if(keyPairQuery_assetMediaStringContentType){
        keyValuePair_free(keyPairQuery_assetMediaStringContentType);
        keyPairQuery_assetMediaStringContentType = NULL;
    }
    if(keyQuery_assetAttachedMedia){
        free(keyQuery_assetAttachedMedia);
        keyQuery_assetAttachedMedia = NULL;
    }
    if(keyPairQuery_assetAttachedMedia){
        keyValuePair_free(keyPairQuery_assetAttachedMedia);
        keyPairQuery_assetAttachedMedia = NULL;
    }
    if(keyQuery_assetAttachedMediaUrl){
        free(keyQuery_assetAttachedMediaUrl);
        keyQuery_assetAttachedMediaUrl = NULL;
    }
    if(valueQuery_assetAttachedMediaUrl){
        free(valueQuery_assetAttachedMediaUrl);
        valueQuery_assetAttachedMediaUrl = NULL;
    }
    if(keyPairQuery_assetAttachedMediaUrl){
        keyValuePair_free(keyPairQuery_assetAttachedMediaUrl);
        keyPairQuery_assetAttachedMediaUrl = NULL;
    }
    if(keyQuery_assetAttachedMediaString){
        free(keyQuery_assetAttachedMediaString);
        keyQuery_assetAttachedMediaString = NULL;
    }
    if(valueQuery_assetAttachedMediaString){
        free(valueQuery_assetAttachedMediaString);
        valueQuery_assetAttachedMediaString = NULL;
    }
    if(keyPairQuery_assetAttachedMediaString){
        keyValuePair_free(keyPairQuery_assetAttachedMediaString);
        keyPairQuery_assetAttachedMediaString = NULL;
    }
    if(keyQuery_assetAttachedMediaStringFileName){
        free(keyQuery_assetAttachedMediaStringFileName);
        keyQuery_assetAttachedMediaStringFileName = NULL;
    }
    if(valueQuery_assetAttachedMediaStringFileName){
        free(valueQuery_assetAttachedMediaStringFileName);
        valueQuery_assetAttachedMediaStringFileName = NULL;
    }
    if(keyPairQuery_assetAttachedMediaStringFileName){
        keyValuePair_free(keyPairQuery_assetAttachedMediaStringFileName);
        keyPairQuery_assetAttachedMediaStringFileName = NULL;
    }
    if(keyQuery_assetAttachedMediaStringContentType){
        free(keyQuery_assetAttachedMediaStringContentType);
        keyQuery_assetAttachedMediaStringContentType = NULL;
    }
    if(valueQuery_assetAttachedMediaStringContentType){
        free(valueQuery_assetAttachedMediaStringContentType);
        valueQuery_assetAttachedMediaStringContentType = NULL;
    }
    if(keyPairQuery_assetAttachedMediaStringContentType){
        keyValuePair_free(keyPairQuery_assetAttachedMediaStringContentType);
        keyPairQuery_assetAttachedMediaStringContentType = NULL;
    }
    if(keyQuery_assetLocationDescription){
        free(keyQuery_assetLocationDescription);
        keyQuery_assetLocationDescription = NULL;
    }
    if(valueQuery_assetLocationDescription){
        free(valueQuery_assetLocationDescription);
        valueQuery_assetLocationDescription = NULL;
    }
    if(keyPairQuery_assetLocationDescription){
        keyValuePair_free(keyPairQuery_assetLocationDescription);
        keyPairQuery_assetLocationDescription = NULL;
    }
    if(keyQuery_assetApp){
        free(keyQuery_assetApp);
        keyQuery_assetApp = NULL;
    }
    if(valueQuery_assetApp){
        free(valueQuery_assetApp);
        valueQuery_assetApp = NULL;
    }
    if(keyPairQuery_assetApp){
        keyValuePair_free(keyPairQuery_assetApp);
        keyPairQuery_assetApp = NULL;
    }
    if(keyQuery_assetSearchTags){
        free(keyQuery_assetSearchTags);
        keyQuery_assetSearchTags = NULL;
    }
    if(valueQuery_assetSearchTags){
        free(valueQuery_assetSearchTags);
        valueQuery_assetSearchTags = NULL;
    }
    if(keyPairQuery_assetSearchTags){
        keyValuePair_free(keyPairQuery_assetSearchTags);
        keyPairQuery_assetSearchTags = NULL;
    }
    if(keyQuery_assetLatitude){
        free(keyQuery_assetLatitude);
        keyQuery_assetLatitude = NULL;
    }
    if(keyPairQuery_assetLatitude){
        keyValuePair_free(keyPairQuery_assetLatitude);
        keyPairQuery_assetLatitude = NULL;
    }
    if(keyQuery_assetLongitude){
        free(keyQuery_assetLongitude);
        keyQuery_assetLongitude = NULL;
    }
    if(keyPairQuery_assetLongitude){
        keyValuePair_free(keyPairQuery_assetLongitude);
        keyPairQuery_assetLongitude = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

