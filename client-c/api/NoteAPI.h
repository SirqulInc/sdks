#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/note_response.h"
#include "../model/sirqul_response.h"

// Enum SORTFIELD for NoteAPI_searchNotes
typedef enum  { sirqul_iot_platform_searchNotes_SORTFIELD_NULL = 0, sirqul_iot_platform_searchNotes_SORTFIELD_ID, sirqul_iot_platform_searchNotes_SORTFIELD_CREATED, sirqul_iot_platform_searchNotes_SORTFIELD_UPDATED, sirqul_iot_platform_searchNotes_SORTFIELD_DELETED, sirqul_iot_platform_searchNotes_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchNotes_SORTFIELD_ACTIVE, sirqul_iot_platform_searchNotes_SORTFIELD_OWNER_DISPLAY, sirqul_iot_platform_searchNotes_SORTFIELD_NOTABLE_TYPE, sirqul_iot_platform_searchNotes_SORTFIELD_NOTE_TAG, sirqul_iot_platform_searchNotes_SORTFIELD_NOTE_COUNT, sirqul_iot_platform_searchNotes_SORTFIELD_LIKES, sirqul_iot_platform_searchNotes_SORTFIELD_DISLIKES } sirqul_iot_platform_searchNotes_sortField_e;


// Batch Note Operation
//
// Perform a batch operation on notes for a notable object (for example: DELETE_ALL_NOTES_IN_NOTABLE). 
//
sirqul_response_t*
NoteAPI_batchOperation(apiClient_t *apiClient, double version, long notableId, char *notableType, char *deviceId, long accountId, char *batchOperation);


// Create Note
//
// This is used to leave a comment (note) on a notable object (i.e. albums, album contests, assets, game levels, offers, offer locations, retailers, retailer locations, and theme descriptors). Leaving a comment on a notable object will be visiable to everyone who has access to view the object.
//
note_response_t*
NoteAPI_createNote(apiClient_t *apiClient, double version, char *comment, char *deviceId, long accountId, char *notableType, long notableId, char *noteType, char *assetIds, char *tags, char *permissionableType, long permissionableId, char *appKey, char *locationDescription, double latitude, double longitude, char *metaData, char *receiverAccountIds, int *returnFullResponse, int *initializeAsset, int *assetReturnNulls, long assetAlbumId, long assetCollectionId, char *assetAddToDefaultAlbum, int *assetAddToMediaLibrary, int *assetVersionCode, char *assetVersionName, char *assetMetaData, char *assetCaption, binary_t* assetMedia, char *assetMediaUrl, char *assetMediaString, char *assetMediaStringFileName, char *assetMediaStringContentType, binary_t* assetAttachedMedia, char *assetAttachedMediaUrl, char *assetAttachedMediaString, char *assetAttachedMediaStringFileName, char *assetAttachedMediaStringContentType, char *assetLocationDescription, char *assetApp, char *assetSearchTags, double assetLatitude, double assetLongitude);


// Delete Note
//
// Sets a comment (note) as deleted.
//
sirqul_response_t*
NoteAPI_deleteNote(apiClient_t *apiClient, double version, long noteId, char *deviceId, long accountId, double latitude, double longitude, char *appKey);


// Get Note
//
// Get for a note based on its Id.
//
sirqul_response_t*
NoteAPI_getNote(apiClient_t *apiClient, double version, long noteId, char *deviceId, long accountId, int *returnFullResponse);


// Search Notes
//
// Search for notes on a notable object.
//
list_t*
NoteAPI_searchNotes(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *notableType, long notableId, char *noteTypes, char *appKey, char *keyword, long flagCountMinimum, int *flagsExceedThreshold, int *includeInactive, sirqul_iot_platform_searchNotes_sortField_e sortField, int *descending, int *returnFullResponse, long updatedSince, long updatedBefore, int *start, int *limit);


// Update Note
//
// Update an existing comment (note). Only the creator of the note have permission to update.
//
note_response_t*
NoteAPI_updateNote(apiClient_t *apiClient, double version, long noteId, char *deviceId, long accountId, char *comment, char *noteType, char *assetIds, char *tags, char *permissionableType, long permissionableId, char *appKey, char *locationDescription, double latitude, double longitude, char *metaData, int *returnFullResponse, int *active, int *updateAsset, int *assetReturnNulls, long assetAlbumId, long assetCollectionId, char *assetAddToDefaultAlbum, int *assetAddToMediaLibrary, int *assetVersionCode, char *assetVersionName, char *assetMetaData, char *assetCaption, binary_t* assetMedia, char *assetMediaUrl, char *assetMediaString, char *assetMediaStringFileName, char *assetMediaStringContentType, binary_t* assetAttachedMedia, char *assetAttachedMediaUrl, char *assetAttachedMediaString, char *assetAttachedMediaStringFileName, char *assetAttachedMediaStringContentType, char *assetLocationDescription, char *assetApp, char *assetSearchTags, double assetLatitude, double assetLongitude);


