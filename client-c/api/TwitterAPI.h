#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/profile_response.h"
#include "../model/sirqul_response.h"


// Authorize Twitter
//
// Makes an authorization call to twitter for a user to login and allow any app permissions.
//
sirqul_response_t*
TwitterAPI_authorizeTwitter(apiClient_t *apiClient, double version, char *appKey);


// Login Twitter
//
// Returns the user profile information given an access token and the secret access token. This call verifies the tokens with twitter and creates a Sirqul account for the user if its their first time logging in.
//
profile_response_t*
TwitterAPI_loginTwitter(apiClient_t *apiClient, double version, char *accessToken, char *accessTokenSecret, char *appKey, char *responseFilters, char *deviceId, double latitude, double longitude);


