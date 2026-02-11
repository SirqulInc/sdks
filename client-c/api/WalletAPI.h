#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/offer_transaction_response.h"
#include "../model/sirqul_response.h"

// Enum OFFERTYPE for WalletAPI_searchOfferTransactions
typedef enum  { sirqul_iot_platform_searchOfferTransactions_OFFERTYPE_NULL = 0, sirqul_iot_platform_searchOfferTransactions_OFFERTYPE_VOUCHER, sirqul_iot_platform_searchOfferTransactions_OFFERTYPE_COUPON, sirqul_iot_platform_searchOfferTransactions_OFFERTYPE_PRODUCT, sirqul_iot_platform_searchOfferTransactions_OFFERTYPE_MEDIA, sirqul_iot_platform_searchOfferTransactions_OFFERTYPE_EVENT, sirqul_iot_platform_searchOfferTransactions_OFFERTYPE_DEVICE } sirqul_iot_platform_searchOfferTransactions_offerType_e;

// Enum SORTFIELD for WalletAPI_searchOfferTransactions
typedef enum  { sirqul_iot_platform_searchOfferTransactions_SORTFIELD_NULL = 0, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_ID, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_CREATED, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_UPDATED, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_DELETED, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_ACTIVE, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_ACTIVATED, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_EXPIRES, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_TITLE, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_SUBTITLE, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_DETAILS, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_OFFER_TYPE, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_SPECIAL_OFFER_TYPE, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_OFFER_VISIBILITY, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_REDEEMABLE_START, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_REDEEMABLE_END, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_CUSTOMER_ID, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_CUSTOMER_DISPLAY, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_RETAILER_ID, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_RETAILER_NAME, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_RETAILER_LOCATION_ID, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_RETAILER_LOCATION_NAME, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_searchOfferTransactions_SORTFIELD_RESPONSIBLE_DISPLAY } sirqul_iot_platform_searchOfferTransactions_sortField_e;


// Create Wallet Offers
//
// Adds offers to the wallet
//
list_t*
WalletAPI_createOfferTransaction(apiClient_t *apiClient, char *deviceId, long accountId, long offerId, long offerLocationId, char *offerCart, char *promoCode, char *currencyType, int *usePoints, char *metaData, char *appKey, int *status);


// Delete Wallet Offer
//
// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
//
sirqul_response_t*
WalletAPI_deleteOfferTransaction(apiClient_t *apiClient, long transactionId, char *deviceId, long accountId);


// Get Wallet Offer
//
offer_transaction_response_t*
WalletAPI_getOfferTransaction(apiClient_t *apiClient, long transactionId, char *deviceId, long accountId, int *includeMission, double latitude, double longitude, int *returnFullResponse);


// Preview Wallet Offers
//
// Preview the final cost of a transaction without charging the user
//
list_t*
WalletAPI_previewOfferTransaction(apiClient_t *apiClient, char *deviceId, long accountId, long offerId, long offerLocationId, char *offerCart, char *promoCode, char *currencyType, int *usePoints, char *metaData, char *appKey);


// Search Wallet Offers
//
// Search on active offers currently in the user's wallet, or past offers the user has already redeemed.
//
list_t*
WalletAPI_searchOfferTransactions(apiClient_t *apiClient, char *deviceId, long accountId, char *keyword, long retailerId, char *retailerIds, long retailerLocationId, char *retailerLocationIds, char *excludeRetailerLocationIds, long offerId, char *offerIds, long offerLocationId, char *offerLocationIds, sirqul_iot_platform_searchOfferTransactions_offerType_e offerType, char *offerTypes, char *specialOfferType, char *specialOfferTypes, char *categoryIds, char *filterIds, char *offerAudienceIds, sirqul_iot_platform_searchOfferTransactions_sortField_e sortField, int *descending, int *start, int *limit, double latitude, double longitude, long redeemableStartDate, long redeemableEndDate, int *filterByParentOffer, long startedSince, long startedBefore, long endedSince, long endedBefore, int *redeemed, char *statuses, int *reservationsOnly, int *activeOnly, int *returnFullResponse, long recurringStartedSince, long recurringStartedBefore, long recurringExpirationSince, long recurringExpirationBefore);


// Update Wallet Offer
//
// Update offer status. The status values are: 0 - not redeemable, 1 - redeemable.  Not redeemable means the customer has received the offer but has not decided to use (or print) it yet.  Until they choose to do this the merchant cannot redeem the offer (has not been given permission yet).   Redeemable means the customer has chosen to use the offer and wishes to redeem it.  Redeemed means the merchant has accepted the offer and the given the customer its value, then marked it a used in the system.  This status change is handled by a merchant end point.
//
offer_transaction_response_t*
WalletAPI_updateOfferTransaction(apiClient_t *apiClient, long transactionId, int *status, char *deviceId, long accountId, long offerLocationId, char *currencyType, int *usePoints, char *appKey, double latitude, double longitude, char *metaData, int *returnFullResponse, char *exceptionMembershipOfferIds);


