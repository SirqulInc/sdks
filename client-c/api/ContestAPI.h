#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/album_contest_list_response.h"
#include "../model/album_contest_response.h"
#include "../model/sirqul_response.h"

// Enum VISIBILITY for ContestAPI_addOrUpdateAlbumContest
typedef enum  { sirqul_iot_platform_addOrUpdateAlbumContest_VISIBILITY_NULL = 0, sirqul_iot_platform_addOrUpdateAlbumContest_VISIBILITY__PUBLIC, sirqul_iot_platform_addOrUpdateAlbumContest_VISIBILITY__PRIVATE, sirqul_iot_platform_addOrUpdateAlbumContest_VISIBILITY_FRIENDS } sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e;

// Enum APPROVALSTATUS for ContestAPI_approveAlbumContest
typedef enum  { sirqul_iot_platform_approveAlbumContest_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_approveAlbumContest_APPROVALSTATUS_PENDING, sirqul_iot_platform_approveAlbumContest_APPROVALSTATUS_REJECTED, sirqul_iot_platform_approveAlbumContest_APPROVALSTATUS_APPROVED, sirqul_iot_platform_approveAlbumContest_APPROVALSTATUS_FEATURED } sirqul_iot_platform_approveAlbumContest_approvalStatus_e;


// Create or Update Contest
//
// Creates or updates a contest.
//
album_contest_response_t*
ContestAPI_addOrUpdateAlbumContest(apiClient_t *apiClient, double version, int *publicRead, int *publicWrite, int *publicDelete, int *publicAdd, sirqul_iot_platform_addOrUpdateAlbumContest_visibility_e visibility, int *includeFriendGroup, char *deviceId, long accountId, char *gameType, char *appKey, char *contestType, long albumContestId, char *title, char *description, long albumId1, int *removeAlbum1, long albumId2, int *removeAlbum2, long startDate, long endDate, char *locationDescription, char *connectionIdsToAdd, char *connectionGroupIdsToAdd, double latitude, double longitude);


// Approve Contest
//
// Sets the approval status of a contest.
//
sirqul_response_t*
ContestAPI_approveAlbumContest(apiClient_t *apiClient, double version, long albumContestId, sirqul_iot_platform_approveAlbumContest_approvalStatus_e approvalStatus, char *deviceId, long accountId);


// Delete Contest
//
// Deletes a contest.
//
sirqul_response_t*
ContestAPI_deleteContest(apiClient_t *apiClient, double version, long albumContestId, char *deviceId, long accountId, double latitude, double longitude);


// Get Contest
//
// Gets the contest object including the likes and notes
//
album_contest_response_t*
ContestAPI_getAlbumContest(apiClient_t *apiClient, double version, long albumContestId, char *deviceId, long accountId, double latitude, double longitude);


// Search Contests
//
// Searches on contests.
//
album_contest_list_response_t*
ContestAPI_getAlbumContests(apiClient_t *apiClient, double version, char *filter, char *sortField, int *descending, int *start, int *limit, char *deviceId, long accountId, char *gameType, char *appKey, char *appType, char *contestType, long ownerId, char *q, char *keyword, int *_i, int *_l, long dateCreated, double latitude, double longitude);


// Vote on Contest
//
// Vote on a collection in a contest.
//
album_contest_response_t*
ContestAPI_voteOnAlbumContest(apiClient_t *apiClient, double version, long albumContestId, long albumId, char *deviceId, long accountId, char *contestType, double latitude, double longitude);


