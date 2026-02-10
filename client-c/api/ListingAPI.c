#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ListingAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Listing
//
// Creates a listing.
//
listing_full_response_t*
ListingAPI_createListing(apiClient_t *apiClient, double version, long accountId, char *name, char *filterIds, char *description, long start, long end, char *locationName, char *locationDescription, int *isPrivate, char *externalId, char *externalId2, char *externalGroupId, int *active, char *metaData)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/listing/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
    }

    // query parameters
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start ;
    keyValuePair_t *keyPairQuery_start = 0;
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH_LONG, "%d", start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_end = NULL;
    char * valueQuery_end ;
    keyValuePair_t *keyPairQuery_end = 0;
    {
        keyQuery_end = strdup("end");
        valueQuery_end = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_end, MAX_NUMBER_LENGTH_LONG, "%d", end);
        keyPairQuery_end = keyValuePair_create(keyQuery_end, valueQuery_end);
        list_addElement(localVarQueryParameters,keyPairQuery_end);
    }

    // query parameters
    char *keyQuery_locationName = NULL;
    char * valueQuery_locationName = NULL;
    keyValuePair_t *keyPairQuery_locationName = 0;
    if (locationName)
    {
        keyQuery_locationName = strdup("locationName");
        valueQuery_locationName = strdup((locationName));
        keyPairQuery_locationName = keyValuePair_create(keyQuery_locationName, valueQuery_locationName);
        list_addElement(localVarQueryParameters,keyPairQuery_locationName);
    }

    // query parameters
    char *keyQuery_locationDescription = NULL;
    char * valueQuery_locationDescription = NULL;
    keyValuePair_t *keyPairQuery_locationDescription = 0;
    if (locationDescription)
    {
        keyQuery_locationDescription = strdup("locationDescription");
        valueQuery_locationDescription = strdup((locationDescription));
        keyPairQuery_locationDescription = keyValuePair_create(keyQuery_locationDescription, valueQuery_locationDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_locationDescription);
    }

    // query parameters
    char *keyQuery_isPrivate = NULL;
    char * valueQuery_isPrivate = NULL;
    keyValuePair_t *keyPairQuery_isPrivate = 0;
    if (isPrivate)
    {
        keyQuery_isPrivate = strdup("isPrivate");
        valueQuery_isPrivate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_isPrivate, MAX_NUMBER_LENGTH, "%d", *isPrivate);
        keyPairQuery_isPrivate = keyValuePair_create(keyQuery_isPrivate, valueQuery_isPrivate);
        list_addElement(localVarQueryParameters,keyPairQuery_isPrivate);
    }

    // query parameters
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
    }

    // query parameters
    char *keyQuery_externalId2 = NULL;
    char * valueQuery_externalId2 = NULL;
    keyValuePair_t *keyPairQuery_externalId2 = 0;
    if (externalId2)
    {
        keyQuery_externalId2 = strdup("externalId2");
        valueQuery_externalId2 = strdup((externalId2));
        keyPairQuery_externalId2 = keyValuePair_create(keyQuery_externalId2, valueQuery_externalId2);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId2);
    }

    // query parameters
    char *keyQuery_externalGroupId = NULL;
    char * valueQuery_externalGroupId = NULL;
    keyValuePair_t *keyPairQuery_externalGroupId = 0;
    if (externalGroupId)
    {
        keyQuery_externalGroupId = strdup("externalGroupId");
        valueQuery_externalGroupId = strdup((externalGroupId));
        keyPairQuery_externalGroupId = keyValuePair_create(keyQuery_externalGroupId, valueQuery_externalGroupId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalGroupId);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    listing_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ListingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = listing_full_response_parseFromJSON(ListingAPIlocalVarJSON);
        cJSON_Delete(ListingAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
    }
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_end){
        free(keyQuery_end);
        keyQuery_end = NULL;
    }
    if(keyPairQuery_end){
        keyValuePair_free(keyPairQuery_end);
        keyPairQuery_end = NULL;
    }
    if(keyQuery_locationName){
        free(keyQuery_locationName);
        keyQuery_locationName = NULL;
    }
    if(valueQuery_locationName){
        free(valueQuery_locationName);
        valueQuery_locationName = NULL;
    }
    if(keyPairQuery_locationName){
        keyValuePair_free(keyPairQuery_locationName);
        keyPairQuery_locationName = NULL;
    }
    if(keyQuery_locationDescription){
        free(keyQuery_locationDescription);
        keyQuery_locationDescription = NULL;
    }
    if(valueQuery_locationDescription){
        free(valueQuery_locationDescription);
        valueQuery_locationDescription = NULL;
    }
    if(keyPairQuery_locationDescription){
        keyValuePair_free(keyPairQuery_locationDescription);
        keyPairQuery_locationDescription = NULL;
    }
    if(keyQuery_isPrivate){
        free(keyQuery_isPrivate);
        keyQuery_isPrivate = NULL;
    }
    if(valueQuery_isPrivate){
        free(valueQuery_isPrivate);
        valueQuery_isPrivate = NULL;
    }
    if(keyPairQuery_isPrivate){
        keyValuePair_free(keyPairQuery_isPrivate);
        keyPairQuery_isPrivate = NULL;
    }
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
    }
    if(keyQuery_externalId2){
        free(keyQuery_externalId2);
        keyQuery_externalId2 = NULL;
    }
    if(valueQuery_externalId2){
        free(valueQuery_externalId2);
        valueQuery_externalId2 = NULL;
    }
    if(keyPairQuery_externalId2){
        keyValuePair_free(keyPairQuery_externalId2);
        keyPairQuery_externalId2 = NULL;
    }
    if(keyQuery_externalGroupId){
        free(keyQuery_externalGroupId);
        keyQuery_externalGroupId = NULL;
    }
    if(valueQuery_externalGroupId){
        free(valueQuery_externalGroupId);
        valueQuery_externalGroupId = NULL;
    }
    if(keyPairQuery_externalGroupId){
        keyValuePair_free(keyPairQuery_externalGroupId);
        keyPairQuery_externalGroupId = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Listing
//
// Delete a listing.
//
sirqul_response_t*
ListingAPI_deleteListing(apiClient_t *apiClient, double version, long accountId, long listingId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/listing/delete");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_listingId = NULL;
    char * valueQuery_listingId ;
    keyValuePair_t *keyPairQuery_listingId = 0;
    {
        keyQuery_listingId = strdup("listingId");
        valueQuery_listingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_listingId, MAX_NUMBER_LENGTH_LONG, "%d", listingId);
        keyPairQuery_listingId = keyValuePair_create(keyQuery_listingId, valueQuery_listingId);
        list_addElement(localVarQueryParameters,keyPairQuery_listingId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ListingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ListingAPIlocalVarJSON);
        cJSON_Delete(ListingAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_listingId){
        free(keyQuery_listingId);
        keyQuery_listingId = NULL;
    }
    if(keyPairQuery_listingId){
        keyValuePair_free(keyPairQuery_listingId);
        keyPairQuery_listingId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Listing
//
// Get a listing by id.
//
listing_full_response_t*
ListingAPI_getListing(apiClient_t *apiClient, double version, long listingId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/listing/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_listingId = NULL;
    char * valueQuery_listingId ;
    keyValuePair_t *keyPairQuery_listingId = 0;
    {
        keyQuery_listingId = strdup("listingId");
        valueQuery_listingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_listingId, MAX_NUMBER_LENGTH_LONG, "%d", listingId);
        keyPairQuery_listingId = keyValuePair_create(keyQuery_listingId, valueQuery_listingId);
        list_addElement(localVarQueryParameters,keyPairQuery_listingId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    listing_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ListingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = listing_full_response_parseFromJSON(ListingAPIlocalVarJSON);
        cJSON_Delete(ListingAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_listingId){
        free(keyQuery_listingId);
        keyQuery_listingId = NULL;
    }
    if(keyPairQuery_listingId){
        keyValuePair_free(keyPairQuery_listingId);
        keyPairQuery_listingId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Listings
//
// Search for event listings from the start time to end time
//
list_t*
ListingAPI_searchListing(apiClient_t *apiClient, double version, long accountId, char *keyword, int *start, int *limit, int *activeOnly, double latitude, double longitude, long startDate, long endDate, char *categoryIds, char *filterIds, int *useListingOrderIds, char *externalId, char *externalId2, char *externalGroupId)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/listing/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }

    // query parameters
    char *keyQuery_activeOnly = NULL;
    char * valueQuery_activeOnly = NULL;
    keyValuePair_t *keyPairQuery_activeOnly = 0;
    if (activeOnly)
    {
        keyQuery_activeOnly = strdup("activeOnly");
        valueQuery_activeOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_activeOnly, MAX_NUMBER_LENGTH, "%d", *activeOnly);
        keyPairQuery_activeOnly = keyValuePair_create(keyQuery_activeOnly, valueQuery_activeOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_activeOnly);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_endDate = NULL;
    char * valueQuery_endDate ;
    keyValuePair_t *keyPairQuery_endDate = 0;
    {
        keyQuery_endDate = strdup("endDate");
        valueQuery_endDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endDate, MAX_NUMBER_LENGTH_LONG, "%d", endDate);
        keyPairQuery_endDate = keyValuePair_create(keyQuery_endDate, valueQuery_endDate);
        list_addElement(localVarQueryParameters,keyPairQuery_endDate);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
    }

    // query parameters
    char *keyQuery_useListingOrderIds = NULL;
    char * valueQuery_useListingOrderIds = NULL;
    keyValuePair_t *keyPairQuery_useListingOrderIds = 0;
    if (useListingOrderIds)
    {
        keyQuery_useListingOrderIds = strdup("useListingOrderIds");
        valueQuery_useListingOrderIds = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useListingOrderIds, MAX_NUMBER_LENGTH, "%d", *useListingOrderIds);
        keyPairQuery_useListingOrderIds = keyValuePair_create(keyQuery_useListingOrderIds, valueQuery_useListingOrderIds);
        list_addElement(localVarQueryParameters,keyPairQuery_useListingOrderIds);
    }

    // query parameters
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
    }

    // query parameters
    char *keyQuery_externalId2 = NULL;
    char * valueQuery_externalId2 = NULL;
    keyValuePair_t *keyPairQuery_externalId2 = 0;
    if (externalId2)
    {
        keyQuery_externalId2 = strdup("externalId2");
        valueQuery_externalId2 = strdup((externalId2));
        keyPairQuery_externalId2 = keyValuePair_create(keyQuery_externalId2, valueQuery_externalId2);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId2);
    }

    // query parameters
    char *keyQuery_externalGroupId = NULL;
    char * valueQuery_externalGroupId = NULL;
    keyValuePair_t *keyPairQuery_externalGroupId = 0;
    if (externalGroupId)
    {
        keyQuery_externalGroupId = strdup("externalGroupId");
        valueQuery_externalGroupId = strdup((externalGroupId));
        keyPairQuery_externalGroupId = keyValuePair_create(keyQuery_externalGroupId, valueQuery_externalGroupId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalGroupId);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ListingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ListingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ListingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ListingAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    if(keyQuery_activeOnly){
        free(keyQuery_activeOnly);
        keyQuery_activeOnly = NULL;
    }
    if(valueQuery_activeOnly){
        free(valueQuery_activeOnly);
        valueQuery_activeOnly = NULL;
    }
    if(keyPairQuery_activeOnly){
        keyValuePair_free(keyPairQuery_activeOnly);
        keyPairQuery_activeOnly = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_endDate){
        free(keyQuery_endDate);
        keyQuery_endDate = NULL;
    }
    if(keyPairQuery_endDate){
        keyValuePair_free(keyPairQuery_endDate);
        keyPairQuery_endDate = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
    }
    if(keyQuery_useListingOrderIds){
        free(keyQuery_useListingOrderIds);
        keyQuery_useListingOrderIds = NULL;
    }
    if(valueQuery_useListingOrderIds){
        free(valueQuery_useListingOrderIds);
        valueQuery_useListingOrderIds = NULL;
    }
    if(keyPairQuery_useListingOrderIds){
        keyValuePair_free(keyPairQuery_useListingOrderIds);
        keyPairQuery_useListingOrderIds = NULL;
    }
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
    }
    if(keyQuery_externalId2){
        free(keyQuery_externalId2);
        keyQuery_externalId2 = NULL;
    }
    if(valueQuery_externalId2){
        free(valueQuery_externalId2);
        valueQuery_externalId2 = NULL;
    }
    if(keyPairQuery_externalId2){
        keyValuePair_free(keyPairQuery_externalId2);
        keyPairQuery_externalId2 = NULL;
    }
    if(keyQuery_externalGroupId){
        free(keyQuery_externalGroupId);
        keyQuery_externalGroupId = NULL;
    }
    if(valueQuery_externalGroupId){
        free(valueQuery_externalGroupId);
        valueQuery_externalGroupId = NULL;
    }
    if(keyPairQuery_externalGroupId){
        keyValuePair_free(keyPairQuery_externalGroupId);
        keyPairQuery_externalGroupId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Summary Listing
//
// Search for a list of summary listings from the start time up to 8 days out.
//
list_t*
ListingAPI_summaryListing(apiClient_t *apiClient, double version, long accountId, long startDate, char *categoryIds, int *daysToInclude, int *useListingOrderIds)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/listing/summary");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_startDate = NULL;
    char * valueQuery_startDate ;
    keyValuePair_t *keyPairQuery_startDate = 0;
    {
        keyQuery_startDate = strdup("startDate");
        valueQuery_startDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startDate, MAX_NUMBER_LENGTH_LONG, "%d", startDate);
        keyPairQuery_startDate = keyValuePair_create(keyQuery_startDate, valueQuery_startDate);
        list_addElement(localVarQueryParameters,keyPairQuery_startDate);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_daysToInclude = NULL;
    char * valueQuery_daysToInclude = NULL;
    keyValuePair_t *keyPairQuery_daysToInclude = 0;
    if (daysToInclude)
    {
        keyQuery_daysToInclude = strdup("daysToInclude");
        valueQuery_daysToInclude = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_daysToInclude, MAX_NUMBER_LENGTH, "%d", *daysToInclude);
        keyPairQuery_daysToInclude = keyValuePair_create(keyQuery_daysToInclude, valueQuery_daysToInclude);
        list_addElement(localVarQueryParameters,keyPairQuery_daysToInclude);
    }

    // query parameters
    char *keyQuery_useListingOrderIds = NULL;
    char * valueQuery_useListingOrderIds = NULL;
    keyValuePair_t *keyPairQuery_useListingOrderIds = 0;
    if (useListingOrderIds)
    {
        keyQuery_useListingOrderIds = strdup("useListingOrderIds");
        valueQuery_useListingOrderIds = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useListingOrderIds, MAX_NUMBER_LENGTH, "%d", *useListingOrderIds);
        keyPairQuery_useListingOrderIds = keyValuePair_create(keyQuery_useListingOrderIds, valueQuery_useListingOrderIds);
        list_addElement(localVarQueryParameters,keyPairQuery_useListingOrderIds);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ListingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ListingAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ListingAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ListingAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_startDate){
        free(keyQuery_startDate);
        keyQuery_startDate = NULL;
    }
    if(keyPairQuery_startDate){
        keyValuePair_free(keyPairQuery_startDate);
        keyPairQuery_startDate = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_daysToInclude){
        free(keyQuery_daysToInclude);
        keyQuery_daysToInclude = NULL;
    }
    if(valueQuery_daysToInclude){
        free(valueQuery_daysToInclude);
        valueQuery_daysToInclude = NULL;
    }
    if(keyPairQuery_daysToInclude){
        keyValuePair_free(keyPairQuery_daysToInclude);
        keyPairQuery_daysToInclude = NULL;
    }
    if(keyQuery_useListingOrderIds){
        free(keyQuery_useListingOrderIds);
        keyQuery_useListingOrderIds = NULL;
    }
    if(valueQuery_useListingOrderIds){
        free(valueQuery_useListingOrderIds);
        valueQuery_useListingOrderIds = NULL;
    }
    if(keyPairQuery_useListingOrderIds){
        keyValuePair_free(keyPairQuery_useListingOrderIds);
        keyPairQuery_useListingOrderIds = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Listing
//
// Updates a listing.
//
listing_full_response_t*
ListingAPI_updateListing(apiClient_t *apiClient, double version, long accountId, long listingId, char *filterIds, char *name, char *description, long start, long end, char *locationName, char *locationDescription, int *isPrivate, char *externalId, char *externalId2, char *externalGroupId, int *active, char *metaData)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/listing/update");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_listingId = NULL;
    char * valueQuery_listingId ;
    keyValuePair_t *keyPairQuery_listingId = 0;
    {
        keyQuery_listingId = strdup("listingId");
        valueQuery_listingId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_listingId, MAX_NUMBER_LENGTH_LONG, "%d", listingId);
        keyPairQuery_listingId = keyValuePair_create(keyQuery_listingId, valueQuery_listingId);
        list_addElement(localVarQueryParameters,keyPairQuery_listingId);
    }

    // query parameters
    char *keyQuery_filterIds = NULL;
    char * valueQuery_filterIds = NULL;
    keyValuePair_t *keyPairQuery_filterIds = 0;
    if (filterIds)
    {
        keyQuery_filterIds = strdup("filterIds");
        valueQuery_filterIds = strdup((filterIds));
        keyPairQuery_filterIds = keyValuePair_create(keyQuery_filterIds, valueQuery_filterIds);
        list_addElement(localVarQueryParameters,keyPairQuery_filterIds);
    }

    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_description = NULL;
    char * valueQuery_description = NULL;
    keyValuePair_t *keyPairQuery_description = 0;
    if (description)
    {
        keyQuery_description = strdup("description");
        valueQuery_description = strdup((description));
        keyPairQuery_description = keyValuePair_create(keyQuery_description, valueQuery_description);
        list_addElement(localVarQueryParameters,keyPairQuery_description);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start ;
    keyValuePair_t *keyPairQuery_start = 0;
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH_LONG, "%d", start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_end = NULL;
    char * valueQuery_end ;
    keyValuePair_t *keyPairQuery_end = 0;
    {
        keyQuery_end = strdup("end");
        valueQuery_end = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_end, MAX_NUMBER_LENGTH_LONG, "%d", end);
        keyPairQuery_end = keyValuePair_create(keyQuery_end, valueQuery_end);
        list_addElement(localVarQueryParameters,keyPairQuery_end);
    }

    // query parameters
    char *keyQuery_locationName = NULL;
    char * valueQuery_locationName = NULL;
    keyValuePair_t *keyPairQuery_locationName = 0;
    if (locationName)
    {
        keyQuery_locationName = strdup("locationName");
        valueQuery_locationName = strdup((locationName));
        keyPairQuery_locationName = keyValuePair_create(keyQuery_locationName, valueQuery_locationName);
        list_addElement(localVarQueryParameters,keyPairQuery_locationName);
    }

    // query parameters
    char *keyQuery_locationDescription = NULL;
    char * valueQuery_locationDescription = NULL;
    keyValuePair_t *keyPairQuery_locationDescription = 0;
    if (locationDescription)
    {
        keyQuery_locationDescription = strdup("locationDescription");
        valueQuery_locationDescription = strdup((locationDescription));
        keyPairQuery_locationDescription = keyValuePair_create(keyQuery_locationDescription, valueQuery_locationDescription);
        list_addElement(localVarQueryParameters,keyPairQuery_locationDescription);
    }

    // query parameters
    char *keyQuery_isPrivate = NULL;
    char * valueQuery_isPrivate = NULL;
    keyValuePair_t *keyPairQuery_isPrivate = 0;
    if (isPrivate)
    {
        keyQuery_isPrivate = strdup("isPrivate");
        valueQuery_isPrivate = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_isPrivate, MAX_NUMBER_LENGTH, "%d", *isPrivate);
        keyPairQuery_isPrivate = keyValuePair_create(keyQuery_isPrivate, valueQuery_isPrivate);
        list_addElement(localVarQueryParameters,keyPairQuery_isPrivate);
    }

    // query parameters
    char *keyQuery_externalId = NULL;
    char * valueQuery_externalId = NULL;
    keyValuePair_t *keyPairQuery_externalId = 0;
    if (externalId)
    {
        keyQuery_externalId = strdup("externalId");
        valueQuery_externalId = strdup((externalId));
        keyPairQuery_externalId = keyValuePair_create(keyQuery_externalId, valueQuery_externalId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId);
    }

    // query parameters
    char *keyQuery_externalId2 = NULL;
    char * valueQuery_externalId2 = NULL;
    keyValuePair_t *keyPairQuery_externalId2 = 0;
    if (externalId2)
    {
        keyQuery_externalId2 = strdup("externalId2");
        valueQuery_externalId2 = strdup((externalId2));
        keyPairQuery_externalId2 = keyValuePair_create(keyQuery_externalId2, valueQuery_externalId2);
        list_addElement(localVarQueryParameters,keyPairQuery_externalId2);
    }

    // query parameters
    char *keyQuery_externalGroupId = NULL;
    char * valueQuery_externalGroupId = NULL;
    keyValuePair_t *keyPairQuery_externalGroupId = 0;
    if (externalGroupId)
    {
        keyQuery_externalGroupId = strdup("externalGroupId");
        valueQuery_externalGroupId = strdup((externalGroupId));
        keyPairQuery_externalGroupId = keyValuePair_create(keyQuery_externalGroupId, valueQuery_externalGroupId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalGroupId);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_metaData = NULL;
    char * valueQuery_metaData = NULL;
    keyValuePair_t *keyPairQuery_metaData = 0;
    if (metaData)
    {
        keyQuery_metaData = strdup("metaData");
        valueQuery_metaData = strdup((metaData));
        keyPairQuery_metaData = keyValuePair_create(keyQuery_metaData, valueQuery_metaData);
        list_addElement(localVarQueryParameters,keyPairQuery_metaData);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    listing_full_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ListingAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = listing_full_response_parseFromJSON(ListingAPIlocalVarJSON);
        cJSON_Delete(ListingAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_listingId){
        free(keyQuery_listingId);
        keyQuery_listingId = NULL;
    }
    if(keyPairQuery_listingId){
        keyValuePair_free(keyPairQuery_listingId);
        keyPairQuery_listingId = NULL;
    }
    if(keyQuery_filterIds){
        free(keyQuery_filterIds);
        keyQuery_filterIds = NULL;
    }
    if(valueQuery_filterIds){
        free(valueQuery_filterIds);
        valueQuery_filterIds = NULL;
    }
    if(keyPairQuery_filterIds){
        keyValuePair_free(keyPairQuery_filterIds);
        keyPairQuery_filterIds = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_description){
        free(keyQuery_description);
        keyQuery_description = NULL;
    }
    if(valueQuery_description){
        free(valueQuery_description);
        valueQuery_description = NULL;
    }
    if(keyPairQuery_description){
        keyValuePair_free(keyPairQuery_description);
        keyPairQuery_description = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_end){
        free(keyQuery_end);
        keyQuery_end = NULL;
    }
    if(keyPairQuery_end){
        keyValuePair_free(keyPairQuery_end);
        keyPairQuery_end = NULL;
    }
    if(keyQuery_locationName){
        free(keyQuery_locationName);
        keyQuery_locationName = NULL;
    }
    if(valueQuery_locationName){
        free(valueQuery_locationName);
        valueQuery_locationName = NULL;
    }
    if(keyPairQuery_locationName){
        keyValuePair_free(keyPairQuery_locationName);
        keyPairQuery_locationName = NULL;
    }
    if(keyQuery_locationDescription){
        free(keyQuery_locationDescription);
        keyQuery_locationDescription = NULL;
    }
    if(valueQuery_locationDescription){
        free(valueQuery_locationDescription);
        valueQuery_locationDescription = NULL;
    }
    if(keyPairQuery_locationDescription){
        keyValuePair_free(keyPairQuery_locationDescription);
        keyPairQuery_locationDescription = NULL;
    }
    if(keyQuery_isPrivate){
        free(keyQuery_isPrivate);
        keyQuery_isPrivate = NULL;
    }
    if(valueQuery_isPrivate){
        free(valueQuery_isPrivate);
        valueQuery_isPrivate = NULL;
    }
    if(keyPairQuery_isPrivate){
        keyValuePair_free(keyPairQuery_isPrivate);
        keyPairQuery_isPrivate = NULL;
    }
    if(keyQuery_externalId){
        free(keyQuery_externalId);
        keyQuery_externalId = NULL;
    }
    if(valueQuery_externalId){
        free(valueQuery_externalId);
        valueQuery_externalId = NULL;
    }
    if(keyPairQuery_externalId){
        keyValuePair_free(keyPairQuery_externalId);
        keyPairQuery_externalId = NULL;
    }
    if(keyQuery_externalId2){
        free(keyQuery_externalId2);
        keyQuery_externalId2 = NULL;
    }
    if(valueQuery_externalId2){
        free(valueQuery_externalId2);
        valueQuery_externalId2 = NULL;
    }
    if(keyPairQuery_externalId2){
        keyValuePair_free(keyPairQuery_externalId2);
        keyPairQuery_externalId2 = NULL;
    }
    if(keyQuery_externalGroupId){
        free(keyQuery_externalGroupId);
        keyQuery_externalGroupId = NULL;
    }
    if(valueQuery_externalGroupId){
        free(valueQuery_externalGroupId);
        valueQuery_externalGroupId = NULL;
    }
    if(keyPairQuery_externalGroupId){
        keyValuePair_free(keyPairQuery_externalGroupId);
        keyPairQuery_externalGroupId = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_metaData){
        free(keyQuery_metaData);
        keyQuery_metaData = NULL;
    }
    if(valueQuery_metaData){
        free(valueQuery_metaData);
        valueQuery_metaData = NULL;
    }
    if(keyPairQuery_metaData){
        keyValuePair_free(keyPairQuery_metaData);
        keyPairQuery_metaData = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

