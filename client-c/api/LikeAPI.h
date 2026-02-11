#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/likable_response.h"
#include "../model/search_response.h"


// Create Like
//
// Allows a user to like or dislike accounts, albums, album contests, assets, game levels, notes, and theme descriptors. Multiple likes\\dislikes on the same object will replace the previous one.
//
likable_response_t*
LikeAPI_registerLike(apiClient_t *apiClient, char *likableType, long likableId, char *deviceId, long accountId, char *permissionableType, long permissionableId, int *like, char *app, char *gameType, char *appKey, double latitude, double longitude);


// Delete Like
//
// Removes a like. This will make the user \"neutral\".
//
likable_response_t*
LikeAPI_removeLike(apiClient_t *apiClient, char *likableType, long likableId, char *deviceId, long accountId, double latitude, double longitude);


// Search Likes
//
// Search for likes on a likable object.
//
search_response_t*
LikeAPI_searchLikes(apiClient_t *apiClient, char *likableType, long likableId, char *deviceId, long accountId, char *connectionAccountIds, char *sortField, int *descending, long updatedSince, long updatedBefore, int *start, int *limit);


