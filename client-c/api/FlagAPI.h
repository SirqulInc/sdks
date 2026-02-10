#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/count_response.h"
#include "../model/flag_response.h"
#include "../model/sirqul_response.h"


// Create Flag
//
// Allows a user to flag an object that the user deems inappropriate or offensive. Flagable objects include accounts, albums, album contests, assets, game levels, and theme descriptors
//
sirqul_response_t*
FlagAPI_createFlag(apiClient_t *apiClient, double version, char *flagableType, long flagableId, char *deviceId, long accountId, char *flagDescription, double latitude, double longitude);


// Delete Flag
//
// Deletes a flag.
//
sirqul_response_t*
FlagAPI_deleteFlag(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *itemBeingFlaggedType, long itemBeingFlaggedId, char *flagableType, long flagableId);


// Get Flag
//
// Gets the details on whether the user has flagged a particular flagable object.
//
flag_response_t*
FlagAPI_getFlag(apiClient_t *apiClient, double version, char *flagableType, long flagableId, char *deviceId, long accountId, double latitude, double longitude);


// Get Flag Threshold
//
// Get the flag threshold value on an object type for a particular application.
//
count_response_t*
FlagAPI_getFlagThreshold(apiClient_t *apiClient, double version, char *itemBeingFlaggedType, char *appKey);


// Update Flag Threshold
//
// Update the flag threshold on an object type for a particular application.
//
count_response_t*
FlagAPI_updateFlagThreshold(apiClient_t *apiClient, double version, char *itemBeingFlaggedType, long threshold, char *appKey, char *deviceId, long accountId);


