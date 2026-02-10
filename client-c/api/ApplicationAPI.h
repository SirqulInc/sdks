#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account_list_response.h"
#include "../model/application_response.h"
#include "../model/application_settings_response.h"
#include "../model/application_short_response.h"
#include "../model/placement_response.h"
#include "../model/sirqul_response.h"

// Enum SCORINGTYPE for ApplicationAPI_createApplication
typedef enum  { sirqul_iot_platform_createApplication_SCORINGTYPE_NULL = 0, sirqul_iot_platform_createApplication_SCORINGTYPE_GAME_LEVEL, sirqul_iot_platform_createApplication_SCORINGTYPE_GAME_OBJECT } sirqul_iot_platform_createApplication_scoringType_e;

// Enum PLACEMENTSIZE for ApplicationAPI_createApplication
typedef enum  { sirqul_iot_platform_createApplication_PLACEMENTSIZE_NULL = 0, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CONFIG, sirqul_iot_platform_createApplication_PLACEMENTSIZE_BANNER, sirqul_iot_platform_createApplication_PLACEMENTSIZE_LEADERBOARD, sirqul_iot_platform_createApplication_PLACEMENTSIZE_SKYSCRAPER, sirqul_iot_platform_createApplication_PLACEMENTSIZE_VIDEO, sirqul_iot_platform_createApplication_PLACEMENTSIZE_ZIP, sirqul_iot_platform_createApplication_PLACEMENTSIZE_INTERSTITIAL, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM1, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM2, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM3, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM4, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM5, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM6, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM7, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM8, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM9, sirqul_iot_platform_createApplication_PLACEMENTSIZE_CUSTOM10 } sirqul_iot_platform_createApplication_placementSize_e;

// Enum TRILATPROCESSINGTYPE for ApplicationAPI_createApplication
typedef enum  { sirqul_iot_platform_createApplication_TRILATPROCESSINGTYPE_NULL = 0, sirqul_iot_platform_createApplication_TRILATPROCESSINGTYPE__DEFAULT, sirqul_iot_platform_createApplication_TRILATPROCESSINGTYPE_FINGERPRINT, sirqul_iot_platform_createApplication_TRILATPROCESSINGTYPE_FINGERPRINT_V2 } sirqul_iot_platform_createApplication_trilatProcessingType_e;

// Enum SIZE for ApplicationAPI_createApplicationPlacement
typedef enum  { sirqul_iot_platform_createApplicationPlacement_SIZE_NULL = 0, sirqul_iot_platform_createApplicationPlacement_SIZE_CONFIG, sirqul_iot_platform_createApplicationPlacement_SIZE_BANNER, sirqul_iot_platform_createApplicationPlacement_SIZE_LEADERBOARD, sirqul_iot_platform_createApplicationPlacement_SIZE_SKYSCRAPER, sirqul_iot_platform_createApplicationPlacement_SIZE_VIDEO, sirqul_iot_platform_createApplicationPlacement_SIZE_ZIP, sirqul_iot_platform_createApplicationPlacement_SIZE_INTERSTITIAL, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM1, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM2, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM3, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM4, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM5, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM6, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM7, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM8, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM9, sirqul_iot_platform_createApplicationPlacement_SIZE_CUSTOM10 } sirqul_iot_platform_createApplicationPlacement_size_e;

// Enum SORTFIELD for ApplicationAPI_listApplications
typedef enum  { sirqul_iot_platform_listApplications_SORTFIELD_NULL = 0, sirqul_iot_platform_listApplications_SORTFIELD_CREATED, sirqul_iot_platform_listApplications_SORTFIELD_UPDATED, sirqul_iot_platform_listApplications_SORTFIELD_DELETED, sirqul_iot_platform_listApplications_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_listApplications_SORTFIELD_ACTIVE, sirqul_iot_platform_listApplications_SORTFIELD_HAS_ADVERTISEMENTS, sirqul_iot_platform_listApplications_SORTFIELD_PUBLIC_NOTIFICATIONS, sirqul_iot_platform_listApplications_SORTFIELD_PLACEMENTS, sirqul_iot_platform_listApplications_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_listApplications_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_listApplications_SORTFIELD_RESPONSIBLE_DISPLAY, sirqul_iot_platform_listApplications_SORTFIELD_TITLE, sirqul_iot_platform_listApplications_SORTFIELD_NAME, sirqul_iot_platform_listApplications_SORTFIELD_ABOUT, sirqul_iot_platform_listApplications_SORTFIELD_DESCRIPTION, sirqul_iot_platform_listApplications_SORTFIELD_APPLICATION_ID, sirqul_iot_platform_listApplications_SORTFIELD_APP_TYPE, sirqul_iot_platform_listApplications_SORTFIELD_GAME_TYPE, sirqul_iot_platform_listApplications_SORTFIELD_BUNDLE_ID, sirqul_iot_platform_listApplications_SORTFIELD_SCORING_TYPE, sirqul_iot_platform_listApplications_SORTFIELD_LANDING_PAGE_URL, sirqul_iot_platform_listApplications_SORTFIELD_EULA_VERSION, sirqul_iot_platform_listApplications_SORTFIELD_BUILD_VERSION, sirqul_iot_platform_listApplications_SORTFIELD_API_VERSION } sirqul_iot_platform_listApplications_sortField_e;

