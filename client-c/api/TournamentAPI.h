#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/mission_short_response.h"
#include "../model/sirqul_response.h"
#include "../model/tournament_response.h"

// Enum SPLITREWARD for TournamentAPI_createTournament
typedef enum  { sirqul_iot_platform_createTournament_SPLITREWARD_NULL = 0, sirqul_iot_platform_createTournament_SPLITREWARD_EVEN, sirqul_iot_platform_createTournament_SPLITREWARD_ALL, sirqul_iot_platform_createTournament_SPLITREWARD_FIRST, sirqul_iot_platform_createTournament_SPLITREWARD_RANDOM } sirqul_iot_platform_createTournament_splitReward_e;

// Enum MISSIONTYPE for TournamentAPI_createTournament
typedef enum  { sirqul_iot_platform_createTournament_MISSIONTYPE_NULL = 0, sirqul_iot_platform_createTournament_MISSIONTYPE_TOURNAMENT, sirqul_iot_platform_createTournament_MISSIONTYPE_POOLPLAY, sirqul_iot_platform_createTournament_MISSIONTYPE_MULTISTAGE } sirqul_iot_platform_createTournament_missionType_e;

// Enum VISIBILITY for TournamentAPI_createTournament
typedef enum  { sirqul_iot_platform_createTournament_VISIBILITY_NULL = 0, sirqul_iot_platform_createTournament_VISIBILITY__PUBLIC, sirqul_iot_platform_createTournament_VISIBILITY_LISTABLE, sirqul_iot_platform_createTournament_VISIBILITY_REWARDABLE, sirqul_iot_platform_createTournament_VISIBILITY_TRIGGERABLE, sirqul_iot_platform_createTournament_VISIBILITY__PRIVATE } sirqul_iot_platform_createTournament_visibility_e;

// Enum INCLUDESCORES for TournamentAPI_getTournament
typedef enum  { sirqul_iot_platform_getTournament_INCLUDESCORES_NULL = 0, sirqul_iot_platform_getTournament_INCLUDESCORES_ALL, sirqul_iot_platform_getTournament_INCLUDESCORES_MINE } sirqul_iot_platform_getTournament_includeScores_e;

// Enum SORTFIELD for TournamentAPI_searchObjects
typedef enum  { sirqul_iot_platform_searchObjects_SORTFIELD_NULL = 0, sirqul_iot_platform_searchObjects_SORTFIELD_ID, sirqul_iot_platform_searchObjects_SORTFIELD_PLAYER_SCORE_COUNT } sirqul_iot_platform_searchObjects_sortField_e;

// Enum MISSIONTYPE for TournamentAPI_searchRounds
typedef enum  { sirqul_iot_platform_searchRounds_MISSIONTYPE_NULL = 0, sirqul_iot_platform_searchRounds_MISSIONTYPE_TOURNAMENT, sirqul_iot_platform_searchRounds_MISSIONTYPE_POOLPLAY } sirqul_iot_platform_searchRounds_missionType_e;

// Enum FILTER for TournamentAPI_searchTournaments
typedef enum  { sirqul_iot_platform_searchTournaments_FILTER_NULL = 0, sirqul_iot_platform_searchTournaments_FILTER_ALL, sirqul_iot_platform_searchTournaments_FILTER_UPCOMING, sirqul_iot_platform_searchTournaments_FILTER_PAST, sirqul_iot_platform_searchTournaments_FILTER_PRESENT, sirqul_iot_platform_searchTournaments_FILTER_ACTIVE } sirqul_iot_platform_searchTournaments_filter_e;

// Enum SORTFIELD for TournamentAPI_searchTournaments
typedef enum  { sirqul_iot_platform_searchTournaments_SORTFIELD_NULL = 0, sirqul_iot_platform_searchTournaments_SORTFIELD_ACTIVE, sirqul_iot_platform_searchTournaments_SORTFIELD_TITLE, sirqul_iot_platform_searchTournaments_SORTFIELD_DESCRIPTION, sirqul_iot_platform_searchTournaments_SORTFIELD_CREATED, sirqul_iot_platform_searchTournaments_SORTFIELD_UPDATED, sirqul_iot_platform_searchTournaments_SORTFIELD_MISSION_TYPE, sirqul_iot_platform_searchTournaments_SORTFIELD_OWNER_DISPLAY, sirqul_iot_platform_searchTournaments_SORTFIELD_START_DATE, sirqul_iot_platform_searchTournaments_SORTFIELD_END_DATE, sirqul_iot_platform_searchTournaments_SORTFIELD_STARTING_LIMIT, sirqul_iot_platform_searchTournaments_SORTFIELD_AVAILABLE_LIMIT, sirqul_iot_platform_searchTournaments_SORTFIELD_INVITE_COUNT, sirqul_iot_platform_searchTournaments_SORTFIELD_ACCEPTED_COUNT } sirqul_iot_platform_searchTournaments_sortField_e;

// Enum SPLITREWARD for TournamentAPI_updateTournament
typedef enum  { sirqul_iot_platform_updateTournament_SPLITREWARD_NULL = 0, sirqul_iot_platform_updateTournament_SPLITREWARD_EVEN, sirqul_iot_platform_updateTournament_SPLITREWARD_ALL, sirqul_iot_platform_updateTournament_SPLITREWARD_FIRST, sirqul_iot_platform_updateTournament_SPLITREWARD_RANDOM } sirqul_iot_platform_updateTournament_splitReward_e;

