#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/offer_transaction_status_response.h"
#include "../model/sirqul_response.h"

// Enum SORTFIELD for OfferStatusAPI_searchOfferTransactionStatuses
typedef enum  { sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_NULL = 0, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_ID, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_CREATED, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_UPDATED, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_DELETED, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_ACTIVE, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_NAME, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_DESCRIPTION, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_CODE, sirqul_iot_platform_searchOfferTransactionStatuses_SORTFIELD_ROLE } sirqul_iot_platform_searchOfferTransactionStatuses_sortField_e;


// Create Offer Status
//
// Create an offer status record
//
offer_transaction_status_response_t*
OfferStatusAPI_createOfferTransactionStatus(apiClient_t *apiClient, char *name, int *code, char *deviceId, long accountId, double latitude, double longitude, char *description, char *role, int *active, char *applicationIds);


// Delete Offer Status
//
// Mark an offer status record as deleted
//
sirqul_response_t*
OfferStatusAPI_deleteOfferTransactionStatus(apiClient_t *apiClient, long statusId, char *deviceId, long accountId, double latitude, double longitude);


// Get Offer Status
//
// Get an offer status record
//
offer_transaction_status_response_t*
OfferStatusAPI_getOfferTransactionStatus(apiClient_t *apiClient, long statusId, char *deviceId, long accountId, double latitude, double longitude);


// Search Offer Status
//
// Search for the available offer statuses
//
list_t*
OfferStatusAPI_searchOfferTransactionStatuses(apiClient_t *apiClient, char *deviceId, long accountId, double latitude, double longitude, char *keyword, char *role, char *appKey, sirqul_iot_platform_searchOfferTransactionStatuses_sortField_e sortField, int *descending, int *start, int *limit, int *includeInactive);


// Update Offer Status
//
// Update an offer status record
//
offer_transaction_status_response_t*
OfferStatusAPI_updateOfferTransactionStatus(apiClient_t *apiClient, char *deviceId, long accountId, double latitude, double longitude, long statusId, char *name, char *description, int *code, char *role, int *active, char *applicationIds);