// Enum SORTFIELD for ApplicationAPI_searchApplications
typedef enum  { sirqul_iot_platform_searchApplications_SORTFIELD_NULL = 0, sirqul_iot_platform_searchApplications_SORTFIELD_CREATED, sirqul_iot_platform_searchApplications_SORTFIELD_UPDATED, sirqul_iot_platform_searchApplications_SORTFIELD_DELETED, sirqul_iot_platform_searchApplications_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchApplications_SORTFIELD_ACTIVE, sirqul_iot_platform_searchApplications_SORTFIELD_HAS_ADVERTISEMENTS, sirqul_iot_platform_searchApplications_SORTFIELD_PUBLIC_NOTIFICATIONS, sirqul_iot_platform_searchApplications_SORTFIELD_PLACEMENTS, sirqul_iot_platform_searchApplications_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_searchApplications_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_searchApplications_SORTFIELD_RESPONSIBLE_DISPLAY, sirqul_iot_platform_searchApplications_SORTFIELD_TITLE, sirqul_iot_platform_searchApplications_SORTFIELD_NAME, sirqul_iot_platform_searchApplications_SORTFIELD_ABOUT, sirqul_iot_platform_searchApplications_SORTFIELD_DESCRIPTION, sirqul_iot_platform_searchApplications_SORTFIELD_APPLICATION_ID, sirqul_iot_platform_searchApplications_SORTFIELD_APP_TYPE, sirqul_iot_platform_searchApplications_SORTFIELD_GAME_TYPE, sirqul_iot_platform_searchApplications_SORTFIELD_BUNDLE_ID, sirqul_iot_platform_searchApplications_SORTFIELD_SCORING_TYPE, sirqul_iot_platform_searchApplications_SORTFIELD_LANDING_PAGE_URL, sirqul_iot_platform_searchApplications_SORTFIELD_EULA_VERSION, sirqul_iot_platform_searchApplications_SORTFIELD_BUILD_VERSION, sirqul_iot_platform_searchApplications_SORTFIELD_API_VERSION } sirqul_iot_platform_searchApplications_sortField_e;

// Enum SCORINGTYPE for ApplicationAPI_updateApplication
typedef enum  { sirqul_iot_platform_updateApplication_SCORINGTYPE_NULL = 0, sirqul_iot_platform_updateApplication_SCORINGTYPE_GAME_LEVEL, sirqul_iot_platform_updateApplication_SCORINGTYPE_GAME_OBJECT } sirqul_iot_platform_updateApplication_scoringType_e;

// Enum PLACEMENTSIZE for ApplicationAPI_updateApplication
typedef enum  { sirqul_iot_platform_updateApplication_PLACEMENTSIZE_NULL = 0, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CONFIG, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_BANNER, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_LEADERBOARD, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_SKYSCRAPER, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_VIDEO, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_ZIP, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_INTERSTITIAL, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM1, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM2, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM3, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM4, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM5, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM6, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM7, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM8, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM9, sirqul_iot_platform_updateApplication_PLACEMENTSIZE_CUSTOM10 } sirqul_iot_platform_updateApplication_placementSize_e;

// Enum TRILATPROCESSINGTYPE for ApplicationAPI_updateApplication
typedef enum  { sirqul_iot_platform_updateApplication_TRILATPROCESSINGTYPE_NULL = 0, sirqul_iot_platform_updateApplication_TRILATPROCESSINGTYPE__DEFAULT, sirqul_iot_platform_updateApplication_TRILATPROCESSINGTYPE_FINGERPRINT, sirqul_iot_platform_updateApplication_TRILATPROCESSINGTYPE_FINGERPRINT_V2 } sirqul_iot_platform_updateApplication_trilatProcessingType_e;

