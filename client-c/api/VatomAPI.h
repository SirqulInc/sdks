#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


// Create following
//
// Create following.
//
void
VatomAPI_createFollowing(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse);


// Create Vatom Space
//
// Create a Vatom space.
//
void
VatomAPI_createSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Create Vatom Event
//
// Create a Vatom event.
//
void
VatomAPI_createVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Delete following
//
// Delete following.
//
void
VatomAPI_deleteFollowing(apiClient_t *apiClient, long accountId, char *vatomRelsKey, int *returnRawResponse);


// Reset All Points Balance
//
// Reset All Points Balance.
//
void
VatomAPI_deletePointsBalance(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse);


// Delete Vatom Space
//
// Delete a Vatom space.
//
void
VatomAPI_deleteSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomSpaceId, int *returnRawResponse);


// Delete Vatom Event
//
// Delete a Vatom event.
//
void
VatomAPI_deleteVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, int *returnRawResponse);


// Delete Vatom NFT
//
// Delete Vatom NFT
//
void
VatomAPI_deleteVatomNFT(apiClient_t *apiClient, long accountId, char *vatomId, int *returnRawResponse);


// Execute Action on NFT
//
// Execute Action on NFT.
//
void
VatomAPI_executeActionOnNFT(apiClient_t *apiClient, long accountId, char *vatomId, char *vatomParameters, int *returnRawResponse);


// Search Vatom Geo Map
//
// Search Vatom Geo Map
//
void
VatomAPI_geomapSearch(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse);


// Get Vatom Business Behaviors
//
// Gets the behaviors of a business.
//
void
VatomAPI_getBusinessBehaviors(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse);


// Get the coins for a Business
//
// Get the coins for a Businesss.
//
void
VatomAPI_getBusinessCoinsBalance(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse);


// Get the user business ids
//
// Get the business ids the logged in user has access to.
//
void
VatomAPI_getBusinessIds(apiClient_t *apiClient, long accountId, int *returnRawResponse);


// Get Vatom Business Info
//
// Gets the business info tied to this account.
//
void
VatomAPI_getBusinessInfo(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Get Vatom Business Users
//
// Gets the users of a business.
//
void
VatomAPI_getBusinessUsers(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse);


// Get Campaign Group Entities
//
// Get campaign group entities.
//
void
VatomAPI_getCampaignGroupEntities(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse);


// Get Campaign Group Rules
//
// Get campaign group rules.
//
void
VatomAPI_getCampaignGroupRules(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse);


// Get Campaign Group Stats
//
// Get campaign group stats.
//
void
VatomAPI_getCampaignGroupStats(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse);


// Get Campaign Info
//
// Gets the info on a campaign.
//
void
VatomAPI_getCampaignInfo(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, int *returnRawResponse);


// Get Vatom Event Guest List
//
// Gets the guest list of an event.
//
void
VatomAPI_getEventGuestList(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, int *returnRawResponse);


// Get Vatom User's Inventory
//
// Gets the logged in user's Vatom Inventory.
//
void
VatomAPI_getInventory(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse);


// Get following
//
// Get following.
//
void
VatomAPI_getMyFollowing(apiClient_t *apiClient, long accountId, int *returnRawResponse);


// Get Points Balance
//
// Gets the points balance of a Vatom user.
//
void
VatomAPI_getPointsBalance(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomCampaignId, int *returnRawResponse);


// Get Points Balance as Business
//
// Gets the points balance of a Vatom user.
//
void
VatomAPI_getPointsBalanceAsBusiness(apiClient_t *apiClient, long accountId, char *appKey, char *vatomUserId, char *vatomCampaignId, int *returnRawResponse);


// Get Vatom Space
//
// Gets the details of a space.
//
void
VatomAPI_getSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomSpaceId, int *returnRawResponse);


// Get the coins for a user (as a Business)
//
// Get the coins for a user (as a Business).
//
void
VatomAPI_getUserCoinsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, int *returnRawResponse);


// Gets the coins balance for a Vatom User
//
// Gets the coins balance for a Vatom User.
//
void
VatomAPI_getUserCoinsBalance(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomParameters, int *returnRawResponse);


// Get user followers
//
// Get user followers.
//
void
VatomAPI_getUserFollowers(apiClient_t *apiClient, long accountId, char *vatomUserId, int *returnRawResponse);


// Get user following
//
// Get user following.
//
void
VatomAPI_getUserFollowing(apiClient_t *apiClient, long accountId, char *vatomUserId, int *returnRawResponse);


