#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/order_response.h"
#include "../model/sirqul_response.h"

// Enum CURRENCYTYPE for PurchaseOrderAPI_createOrder
typedef enum  { sirqul_iot_platform_createOrder_CURRENCYTYPE_NULL = 0, sirqul_iot_platform_createOrder_CURRENCYTYPE__VOID, sirqul_iot_platform_createOrder_CURRENCYTYPE_CASH, sirqul_iot_platform_createOrder_CURRENCYTYPE_POINTS, sirqul_iot_platform_createOrder_CURRENCYTYPE_TICKETS, sirqul_iot_platform_createOrder_CURRENCYTYPE_REFUND, sirqul_iot_platform_createOrder_CURRENCYTYPE_CREDIT, sirqul_iot_platform_createOrder_CURRENCYTYPE_RELOAD } sirqul_iot_platform_createOrder_currencyType_e;

// Enum CURRENCYTYPE for PurchaseOrderAPI_previewOrder
typedef enum  { sirqul_iot_platform_previewOrder_CURRENCYTYPE_NULL = 0, sirqul_iot_platform_previewOrder_CURRENCYTYPE__VOID, sirqul_iot_platform_previewOrder_CURRENCYTYPE_CASH, sirqul_iot_platform_previewOrder_CURRENCYTYPE_POINTS, sirqul_iot_platform_previewOrder_CURRENCYTYPE_TICKETS, sirqul_iot_platform_previewOrder_CURRENCYTYPE_REFUND, sirqul_iot_platform_previewOrder_CURRENCYTYPE_CREDIT, sirqul_iot_platform_previewOrder_CURRENCYTYPE_RELOAD } sirqul_iot_platform_previewOrder_currencyType_e;

// Enum CURRENCYTYPE for PurchaseOrderAPI_updateOrder
typedef enum  { sirqul_iot_platform_updateOrder_CURRENCYTYPE_NULL = 0, sirqul_iot_platform_updateOrder_CURRENCYTYPE__VOID, sirqul_iot_platform_updateOrder_CURRENCYTYPE_CASH, sirqul_iot_platform_updateOrder_CURRENCYTYPE_POINTS, sirqul_iot_platform_updateOrder_CURRENCYTYPE_TICKETS, sirqul_iot_platform_updateOrder_CURRENCYTYPE_REFUND, sirqul_iot_platform_updateOrder_CURRENCYTYPE_CREDIT, sirqul_iot_platform_updateOrder_CURRENCYTYPE_RELOAD } sirqul_iot_platform_updateOrder_currencyType_e;


// Create Order
//
// Creates a new purchase with some number of items associated with it. The purchase is added to the order that was created
//
order_response_t*
PurchaseOrderAPI_createOrder(apiClient_t *apiClient, double version, char *appKey, char *cart, char *deviceId, long accountId, char *description, sirqul_iot_platform_createOrder_currencyType_e currencyType, long paymentMethodId, char *externalOrderId, char *externalPaymentId, char *remoteRefType, long externalDate, char *promoCode);


// Delete Order
//
// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
//
sirqul_response_t*
PurchaseOrderAPI_deleteOrder(apiClient_t *apiClient, double version, long orderId, char *deviceId, long accountId);


// Get Order
//
// Get an order record
//
order_response_t*
PurchaseOrderAPI_getOrder(apiClient_t *apiClient, double version, char *deviceId, long accountId, long orderId, char *externalOrderId);


// Preview Order
//
// Previews a purchase to see the total cost before making it.
//
order_response_t*
PurchaseOrderAPI_previewOrder(apiClient_t *apiClient, double version, char *appKey, char *cart, char *deviceId, long accountId, char *description, sirqul_iot_platform_previewOrder_currencyType_e currencyType, long paymentMethodId, char *externalOrderId, char *externalPaymentId, char *remoteRefType, long externalDate, char *promoCode);


// Search Orders
//
// Search on active orders by customer
//
list_t*
PurchaseOrderAPI_searchOrders(apiClient_t *apiClient, double version, char *appKey, char *deviceId, long accountId, int *start, int *limit, int *descending, int *activeOnly, int *ignoreCustomerFilter, char *orderItemTypes, char *orderItemIds, char *orderCustomTypes, char *orderCustomIds, char *sortField, char *offerTypes, char *specialOfferTypes, char *categoryIds, char *filterIds, char *offerAudienceIds, char *transactionAudienceIds, char *offerIds, char *offerLocationIds, char *retailerIds, char *retailerLocationIds, char *statuses, char *keyword, long redeemableStartDate, long redeemableEndDate, long startedSince, long startedBefore, long endedSince, long endedBefore);


// Update Order
//
// Updates new purchase with some number of items associated with it. The orderId provided is used to retrieve the record and the payment is added to it.
//
order_response_t*
PurchaseOrderAPI_updateOrder(apiClient_t *apiClient, double version, long orderId, char *appKey, char *cart, char *deviceId, long accountId, long paymentTransactionId, char *description, sirqul_iot_platform_updateOrder_currencyType_e currencyType, long paymentMethodId, char *externalPaymentId, long externalDate);


