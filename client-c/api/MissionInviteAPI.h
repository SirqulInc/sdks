#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/mission_response.h"
#include "../model/sirqul_response.h"


// Create Mission Invite
//
// Create the mission invite. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
//
mission_response_t*
MissionInviteAPI_createMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, long missionId, char *joinCode, int *includeGameData);


// Delete Mission Invite
//
// Update the mission invite status to quit.
//
sirqul_response_t*
MissionInviteAPI_deleteMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, long missionId, long missionInviteId, int *includeGameData);


// Get Mission Invite
//
// Get the mission invite. An account can only be invited to a mission one time.
//
mission_response_t*
MissionInviteAPI_getMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, long missionId, long missionInviteId, int *includeGameData, char *includeScores);


// Search Mission Invites
//
// Get a list of mission invites that the account has.
//
list_t*
MissionInviteAPI_searchMissionInvites(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, char *appVersion, long missionId, char *status, long lastUpdated, int *start, int *limit, char *keyword, char *missionTypes, int *filterByBillable, int *includeGameData);


// Update Mission Invite
//
// Update the mission invite status. An account can only be invited to a mission one time. For missions that require user submission and reviewing the permissionableType and permissionableId need to be provided.
//
mission_response_t*
MissionInviteAPI_updateMissionInvite(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, long missionId, long missionInviteId, long packId, long gameLevelId, char *status, char *permissionableType, long permissionableId, int *includeGameData);


