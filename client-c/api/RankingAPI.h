#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/object.h"
#include "../model/rank_full_response.h"
#include "../model/sirqul_response.h"


// Search Historical Rankings
//
// Get historical leaderboard rankings by time-frame.
//
rank_full_response_t*
RankingAPI_getHistoricalRankings(apiClient_t *apiClient, double version, char *appKey, char *rankType, long startDate, long endDate, char *deviceId, long accountId, char *sortField, int *descending, int *start, int *limit);


// Search Rankings
//
// Get leader board rankings. This is an all in one endpoint that can return multiple ranking types and also the current user rank.
//
rank_full_response_t*
RankingAPI_getRankings(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *gameType, char *appKey, char *q, char *keyword, char *rankType, char *leaderboardMode, char *withinAccountIds, int *returnUserRank, long albumId, long audienceId, char *sortField, int *descending, int *_i, int *start, int *_l, int *limit);


// Get Personal Rankings
//
// Returns the user's ranks for one or more rank types and modes.
//
object_t*
RankingAPI_getUserRank(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *appKey, char *rankType, int *returnUserRank, char *leaderboardMode, char *sortField, char *keyword, int *descending, int *start, int *limit);


// Override User Rank
//
// Allows an admin of an application to override a user's scores for a leaderboard.
//
sirqul_response_t*
RankingAPI_overrideUserRank(apiClient_t *apiClient, double version, long accountId, long ownerAccountId, char *appKey, char *rankType, long totalScore, long totalCount, long totalTime, long dailyScore, long dailyCount, long dailyTime, long weeklyScore, long weeklyCount, long weeklyTime, long monthlyScore, long monthlyCount, long monthlyTime, long topScore, long lowestScore, long streakCount, long streakBestCount, long startDate, long endDate);


// Update Ranking
//
// Update the rank value 
//
sirqul_response_t*
RankingAPI_updateRankings(apiClient_t *apiClient, double version, long accountId, char *appKey, char *rankType, long increment, long timeIncrement, char *tag, long startDate, long endDate, int *updateGlobal, int *createLeaderboard);