// Enum SIZE for ApplicationAPI_updateApplicationPlacement
typedef enum  { sirqul_iot_platform_updateApplicationPlacement_SIZE_NULL = 0, sirqul_iot_platform_updateApplicationPlacement_SIZE_CONFIG, sirqul_iot_platform_updateApplicationPlacement_SIZE_BANNER, sirqul_iot_platform_updateApplicationPlacement_SIZE_LEADERBOARD, sirqul_iot_platform_updateApplicationPlacement_SIZE_SKYSCRAPER, sirqul_iot_platform_updateApplicationPlacement_SIZE_VIDEO, sirqul_iot_platform_updateApplicationPlacement_SIZE_ZIP, sirqul_iot_platform_updateApplicationPlacement_SIZE_INTERSTITIAL, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM1, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM2, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM3, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM4, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM5, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM6, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM7, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM8, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM9, sirqul_iot_platform_updateApplicationPlacement_SIZE_CUSTOM10 } sirqul_iot_platform_updateApplicationPlacement_size_e;


// Create Application
//
// Create an application record and one placement record for that application. You can create more placements for this application by using {@link createApplicationPlacement}.
//
application_response_t*
ApplicationAPI_createApplication(apiClient_t *apiClient, double version, char *appName, char *deviceId, long accountId, char *about, char *bundleId, long appIconAssetId, long appLogoAssetId, char *facebookAppId, char *facebookAppSecret, char *googleApiKey, int *updateEULADate, char *eulaVersion, char *landingPageUrl, int *showInActivities, char *activityDescription, char *inviteWelcomeText, char *invitePageUrl, char *urlScheme, char *platforms, char *downloadUrls, char *categoryIds, sirqul_iot_platform_createApplication_scoringType_e scoringType, int *hintCost, int *maxScore, float ticketsPerPoint, int *hasGameData, int *publicNotifications, int *useMatchingAlgorithm, int *globalTickets, float buildVersion, float apiVersion, char *placementName, char *placementDescription, sirqul_iot_platform_createApplication_placementSize_e placementSize, int *placementHeight, int *placementWidth, int *placementRefreshInterval, int *createObjectStore, int *publicContentApproval, int *productionMode, int *minimumSessionLength, int *sessionGapLength, int *localAdsEnabled, char *sqootApiKey, sirqul_iot_platform_createApplication_trilatProcessingType_e trilatProcessingType, int *maxSampleSize, double minRSSI, char *modules, int *authorizedCount, char *authorizedServers, char *defaultTimezone, char *smtpPass, char *metaData, char *placementMetaData, int *ipsFloor, int *enableAPNSBadge, int *includeInReport, long defaultAppFilterId, int *enableWelcomeEmail, char *appleAppId, char *appleTeamId, char *appleAuthKeyId, binary_t* appleAuthKey, char *appleIssuerId, char *appStoreKeyId, binary_t* appStoreKey, binary_t* googlePrivateKeyFile, char *authorizeNetApiKey, char *authorizeNetTransactionKey, char *emailSender, char *smtpUser, char *smtpHost, char *vatomBusinessId, char *vatomRestClientId, char *vatomRestSecretKey, char *twilioAccountSID, char *twilioAuthToken, char *twilioSenderPhoneNumber, char *openAISecretKey);


// Create Ad Placement
//
// Creates a new ad placement for an application.
//
placement_response_t*
ApplicationAPI_createApplicationPlacement(apiClient_t *apiClient, double version, char *appKey, sirqul_iot_platform_createApplicationPlacement_size_e size, char *deviceId, long accountId, char *name, char *description, int *height, int *width, int *refreshInterval, long defaultImageId, int *active);


// Delete Application
//
// Set the deleted timestamp to current time. This effectively deletes the application since all queries should ignore any records with a deleted timestamp
//
sirqul_response_t*
ApplicationAPI_deleteApplication(apiClient_t *apiClient, double version, long accountId, char *appKey);


// Delete Ad Placement
//
// Deletes an ad placement for an application.
//
placement_response_t*
ApplicationAPI_deleteApplicationPlacement(apiClient_t *apiClient, double version, long placementId, char *deviceId, long accountId);


// Get Application
//
// Get a specific application by appKey
//
application_response_t*
ApplicationAPI_getApplication(apiClient_t *apiClient, double version, char *appKey, long applicationId);


// Get Ad Placement
//
// Get details of an ad placement
//
placement_response_t*
ApplicationAPI_getApplicationPlacement(apiClient_t *apiClient, double version, long placementId, char *deviceId, long accountId);


// Get API versions
//
// Will return a comma separated list of numbers, newest first. For example: 3.0, 2.2, 2.1, 1.8
//
sirqul_response_t*
ApplicationAPI_getApplicationVersions(apiClient_t *apiClient, double version);


// Search Application Users
//
// Get a list of users per application
//
account_list_response_t*
ApplicationAPI_getUniqueUsersByApp(apiClient_t *apiClient, double version, char *appKey, char *q, char *keyword, long since, int *_i, int *start, int *_l, int *limit);


