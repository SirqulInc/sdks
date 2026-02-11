#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account.h"
#include "../model/sirqul_response.h"


// Create Dependent
//
// Create dependent of the account
//
sirqul_response_t*
DependentAPI_create(apiClient_t *apiClient, long accountId, account_t *body);


// Get dependent list of an account
//
// Get the dependent list of an account
//
sirqul_response_t*
DependentAPI_getDependents(apiClient_t *apiClient, long accountId);


// Delete Dependent
//
// Delete the Dependent
//
void
DependentAPI_removeDependent(apiClient_t *apiClient, long accountId, long dependentId);


