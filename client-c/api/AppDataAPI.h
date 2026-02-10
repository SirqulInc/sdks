#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/app_response.h"
#include "../model/sirqul_response.h"


// Get App Data
//
// Get the application data structure.  The basic structure is a   node tree, with the root node being a AppResponse.  The response contains   the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.     Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application.
//
app_response_t*
AppDataAPI_getAppData(apiClient_t *apiClient, double version, int *start, int *limit, char *deviceId, long accountId, char *gameType, int *includeGameData, char *q, char *keyword, char *sortField, int *descending, int *_i, int *_l, int *gameObjectCount, char *filter, long dateCreated, long ownerId, char *missionIds, char *gameIds, char *packIds, char *gameLevelIds, char *appVersion, int *includeHigherVersionPacks, int *includeHigherVersionLevels, char *responseGroups, char *purchaseType);


// Create App Data
//
// Publish the application data structure.  Can be used to save levels   and scores.  It then returns the application data structure.  The basic   structure is a node tree, with the root node being a AppResponse.  The response   contains the user's profile, messages from the system, and a list of MissionResponse.    A mission can have any number of GameResponses but typically is a single   game type.  A game then has any number of PackResponses which help group   the game levels. Packs are then composed of any number of GameLevelResponses.      Using the various parameters can return the applications default mission   (built-in packs to play), the list of community levels published, the user's   saved levels, or explicity levels desired.  You can choose to include the   profile or not, or just return parts of the profile.  You can also filter   out game levels that have been published with a higher version of the application
//
app_response_t*
AppDataAPI_postAppData(apiClient_t *apiClient, double version, char *gameType, int *start, int *limit, char *data, char *deviceId, long accountId, int *includeGameData, char *q, char *keyword, char *sortField, int *descending, int *_i, int *_l, int *gameObjectCount, char *filter, long dateCreated, long ownerId, char *missionIds, char *gameIds, char *packIds, char *gameLevelIds, char *appVersion, int *includeHigherVersionPacks, int *includeHigherVersionLevels, char *responseGroups, char *purchaseType);


// Regenerate App Data
//
// Regenerate the app data cache for apps
//
sirqul_response_t*
AppDataAPI_regenAppData(apiClient_t *apiClient, double version, long accountId, char *appKey, char *buildVersion, char *apiVersion);


