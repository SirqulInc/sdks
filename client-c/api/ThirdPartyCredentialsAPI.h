#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/profile_response.h"
#include "../model/sirqul_response.h"
#include "../model/third_party_credential_response.h"
#include "../model/third_party_network_response.h"
#include "../model/third_party_network_short_response.h"

// Enum SORTFIELD for ThirdPartyCredentialsAPI_searchNetworks
typedef enum  { sirqul_iot_platform_searchNetworks_SORTFIELD_NULL = 0, sirqul_iot_platform_searchNetworks_SORTFIELD_ID, sirqul_iot_platform_searchNetworks_SORTFIELD_CREATED, sirqul_iot_platform_searchNetworks_SORTFIELD_UPDATED, sirqul_iot_platform_searchNetworks_SORTFIELD_DELETED, sirqul_iot_platform_searchNetworks_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchNetworks_SORTFIELD_ACTIVE, sirqul_iot_platform_searchNetworks_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_searchNetworks_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_searchNetworks_SORTFIELD_RESPONSIBLE_DISPLAY, sirqul_iot_platform_searchNetworks_SORTFIELD_NAME, sirqul_iot_platform_searchNetworks_SORTFIELD_DESCRIPTION } sirqul_iot_platform_searchNetworks_sortField_e;


// Create Credential
//
// This endpoint creates a third-party login for a Sirqul account. A third party login is a way for external systems (Third Party Networks) to link their own user accounts with a Sirqul account.   The thirdPartyId parameter is used to determine if the user already exists in Sirqul or not. This parameter needs to be unique for each user in the Third Party Network (identified by the networkUID parameter). Note that subsequent calls will update the user's third-party login credentials for the user with the same thirdPartyId and networkUID combination.    The thirdPartyToken parameter acts as a shared secret and used by client applications to log users into Sirqul without providing a Sirqul username and password. 
//
profile_response_t*
ThirdPartyCredentialsAPI_createCredential(apiClient_t *apiClient, char *thirdPartyId, char *thirdPartyToken, char *networkUID, char *appKey, long accountId, char *deviceId, char *sessionId, char *thirdPartyName, char *emailAddress, int *signinOnlyMode, char *responseFilters, double latitude, double longitude, char *metaData, char *thirdPartyRefreshToken, char *audienceIdsToAdd, char *audienceIdsToRemove);


// Create Network
//
// Creates a custom third party network.
//
third_party_network_response_t*
ThirdPartyCredentialsAPI_createNetwork(apiClient_t *apiClient, long accountId, char *name, int *enableIntrospection, char *description, char *introspectionMethod, char *introspectionURL, char *introspectionParams, char *requiredRootField, int *enableMFA, int *sizeMFA, int *shelfLifeMFA, char *oauthTokenURL, binary_t* oauthPrivateKey, binary_t* oauthPublicKey, char *oauthClientId, char *oauthSecretKey, char *body);


// Delete Credential
//
// Delete a third party network on a Sirqul account.
//
sirqul_response_t*
ThirdPartyCredentialsAPI_deleteCredential(apiClient_t *apiClient, long accountId, char *networkUID, char *thirdPartyId, char *appKey);


// Delete Network
//
// Marks a custom third party network as deleted. Only the network owners and managers have access to this.
//
sirqul_response_t*
ThirdPartyCredentialsAPI_deleteNetwork(apiClient_t *apiClient, long accountId, char *networkUID);


// Get Credential
//
// Gets the account information given a third party token.
//
profile_response_t*
ThirdPartyCredentialsAPI_getCredential(apiClient_t *apiClient, char *networkUID, char *appKey, long accountId, char *deviceId, char *sessionId, long thirdPartyCredentialId, char *thirdPartyToken, char *thirdPartySecret, int *createNewAccount, char *responseFilters, double latitude, double longitude, char *audienceIdsToAdd, char *audienceIdsToRemove, long referralAccountId);


// Get Network
//
// Get the details of a third party network. Only the network owners and managers have access to this.
//
third_party_network_response_t*
ThirdPartyCredentialsAPI_getNetwork(apiClient_t *apiClient, long accountId, char *networkUID);


// Search Credentials
//
// Search on a user's linked third party networks.
//
list_t*
ThirdPartyCredentialsAPI_searchCredentials(apiClient_t *apiClient, long accountId, char *keyword, char *networkUID, int *descending, int *start, int *limit);


// Search Networks
//
// Search on supported third party networks and custom networks from external users.
//
list_t*
ThirdPartyCredentialsAPI_searchNetworks(apiClient_t *apiClient, long accountId, sirqul_iot_platform_searchNetworks_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, char *keyword, int *filterBillable);


// Send MFA Challenge
//
// Sends an MFA challenge (SMS or Email) for networks with MFA enabled.
//
sirqul_response_t*
ThirdPartyCredentialsAPI_sendMFAChallenge(apiClient_t *apiClient, char *networkUID, char *appKey, char *thirdPartyToken, long thirdPartyCredentialId, char *deviceId);


// Update Credential
//
// Updates a third-party login for an account.
//
profile_response_t*
ThirdPartyCredentialsAPI_updateCredential(apiClient_t *apiClient, char *networkUID, char *thirdPartyId, char *appKey, char *deviceId, char *thirdPartyName, char *thirdPartyToken, char *responseFilters, char *metaData, char *thirdPartyRefreshToken);


// Update Network
//
// Updates a custom third party network. Only the network owners and managers have access to this.
//
third_party_network_response_t*
ThirdPartyCredentialsAPI_updateNetwork(apiClient_t *apiClient, long accountId, char *networkUID, char *name, char *description, int *enableIntrospection, char *introspectionMethod, char *introspectionURL, char *introspectionParams, char *requiredRootField, int *enableMFA, int *sizeMFA, int *shelfLifeMFA, char *oauthTokenURL, binary_t* oauthPrivateKey, binary_t* oauthPublicKey, char *oauthClientId, char *oauthSecretKey, char *body);