// Get User Info
//
// Get a User's Info.
//
void
VatomAPI_getUserInfo(apiClient_t *apiClient, long accountId, char *vatomUserId, int *returnRawResponse);


// Get Vatom User Profile
//
// Gets the logged in user's profile in Vatom.
//
void
VatomAPI_getUserProfile(apiClient_t *apiClient, long accountId, int *returnRawResponse);


// Get Vatom Event
//
// Gets the details of a event.
//
void
VatomAPI_getVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, int *returnRawResponse);


// Get Vatom NFT Details
//
// Get Vatom NFT Details
//
void
VatomAPI_getVatomNFT(apiClient_t *apiClient, long accountId, char *vatomId, int *returnRawResponse);


// List Vatom Communities
//
// Gets the communities tied to a business.
//
void
VatomAPI_listCommunities(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// List Vatom Events
//
// Gets the events tied to a business.
//
void
VatomAPI_listEvents(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// List Vatom Spaces
//
// Gets the spaces tied to a business.
//
void
VatomAPI_listSpaces(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// List Coin Transactions for a Vatom User
//
// Gets the logged in user's Vatom coin transactions.
//
void
VatomAPI_listUserCoinTransactions(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomParameters, int *returnRawResponse);


// List coin transactions for a user (as a Business)
//
// List coin transactions for a user (as a Business).
//
void
VatomAPI_listUserCoinTransactionsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Perform Action on NFT
//
// Perform Action on NFT.
//
void
VatomAPI_performActionOnNFT(apiClient_t *apiClient, long accountId, char *vatomId, char *vatomAction, char *vatomParameters, int *returnRawResponse);


// Redeem NFT
//
// Redeem an NFT.
//
void
VatomAPI_redeemNFT(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Redeem the coins for a user (as a Business)
//
// Redeem the coins for a user (as a Business).
//
void
VatomAPI_redeemUserCoinsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Search for Vatom Businesses
//
// Searches for Vatom businesses.
//
void
VatomAPI_searchBusinesses(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse);


// Search Campaign Groups
//
// Search campaign groups.
//
void
VatomAPI_searchCampaignGroups(apiClient_t *apiClient, long accountId, char *appKey, int *returnRawResponse);


// Search User Identities
//
// Search User Identities.
//
void
VatomAPI_searchIdentities(apiClient_t *apiClient, long accountId, int *returnRawResponse);


// Search Vatom User's Inventory
//
// Searches the logged in user's Vatom Inventory.
//
void
VatomAPI_searchInventory(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse);


// Send NFT
//
// Send an NFT.
//
void
VatomAPI_sendNFT(apiClient_t *apiClient, long accountId, char *appKey, char *vatomCampaignId, char *vatomParameters, int *returnRawResponse);


// Set Points Balance as Business
//
// Sets the points balance of a Vatom user.
//
void
VatomAPI_setPointsBalanceAsBusiness(apiClient_t *apiClient, long accountId, char *appKey, char *vatomUserId, char *vatomCampaignId, char *vatomParameters, int *returnRawResponse);


// Transfer coins from Vatom Users
//
// Transfer coins from Vatom Users.
//
void
VatomAPI_transferUserCoins(apiClient_t *apiClient, long accountId, char *vatomUserId, char *vatomParameters, int *returnRawResponse);


// Fund coins for a Business
//
// Fund/update coins for a Businesss.
//
void
VatomAPI_updateBusinessCoins(apiClient_t *apiClient, long accountId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Update Vatom Event Guest List
//
// Update the guest list of an event.
//
void
VatomAPI_updateEventGuestList(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, char *vatomParameters, int *returnRawResponse);


// Update Vatom Space
//
// Update a Vatom space.
//
void
VatomAPI_updateSpace(apiClient_t *apiClient, long accountId, char *appKey, char *vatomSpaceId, char *vatomParameters, int *returnRawResponse);


// Update the coins for a user (as a Business)
//
// Update the coins for a user (as a Business).
//
void
VatomAPI_updateUserCoinsAsBusiness(apiClient_t *apiClient, long accountId, char *vatomUserId, char *appKey, char *vatomParameters, int *returnRawResponse);


// Update Vatom User Profile
//
// Gets the logged in user's profile in Vatom.
//
void
VatomAPI_updateUserProfile(apiClient_t *apiClient, long accountId, char *vatomParameters, int *returnRawResponse);


// Update Vatom Event
//
// Update a Vatom event.
//
void
VatomAPI_updateVatomEvent(apiClient_t *apiClient, long accountId, char *appKey, char *vatomEventId, char *vatomParameters, int *returnRawResponse);


