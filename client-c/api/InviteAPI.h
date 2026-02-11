#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/consumer_invite_response.h"
#include "../model/invite_response.h"
#include "../model/sirqul_response.h"


// Accept Invite
//
// Allows a user to accept an invite. The user could also become the inviter's friend.
//
consumer_invite_response_t*
InviteAPI_acceptInvite(apiClient_t *apiClient, char *token, long accountId, long albumId, long missionId, long albumContestId, long offerId, long offerLocationId, long retailerLocationId, char *appKey, int *autoFriend, int *autoAttendEvent, int *autoFavoriteOffer, int *autoFavoriteOfferLocation, int *autoFavoriteRetailerLocation);


// Invite to Contest
//
// Allows a user to invite people to gain access to a contest. This will generate an invite token, which when used, will give the invitee access to a contest (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
//
invite_response_t*
InviteAPI_albumContestInvite(apiClient_t *apiClient, char *deviceId, long accountId, long appId, char *appKey, long albumContestId, double latitude, double longitude);


// Invite to Collection
//
// Allows a user to invite people to gain access to a collection. This will generate an invite token, which when used, will give the invitee access to a collection (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
//
invite_response_t*
InviteAPI_albumInvite(apiClient_t *apiClient, char *deviceId, long accountId, long appId, char *appKey, long albumId, double latitude, double longitude);


// Invite to Event
//
// Allows a user to invite people to attend an event. This will generate an invite token, which when used, will allow the invitee to add the offer to their wallet.
//
invite_response_t*
InviteAPI_eventInvite(apiClient_t *apiClient, long accountId, char *appKey, long listingId, char *receiverAccountIds, long retailerLocationId);


// Invite to Game Level
//
// Allows a user to invite people to gain access to an album. This will generate an invite token, which when used, will give the invitee access to an album (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
//
invite_response_t*
InviteAPI_gameInvite(apiClient_t *apiClient, char *deviceId, long accountId, long appId, char *appKey, long gameLevelId, double latitude, double longitude);


// Get Invite
//
// This is used to determine whether an invite token is valid. If the token is valid, this will also return information about who invited the user, and what they are invited to.
//
sirqul_response_t*
InviteAPI_getInvite(apiClient_t *apiClient, long accountId, char *token, long albumId, long missionId, long albumContestId, long offerId, long offerLocationId, long retailerLocationId, char *appKey);


// Invite to Mission
//
// Allows a user to invite people to gain access to a mission. This will generate an invite token, which when used, will give the invitee access to a mission (whether it is private or not). The invitee will also become the user's friend when the invitation is accepted.
//
invite_response_t*
InviteAPI_missionInvite(apiClient_t *apiClient, char *deviceId, long accountId, long appId, char *appKey, long missionId, double latitude, double longitude);


// Invite to Offer
//
// Allows a user to invite people to favorite an offer. This will generate an invite token, which when used, will give the invitee the offer in their favorite's list.
//
invite_response_t*
InviteAPI_offerInvite(apiClient_t *apiClient, long accountId, char *appKey, long offerId);


// Invite to Offer Location
//
// Allows a user to invite people to favorite an offer location. This will generate an invite token, which when used, will give the invitee the offer location in their favorite's list.
//
invite_response_t*
InviteAPI_offerLocationInvite(apiClient_t *apiClient, long accountId, char *appKey, long offerLocationId);


// Invite to Retailer Location
//
// Allows a user to invite people to favorite a retailer location. This will generate an invite token, which when used, will give the invitee the retailer location in their favorite's list.
//
invite_response_t*
InviteAPI_retailerLocationInvite(apiClient_t *apiClient, long accountId, char *appKey, long retailerLocationId, long albumId);


