#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/asset_full_response.h"
#include "../model/asset_response.h"
#include "../model/asset_short_response.h"
#include "../model/sirqul_response.h"

// Enum ADSIZE for AssetAPI_assetMorph
typedef enum  { sirqul_iot_platform_assetMorph_ADSIZE_NULL = 0, sirqul_iot_platform_assetMorph_ADSIZE_CONFIG, sirqul_iot_platform_assetMorph_ADSIZE_BANNER, sirqul_iot_platform_assetMorph_ADSIZE_LEADERBOARD, sirqul_iot_platform_assetMorph_ADSIZE_SKYSCRAPER, sirqul_iot_platform_assetMorph_ADSIZE_VIDEO, sirqul_iot_platform_assetMorph_ADSIZE_ZIP, sirqul_iot_platform_assetMorph_ADSIZE_INTERSTITIAL, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM1, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM2, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM3, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM4, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM5, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM6, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM7, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM8, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM9, sirqul_iot_platform_assetMorph_ADSIZE_CUSTOM10 } sirqul_iot_platform_assetMorph_adSize_e;


// Download Asset
//
// Downloads an asset from the server for assets that have been uploaded to the server.
//
sirqul_response_t*
AssetAPI_assetDownload(apiClient_t *apiClient, char *filename);


// Convert Offer to Creative
//
// Converts an offer image + text into a creative image.
//
asset_short_response_t*
AssetAPI_assetMorph(apiClient_t *apiClient, long offerId, sirqul_iot_platform_assetMorph_adSize_e adSize, long creativeId, int *width, int *height, char *backgroundSize, char *_template);


// Create Asset
//
// Uploads an asset to server and returns an asset id which can be used to assign to various objects.
//
asset_response_t*
AssetAPI_createAsset(apiClient_t *apiClient, int *returnNulls, char *deviceId, long accountId, long albumId, long collectionId, char *addToDefaultAlbum, int *addToMediaLibrary, int *versionCode, char *versionName, char *metaData, char *caption, char *assetType, char *approvalStatus, long assignedAccountId, binary_t* media, char *mediaUrl, char *mediaString, char *mediaStringFileName, char *mediaStringContentType, int *mediaHeight, int *mediaWidth, binary_t* attachedMedia, char *attachedMediaUrl, char *attachedMediaString, char *attachedMediaStringFileName, char *attachedMediaStringContentType, int *attachedMediaHeight, int *attachedMediaWidth, char *locationDescription, char *app, char *appKey, char *searchTags, double latitude, double longitude);


// Delete Asset
//
// Delete an asset.
//
sirqul_response_t*
AssetAPI_deleteAsset(apiClient_t *apiClient, char *assetId, char *deviceId, long accountId, double latitude, double longitude);


// Get Asset
//
// Gets the full asset response including attached likes and notes.
//
asset_full_response_t*
AssetAPI_getAsset(apiClient_t *apiClient, long assetId, char *deviceId, long accountId, int *noteDescending);


// Remove Asset from Collection
//
// Remove assets from collections
//
sirqul_response_t*
AssetAPI_removeAsset(apiClient_t *apiClient, char *assetId, char *deviceId, long accountId, long albumId, long collectionId, int *removeFromDefaultAlbums, double latitude, double longitude);


// Search Assets
//
// Searches for assets
//
list_t*
AssetAPI_searchAssets(apiClient_t *apiClient, char *deviceId, long accountId, char *albumIds, char *assetIds, char *appKey, char *mediaType, char *mimeType, char *keyword, int *versionCode, char *versionName, long updatedSince, long updatedBefore, char *sortField, int *descending, int *searchMediaLibrary, int *filterByBillable, int *activeOnly, int *returnApp, int *start, int *limit, char *searchMode, char *assetType, char *approvalStatus, long assignedAccountId);


// Update Asset
//
// Updates an asset's meta data. If an album reference is passed in, the participants with write permissions are allowed to edit the asset. Otherwise, only the asset up-loader has permission to edit the data.
//
sirqul_response_t*
AssetAPI_updateAsset(apiClient_t *apiClient, long assetId, char *deviceId, long accountId, long albumId, long attachedAssetId, int *versionCode, char *versionName, char *metaData, char *caption, char *assetType, char *approvalStatus, long assignedAccountId, binary_t* media, char *mediaUrl, char *mediaString, char *mediaStringFileName, char *mediaStringContentType, int *mediaHeight, int *mediaWidth, binary_t* attachedMedia, char *attachedMediaUrl, char *attachedMediaString, char *attachedMediaStringFileName, char *attachedMediaStringContentType, int *attachedMediaHeight, int *attachedMediaWidth, char *locationDescription, char *searchTags, char *appKey, double latitude, double longitude);


