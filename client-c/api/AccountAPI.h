#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account_login_response.h"
#include "../model/asset_list_response.h"
#include "../model/profile_info_response.h"
#include "../model/profile_response.h"
#include "../model/sirqul_response.h"
#include "../model/user_location_search_response.h"
#include "../model/user_settings_response.h"

// Enum GENDER for AccountAPI_searchAccounts
typedef enum  { sirqul_iot_platform_searchAccounts_GENDER_NULL = 0, sirqul_iot_platform_searchAccounts_GENDER_MALE, sirqul_iot_platform_searchAccounts_GENDER_FEMALE, sirqul_iot_platform_searchAccounts_GENDER_ANY } sirqul_iot_platform_searchAccounts_gender_e;

// Enum GAMEEXPERIENCE for AccountAPI_searchAccounts
typedef enum  { sirqul_iot_platform_searchAccounts_GAMEEXPERIENCE_NULL = 0, sirqul_iot_platform_searchAccounts_GAMEEXPERIENCE_ANY, sirqul_iot_platform_searchAccounts_GAMEEXPERIENCE__NEW, sirqul_iot_platform_searchAccounts_GAMEEXPERIENCE_BEGINNER, sirqul_iot_platform_searchAccounts_GAMEEXPERIENCE_INTERMEDIATE, sirqul_iot_platform_searchAccounts_GAMEEXPERIENCE_EXPERT } sirqul_iot_platform_searchAccounts_gameExperience_e;


// Search Accounts by Location
//
// Search accounts by their location. This only searches on users that have location data. Use ConnectionApi to perform a regular search on accounts.
//
user_location_search_response_t*
AccountAPI_accountLocationSearch(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *q, char *keyword, char *postalCode, double latitude, double longitude, char *appKey, double range, long locationLastUpdated, char *gender, int *minAge, int *maxAge, int *companionshipIndex, int *_i, int *start, int *_l, int *limit, char *searchMode, char *sortField, int *descending, char *roles, char *tags, char *experience, char *categoryIds, char *audienceIds, char *audienceOperator, int *updateCurrentLocation, int *updatePreferredSettings, int *showExactLocations, int *showConnectionToSearcher, long flagCountMinimum, int *verifiedUserOnly, int *contentAdminOnly);


// Block Account
//
// Moves or removes an account into the user's blocked group.
//
sirqul_response_t*
AccountAPI_blockAccount(apiClient_t *apiClient, double version, long accountIdBeingBlocked, char *deviceId, long accountId, int *blockFlagValue, int *removeFromGroupsIfBlocked, double latitude, double longitude);


// Create Account
//
// Create a new account by role.
//
account_login_response_t*
AccountAPI_createAccount(apiClient_t *apiClient, double version, char *username, char *password, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *deviceId, char *deviceIdType, char *emailAddress, long assetId, char *streetAddress, char *zipcode, char *gender, long birthday, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *role, char *platforms, char *tags, char *aboutUs, char *gameExperience, char *categoryIds, char *hometown, char *height, int *heightIndex, char *ethnicity, char *bodyType, char *maritalStatus, char *children, char *religion, char *education, int *educationIndex, char *smoke, char *drink, char *companionship, int *companionshipIndex, int *preferredMinAge, int *preferredMaxAge, int *preferredMinHeight, int *preferredMaxHeight, char *preferredGender, char *preferredEducation, int *preferredEducationIndex, char *preferredBodyType, char *preferredEthnicity, char *preferredLocation, double preferredLocationRange, double latitude, double longitude, int *acceptedTerms, char *inviteToken, long referralAccountId, int *sendValidation, char *gameType, char *appKey, char *appVersion, char *responseType, char *audienceIdsToAdd, char *appBlob, int *appEnablePush, int *appEnableSMS, int *appEnableEmail, char *locationVisibility, double homeLatitude, double homeLongitude, char *appNickname, long personalAudienceId);