// List Applications
//
// List active applications matching the criteria (as a consumer)
//
list_t*
ApplicationAPI_listApplications(apiClient_t *apiClient, double version, long accountId, char *q, char *keyword, char *platforms, char *deviceIds, char *deviceVersions, char *categoryIds, sirqul_iot_platform_listApplications_sortField_e sortField, int *hasAds, int *publicNotifications, int *filterBillable, int *filterContentAdmin, int *descending, int *_i, int *start, int *_l, int *limit, char *applicationIds, int *hasObjectStore, int *activeOnly);


// Search for Ad Placements
//
// Searches placements for an application.
//
list_t*
ApplicationAPI_searchApplicationPlacement(apiClient_t *apiClient, double version, char *appKey, char *deviceId, long accountId, int *start, int *limit);


// Search for Application Settings
//
// Returns a list of applications that the user has logged into before, and returns specific settings for that application and user
//
application_settings_response_t*
ApplicationAPI_searchApplicationSettings(apiClient_t *apiClient, double version, char *deviceId, long accountId, long connectionAccountId, char *keyword, char *sortField, int *descending, int *start, int *limit);


// Search Applications
//
// Search for applications matching the criteria that the logged in user has access to
//
list_t*
ApplicationAPI_searchApplications(apiClient_t *apiClient, double version, char *deviceId, long accountId, double latitude, double longitude, char *q, char *keyword, char *qSearchFields, sirqul_iot_platform_searchApplications_sortField_e sortField, int *descending, int *_i, int *start, int *_l, int *limit, int *hasAds, int *publicNotifications, int *activeOnly);


// Update Application
//
// Update an application record
//
application_response_t*
ApplicationAPI_updateApplication(apiClient_t *apiClient, double version, char *appKey, char *appName, char *deviceId, long accountId, char *about, char *bundleId, long appIconAssetId, long appLogoAssetId, char *facebookAppId, char *facebookAppSecret, char *googleApiKey, int *updateEULADate, char *eulaVersion, char *landingPageUrl, int *showInActivities, char *activityDescription, char *inviteWelcomeText, char *invitePageUrl, char *urlScheme, char *platforms, char *downloadUrls, char *categoryIds, sirqul_iot_platform_updateApplication_scoringType_e scoringType, int *hintCost, int *maxScore, float ticketsPerPoint, int *hasGameData, int *publicNotifications, int *useMatchingAlgorithm, int *globalTickets, float buildVersion, float apiVersion, char *placementName, char *placementDescription, sirqul_iot_platform_updateApplication_placementSize_e placementSize, int *placementHeight, int *placementWidth, int *placementRefreshInterval, int *createObjectStore, int *publicContentApproval, int *productionMode, int *minimumSessionLength, int *sessionGapLength, int *localAdsEnabled, char *sqootApiKey, sirqul_iot_platform_updateApplication_trilatProcessingType_e trilatProcessingType, int *maxSampleSize, double minRSSI, char *modules, int *authorizedCount, char *authorizedServers, char *defaultTimezone, char *smtpPass, char *metaData, char *placementMetaData, int *ipsFloor, int *enableAPNSBadge, int *includeInReport, long defaultAppFilterId, int *enableWelcomeEmail, char *appleAppId, char *appleTeamId, char *appleAuthKeyId, binary_t* appleAuthKey, char *appleIssuerId, char *appStoreKeyId, binary_t* appStoreKey, binary_t* googlePrivateKeyFile, char *authorizeNetApiKey, char *authorizeNetTransactionKey, char *emailSender, char *smtpUser, char *smtpHost, char *vatomBusinessId, char *vatomRestClientId, char *vatomRestSecretKey, char *twilioAccountSID, char *twilioAuthToken, char *twilioSenderPhoneNumber, char *openAISecretKey);


// Change Appliation Status
//
// Set the application's active flag to true/false. This effectively activates or deactivates the application.
//
sirqul_response_t*
ApplicationAPI_updateApplicationActive(apiClient_t *apiClient, double version, long accountId, char *appKey, int *active);


// Update Ad Placement
//
// Updates an ad placement for an application.
//
placement_response_t*
ApplicationAPI_updateApplicationPlacement(apiClient_t *apiClient, double version, long placementId, char *deviceId, long accountId, char *name, char *description, sirqul_iot_platform_updateApplicationPlacement_size_e size, int *height, int *width, int *refreshInterval, long defaultImageId, int *active);


// Create Application Certificate
//
// Uploads a certificate for an application that the user has access to.
//
sirqul_response_t*
ApplicationAPI_uploadApplicationCertificate(apiClient_t *apiClient, double version, char *appKey, char *deviceId, long accountId, binary_t* certificate);


