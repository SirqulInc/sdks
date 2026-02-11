#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/creative_response.h"
#include "../model/mission_response.h"
#include "../model/sirqul_response.h"


// Add Preview
//
// Enable this ad for preview for this account.
//
sirqul_response_t*
CreativeAPI_addPreview(apiClient_t *apiClient, long accountId, long creativeId);


// Find Missions
//
// Get a set of ad filtered by the parameters provided.
//
list_t*
CreativeAPI_adsFind(apiClient_t *apiClient, char *appKey, int *randomize, int *targetedAdsOnly, char *type, long accountId, char *appVersion, double latitude, double longitude, char *device, long deviceIdentifier, char *deviceVersion, int *start, int *limit, int *includeAudiences, int *allocatesTickets, char *missionIds);


// Create Creative
//
// Create a creative
//
creative_response_t*
CreativeAPI_createCreative(apiClient_t *apiClient, long accountId, char *name, int *active, int *waitForAsset, char *description, long assetImageId, char *action, char *data, char *suffix, char *type, double balance, long referenceId, char *appVersion, long missionId, long offerId);


// Delete Creative
//
// Delete a creative
//
sirqul_response_t*
CreativeAPI_deleteCreative(apiClient_t *apiClient, long accountId, long creativeId);


// Get Creative
//
// Get a creative
//
creative_response_t*
CreativeAPI_getCreative(apiClient_t *apiClient, long accountId, long creativeId);


// Search Creatives
//
// Get a list of levels for an application, just those the account has permissions to view.
//
list_t*
CreativeAPI_getCreativesByApplication(apiClient_t *apiClient, long accountId, char *appKey, int *start, int *limit, long missionId, char *keyword);


// Remove Preview
//
// Remove this ad for preview for this account.
//
sirqul_response_t*
CreativeAPI_removePreview(apiClient_t *apiClient, long accountId, long creativeId);


// Update Creative
//
// Update a creative
//
creative_response_t*
CreativeAPI_updateCreative(apiClient_t *apiClient, long accountId, long creativeId, char *name, char *description, long assetImageId, char *action, char *data, char *suffix, char *type, double balance, int *active, long referenceId, char *appVersion, long missionId);


