#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/mission_format_response.h"
#include "../model/mission_response.h"
#include "../model/sirqul_response.h"

// Enum ADSIZE for MissionAPI_importMission
typedef enum  { sirqul_iot_platform_importMission_ADSIZE_NULL = 0, sirqul_iot_platform_importMission_ADSIZE_CONFIG, sirqul_iot_platform_importMission_ADSIZE_BANNER, sirqul_iot_platform_importMission_ADSIZE_LEADERBOARD, sirqul_iot_platform_importMission_ADSIZE_SKYSCRAPER, sirqul_iot_platform_importMission_ADSIZE_VIDEO, sirqul_iot_platform_importMission_ADSIZE_ZIP, sirqul_iot_platform_importMission_ADSIZE_INTERSTITIAL, sirqul_iot_platform_importMission_ADSIZE_CUSTOM1, sirqul_iot_platform_importMission_ADSIZE_CUSTOM2, sirqul_iot_platform_importMission_ADSIZE_CUSTOM3, sirqul_iot_platform_importMission_ADSIZE_CUSTOM4, sirqul_iot_platform_importMission_ADSIZE_CUSTOM5, sirqul_iot_platform_importMission_ADSIZE_CUSTOM6, sirqul_iot_platform_importMission_ADSIZE_CUSTOM7, sirqul_iot_platform_importMission_ADSIZE_CUSTOM8, sirqul_iot_platform_importMission_ADSIZE_CUSTOM9, sirqul_iot_platform_importMission_ADSIZE_CUSTOM10 } sirqul_iot_platform_importMission_adSize_e;


// Create Mission
//
// Create a user defined mission.
//
mission_response_t*
MissionAPI_createMission(apiClient_t *apiClient, long accountId, char *title, char *description, char *subType, long startDate, long endDate, int *active, char *gameLevelIds, char *creativeIds, char *audienceIds, char *missionTask, char *formatType, long offerId, double balance, int *advancedReporting, int *allocateTickets, long ticketCount, char *ticketType, long points, char *metaData, char *applicationIds, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius);


// Delete Mission
//
// Delete a mission.
//
sirqul_response_t*
MissionAPI_deleteMission(apiClient_t *apiClient, long accountId, long missionId);


// Find Missions
//
// Get a set of ad filtered by the parameters provided.
//
mission_response_t*
MissionAPI_findMissions(apiClient_t *apiClient, char *appKey, char *suffix, char *type, long accountId, char *appVersion, double latitude, double longitude, char *device, long deviceIdentifier, char *deviceVersion, int *start, int *limit, int *includeGameData, int *includeAudiences, int *allocatesTickets, int *randomize, int *targetedAdsOnly, char *missionIds, char *audienceOperator);


// Get Mission
//
// Get a mission.
//
mission_response_t*
MissionAPI_getMission(apiClient_t *apiClient, long accountId, long missionId, int *returnCreative);


// Import Mission
//
// Create a mission using a source item such as an offer location.
//
sirqul_response_t*
MissionAPI_importMission(apiClient_t *apiClient, long accountId, double latitude, double longitude, char *appKey, char *keyword, int *start, int *limit, sirqul_iot_platform_importMission_adSize_e adSize);


// Search Mission Formats
//
// Searches on pre-defined mission formats
//
list_t*
MissionAPI_searchMissionFormats(apiClient_t *apiClient, int *start, int *limit, int *activeOnly);


// Search Missions
//
// Get the list missions available to the account.  
//
list_t*
MissionAPI_searchMissions(apiClient_t *apiClient, long accountId, char *keyword, char *subType, int *start, int *limit, int *includeGameData, int *includeAudiences, int *includeInactive, char *suffix, char *sortField, int *descending);


// Search Missions by Billable Entity
//
// Use the accountId to determine the associated BillableEntity.  From there get a list of all accounts associated as managers.  Get the list missions owned by all associated managers.
//
list_t*
MissionAPI_searchMissionsByBillableEntity(apiClient_t *apiClient, long accountId, char *keyword, int *start, int *limit, int *includeGameData, int *includeAudiences, int *includeInactive, char *suffix, char *sortField, int *descending);


// Update Mission
//
// Update a mission.
//
mission_response_t*
MissionAPI_updateMission(apiClient_t *apiClient, long accountId, long missionId, char *title, char *description, char *subType, char *metaData, long startDate, long endDate, int *active, char *gameLevelIds, char *creativeIds, char *audienceIds, long offerId, double balance, int *advancedReporting, int *allocateTickets, long ticketCount, char *ticketType, long points, char *applicationIds, char *devices, char *deviceIds, char *deviceVersions, char *locations, char *radius);