// Update Account
//
// Edit the user's profile information
//
profile_info_response_t*
AccountAPI_editAccount(apiClient_t *apiClient, double version, char *deviceId, long accountId, long connectionAccountId, char *role, long assetId, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *gender, int *age, long birthday, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *emailAddress, char *streetAddress, char *streetAddress2, char *city, char *state, char *zipcode, char *country, int *makeProfileInfoPublic, int *makeGameInfoPublic, int *makeFriendsInfoPublic, char *hometown, char *height, int *heightIndex, char *ethnicity, char *bodyType, char *maritalStatus, char *children, char *religion, char *education, int *educationIndex, char *smoke, char *drink, char *companionship, int *companionshipIndex, int *preferredMinAge, int *preferredMaxAge, int *preferredMinHeight, int *preferredMaxHeight, char *preferredGender, char *preferredEducation, int *preferredEducationIndex, char *preferredBodyType, char *preferredEthnicity, char *preferredLocation, double preferredLocationRange, char *platforms, char *tags, char *aboutUs, char *matchToken, char *gameExperience, char *categories, char *categoryIds, char *responseFilters, int *showAsZipcode, int *showExactLocation, int *showOthersExactLocation, int *acceptedTerms, char *locationVisibility, char *appBlob, int *appEnablePush, int *appEnableSMS, int *appEnableEmail, char *gameType, char *appKey, double latitude, double longitude, int *returnProfile, char *audienceIdsToAdd, char *audienceIdsToRemove, long referralAccountId, char *appNickname, long personalAudienceId, char *nonGuestUsername);


// Update Username and Email
//
// Update account's own username and/or emailAddress
//
sirqul_response_t*
AccountAPI_editUsername(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *emailAddress, char *username);


// Get Account
//
// Gets a user's account profile. Application settings and account settings will also be returned for the owner of the account.
//
profile_response_t*
AccountAPI_getAccount(apiClient_t *apiClient, double version, int *returnNulls, char *deviceId, long accountId, char *connectionAccountEmail, long connectionAccountId, char *responseFilters, char *gameType, char *appKey, char *purchaseType, int *updateViewedDate, double latitude, double longitude);


// Get Profile Assets
//
// Get a list of assets a person has ever uploaded. Filters the list based on parameters.
//
asset_list_response_t*
AccountAPI_getProfileAssets(apiClient_t *apiClient, double version, int *returnNulls, char *deviceId, long accountId, long ownerId, char *mediaTypes, char *mimeTypes, char *sortField, int *descending, double latitude, double longitude, int *_i, int *start, int *_l, int *limit);


// Search Accounts
//
// Gets a user's account profile and their referral List.
//
void
AccountAPI_getReferralList(apiClient_t *apiClient, double version, long accountId, char *appKey, char *retrieveType, double levelLimit, double ancestorLevelLimit, double childrenLevelLimit, double ancestorListStart, double ancestorListLimit, double childrenListStart, double childrenListLimit, int *childrenChildren);


// Get Account Settings
//
// Get the account settings for a user
//
user_settings_response_t*
AccountAPI_getSettings(apiClient_t *apiClient, double version, char *deviceId, long accountId, double latitude, double longitude);


// Login as Account
//
// A login service that supports logging in as someone else (accounts that the user manages). Intended for internal use for now.
//
profile_response_t*
AccountAPI_loginDelegate(apiClient_t *apiClient, double version, char *accessToken, char *appKey, char *deviceId, char *accessTokenSecret, long delegatedAccountId, char *delegatedUsername, char *networkUID, int *ageRestriction, char *responseFilters, double latitude, double longitude);


// Login Account
//
// General login service that supports various authentication methods. Currently supports Facebook, Twitter, Sirqul Username, and Sirqul Phone by default. Can also support custom networks created using the {@link ThirdPartyApi}
//
profile_response_t*
AccountAPI_loginGeneral(apiClient_t *apiClient, double version, char *accessToken, char *networkUID, char *appKey, char *deviceId, char *deviceIdType, char *accessTokenSecret, int *ageRestriction, char *responseFilters, double latitude, double longitude, int *emailMatch, long chosenAccountId, long thirdPartyCredentialId);


// Login Account (Username)
//
// Login to system with an account
//
profile_response_t*
AccountAPI_loginUsername(apiClient_t *apiClient, double version, char *username, char *password, char *deviceId, double latitude, double longitude, char *app, char *gameType, char *appKey, int *returnProfile, char *responseFilters);


// Logout Account
//
// Cleans up the users data for logging out.
//
sirqul_response_t*
AccountAPI_logout(apiClient_t *apiClient, double version, char *deviceId, char *deviceIdType, long accountId, double latitude, double longitude);


// Merge Account
//
// Merges the analytics, achievements, leaderboards of two accounts.
//
sirqul_response_t*
AccountAPI_mergeAccount(apiClient_t *apiClient, double version, long mergeAccountId, char *appKey, char *deviceId, long accountId);


