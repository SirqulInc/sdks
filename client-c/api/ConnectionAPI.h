#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/connection_group_response.h"
#include "../model/connection_info_response.h"
#include "../model/connection_list_response.h"
#include "../model/connection_response.h"
#include "../model/sirqul_response.h"

// Enum SORTFIELD for ConnectionAPI_groupSearch
typedef enum  { sirqul_iot_platform_groupSearch_SORTFIELD_NULL = 0, sirqul_iot_platform_groupSearch_SORTFIELD_CREATED, sirqul_iot_platform_groupSearch_SORTFIELD_UPDATED, sirqul_iot_platform_groupSearch_SORTFIELD_ACTIVE, sirqul_iot_platform_groupSearch_SORTFIELD_NAME, sirqul_iot_platform_groupSearch_SORTFIELD_DESCRIPTION, sirqul_iot_platform_groupSearch_SORTFIELD_CAN_VIEW_PROFILE_INFO, sirqul_iot_platform_groupSearch_SORTFIELD_CAN_VIEW_GAME_INFO, sirqul_iot_platform_groupSearch_SORTFIELD_CAN_VIEW_FRIEND_INFO, sirqul_iot_platform_groupSearch_SORTFIELD_INVITE_CODE, sirqul_iot_platform_groupSearch_SORTFIELD_OWNER_DISPLAY, sirqul_iot_platform_groupSearch_SORTFIELD_OWNER_USERNAME } sirqul_iot_platform_groupSearch_sortField_e;


// Add Connection
//
// Adds a connection to a group.
//
sirqul_response_t*
ConnectionAPI_addConnectionToGroup(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *deviceId, long accountId, long connectionId, long connectionAccountId, long pendingId, double latitude, double longitude);


// Add Connections
//
// Adds a list of connections to a group.
//
sirqul_response_t*
ConnectionAPI_addConnectionsToGroup(apiClient_t *apiClient, double version, long connectionGroupId, char *deviceId, long accountId, char *connectionIds, char *connectionAccountIds, double latitude, double longitude);


// Add Connection Groups
//
// Add sub groups to a group.
//
connection_group_response_t*
ConnectionAPI_addSubGroups(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *subGroupIds, char *deviceId, long accountId, double latitude, double longitude);


// Create or Update Connection
//
// Creates or updates the connection of the user and another account. Allows a user to follow, block, mark as trusted, and/or add someone to a group.
//
connection_response_t*
ConnectionAPI_createOrUpdateConnection(apiClient_t *apiClient, double version, char *deviceId, long accountId, long connectionId, long connectionAccountId, long pendingId, long groupId, char *gameType, char *appKey, int *isTrusted, int *ignoreFriendRequest, int *isContact, int *isBlocked, int *isFollowing, int *connectionResponse);


// Create or Update Connection Group
//
// Creates a new private group.
//
sirqul_response_t*
ConnectionAPI_createOrUpdateGroup(apiClient_t *apiClient, double version, int *returnNulls, char *deviceId, long accountId, char *name, long groupId, long assetId, char *connections, char *description, int *canViewProfileInfo, int *canViewGameInfo, int *canViewFriendInfo, int *active, double latitude, double longitude);


// Accept Follow Request
//
// Accept someone's follow request.
//
sirqul_response_t*
ConnectionAPI_followAccept(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey);


// Reject Follow Request
//
// Reject someone's follow request or remove them as a follower.
//
sirqul_response_t*
ConnectionAPI_followReject(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey);


// Remove Follower / Unfollow
//
// Unfollow someone you are following or remove them as a follower.
//
sirqul_response_t*
ConnectionAPI_followRemove(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey);


// Send Follow Request
//
// Send a request to follow someone.
//
sirqul_response_t*
ConnectionAPI_followRequest(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, char *appKey, int *approvalNeeded);


// Accept Friend
//
// Accept a friend request and optionally sends a notification.
//
sirqul_response_t*
ConnectionAPI_friendAccept(apiClient_t *apiClient, double version, long friendAccountId, int *notifyFriend, char *deviceId, long accountId, char *gameType, char *appKey, char *notificationMessage);


// Decline Friend
//
// Request a friend request and optionally sends a notification.
//
sirqul_response_t*
ConnectionAPI_friendReject(apiClient_t *apiClient, double version, long friendAccountId, char *deviceId, long accountId, char *gameType, char *appKey, int *notifyFriend, char *notificationMessage);


// Delete Friend
//
// Removes a friend from the user's friends list.
//
sirqul_response_t*
ConnectionAPI_friendRemove(apiClient_t *apiClient, double version, long friendAccountId, char *deviceId, long accountId, int *notifyFriend, int *removeFromGroups);


// Request Friend
//
// Sends a friend request notification to another user.
//
sirqul_response_t*
ConnectionAPI_friendRequest(apiClient_t *apiClient, double version, long friendAccountId, char *deviceId, long accountId, char *gameType, char *appKey, char *notificationMessage);


// Get Sent Friend Requests
//
// Gets the connection sent friend requests.
//
connection_list_response_t*
ConnectionAPI_getConnectionSentFriendRequests(apiClient_t *apiClient, double version, char *deviceId, long accountId);


// Search Connections
//
// Gets the connections.
//
connection_list_response_t*
ConnectionAPI_getConnections(apiClient_t *apiClient, double version, int *returnNulls, char *filter, char *sortField, int *descending, int *start, int *limit, char *deviceId, long accountId, long connectionAccountId, char *q, char *keyword, int *_i, int *_l, double latitude, double longitude);


// Get Connection Group
//
connection_group_response_t*
ConnectionAPI_getGroupDetails(apiClient_t *apiClient, double version, int *combineConnections, char *deviceId, long accountId, long groupId, double latitude, double longitude);


// Search Connection Groups
//
// Gets a user's private groups and default groups.
//
list_t*
ConnectionAPI_groupSearch(apiClient_t *apiClient, double version, sirqul_iot_platform_groupSearch_sortField_e sortField, int *descending, int *activeOnly, int *start, int *limit, char *deviceId, long accountId, double latitude, double longitude, char *keyword);


// Delete Connection
//
// Removes the connection from group.
//
sirqul_response_t*
ConnectionAPI_removeConnectionFromGroup(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *deviceId, long accountId, long connectionId, long connectionAccountId, long pendingId, double latitude, double longitude);


// Remove Connections
//
// Remove a list of connections from a group.
//
sirqul_response_t*
ConnectionAPI_removeConnectionsFromGroup(apiClient_t *apiClient, double version, long connectionGroupId, char *deviceId, long accountId, char *connectionIds, char *connectionAccountIds, double latitude, double longitude);


// Delete Connection Group
//
// Remove a user's group.
//
sirqul_response_t*
ConnectionAPI_removeGroup(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *deviceId, long accountId, double latitude, double longitude);


// Remove Connection Groups
//
// Remove sub groups from a group
//
sirqul_response_t*
ConnectionAPI_removeSubGroups(apiClient_t *apiClient, double version, int *returnNulls, long groupId, char *subGroupIds, char *deviceId, long accountId, double latitude, double longitude);


// Search Possible Connections
//
// Search for accounts that the user may not have a connection with.
//
connection_list_response_t*
ConnectionAPI_searchConnections(apiClient_t *apiClient, double version, int *returnNulls, int *start, int *limit, char *deviceId, long accountId, char *q, char *keyword, double latitude, double longitude, char *gameType, char *appKey, int *_i, int *_l, char *sortField, int *hasLocation);


