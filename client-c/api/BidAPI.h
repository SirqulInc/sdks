#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/bid_response.h"
#include "../model/sirqul_response.h"


// Create Bid
//
// Creates a bid on a biddable object
//
bid_response_t*
BidAPI_createBid(apiClient_t *apiClient, char *biddableType, long biddableId, double amountPerView, double amountPerAction, double budgetAmount, char *budgetSchedule, char *deviceId, long accountId);


// Delete Bid
//
// Deleted a bid on a biddable object
//
sirqul_response_t*
BidAPI_deleteBid(apiClient_t *apiClient, long bidId, char *deviceId, long accountId);


// Get Bid
//
// Get the bid details of a biddable object
//
bid_response_t*
BidAPI_getBid(apiClient_t *apiClient, long bidId, char *deviceId, long accountId);


// Update Bid
//
// Updates a bid on a biddable object
//
bid_response_t*
BidAPI_updateBid(apiClient_t *apiClient, long bidId, char *deviceId, long accountId, double amountPerView, double amountPerAction, double budgetAmount, char *budgetSchedule);