// Update Password
//
// Update the account password.
//
sirqul_response_t*
AccountAPI_passwordChange(apiClient_t *apiClient, double version, long accountId, char *oldPassword, char *newPassword, char *confirmPassword);


// Reset Password
//
// Reset the account password. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token.
//
sirqul_response_t*
AccountAPI_passwordReset(apiClient_t *apiClient, double version, char *token, char *password, char *confirm);


// Request Password Reset
//
// Request that an account password be reset. The account is looked up by email address and then a link is sent via email to that account with a reset token. The token is valid for 24 hours.
//
sirqul_response_t*
AccountAPI_requestPasswordReset(apiClient_t *apiClient, double version, char *email, char *from, char *domain, char *subUrl, char *referer);


// Send Validation Request
//
// Send an email to validate a user's account.
//
sirqul_response_t*
AccountAPI_requestValidateAccount(apiClient_t *apiClient, double version, long accountId);


// Search Accounts
//
// Search for account profiles.
//
list_t*
AccountAPI_searchAccounts(apiClient_t *apiClient, double version, long accountId, char *appKey, char *keyword, double latitude, double longitude, double radius, sirqul_iot_platform_searchAccounts_gender_e gender, sirqul_iot_platform_searchAccounts_gameExperience_e gameExperience, int *age, char *categoryIds, int *returnNulls, char *responseFilters, char *purchaseType, char *sortField, int *descending, int *start, int *limit, int *activeOnly);


// Login Account (Encrypted Username)
//
// ogin with encrypted user-name and password.
//
profile_response_t*
AccountAPI_secureLogin(apiClient_t *apiClient, double version, char *username, char *password, char *gameType, char *deviceId, char *charsetName, double latitude, double longitude, int *returnProfile, char *responseFilters);


// Create Account (Encrypted Username)
//
// Create a new account by role (with encrypted user-name and password)
//
profile_info_response_t*
AccountAPI_secureSignup(apiClient_t *apiClient, double version, char *deviceId, char *username, char *password, char *name, char *inviteToken, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *deviceIdType, char *emailAddress, long assetId, char *address, char *zipcode, char *gender, long birthday, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *role, char *platforms, char *tags, char *aboutUs, char *gameExperience, char *categoryIds, char *hometown, char *height, int *heightIndex, char *ethnicity, char *bodyType, char *maritalStatus, char *children, char *religion, char *education, int *educationIndex, char *smoke, char *drink, char *companionship, int *companionshipIndex, int *preferredMinAge, int *preferredMaxAge, int *preferredMinHeight, int *preferredMaxHeight, char *preferredGender, char *preferredEducation, int *preferredEducationIndex, char *preferredBodyType, char *preferredEthnicity, char *preferredLocation, double preferredLocationRange, double latitude, double longitude, int *acceptedTerms, char *charsetName, char *gameType, char *appKey, char *appVersion, char *responseType);


// Save Match Token
//
// Save user's match token to be used for profile match making
//
sirqul_response_t*
AccountAPI_setMatchToken(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *matchToken, char *gameType, char *appKey, double latitude, double longitude);


// Update Account Active Status
//
// Activate or deactivate an account (requires appropriate permissions).
//
sirqul_response_t*
AccountAPI_updateActveStatus(apiClient_t *apiClient, double version, long accountId, long connectionAccountId, int *active, char *deviceId, char *appKey);


// Update Location
//
// Update the account location
//
sirqul_response_t*
AccountAPI_updateLocation(apiClient_t *apiClient, double version, char *deviceId, long accountId, double latitude, double longitude, long clientTime);


// Update Account Settings
//
// Update the account settings for a user
//
user_settings_response_t*
AccountAPI_updateSettings(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *blockedNotifications, char *suggestionMethod, int *suggestionCount, int *suggestionTimeFrame, int *showOthersExactLocation, int *showAsZipcode, int *showExactLocation, char *favoriteVisibility, double latitude, double longitude);


// Save Validation Status
//
// Validate the account's email address. The token must be valid and not expired. Use the RequestValidateAccount end point to request a new token.
//
account_login_response_t*
AccountAPI_validateAccountSignup(apiClient_t *apiClient, double version, char *token);


// Validate Password Reset Token
//
// Validate the password reset token. The token must be valid and not expired. Use the RequestPasswordReset end point to request a token. The user receives and email with the reset page, therefore it should be validated before bwing used to reset the password.
//
sirqul_response_t*
AccountAPI_validatePasswordReset(apiClient_t *apiClient, double version, char *token);


