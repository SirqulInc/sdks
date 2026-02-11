#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/retailer_location_response.h"
#include "../model/sirqul_response.h"

// Enum RESPONSEFORMAT for RetailerLocationAPI_createRetailerLocations
typedef enum  { sirqul_iot_platform_createRetailerLocations_RESPONSEFORMAT_NULL = 0, sirqul_iot_platform_createRetailerLocations_RESPONSEFORMAT_HTML, sirqul_iot_platform_createRetailerLocations_RESPONSEFORMAT_XML, sirqul_iot_platform_createRetailerLocations_RESPONSEFORMAT_JSON, sirqul_iot_platform_createRetailerLocations_RESPONSEFORMAT_CSV } sirqul_iot_platform_createRetailerLocations_responseFormat_e;

// Enum DISTANCEUNIT for RetailerLocationAPI_indexedRetailerLocationDistanceSearch
typedef enum  { sirqul_iot_platform_indexedRetailerLocationDistanceSearch_DISTANCEUNIT_NULL = 0, sirqul_iot_platform_indexedRetailerLocationDistanceSearch_DISTANCEUNIT_MILES, sirqul_iot_platform_indexedRetailerLocationDistanceSearch_DISTANCEUNIT_KILOMETERS } sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e;

// Enum SORTFIELD for RetailerLocationAPI_searchRetailerLocations
typedef enum  { sirqul_iot_platform_searchRetailerLocations_SORTFIELD_NULL = 0, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_ID, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_CREATED, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_UPDATED, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_DELETED, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_SEARCH_TAGS, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_ACTIVE, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_RETAILER_ID, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_BILLABLE_ENTITY_ID, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_BILLABLE_ENTITY_NAME, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_RESPONSIBLE_DISPLAY, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_ADDRESS_STREET, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_ADDRESS_CITY, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_ADDRESS_STATE, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_ADDRESS_POSTAL_CODE, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_ADDRESS_COUNTRY, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_NAME, sirqul_iot_platform_searchRetailerLocations_SORTFIELD_CODE } sirqul_iot_platform_searchRetailerLocations_sortField_e;

// Enum RESPONSEFORMAT for RetailerLocationAPI_updateRetailerLocations
typedef enum  { sirqul_iot_platform_updateRetailerLocations_RESPONSEFORMAT_NULL = 0, sirqul_iot_platform_updateRetailerLocations_RESPONSEFORMAT_HTML, sirqul_iot_platform_updateRetailerLocations_RESPONSEFORMAT_XML, sirqul_iot_platform_updateRetailerLocations_RESPONSEFORMAT_JSON, sirqul_iot_platform_updateRetailerLocations_RESPONSEFORMAT_CSV } sirqul_iot_platform_updateRetailerLocations_responseFormat_e;


// Create Retailer Location (Consumer)
//
// Creates a location record for an application that can support crowd sourced locations.
//
retailer_location_response_t*
RetailerLocationAPI_createRetailerLocationConsumer(apiClient_t *apiClient, char *appKey, char *name, char *deviceId, long accountId, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *detailsHeader, char *detailsBody, char *hours, char *tags, long logoAssetId, long picture1AssetId, long picture2AssetId, char *categoryIds, char *filterIds, char *metaData, int *publicLocation, int *active, char *locationType, double latitude, double longitude);


// Create Retailer Location
//
// Creates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
//
retailer_location_response_t*
RetailerLocationAPI_createRetailerLocations(apiClient_t *apiClient, long retailerId, char *name, char *streetAddress, char *city, char *state, char *postalCode, char *deviceId, long accountId, char *streetAddress2, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *internalId, char *detailsHeader, char *detailsBody, char *hours, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *filterIds, double latitude, double longitude, char *building, char *googlePlaceId, char *yelpId, int *active, int *publicLocation, char *locationType, char *audienceIds, char *audienceIdsToAdd, char *audienceIdsToRemove, sirqul_iot_platform_createRetailerLocations_responseFormat_e responseFormat, char *responseIncludes);


// Delete Retailer Location
//
// Set the deleted timestamp to current time. This effectively deletes the retailer location since all queries should ignore any records with a deleted time stamp.
//
sirqul_response_t*
RetailerLocationAPI_deleteRetailerLocation(apiClient_t *apiClient, char *deviceId, long accountId, long retailerLocationId);


