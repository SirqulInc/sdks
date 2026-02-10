#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "EventAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for EventAPI_searchEventTransactions

static char* searchEventTransactions_SORTFIELD_ToString(sirqul_iot_platform_searchEventTransactions_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "REDEEMABLE_START", "REDEEMABLE_END", "CUSTOMER_ID", "CUSTOMER_DISPLAY", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchEventTransactions_sortField_e searchEventTransactions_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "REDEEMABLE_START", "REDEEMABLE_END", "CUSTOMER_ID", "CUSTOMER_DISPLAY", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchEventTransactions_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchEventTransactions_SORTFIELD_convertToJSON(sirqul_iot_platform_searchEventTransactions_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchEventTransactions_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchEventTransactions_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchEventTransactions_sortField_e searchEventTransactions_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchEventTransactions_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchEventTransactions_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for EventAPI_searchEvents

static char* searchEvents_SORTFIELD_ToString(sirqul_iot_platform_searchEvents_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "REDEEMABLE_START", "REDEEMABLE_END", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "ESTIMATED_VALUE", "VOUCHER_PRICE", "VOUCHER_DISCOUNT_PRICE", "FULL_PRICE", "DICOUNT_PRICE", "TICKETS_REWARD", "AVAILABILITY_DATE", "RELEASE_DATE", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchEvents_sortField_e searchEvents_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "REDEEMABLE_START", "REDEEMABLE_END", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "ESTIMATED_VALUE", "VOUCHER_PRICE", "VOUCHER_DISCOUNT_PRICE", "FULL_PRICE", "DICOUNT_PRICE", "TICKETS_REWARD", "AVAILABILITY_DATE", "RELEASE_DATE", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchEvents_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchEvents_SORTFIELD_convertToJSON(sirqul_iot_platform_searchEvents_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchEvents_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchEvents_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchEvents_sortField_e searchEvents_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchEvents_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchEvents_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Attend Event
//
//  Specify whether the user is attending an event at a particular location. This can also be used as a \"check-in\" action.
//
offer_response_t*
EventAPI_attendEvent(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *appKey, long listingId, long retailerLocationId, long offerLocationId, long transactionId, int *status, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/event/attend");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

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
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
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
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_offerLocationId = NULL;
    char * valueQuery_offerLocationId ;
    keyValuePair_t *keyPairQuery_offerLocationId = 0;
    {
        keyQuery_offerLocationId = strdup("offerLocationId");
        valueQuery_offerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", offerLocationId);
        keyPairQuery_offerLocationId = keyValuePair_create(keyQuery_offerLocationId, valueQuery_offerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerLocationId);
    }

    // query parameters
    char *keyQuery_transactionId = NULL;
    char * valueQuery_transactionId ;
    keyValuePair_t *keyPairQuery_transactionId = 0;
    {
        keyQuery_transactionId = strdup("transactionId");
        valueQuery_transactionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_transactionId, MAX_NUMBER_LENGTH_LONG, "%d", transactionId);
        keyPairQuery_transactionId = keyValuePair_create(keyQuery_transactionId, valueQuery_transactionId);
        list_addElement(localVarQueryParameters,keyPairQuery_transactionId);
    }

    // query parameters
    char *keyQuery_status = NULL;
    char * valueQuery_status = NULL;
    keyValuePair_t *keyPairQuery_status = 0;
    if (status)
    {
        keyQuery_status = strdup("status");
        valueQuery_status = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_status, MAX_NUMBER_LENGTH, "%d", *status);
        keyPairQuery_status = keyValuePair_create(keyQuery_status, valueQuery_status);
        list_addElement(localVarQueryParameters,keyPairQuery_status);
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
    offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EventAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_response_parseFromJSON(EventAPIlocalVarJSON);
        cJSON_Delete(EventAPIlocalVarJSON);
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
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_listingId){
        free(keyQuery_listingId);
        keyQuery_listingId = NULL;
    }
    if(keyPairQuery_listingId){
        keyValuePair_free(keyPairQuery_listingId);
        keyPairQuery_listingId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    if(keyQuery_transactionId){
        free(keyQuery_transactionId);
        keyQuery_transactionId = NULL;
    }
    if(keyPairQuery_transactionId){
        keyValuePair_free(keyPairQuery_transactionId);
        keyPairQuery_transactionId = NULL;
    }
    if(keyQuery_status){
        free(keyQuery_status);
        keyQuery_status = NULL;
    }
    if(valueQuery_status){
        free(valueQuery_status);
        valueQuery_status = NULL;
    }
    if(keyPairQuery_status){
        keyValuePair_free(keyPairQuery_status);
        keyPairQuery_status = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Event
//
// Create a private event to share with associates.
//
offer_response_t*
EventAPI_createEvent(apiClient_t *apiClient, double version, long accountId, char *title, char *retailerLocationIds, char *subTitle, char *details, char *categoryIds, char *filterIds, int *active, long imageAssetId, long redeemableStart, long redeemableEnd, char *metaData)
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
    char *localVarPath = strdup("/api/{version}/event/create");



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
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_subTitle = NULL;
    char * valueQuery_subTitle = NULL;
    keyValuePair_t *keyPairQuery_subTitle = 0;
    if (subTitle)
    {
        keyQuery_subTitle = strdup("subTitle");
        valueQuery_subTitle = strdup((subTitle));
        keyPairQuery_subTitle = keyValuePair_create(keyQuery_subTitle, valueQuery_subTitle);
        list_addElement(localVarQueryParameters,keyPairQuery_subTitle);
    }

    // query parameters
    char *keyQuery_details = NULL;
    char * valueQuery_details = NULL;
    keyValuePair_t *keyPairQuery_details = 0;
    if (details)
    {
        keyQuery_details = strdup("details");
        valueQuery_details = strdup((details));
        keyPairQuery_details = keyValuePair_create(keyQuery_details, valueQuery_details);
        list_addElement(localVarQueryParameters,keyPairQuery_details);
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
    char *keyQuery_imageAssetId = NULL;
    char * valueQuery_imageAssetId ;
    keyValuePair_t *keyPairQuery_imageAssetId = 0;
    {
        keyQuery_imageAssetId = strdup("imageAssetId");
        valueQuery_imageAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId);
        keyPairQuery_imageAssetId = keyValuePair_create(keyQuery_imageAssetId, valueQuery_imageAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId);
    }

    // query parameters
    char *keyQuery_redeemableStart = NULL;
    char * valueQuery_redeemableStart ;
    keyValuePair_t *keyPairQuery_redeemableStart = 0;
    {
        keyQuery_redeemableStart = strdup("redeemableStart");
        valueQuery_redeemableStart = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableStart, MAX_NUMBER_LENGTH_LONG, "%d", redeemableStart);
        keyPairQuery_redeemableStart = keyValuePair_create(keyQuery_redeemableStart, valueQuery_redeemableStart);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableStart);
    }

    // query parameters
    char *keyQuery_redeemableEnd = NULL;
    char * valueQuery_redeemableEnd ;
    keyValuePair_t *keyPairQuery_redeemableEnd = 0;
    {
        keyQuery_redeemableEnd = strdup("redeemableEnd");
        valueQuery_redeemableEnd = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableEnd, MAX_NUMBER_LENGTH_LONG, "%d", redeemableEnd);
        keyPairQuery_redeemableEnd = keyValuePair_create(keyQuery_redeemableEnd, valueQuery_redeemableEnd);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableEnd);
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
    offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EventAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_response_parseFromJSON(EventAPIlocalVarJSON);
        cJSON_Delete(EventAPIlocalVarJSON);
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
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_subTitle){
        free(keyQuery_subTitle);
        keyQuery_subTitle = NULL;
    }
    if(valueQuery_subTitle){
        free(valueQuery_subTitle);
        valueQuery_subTitle = NULL;
    }
    if(keyPairQuery_subTitle){
        keyValuePair_free(keyPairQuery_subTitle);
        keyPairQuery_subTitle = NULL;
    }
    if(keyQuery_details){
        free(keyQuery_details);
        keyQuery_details = NULL;
    }
    if(valueQuery_details){
        free(valueQuery_details);
        valueQuery_details = NULL;
    }
    if(keyPairQuery_details){
        keyValuePair_free(keyPairQuery_details);
        keyPairQuery_details = NULL;
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
    if(keyQuery_imageAssetId){
        free(keyQuery_imageAssetId);
        keyQuery_imageAssetId = NULL;
    }
    if(keyPairQuery_imageAssetId){
        keyValuePair_free(keyPairQuery_imageAssetId);
        keyPairQuery_imageAssetId = NULL;
    }
    if(keyQuery_redeemableStart){
        free(keyQuery_redeemableStart);
        keyQuery_redeemableStart = NULL;
    }
    if(keyPairQuery_redeemableStart){
        keyValuePair_free(keyPairQuery_redeemableStart);
        keyPairQuery_redeemableStart = NULL;
    }
    if(keyQuery_redeemableEnd){
        free(keyQuery_redeemableEnd);
        keyQuery_redeemableEnd = NULL;
    }
    if(keyPairQuery_redeemableEnd){
        keyValuePair_free(keyPairQuery_redeemableEnd);
        keyPairQuery_redeemableEnd = NULL;
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

// Delete Event
//
// Delete an event that the user has permissions to.
//
sirqul_response_t*
EventAPI_deleteEvent(apiClient_t *apiClient, double version, long accountId, long eventId)
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
    char *localVarPath = strdup("/api/{version}/event/delete");



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
    char *keyQuery_eventId = NULL;
    char * valueQuery_eventId ;
    keyValuePair_t *keyPairQuery_eventId = 0;
    {
        keyQuery_eventId = strdup("eventId");
        valueQuery_eventId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_eventId, MAX_NUMBER_LENGTH_LONG, "%d", eventId);
        keyPairQuery_eventId = keyValuePair_create(keyQuery_eventId, valueQuery_eventId);
        list_addElement(localVarQueryParameters,keyPairQuery_eventId);
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
        cJSON *EventAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(EventAPIlocalVarJSON);
        cJSON_Delete(EventAPIlocalVarJSON);
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
    if(keyQuery_eventId){
        free(keyQuery_eventId);
        keyQuery_eventId = NULL;
    }
    if(keyPairQuery_eventId){
        keyValuePair_free(keyPairQuery_eventId);
        keyPairQuery_eventId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Event
//
// Get an event.
//
offer_response_t*
EventAPI_getEvent(apiClient_t *apiClient, double version, long accountId, long eventId)
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
    char *localVarPath = strdup("/api/{version}/event/get");



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
    char *keyQuery_eventId = NULL;
    char * valueQuery_eventId ;
    keyValuePair_t *keyPairQuery_eventId = 0;
    {
        keyQuery_eventId = strdup("eventId");
        valueQuery_eventId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_eventId, MAX_NUMBER_LENGTH_LONG, "%d", eventId);
        keyPairQuery_eventId = keyValuePair_create(keyQuery_eventId, valueQuery_eventId);
        list_addElement(localVarQueryParameters,keyPairQuery_eventId);
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
    offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EventAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_response_parseFromJSON(EventAPIlocalVarJSON);
        cJSON_Delete(EventAPIlocalVarJSON);
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
    if(keyQuery_eventId){
        free(keyQuery_eventId);
        keyQuery_eventId = NULL;
    }
    if(keyPairQuery_eventId){
        keyValuePair_free(keyPairQuery_eventId);
        keyPairQuery_eventId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Event Attendance
//
// Searches on event type transactions. This can be used to see who is attending an event.
//
list_t*
EventAPI_searchEventTransactions(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *appKey, char *keyword, long retailerId, long retailerLocationId, long excludeRetailerLocationId, long listingId, long offerId, long offerLocationId, char *customerAccountIds, char *affiliatedCategoryIds, long startDate, long endDate, char *statuses, sirqul_iot_platform_searchEventTransactions_sortField_e sortField, int *descending, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/event/attendance/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

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
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
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
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
    }

    // query parameters
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_excludeRetailerLocationId = NULL;
    char * valueQuery_excludeRetailerLocationId ;
    keyValuePair_t *keyPairQuery_excludeRetailerLocationId = 0;
    {
        keyQuery_excludeRetailerLocationId = strdup("excludeRetailerLocationId");
        valueQuery_excludeRetailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_excludeRetailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", excludeRetailerLocationId);
        keyPairQuery_excludeRetailerLocationId = keyValuePair_create(keyQuery_excludeRetailerLocationId, valueQuery_excludeRetailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_excludeRetailerLocationId);
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
    char *keyQuery_offerId = NULL;
    char * valueQuery_offerId ;
    keyValuePair_t *keyPairQuery_offerId = 0;
    {
        keyQuery_offerId = strdup("offerId");
        valueQuery_offerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerId, MAX_NUMBER_LENGTH_LONG, "%d", offerId);
        keyPairQuery_offerId = keyValuePair_create(keyQuery_offerId, valueQuery_offerId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerId);
    }

    // query parameters
    char *keyQuery_offerLocationId = NULL;
    char * valueQuery_offerLocationId ;
    keyValuePair_t *keyPairQuery_offerLocationId = 0;
    {
        keyQuery_offerLocationId = strdup("offerLocationId");
        valueQuery_offerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_offerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", offerLocationId);
        keyPairQuery_offerLocationId = keyValuePair_create(keyQuery_offerLocationId, valueQuery_offerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_offerLocationId);
    }

    // query parameters
    char *keyQuery_customerAccountIds = NULL;
    char * valueQuery_customerAccountIds = NULL;
    keyValuePair_t *keyPairQuery_customerAccountIds = 0;
    if (customerAccountIds)
    {
        keyQuery_customerAccountIds = strdup("customerAccountIds");
        valueQuery_customerAccountIds = strdup((customerAccountIds));
        keyPairQuery_customerAccountIds = keyValuePair_create(keyQuery_customerAccountIds, valueQuery_customerAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_customerAccountIds);
    }

    // query parameters
    char *keyQuery_affiliatedCategoryIds = NULL;
    char * valueQuery_affiliatedCategoryIds = NULL;
    keyValuePair_t *keyPairQuery_affiliatedCategoryIds = 0;
    if (affiliatedCategoryIds)
    {
        keyQuery_affiliatedCategoryIds = strdup("affiliatedCategoryIds");
        valueQuery_affiliatedCategoryIds = strdup((affiliatedCategoryIds));
        keyPairQuery_affiliatedCategoryIds = keyValuePair_create(keyQuery_affiliatedCategoryIds, valueQuery_affiliatedCategoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_affiliatedCategoryIds);
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
    char *keyQuery_statuses = NULL;
    char * valueQuery_statuses = NULL;
    keyValuePair_t *keyPairQuery_statuses = 0;
    if (statuses)
    {
        keyQuery_statuses = strdup("statuses");
        valueQuery_statuses = strdup((statuses));
        keyPairQuery_statuses = keyValuePair_create(keyQuery_statuses, valueQuery_statuses);
        list_addElement(localVarQueryParameters,keyPairQuery_statuses);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchEventTransactions_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchEventTransactions_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
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
        cJSON *EventAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(EventAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, EventAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( EventAPIlocalVarJSON);
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
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
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
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_excludeRetailerLocationId){
        free(keyQuery_excludeRetailerLocationId);
        keyQuery_excludeRetailerLocationId = NULL;
    }
    if(keyPairQuery_excludeRetailerLocationId){
        keyValuePair_free(keyPairQuery_excludeRetailerLocationId);
        keyPairQuery_excludeRetailerLocationId = NULL;
    }
    if(keyQuery_listingId){
        free(keyQuery_listingId);
        keyQuery_listingId = NULL;
    }
    if(keyPairQuery_listingId){
        keyValuePair_free(keyPairQuery_listingId);
        keyPairQuery_listingId = NULL;
    }
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    if(keyQuery_customerAccountIds){
        free(keyQuery_customerAccountIds);
        keyQuery_customerAccountIds = NULL;
    }
    if(valueQuery_customerAccountIds){
        free(valueQuery_customerAccountIds);
        valueQuery_customerAccountIds = NULL;
    }
    if(keyPairQuery_customerAccountIds){
        keyValuePair_free(keyPairQuery_customerAccountIds);
        keyPairQuery_customerAccountIds = NULL;
    }
    if(keyQuery_affiliatedCategoryIds){
        free(keyQuery_affiliatedCategoryIds);
        keyQuery_affiliatedCategoryIds = NULL;
    }
    if(valueQuery_affiliatedCategoryIds){
        free(valueQuery_affiliatedCategoryIds);
        valueQuery_affiliatedCategoryIds = NULL;
    }
    if(keyPairQuery_affiliatedCategoryIds){
        keyValuePair_free(keyPairQuery_affiliatedCategoryIds);
        keyPairQuery_affiliatedCategoryIds = NULL;
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
    if(keyQuery_statuses){
        free(keyQuery_statuses);
        keyQuery_statuses = NULL;
    }
    if(valueQuery_statuses){
        free(valueQuery_statuses);
        valueQuery_statuses = NULL;
    }
    if(keyPairQuery_statuses){
        keyValuePair_free(keyPairQuery_statuses);
        keyPairQuery_statuses = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Events
//
// Searches on events that the account has access to.
//
list_t*
EventAPI_searchEvents(apiClient_t *apiClient, double version, long accountId, char *keyword, int *activeOnly, char *categoryIds, char *filterIds, char *offerAudienceIds, char *transactionAudienceIds, sirqul_iot_platform_searchEvents_sortField_e sortField, int *descending, long startDate, long endDate, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/event/search");



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
    char *keyQuery_offerAudienceIds = NULL;
    char * valueQuery_offerAudienceIds = NULL;
    keyValuePair_t *keyPairQuery_offerAudienceIds = 0;
    if (offerAudienceIds)
    {
        keyQuery_offerAudienceIds = strdup("offerAudienceIds");
        valueQuery_offerAudienceIds = strdup((offerAudienceIds));
        keyPairQuery_offerAudienceIds = keyValuePair_create(keyQuery_offerAudienceIds, valueQuery_offerAudienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_offerAudienceIds);
    }

    // query parameters
    char *keyQuery_transactionAudienceIds = NULL;
    char * valueQuery_transactionAudienceIds = NULL;
    keyValuePair_t *keyPairQuery_transactionAudienceIds = 0;
    if (transactionAudienceIds)
    {
        keyQuery_transactionAudienceIds = strdup("transactionAudienceIds");
        valueQuery_transactionAudienceIds = strdup((transactionAudienceIds));
        keyPairQuery_transactionAudienceIds = keyValuePair_create(keyQuery_transactionAudienceIds, valueQuery_transactionAudienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_transactionAudienceIds);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchEvents_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchEvents_SORTFIELD_ToString(
        valueQuery_sortField)));
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
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
        cJSON *EventAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(EventAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, EventAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( EventAPIlocalVarJSON);
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
    if(keyQuery_offerAudienceIds){
        free(keyQuery_offerAudienceIds);
        keyQuery_offerAudienceIds = NULL;
    }
    if(valueQuery_offerAudienceIds){
        free(valueQuery_offerAudienceIds);
        valueQuery_offerAudienceIds = NULL;
    }
    if(keyPairQuery_offerAudienceIds){
        keyValuePair_free(keyPairQuery_offerAudienceIds);
        keyPairQuery_offerAudienceIds = NULL;
    }
    if(keyQuery_transactionAudienceIds){
        free(keyQuery_transactionAudienceIds);
        keyQuery_transactionAudienceIds = NULL;
    }
    if(valueQuery_transactionAudienceIds){
        free(valueQuery_transactionAudienceIds);
        valueQuery_transactionAudienceIds = NULL;
    }
    if(keyPairQuery_transactionAudienceIds){
        keyValuePair_free(keyPairQuery_transactionAudienceIds);
        keyPairQuery_transactionAudienceIds = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Event
//
// Update a private event to share with associates.
//
offer_response_t*
EventAPI_updateEvent(apiClient_t *apiClient, double version, long accountId, long eventId, char *retailerLocationIds, char *title, char *subTitle, char *details, char *categoryIds, char *filterIds, int *active, long imageAssetId, long redeemableStart, long redeemableEnd)
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
    char *localVarPath = strdup("/api/{version}/event/update");



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
    char *keyQuery_eventId = NULL;
    char * valueQuery_eventId ;
    keyValuePair_t *keyPairQuery_eventId = 0;
    {
        keyQuery_eventId = strdup("eventId");
        valueQuery_eventId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_eventId, MAX_NUMBER_LENGTH_LONG, "%d", eventId);
        keyPairQuery_eventId = keyValuePair_create(keyQuery_eventId, valueQuery_eventId);
        list_addElement(localVarQueryParameters,keyPairQuery_eventId);
    }

    // query parameters
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_subTitle = NULL;
    char * valueQuery_subTitle = NULL;
    keyValuePair_t *keyPairQuery_subTitle = 0;
    if (subTitle)
    {
        keyQuery_subTitle = strdup("subTitle");
        valueQuery_subTitle = strdup((subTitle));
        keyPairQuery_subTitle = keyValuePair_create(keyQuery_subTitle, valueQuery_subTitle);
        list_addElement(localVarQueryParameters,keyPairQuery_subTitle);
    }

    // query parameters
    char *keyQuery_details = NULL;
    char * valueQuery_details = NULL;
    keyValuePair_t *keyPairQuery_details = 0;
    if (details)
    {
        keyQuery_details = strdup("details");
        valueQuery_details = strdup((details));
        keyPairQuery_details = keyValuePair_create(keyQuery_details, valueQuery_details);
        list_addElement(localVarQueryParameters,keyPairQuery_details);
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
    char *keyQuery_imageAssetId = NULL;
    char * valueQuery_imageAssetId ;
    keyValuePair_t *keyPairQuery_imageAssetId = 0;
    {
        keyQuery_imageAssetId = strdup("imageAssetId");
        valueQuery_imageAssetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_imageAssetId, MAX_NUMBER_LENGTH_LONG, "%d", imageAssetId);
        keyPairQuery_imageAssetId = keyValuePair_create(keyQuery_imageAssetId, valueQuery_imageAssetId);
        list_addElement(localVarQueryParameters,keyPairQuery_imageAssetId);
    }

    // query parameters
    char *keyQuery_redeemableStart = NULL;
    char * valueQuery_redeemableStart ;
    keyValuePair_t *keyPairQuery_redeemableStart = 0;
    {
        keyQuery_redeemableStart = strdup("redeemableStart");
        valueQuery_redeemableStart = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableStart, MAX_NUMBER_LENGTH_LONG, "%d", redeemableStart);
        keyPairQuery_redeemableStart = keyValuePair_create(keyQuery_redeemableStart, valueQuery_redeemableStart);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableStart);
    }

    // query parameters
    char *keyQuery_redeemableEnd = NULL;
    char * valueQuery_redeemableEnd ;
    keyValuePair_t *keyPairQuery_redeemableEnd = 0;
    {
        keyQuery_redeemableEnd = strdup("redeemableEnd");
        valueQuery_redeemableEnd = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableEnd, MAX_NUMBER_LENGTH_LONG, "%d", redeemableEnd);
        keyPairQuery_redeemableEnd = keyValuePair_create(keyQuery_redeemableEnd, valueQuery_redeemableEnd);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableEnd);
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
    offer_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EventAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_response_parseFromJSON(EventAPIlocalVarJSON);
        cJSON_Delete(EventAPIlocalVarJSON);
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
    if(keyQuery_eventId){
        free(keyQuery_eventId);
        keyQuery_eventId = NULL;
    }
    if(keyPairQuery_eventId){
        keyValuePair_free(keyPairQuery_eventId);
        keyPairQuery_eventId = NULL;
    }
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_subTitle){
        free(keyQuery_subTitle);
        keyQuery_subTitle = NULL;
    }
    if(valueQuery_subTitle){
        free(valueQuery_subTitle);
        valueQuery_subTitle = NULL;
    }
    if(keyPairQuery_subTitle){
        keyValuePair_free(keyPairQuery_subTitle);
        keyPairQuery_subTitle = NULL;
    }
    if(keyQuery_details){
        free(keyQuery_details);
        keyQuery_details = NULL;
    }
    if(valueQuery_details){
        free(valueQuery_details);
        valueQuery_details = NULL;
    }
    if(keyPairQuery_details){
        keyValuePair_free(keyPairQuery_details);
        keyPairQuery_details = NULL;
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
    if(keyQuery_imageAssetId){
        free(keyQuery_imageAssetId);
        keyQuery_imageAssetId = NULL;
    }
    if(keyPairQuery_imageAssetId){
        keyValuePair_free(keyPairQuery_imageAssetId);
        keyPairQuery_imageAssetId = NULL;
    }
    if(keyQuery_redeemableStart){
        free(keyQuery_redeemableStart);
        keyQuery_redeemableStart = NULL;
    }
    if(keyPairQuery_redeemableStart){
        keyValuePair_free(keyPairQuery_redeemableStart);
        keyPairQuery_redeemableStart = NULL;
    }
    if(keyQuery_redeemableEnd){
        free(keyQuery_redeemableEnd);
        keyQuery_redeemableEnd = NULL;
    }
    if(keyPairQuery_redeemableEnd){
        keyValuePair_free(keyPairQuery_redeemableEnd);
        keyPairQuery_redeemableEnd = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

