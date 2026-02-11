#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/postal_code_response.h"
#include "../model/sirqul_response.h"


// Create Postal Code
//
// Create a Postal Code
//
postal_code_response_t*
PostalCodeAPI_createPostalCode(apiClient_t *apiClient, long accountId, char *code, double latitude, double longitude, char *stateCode, char *city, int *active);


// Delete Postal Code
//
// Delete a Postal Code
//
sirqul_response_t*
PostalCodeAPI_deletePostalCode(apiClient_t *apiClient, long accountId, long postalCodeId);


// Get Postal Code
//
// Get a Postal Code
//
postal_code_response_t*
PostalCodeAPI_getPostalCode(apiClient_t *apiClient, long postalCodeId);


// Search Postal Codes
//
// Get the list of regions. If latitude or longitude is null, will return all postal codes in the system with paginated response.
//
list_t*
PostalCodeAPI_getPostalCodes(apiClient_t *apiClient, char *sortField, int *descending, double latitude, double longitude, char *keyword, double miles, int *start, int *limit);


// Update Postal Code
//
// Update a Postal Code
//
postal_code_response_t*
PostalCodeAPI_updatePostalCode(apiClient_t *apiClient, long accountId, long postalCodeId, char *code, double latitude, double longitude, char *stateCode, char *city, int *active);


