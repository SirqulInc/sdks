#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sirqul_response.h"
#include "../model/token_response.h"


// Get Facebook Token
//
// Gets a user's Facebook token.
//
token_response_t*
FacebookAPI_getToken(apiClient_t *apiClient, double version, char *deviceId, long accountId, double latitude, double longitude);


// Post to Facebook
//
// Make Facebook posts on behalf of the user.
//
sirqul_response_t*
FacebookAPI_graphInterface(apiClient_t *apiClient, double version, char *event, char *deviceId, long accountId, char *permissionableType, long permissionableId, long assetId, char *gameType, char *appKey, double latitude, double longitude);


