#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/album_full_response.h"
#include "../model/album_response.h"
#include "../model/search_response.h"
#include "../model/sirqul_response.h"

// Enum VISIBILITY for AlbumAPI_addAlbumCollection
typedef enum  { sirqul_iot_platform_addAlbumCollection_VISIBILITY_NULL = 0, sirqul_iot_platform_addAlbumCollection_VISIBILITY__PUBLIC, sirqul_iot_platform_addAlbumCollection_VISIBILITY__PRIVATE, sirqul_iot_platform_addAlbumCollection_VISIBILITY_FRIENDS } sirqul_iot_platform_addAlbumCollection_visibility_e;

// Enum APPROVALSTATUS for AlbumAPI_addAlbumCollection
typedef enum  { sirqul_iot_platform_addAlbumCollection_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_addAlbumCollection_APPROVALSTATUS_PENDING, sirqul_iot_platform_addAlbumCollection_APPROVALSTATUS_REJECTED, sirqul_iot_platform_addAlbumCollection_APPROVALSTATUS_APPROVED, sirqul_iot_platform_addAlbumCollection_APPROVALSTATUS_FEATURED } sirqul_iot_platform_addAlbumCollection_approvalStatus_e;

// Enum APPROVALSTATUS for AlbumAPI_approveAlbum
typedef enum  { sirqul_iot_platform_approveAlbum_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_approveAlbum_APPROVALSTATUS_PENDING, sirqul_iot_platform_approveAlbum_APPROVALSTATUS_REJECTED, sirqul_iot_platform_approveAlbum_APPROVALSTATUS_APPROVED, sirqul_iot_platform_approveAlbum_APPROVALSTATUS_FEATURED } sirqul_iot_platform_approveAlbum_approvalStatus_e;

// Enum VISIBILITY for AlbumAPI_updateAlbumCollection
typedef enum  { sirqul_iot_platform_updateAlbumCollection_VISIBILITY_NULL = 0, sirqul_iot_platform_updateAlbumCollection_VISIBILITY__PUBLIC, sirqul_iot_platform_updateAlbumCollection_VISIBILITY__PRIVATE, sirqul_iot_platform_updateAlbumCollection_VISIBILITY_FRIENDS } sirqul_iot_platform_updateAlbumCollection_visibility_e;


// Create Album
//
// Create an Album.
//
search_response_t*
AlbumAPI_addAlbumCollection(apiClient_t *apiClient, char *title, int *coverAssetNullable, int *includeCoverInAssetList, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, int *anonymous, char *deviceId, long accountId, char *assetsToAdd, binary_t* media, char *mediaURL, long assetId, binary_t* attachedMedia, char *attachedMediaURL, long startDate, long endDate, char *tags, char *description, char *albumType, long albumTypeId, char *subType, double latitude, double longitude, char *locationDescription, sirqul_iot_platform_addAlbumCollection_visibility_e visibility, char *gameType, char *appKey, char *cellPhone, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *fullAddress, char *metaData, char *categoryIds, char *categoryFilterIds, char *audienceIds, int *includeAllAppUsersAsMembers, int *includeAudiencesAsMembers, char *audienceOperator, sirqul_iot_platform_addAlbumCollection_approvalStatus_e approvalStatus, char *linkedObjectType, long linkedObjectId);


// Add Album Users
//
// Add users to an album as participants.
//
sirqul_response_t*
AlbumAPI_addAlbumUsers(apiClient_t *apiClient, long albumId, int *includeFriendGroup, char *deviceId, long accountId, int *read, int *write, int *_delete, int *add, char *connections, char *connectionGroups);


// Approve Album
//
// Sets the approval status of an Album.
//
sirqul_response_t*
AlbumAPI_approveAlbum(apiClient_t *apiClient, long albumId, char *deviceId, long accountId, sirqul_iot_platform_approveAlbum_approvalStatus_e approvalStatus, int *verified);


//  Get Album
//
// Get an Album.
//
album_full_response_t*
AlbumAPI_getAlbumCollection(apiClient_t *apiClient, int *returnNulls, long albumId, char *deviceId, long accountId, int *likePreviewSize, int *assetPreviewSize, int *notePreviewSize, int *connectionPreviewSize, int *audiencePreviewSize);


// Leave Album
//
//  Allows a user to leave an album (they are no longer considered a participant). The album creator cannot leave their own albums.
//
sirqul_response_t*
AlbumAPI_leaveAlbum(apiClient_t *apiClient, long albumId, char *deviceId, long accountId);


// Delete Album
//
// Deletes an Album
//
sirqul_response_t*
AlbumAPI_removeAlbum(apiClient_t *apiClient, long albumId, char *deviceId, long accountId);


// Remove Album Users
//
// Remove participants of an album.
//
sirqul_response_t*
AlbumAPI_removeAlbumUsers(apiClient_t *apiClient, long albumId, int *removeFriendGroup, char *deviceId, long accountId, char *connections, char *connectionGroups);


// Search Albums
//
// Searches on Albums.
//
list_t*
AlbumAPI_searchAlbums(apiClient_t *apiClient, char *filter, long albumTypeId, char *subType, int *includeInactive, char *sortField, int *descending, int *start, int *limit, double range, int *includeLiked, int *includeFavorited, int *includePermissions, int *likePreviewSize, int *assetPreviewSize, int *notePreviewSize, int *connectionPreviewSize, int *audiencePreviewSize, char *deviceId, long accountId, long connectionAccountId, long ownerId, char *albumIds, char *excludeAlbumIds, long mediaId, char *keyword, char *albumType, int *limitPerAlbumType, long dateCreated, long updatedSince, long updatedBefore, long createdSince, long createdBefore, long startedSince, long startedBefore, long endedSince, long endedBefore, double latitude, double longitude, char *appKey, char *categoryIds, char *categoryFilterIds, char *audienceIds, char *excludeAudienceIds, int *includeCompletable, int *includeRating, char *searchMode, int *stackSearch, int *stackWindowSize, int *minStackPerPage, char *stackPaginationIdentifier, int *stackDetails, long flagCountMinimum, int *removeFlaggedContent, int *verifiedFilter, char *linkedObjectType, long linkedObjectId, long orderAudienceId, int *ignoreDefaultAppFilter, char *searchExpression, int *generateAlbums);


// Update Album
//
// Update an Album.
//
album_response_t*
AlbumAPI_updateAlbumCollection(apiClient_t *apiClient, long albumId, char *deviceId, long accountId, char *assetsToAdd, char *assetsToRemove, long assetId, binary_t* media, char *mediaURL, int *active, char *title, long startDate, long endDate, char *tags, char *description, char *albumType, long albumTypeId, char *subType, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, double latitude, double longitude, char *locationDescription, sirqul_iot_platform_updateAlbumCollection_visibility_e visibility, char *cellPhone, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *fullAddress, int *anonymous, char *metaData, char *categoryIds, char *categoryFilterIds, char *audienceIds, char *audienceIdsToAdd, char *audienceIdsToRemove, int *includeAllAppUsersAsMembers, int *includeAudiencesAsMembers, char *audienceOperator, char *linkedObjectType, long linkedObjectId, int *indexNow);


