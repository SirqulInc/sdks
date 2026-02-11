#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/leaderboard_response.h"
#include "../model/sirqul_response.h"


// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
// Create a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
leaderboard_response_t*
LeaderboardAPI_createLeaderboard(apiClient_t *apiClient, long accountId, char *appKey, char *rankType, char *leaderboardMode, binary_t* iconMedia, long iconAssetId, binary_t* bannerMedia, long bannerAssetId, int *limitation, char *sortField, char *title, char *description, char *metaData);


// Delete the Leader Board
//
// Removes a leader board id.
//
sirqul_response_t*
LeaderboardAPI_deleteLeaderboard(apiClient_t *apiClient, long leaderboardId, long accountId);


// Read a leaderboard by id and retrieve the matching ranking list
//
// Read a leaderboard by id and retrieve the matching ranking list
//
leaderboard_response_t*
LeaderboardAPI_getLeaderboard(apiClient_t *apiClient, long leaderboardId, long accountId, int *includeFullRankingList);


// Search leaderboard and retrieve the matching ranking list
//
// Search leaderboard and retrieve the matching ranking list
//
leaderboard_response_t*
LeaderboardAPI_searchLeaderboards(apiClient_t *apiClient, long accountId, char *appKey, int *globalOnly, char *keyword, char *leaderboardIds, char *rankTypes, char *sortField, int *descending, int *includeInactive, int *includeAppResponse, int *start, int *limit);


// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
// Update a leaderboard based on the rankingType, rankMode(leaderboardMode), sortField and limitation
//
leaderboard_response_t*
LeaderboardAPI_updateLeaderboard(apiClient_t *apiClient, long leaderboardId, long accountId, char *appKey, char *rankType, char *leaderboardMode, char *sortField, binary_t* iconMedia, long iconAssetId, binary_t* bannerMedia, long bannerAssetId, int *limitation, int *active, char *title, char *description, char *metaData);


