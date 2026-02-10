#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/count_response.h"
#include "../model/profile_response.h"
#include "../model/sirqul_response.h"
#include "../model/ticket_list_response.h"
#include "../model/ticket_offer_response.h"


// Get Ticket Count
//
// Gets the ticket count.
//
count_response_t*
TicketAPI_getTicketCount(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *gameType, char *appKey, char *ticketType);


// Get Ticket List
//
// Gets the list of tickets.
//
ticket_list_response_t*
TicketAPI_getTicketList(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *ticketObjectType, char *actionType, char *ticketIds, char *objectIds, char *receiptTokens, char *gameType, char *appKey);


// Gift Tickets
//
// Gift tickets to another user.
//
sirqul_response_t*
TicketAPI_giftPurchase(apiClient_t *apiClient, double version, long receiverAccountId, long ticketId, char *deviceId, long accountId, long assetId, char *customMessage, char *gameType, char *appKey);


// Save Ticket
//
// Allow user to acquire a purchase item and generate a ticket record. Used to redeem tickets or add tickets to the system.
//
profile_response_t*
TicketAPI_saveTicket(apiClient_t *apiClient, double version, char *actionType, char *ticketObjectType, int *returnNulls, char *deviceId, long accountId, char *gameType, char *appKey, long objectId, char *purchaseCode, char *receiptToken, char *receiptData, long count, char *ticketType, char *purchaseProvider, char *purchaseType, int *returnProfileResponse, int *includeProfileResponse, char *appVersion);


// Save Ticket with Reciept
//
// Similar to the Save Ticket endpoint but allows the receiptData to be in binary format. This must be a multi-part post
//
profile_response_t*
TicketAPI_saveTicketViaFileUpload(apiClient_t *apiClient, double version, char *actionType, char *ticketObjectType, binary_t* receiptData, int *returnNulls, char *deviceId, long accountId, char *gameType, char *appKey, long objectId, char *purchaseCode, char *receiptToken, long count, char *ticketType, char *purchaseProvider, char *purchaseType, int *returnProfileResponse, int *includeProfileResponse, char *appVersion);


// Get Ticket Offers
//
// Get a list offers for tickets owned by sirqul.  Purchasing these will add the number of tickets to the account specified by the offer.
//
ticket_offer_response_t*
TicketAPI_ticketOffers(apiClient_t *apiClient, double version);


