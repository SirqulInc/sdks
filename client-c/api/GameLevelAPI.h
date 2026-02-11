#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/game_level_list_response.h"
#include "../model/game_level_response.h"
#include "../model/question_response.h"
#include "../model/sirqul_response.h"
#include "../model/wordz_word_response.h"

// Enum SORTFIELD for GameLevelAPI_getGameLevelsByBillableEntity
typedef enum  { sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_NULL = 0, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_ACTIVE, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_NAME, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_DESCRIPTION, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_CREATED, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_UPDATED, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_LIKES, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_DISLIKES, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_NOTES, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_PLAYS, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_DOWNLOADS, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_QUITS, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_COMPLETES, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_VERSION, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_MISSION_TYPE, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_LEVEL_OWNER_DISPLAY, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_GAME_OWNER_DISPLAY, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_GAME_TITLE, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_GAME_DESCRIPTION, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_GAME_LIKES, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_GAME_DISLIKES, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_APP_NAME, sirqul_iot_platform_getGameLevelsByBillableEntity_SORTFIELD_APP_SCORING_TYPE } sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e;


// Create Game Level
//
// Create a game level. Currently does NOT support game objects.
//
game_level_response_t*
GameLevelAPI_createGameLevel(apiClient_t *apiClient, long accountId, char *name, char *gameData, char *gameDataSuffix, char *appKey, char *description, char *difficulty, char *appVersion, long assetImageId, long assetIconId, char *visibility, int *friendGroup, char *connectionIds, char *connectionGroupIds, double balance, int *active, int *allocateTickets, long ticketCount, char *ticketType, long points, char *tutorialTitle, char *tutorialMessage, char *tutorialAlignment, long tutorialImageAssetId, long offerId, char *metaData);


// Delete Game Level
//
// Delete a game level. The level and account must be valid and have the appropirate permissions to view the content.
//
sirqul_response_t*
GameLevelAPI_deleteGameLevel(apiClient_t *apiClient, long accountId, long levelId);


// Get Game Level
//
// Get a game level. The level and account must be valid and have the appropirate permissions to view the content.
//
game_level_response_t*
GameLevelAPI_getGameLevel(apiClient_t *apiClient, long accountId, long levelId, int *includeGameData);


// Search Game Levels
//
// Get a list of levels for an application, just those the account has permissions to view.
//
game_level_list_response_t*
GameLevelAPI_getGameLevelsByApplication(apiClient_t *apiClient, long accountId, char *appKey, char *keyword, char *sortField, int *descending, int *start, int *limit, char *appVersion, int *includeGameData, char *filters);


// Search Game Level by Billable Entity
//
// Searches on game levels that the logged in user has access to. A user would have access if the creator of the game level is managed under the same BillableEntity.
//
game_level_response_t*
GameLevelAPI_getGameLevelsByBillableEntity(apiClient_t *apiClient, long accountId, char *appKey, char *keyword, sirqul_iot_platform_getGameLevelsByBillableEntity_sortField_e sortField, int *descending, int *activeOnly, long start, long limit);


// Get Level Questions
//
// Get questions within a level.
//
question_response_t*
GameLevelAPI_getQuestionsInLevel(apiClient_t *apiClient, long levelId, long accountId);


// Get Level Words
//
// Get words within a level.
//
wordz_word_response_t*
GameLevelAPI_getWordsInLevel(apiClient_t *apiClient, long levelId, long accountId);


// Update Game Level
//
// Update a game level. Currently does NOT support game objects.
//
game_level_response_t*
GameLevelAPI_updateGameLevel(apiClient_t *apiClient, long accountId, long levelId, char *appKey, char *name, char *description, char *difficulty, char *appVersion, long assetImageId, long assetIconId, char *gameData, char *gameDataSuffix, char *visibility, int *friendGroup, char *connectionIds, char *connectionGroupIds, double balance, int *active, int *allocateTickets, long ticketCount, char *ticketType, long points, char *tutorialTitle, char *tutorialMessage, char *tutorialAlignment, long tutorialImageAssetId, long offerId, char *metaData);


// Update Level Questions
//
// Updates a level with question game objects.
//
sirqul_response_t*
GameLevelAPI_updateQuestionsInLevel(apiClient_t *apiClient, long levelId, long accountId, char *questionIds);


// Update Level Words
//
// Updates a level with word game objects.
//
sirqul_response_t*
GameLevelAPI_updateWordsInLevel(apiClient_t *apiClient, long levelId, long accountId, char *wordIds);


