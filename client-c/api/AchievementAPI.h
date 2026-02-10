#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/achievement_progress_response.h"
#include "../model/achievement_response.h"
#include "../model/achievement_short_response.h"
#include "../model/achievement_tier_response.h"
#include "../model/sirqul_response.h"

// Enum SORTFIELD for AchievementAPI_listAchievements
typedef enum  { sirqul_iot_platform_listAchievements_SORTFIELD_NULL = 0, sirqul_iot_platform_listAchievements_SORTFIELD_CREATED, sirqul_iot_platform_listAchievements_SORTFIELD_UPDATED, sirqul_iot_platform_listAchievements_SORTFIELD_DELETED, sirqul_iot_platform_listAchievements_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_listAchievements_SORTFIELD_ACTIVE, sirqul_iot_platform_listAchievements_SORTFIELD_TITLE, sirqul_iot_platform_listAchievements_SORTFIELD_DESCRIPTION, sirqul_iot_platform_listAchievements_SORTFIELD_RANK_TYPE, sirqul_iot_platform_listAchievements_SORTFIELD_APPLICATION_ID, sirqul_iot_platform_listAchievements_SORTFIELD_APPLICATION_NAME, sirqul_iot_platform_listAchievements_SORTFIELD_BILLABLE_ID } sirqul_iot_platform_listAchievements_sortField_e;

// Enum SORTFIELD for AchievementAPI_searchAchievements
typedef enum  { sirqul_iot_platform_searchAchievements_SORTFIELD_NULL = 0, sirqul_iot_platform_searchAchievements_SORTFIELD_CREATED, sirqul_iot_platform_searchAchievements_SORTFIELD_UPDATED, sirqul_iot_platform_searchAchievements_SORTFIELD_DELETED, sirqul_iot_platform_searchAchievements_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchAchievements_SORTFIELD_ACTIVE, sirqul_iot_platform_searchAchievements_SORTFIELD_TITLE, sirqul_iot_platform_searchAchievements_SORTFIELD_DESCRIPTION, sirqul_iot_platform_searchAchievements_SORTFIELD_RANK_TYPE, sirqul_iot_platform_searchAchievements_SORTFIELD_APPLICATION_ID, sirqul_iot_platform_searchAchievements_SORTFIELD_APPLICATION_NAME, sirqul_iot_platform_searchAchievements_SORTFIELD_BILLABLE_ID } sirqul_iot_platform_searchAchievements_sortField_e;


// Searches an Achievement Tier
//
// Searches a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_apiVersionAchievementTierSearchPost(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *appKey, char *keyword, long achievementType, char *rankType, char *sortField, int *descending, int *descendingGoal, long start, long limit);


// Create Achievement
//
// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_response_t*
AchievementAPI_createAchievement(apiClient_t *apiClient, double version, char *appKey, char *title, char *deviceId, long accountId, char *analyticsTag, char *description, char *rankType, int *rankIncrement, int *minIncrement, int *maxIncrement, int *validate, int *active, char *triggerDefinition);


// Create Achievement Tier
//
// Create a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_createAchievementTier(apiClient_t *apiClient, double version, long achievementId, int *scoreAllInstances, char *deviceId, long accountId, binary_t* icon, long iconAssetId, char *title, char *description, long goalCount, long missionId, long gameId, long packId, long gameLevelId, int *gameObjectId);


// Delete Achievement
//
// Deletes an achievement (for developer/retailer use). User must have permissions to the application the achievement was created for.
//
sirqul_response_t*
AchievementAPI_deleteAchievement(apiClient_t *apiClient, double version, long achievementId, long accountId);


// Delete Achievement Tier
//
// Deletes an achievement tier (for developer/retailer use). User must have permissions to the application the achievement was created for.
//
sirqul_response_t*
AchievementAPI_deleteAchievementTier(apiClient_t *apiClient, double version, long achievementTierId, long accountId);


// Get Achievement
//
// Get an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_getAchievement(apiClient_t *apiClient, double version, long achievementId, char *deviceId, long accountId, char *achievementType);


// Gets an achievement tier
//
// Gets an achievement tier (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_getAchievementTier(apiClient_t *apiClient, double version, long accountId, long achievementTierId);


// Get Achievement Progress
//
// Gets a list of user achievements.
//
list_t*
AchievementAPI_getUserAchievements(apiClient_t *apiClient, double version, int *returnNulls, char *appKey, int *includeUndiscovered, char *deviceId, long accountId, char *connectionAccountEmail, long connectionAccountId, char *rankType, char *achievementType, double latitude, double longitude);


// List Achievement Tags
//
// List achievement tags by application
//
sirqul_response_t*
AchievementAPI_listAchievementTags(apiClient_t *apiClient, double version, char *appKey);


// List Achievements
//
// List achievements by billable.
//
list_t*
AchievementAPI_listAchievements(apiClient_t *apiClient, double version, sirqul_iot_platform_listAchievements_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, char *deviceId, long accountId, char *appKey, char *keyword, char *achievementType, char *rankType);


// Search Achievements
//
// Searches achievements by application for consumers.
//
list_t*
AchievementAPI_searchAchievements(apiClient_t *apiClient, double version, char *appKey, sirqul_iot_platform_searchAchievements_sortField_e sortField, int *descending, int *includeTiers, int *includeInactiveTiers, int *start, int *limit, char *deviceId, long accountId, char *keyword, char *achievementType, char *rankType);


// Update Achievement
//
// Updates an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_response_t*
AchievementAPI_updateAchievement(apiClient_t *apiClient, double version, char *deviceId, long accountId, long achievementId, char *analyticsTag, char *title, char *description, char *rankType, int *rankIncrement, int *minIncrement, int *nullMinIncrement, int *maxIncrement, int *nullMaxIncrement, int *validate, int *active, char *triggerDefinition);


// Update Achievement Tier
//
// Updates a tier of an achievement (for developer/retailer use). User must have permissions to the application the achievement is created for.
//
achievement_tier_response_t*
AchievementAPI_updateAchievementTier(apiClient_t *apiClient, double version, long achievementTierId, char *deviceId, long accountId, binary_t* icon, long iconAssetId, char *title, char *description, long goalCount, long missionId, long gameId, long packId, long gameLevelId, long gameObjectId, int *scoreAllInstances);


// Update Achievement Progress
//
// Update user achievement progress.
//
sirqul_response_t*
AchievementAPI_updateUserAchievement(apiClient_t *apiClient, double version, long accountId, long achievementId, char *tag, long customId, long increment, long startDate, long endDate, int *returnProgress);


