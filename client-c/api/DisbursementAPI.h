#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/disbursement_response.h"

// Enum PROVIDER for DisbursementAPI_createDisbursement
typedef enum  { sirqul_iot_platform_createDisbursement_PROVIDER_NULL = 0, sirqul_iot_platform_createDisbursement_PROVIDER_AUTHORIZE_NET, sirqul_iot_platform_createDisbursement_PROVIDER_AMAZON_FPS, sirqul_iot_platform_createDisbursement_PROVIDER_BILL_COM } sirqul_iot_platform_createDisbursement_provider_e;

// Enum PROVIDER for DisbursementAPI_updateDisbursement
typedef enum  { sirqul_iot_platform_updateDisbursement_PROVIDER_NULL = 0, sirqul_iot_platform_updateDisbursement_PROVIDER_AUTHORIZE_NET, sirqul_iot_platform_updateDisbursement_PROVIDER_AMAZON_FPS, sirqul_iot_platform_updateDisbursement_PROVIDER_BILL_COM } sirqul_iot_platform_updateDisbursement_provider_e;


// Check Disbursements
//
// Checks the status of a captured disbrusement to see if it has been settled.
//
disbursement_response_t*
DisbursementAPI_checkDisbursements(apiClient_t *apiClient, double version, long disbursementId);


// Create Disbursement
//
// Creates a Disbursement for sending money to a retailer
//
disbursement_response_t*
DisbursementAPI_createDisbursement(apiClient_t *apiClient, double version, long accountId, long receiverAccountId, long originalSenderAccountId, double amount, sirqul_iot_platform_createDisbursement_provider_e provider, long scheduledDate, char *title, char *comment, char *externalId, char *introspectionParams);


// Get Disbursement
//
// Get Disbursement details
//
disbursement_response_t*
DisbursementAPI_getDisbursement(apiClient_t *apiClient, double version, long accountId, long disbursementId);


// Search Disbursements
//
// Search Disbursements
//
list_t*
DisbursementAPI_searchDisbursements(apiClient_t *apiClient, double version, long accountId, long receiverAccountId, char *statuses, char *providers, long beforeDate, long afterDate, int *start, int *limit, int *activeOnly, char *externalId);


// Update Disbursement
//
// Update Disbursement
//
disbursement_response_t*
DisbursementAPI_updateDisbursement(apiClient_t *apiClient, double version, long accountId, long disbursementId, double amount, sirqul_iot_platform_updateDisbursement_provider_e provider, long scheduledDate, char *title, char *comment, char *externalId, int *retry, char *introspectionParams);


