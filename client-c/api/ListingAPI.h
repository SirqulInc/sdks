#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/listing_full_response.h"
#include "../model/listing_group_response.h"
#include "../model/listing_response.h"
#include "../model/sirqul_response.h"


// Create Listing
//
// Creates a listing.
//
listing_full_response_t*
ListingAPI_createListing(apiClient_t *apiClient, double version, long accountId, char *name, char *filterIds, char *description, long start, long end, char *locationName, char *locationDescription, int *isPrivate, char *externalId, char *externalId2, char *externalGroupId, int *active, char *metaData);


// Delete Listing
//
// Delete a listing.
//
sirqul_response_t*
ListingAPI_deleteListing(apiClient_t *apiClient, double version, long accountId, long listingId);


// Get Listing
//
// Get a listing by id.
//
listing_full_response_t*
ListingAPI_getListing(apiClient_t *apiClient, double version, long listingId);


// Search Listings
//
// Search for event listings from the start time to end time
//
list_t*
ListingAPI_searchListing(apiClient_t *apiClient, double version, long accountId, char *keyword, int *start, int *limit, int *activeOnly, double latitude, double longitude, long startDate, long endDate, char *categoryIds, char *filterIds, int *useListingOrderIds, char *externalId, char *externalId2, char *externalGroupId);


// Summary Listing
//
// Search for a list of summary listings from the start time up to 8 days out.
//
list_t*
ListingAPI_summaryListing(apiClient_t *apiClient, double version, long accountId, long startDate, char *categoryIds, int *daysToInclude, int *useListingOrderIds);


// Update Listing
//
// Updates a listing.
//
listing_full_response_t*
ListingAPI_updateListing(apiClient_t *apiClient, double version, long accountId, long listingId, char *filterIds, char *name, char *description, long start, long end, char *locationName, char *locationDescription, int *isPrivate, char *externalId, char *externalId2, char *externalGroupId, int *active, char *metaData);