// Get Retailer Location
//
// Gets a retailer location. Only the owner and the employees of the retailer have access to view its information.
//
retailer_location_response_t*
RetailerLocationAPI_getRetailerLocation(apiClient_t *apiClient, long retailerLocationId, char *deviceId, long accountId, char *retailerLocationToken);


// Get Retailer Location (Consumer)
//
// Gets the details of a retailer location as a consumer.
//
retailer_location_response_t*
RetailerLocationAPI_getRetailerLocationConsumer(apiClient_t *apiClient, long retailerLocationId, char *deviceId, long accountId);


// Distance Search Retailer Locations (Indexed)
//
// Retailer location indexed search by distance. This searches on any retailer location with location data and returns the results sorted by distance.
//
list_t*
RetailerLocationAPI_indexedRetailerLocationDistanceSearch(apiClient_t *apiClient, double latitude, double longitude, double searchRange, int *start, int *limit, long accountId, char *address, int *hasOffers, char *categories, char *filters, char *audiences, char *retailerIds, char *retailerLocationIds, char *tags, char *locationType, char *sortField, int *descending, char *q, char *keyword, char *keywordOperator, char *searchExpression, sirqul_iot_platform_indexedRetailerLocationDistanceSearch_distanceUnit_e distanceUnit, int *returnFavorited, int *returnRetailer, int *returnAssets, int *returnOffers, int *returnCategories, int *returnFilters, int *returnAudiences, int *returnQrCode, int *returnExternalCategoryData, int *includeFavorite, int *includeLiked, int *includeRating);


// Keyword Search Retailer Locations (Indexed)
//
// Retailer location (faster) indexed search. This searches all retailer locations.
//
list_t*
RetailerLocationAPI_indexedRetailerLocationSearch(apiClient_t *apiClient, long accountId, int *start, int *limit, int *hasOffers, char *categories, char *filters, char *audiences, char *retailerIds, char *retailerLocationIds, char *tags, char *locationType, char *sortField, int *descending, char *q, char *keyword, char *keywordOperator, char *searchExpression, int *returnRetailer, int *returnAssets, int *returnOffers, int *returnCategories, int *returnFilters, int *returnAudiences, int *returnQrCode, int *returnExternalCategoryData, int *includeFavorite, int *includeLiked, int *includeRating);


// Search Retailer Locations (Owned)
//
// Searches on retailer locations that the account has access to.
//
list_t*
RetailerLocationAPI_searchRetailerLocations(apiClient_t *apiClient, char *deviceId, long accountId, char *q, char *keyword, char *retailerIds, char *retailerLocationIds, char *locationType, sirqul_iot_platform_searchRetailerLocations_sortField_e sortField, int *descending, int *_i, int *start, int *_l, int *limit, int *showPublicLocations, int *activeOnly, int *returnRetailer, int *returnAssets, int *returnOffers, int *returnCategories, int *returnFilters, int *returnAudiences, int *returnQrCode, int *includeFavorite, int *includeLiked, int *includeRating);


// Update Retailer Location
//
// Updates a location record for a retailer. Only the owner and the employees of the retailer have access to do this.
//
retailer_location_response_t*
RetailerLocationAPI_updateRetailerLocations(apiClient_t *apiClient, long retailerLocationId, char *deviceId, long accountId, char *name, char *streetAddress, char *streetAddress2, char *city, char *state, char *postalCode, char *country, char *businessPhone, char *businessPhoneExt, char *website, char *email, char *internalId, char *detailsHeader, char *detailsBody, char *hours, binary_t* logo, long logoAssetId, binary_t* picture1, long picture1AssetId, binary_t* picture2, long picture2AssetId, char *categoryIds, char *filterIds, double latitude, double longitude, char *building, char *googlePlaceId, char *yelpId, char *metaData, char *paymentProvider, int *active, int *publicLocation, char *locationType, char *audienceIds, char *audienceIdsToAdd, char *audienceIdsToRemove, sirqul_iot_platform_updateRetailerLocations_responseFormat_e responseFormat, char *tags);


