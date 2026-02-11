#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/billable_entity_response.h"
#include "../model/sirqul_response.h"


// Create Billable
//
// reate a billable entity for an account. The creator is assumed to be the responsible account. An account can only have one billable entity
//
billable_entity_response_t*
BillableEntityAPI_createBillableEntity(apiClient_t *apiClient, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *businessPhone, char *businessPhoneExt, char *authorizeNetApiKey, char *authorizeNetTransactionKey);


// Delete Billable
//
// Mark the billable as deleted
//
sirqul_response_t*
BillableEntityAPI_deleteBillableEntity(apiClient_t *apiClient, char *deviceId, long accountId);


// Get Billable
//
// Used to determine the associated BillableEntity of an account
//
billable_entity_response_t*
BillableEntityAPI_getBillableEntity(apiClient_t *apiClient, char *deviceId, long accountId, int *includeCounts, int *includePayments);


// Update Billable
//
// Updates the billable record for an account
//
billable_entity_response_t*
BillableEntityAPI_updateBillableEntity(apiClient_t *apiClient, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *businessPhone, char *businessPhoneExt, char *authorizeNetApiKey, char *authorizeNetTransactionKey);


