#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/purchase_item_full_response.h"
#include "../model/purchase_item_response.h"
#include "../model/sirqul_response.h"

// Enum PURCHASETYPE for PurchaseItemAPI_createPurchaseItem
typedef enum  { sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_NULL = 0, sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_SIRQUL, sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_IOS, sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_GOOGLE, sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_AMAZON, sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_MAC, sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_WP8, sirqul_iot_platform_createPurchaseItem_PURCHASETYPE_FREE } sirqul_iot_platform_createPurchaseItem_purchaseType_e;

// Enum SERVICEACTION for PurchaseItemAPI_createPurchaseItem
typedef enum  { sirqul_iot_platform_createPurchaseItem_SERVICEACTION_NULL = 0, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_DAY_PREMIUM, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_WEEK_PREMIUM, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_MONTH_PREMIUM, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_YEAR_PREMIUM, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_LIFETIME_PREMIUM, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_ADD_TICKET, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_ADD_GIFT, sirqul_iot_platform_createPurchaseItem_SERVICEACTION_ADD_POINTS } sirqul_iot_platform_createPurchaseItem_serviceAction_e;

// Enum SORTFIELD for PurchaseItemAPI_searchPurchaseItems
typedef enum  { sirqul_iot_platform_searchPurchaseItems_SORTFIELD_NULL = 0, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_ID, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_CREATED, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_UPDATED, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_DELETED, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_ACTIVE, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_NAME, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_DESCRIPTION, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_TICKETS, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_PRICE, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_PURCHASE_TYPE, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_PURCHASE_CODE, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_PURCHASE_LIMIT, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_SERIVCE_ACTION, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_GIFTABLE, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_ASSETABLE, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_APPLICATION_ID, sirqul_iot_platform_searchPurchaseItems_SORTFIELD_APPLICATION_NAME } sirqul_iot_platform_searchPurchaseItems_sortField_e;

// Enum PURCHASETYPE for PurchaseItemAPI_updatePurchaseItem
typedef enum  { sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_NULL = 0, sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_SIRQUL, sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_IOS, sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_GOOGLE, sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_AMAZON, sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_MAC, sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_WP8, sirqul_iot_platform_updatePurchaseItem_PURCHASETYPE_FREE } sirqul_iot_platform_updatePurchaseItem_purchaseType_e;

// Enum SERVICEACTION for PurchaseItemAPI_updatePurchaseItem
typedef enum  { sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_NULL = 0, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_DAY_PREMIUM, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_WEEK_PREMIUM, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_MONTH_PREMIUM, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_YEAR_PREMIUM, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_LIFETIME_PREMIUM, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_ADD_TICKET, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_ADD_GIFT, sirqul_iot_platform_updatePurchaseItem_SERVICEACTION_ADD_POINTS } sirqul_iot_platform_updatePurchaseItem_serviceAction_e;


// Create Purchase
//
// Creates a purchase item for in app purchases
//
purchase_item_full_response_t*
PurchaseItemAPI_createPurchaseItem(apiClient_t *apiClient, char *appKey, char *name, sirqul_iot_platform_createPurchaseItem_purchaseType_e purchaseType, char *deviceId, long accountId, char *description, int *tickets, float price, char *purchaseCode, char *secretKey, int *purchaseLimit, sirqul_iot_platform_createPurchaseItem_serviceAction_e serviceAction, long coverAssetId, long promoAssetId, int *giftable, int *assetable, int *allocateTickets, char *ticketType, long points, long offerLocationId);


// Delete Purchase
//
// Marks the purchase item as deleted
//
sirqul_response_t*
PurchaseItemAPI_deletePurchaseItem(apiClient_t *apiClient, long purchaseItemId, char *deviceId, long accountId);


// Get Purchase
//
// Get detailed information about a purchase item
//
purchase_item_full_response_t*
PurchaseItemAPI_getPurchaseItem(apiClient_t *apiClient, long purchaseItemId, char *deviceId, long accountId);


// Search Purchases
//
// Search for purchasable items from the system
//
list_t*
PurchaseItemAPI_searchPurchaseItems(apiClient_t *apiClient, char *deviceId, long accountId, char *appKey, int *filterByBillable, char *purchaseType, char *serviceAction, char *keyword, sirqul_iot_platform_searchPurchaseItems_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly);


// Update Purchase
//
// Updates a purchase item for in app purchases
//
purchase_item_full_response_t*
PurchaseItemAPI_updatePurchaseItem(apiClient_t *apiClient, long purchaseItemId, char *deviceId, long accountId, char *name, char *description, int *tickets, float price, sirqul_iot_platform_updatePurchaseItem_purchaseType_e purchaseType, char *purchaseCode, char *secretKey, int *purchaseLimit, sirqul_iot_platform_updatePurchaseItem_serviceAction_e serviceAction, long coverAssetId, long promoAssetId, int *giftable, int *assetable, int *active, int *allocateTickets, char *ticketType, long points, long offerLocationId);


