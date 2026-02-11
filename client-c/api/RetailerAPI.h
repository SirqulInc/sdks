#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/account_login_response.h"
#include "../model/retailer_full_response.h"
#include "../model/retailer_response.h"
#include "../model/sirqul_response.h"

// Enum VISIBILITY for RetailerAPI_createRetailer
typedef enum  { sirqul_iot_platform_createRetailer_VISIBILITY_NULL = 0, sirqul_iot_platform_createRetailer_VISIBILITY__PUBLIC, sirqul_iot_platform_createRetailer_VISIBILITY__PRIVATE, sirqul_iot_platform_createRetailer_VISIBILITY_FRIENDS } sirqul_iot_platform_createRetailer_visibility_e;

// Enum RESPONSEFORMAT for RetailerAPI_createRetailer
typedef enum  { sirqul_iot_platform_createRetailer_RESPONSEFORMAT_NULL = 0, sirqul_iot_platform_createRetailer_RESPONSEFORMAT_HTML, sirqul_iot_platform_createRetailer_RESPONSEFORMAT_XML, sirqul_iot_platform_createRetailer_RESPONSEFORMAT_JSON, sirqul_iot_platform_createRetailer_RESPONSEFORMAT_CSV } sirqul_iot_platform_createRetailer_responseFormat_e;

// Enum VISIBILITY for RetailerAPI_getRetailers
typedef enum  { sirqul_iot_platform_getRetailers_VISIBILITY_NULL = 0, sirqul_iot_platform_getRetailers_VISIBILITY__PUBLIC, sirqul_iot_platform_getRetailers_VISIBILITY__PRIVATE, sirqul_iot_platform_getRetailers_VISIBILITY_FRIENDS } sirqul_iot_platform_getRetailers_visibility_e;

// Enum SORTFIELD for RetailerAPI_getRetailers
typedef enum  { sirqul_iot_platform_getRetailers_SORTFIELD_NULL = 0, sirqul_iot_platform_getRetailers_SORTFIELD_ID, sirqul_iot_platform_getRetailers_SORTFIELD_CREATED, sirqul_iot_platform_getRetailers_SORTFIELD_UPDATED, sirqul_iot_platform_getRetailers_SORTFIELD_DELETED, sirqul_iot_platform_getRetailers_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_getRetailers_SORTFIELD_ACTIVE, sirqul_iot_platform_getRetailers_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_getRetailers_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_getRetailers_SORTFIELD_RESPONSIBLE_DISPLAY, sirqul_iot_platform_getRetailers_SORTFIELD_ADDRESS_STREET, sirqul_iot_platform_getRetailers_SORTFIELD_ADDRESS_CITY, sirqul_iot_platform_getRetailers_SORTFIELD_ADDRESS_STATE, sirqul_iot_platform_getRetailers_SORTFIELD_ADDRESS_POSTAL_CODE, sirqul_iot_platform_getRetailers_SORTFIELD_ADDRESS_COUNTRY, sirqul_iot_platform_getRetailers_SORTFIELD_FILTERS, sirqul_iot_platform_getRetailers_SORTFIELD_CATEGORIES, sirqul_iot_platform_getRetailers_SORTFIELD_VISIBILITY, sirqul_iot_platform_getRetailers_SORTFIELD_NAME } sirqul_iot_platform_getRetailers_sortField_e;

// Enum VISIBILITY for RetailerAPI_updateRetailer
typedef enum  { sirqul_iot_platform_updateRetailer_VISIBILITY_NULL = 0, sirqul_iot_platform_updateRetailer_VISIBILITY__PUBLIC, sirqul_iot_platform_updateRetailer_VISIBILITY__PRIVATE, sirqul_iot_platform_updateRetailer_VISIBILITY_FRIENDS } sirqul_iot_platform_updateRetailer_visibility_e;

// Enum RESPONSEFORMAT for RetailerAPI_updateRetailer
typedef enum  { sirqul_iot_platform_updateRetailer_RESPONSEFORMAT_NULL = 0, sirqul_iot_platform_updateRetailer_RESPONSEFORMAT_HTML, sirqul_iot_platform_updateRetailer_RESPONSEFORMAT_XML, sirqul_iot_platform_updateRetailer_RESPONSEFORMAT_JSON, sirqul_iot_platform_updateRetailer_RESPONSEFORMAT_CSV } sirqul_iot_platform_updateRetailer_responseFormat_e;


// Create Retailer
//
// Create a retailer record. A billable entity must be created first before a retailer record can be made.
//
retailer_full_response_t*
RetailerAPI_createRetailer(apiClient_t *apiClient, char *name, char *deviceId, long accountId, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *facebookUrl, char *twitterUrl, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *categoryIdsToAdd, char *categoryIdsToRemove, char *filterIds, double latitude, double longitude, char *metaData, char *searchTags, char *retailerType, sirqul_iot_platform_createRetailer_visibility_e visibility, int *createDefaultLocation, sirqul_iot_platform_createRetailer_responseFormat_e responseFormat);


// Delete Retailer
//
// Set the deleted timestamp to current time.
//
sirqul_response_t*
RetailerAPI_deleteRetailer(apiClient_t *apiClient, char *deviceId, long accountId, long retailerId);


// Get Retailer
//
// Gets a retailer. Only the owner and the employees of a retailer have access to view its information.
//
retailer_full_response_t*
RetailerAPI_getRetailer(apiClient_t *apiClient, long retailerId, char *deviceId, long accountId, int *includeCounts);


// Search Retailers
//
// earches on retailers that the account has access to.
//
list_t*
RetailerAPI_getRetailers(apiClient_t *apiClient, sirqul_iot_platform_getRetailers_visibility_e visibility, sirqul_iot_platform_getRetailers_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, char *deviceId, long accountId, char *q, char *keyword, char *categoryIds, char *filterIds, int *_i, int *_l);


// Login Retailer
//
// Retailer login check.
//
account_login_response_t*
RetailerAPI_retailerLoginCheck(apiClient_t *apiClient, char *username, char *password, char *deviceId, double latitude, double longitude, char *appKey);


// Update Retailer
//
// Update a retailer record. Only the owner and the employees of the retailer have access to update its information.
//
retailer_full_response_t*
RetailerAPI_updateRetailer(apiClient_t *apiClient, long retailerId, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *facebookUrl, char *twitterUrl, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *filterIds, double latitude, double longitude, char *metaData, char *searchTags, char *retailerType, sirqul_iot_platform_updateRetailer_visibility_e visibility, int *active, sirqul_iot_platform_updateRetailer_responseFormat_e responseFormat);