// Enum VISIBILITY for TournamentAPI_updateTournament
typedef enum  { sirqul_iot_platform_updateTournament_VISIBILITY_NULL = 0, sirqul_iot_platform_updateTournament_VISIBILITY__PUBLIC, sirqul_iot_platform_updateTournament_VISIBILITY_LISTABLE, sirqul_iot_platform_updateTournament_VISIBILITY_REWARDABLE, sirqul_iot_platform_updateTournament_VISIBILITY_TRIGGERABLE, sirqul_iot_platform_updateTournament_VISIBILITY__PRIVATE } sirqul_iot_platform_updateTournament_visibility_e;


// Create Tournament
//
// Create a tournament.
//
tournament_response_t*
TournamentAPI_createTournament(apiClient_t *apiClient, long accountId, char *appKey, char *title, int *costToPlay, long startDate, char *subType, long imageAssetId, int *secondsBetweenLevels, int *secondsForTieBreaker, int *secondsBetweenPacks, int *maximumLevelLength, char *costToPlayType, int *minimumToPlay, int *startingLimit, int *availableLimit, char *description, char *metaData, char *audienceIds, int *active, int *enableBuyBack, char *offerIds, long offerAssetId, int *fixedReward, sirqul_iot_platform_createTournament_splitReward_e splitReward, int *allocateTickets, char *tournamentData, sirqul_iot_platform_createTournament_missionType_e missionType, sirqul_iot_platform_createTournament_visibility_e visibility, int *preliminaryGroups, char *preliminaryGroupAdvancements, int *enableMultipleEntries, int *enableMultipleVotes, int *featured, char *winnerTag, char *tieTag);


// Delete Tournament
//
// Delete a tournament.
//
sirqul_response_t*
TournamentAPI_deleteTournament(apiClient_t *apiClient, long accountId, long missionId);


// Get Tournament
//
// Get a tournament.
//
tournament_response_t*
TournamentAPI_getTournament(apiClient_t *apiClient, long accountId, long missionId, char *joinCode, sirqul_iot_platform_getTournament_includeScores_e includeScores, int *objectPreviewSize);


// Search Tournament Objects
//
// Search on game objects of tournaments
//
sirqul_response_t*
TournamentAPI_searchObjects(apiClient_t *apiClient, long accountId, long gameLevelId, sirqul_iot_platform_searchObjects_sortField_e sortField, int *descending, int *start, int *limit);


// Search Tournament Rounds
//
// Search for the user's tournament games.
//
sirqul_response_t*
TournamentAPI_searchRounds(apiClient_t *apiClient, long accountId, char *appKey, char *status, sirqul_iot_platform_searchRounds_missionType_e missionType, int *currentOnly, char *visibilities, int *start, int *limit);


// Search Tournaments
//
// Search for tournaments
//
mission_short_response_t*
TournamentAPI_searchTournaments(apiClient_t *apiClient, long accountId, char *appKey, char *keyword, char *subType, int *includeInactive, char *missionTypes, sirqul_iot_platform_searchTournaments_filter_e filter, sirqul_iot_platform_searchTournaments_sortField_e sortField, int *descending, char *visibility, int *start, int *limit);


// Submit Tournament Score
//
// Submit an array of scores for a tournament match. 
//
sirqul_response_t*
TournamentAPI_submitTournamentScore(apiClient_t *apiClient, long accountId, char *appKey, long missionId, long gameId, long packId, char *scores, long gameLevelId);


// Submit a vote for a multi-stage album tournament.
//
// Submit a vote for a multi-stage album tournament.
//
sirqul_response_t*
TournamentAPI_submitTournamentVote(apiClient_t *apiClient, long accountId, char *appKey, long missionId, long gameObjectId, char *deviceId, int *checkIfDeviceAlreadyVoted);


// Substitute Tournament Player
//
// Service to replace the user's opponent in the current level - pack - mission with an AI account.
//
sirqul_response_t*
TournamentAPI_substituteTournamentPlayer(apiClient_t *apiClient, long accountId, long missionId, long packId, long gameLevelId);


// Update Tournament
//
// Update a tournament.
//
tournament_response_t*
TournamentAPI_updateTournament(apiClient_t *apiClient, long accountId, long missionId, char *title, char *subType, long imageAssetId, int *secondsBetweenLevels, int *secondsForTieBreaker, int *secondsBetweenPacks, int *maximumLevelLength, int *costToPlay, char *costToPlayType, int *minimumToPlay, int *startingLimit, int *availableLimit, char *description, char *metaData, long startDate, char *audienceIds, int *active, int *enableBuyBack, char *offerIds, long offerAssetId, int *fixedReward, sirqul_iot_platform_updateTournament_splitReward_e splitReward, int *allocateTickets, char *tournamentData, sirqul_iot_platform_updateTournament_visibility_e visibility, int *preliminaryGroups, char *preliminaryGroupAdvancements, int *enableMultipleEntries, int *enableMultipleVotes, int *featured, char *winnerTag, char *tieTag);


