#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "WalletAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum OFFERTYPE for WalletAPI_searchOfferTransactions

static char* searchOfferTransactions_OFFERTYPE_ToString(sirqul_iot_platform_searchOfferTransactions_offerType_e OFFERTYPE){
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return OFFERTYPEArray[OFFERTYPE];
}

static sirqul_iot_platform_searchOfferTransactions_offerType_e searchOfferTransactions_OFFERTYPE_FromString(char* OFFERTYPE){
    int stringToReturn = 0;
    char *OFFERTYPEArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(OFFERTYPEArray) / sizeof(OFFERTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(OFFERTYPE, OFFERTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchOfferTransactions_OFFERTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOfferTransactions_OFFERTYPE_convertToJSON(sirqul_iot_platform_searchOfferTransactions_offerType_e OFFERTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "offerType", searchOfferTransactions_OFFERTYPE_ToString(OFFERTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOfferTransactions_OFFERTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOfferTransactions_offerType_e searchOfferTransactions_OFFERTYPE_parseFromJSON(cJSON* OFFERTYPEJSON) {
    sirqul_iot_platform_searchOfferTransactions_offerType_e OFFERTYPEVariable = 0;
    cJSON *OFFERTYPEVar = cJSON_GetObjectItemCaseSensitive(OFFERTYPEJSON, "offerType");
    if(!cJSON_IsString(OFFERTYPEVar) || (OFFERTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    OFFERTYPEVariable = searchOfferTransactions_OFFERTYPE_FromString(OFFERTYPEVar->valuestring);
    return OFFERTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for WalletAPI_searchOfferTransactions

static char* searchOfferTransactions_SORTFIELD_ToString(sirqul_iot_platform_searchOfferTransactions_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "ACTIVATED", "EXPIRES", "TITLE", "SUBTITLE", "DETAILS", "OFFER_TYPE", "SPECIAL_OFFER_TYPE", "OFFER_VISIBILITY", "REDEEMABLE_START", "REDEEMABLE_END", "CUSTOMER_ID", "CUSTOMER_DISPLAY", "RETAILER_ID", "RETAILER_NAME", "RETAILER_LOCATION_ID", "RETAILER_LOCATION_NAME", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchOfferTransactions_sortField_e searchOfferTransactions_SORTFIELD_FromString(char* SORTFIELD){
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
// Function searchOfferTransactions_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchOfferTransactions_SORTFIELD_convertToJSON(sirqul_iot_platform_searchOfferTransactions_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchOfferTransactions_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchOfferTransactions_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchOfferTransactions_sortField_e searchOfferTransactions_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchOfferTransactions_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchOfferTransactions_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Create Wallet Offers
//
// Adds offers to the wallet
//
list_t*
WalletAPI_createOfferTransaction(apiClient_t *apiClient, double version, char *deviceId, long accountId, long offerId, long offerLocationId, char *offerCart, char *promoCode, char *currencyType, int *usePoints, char *metaData, char *appKey, int *status)
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
    char *localVarPath = strdup("/api/{version}/wallet/create");



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
    char *keyQuery_offerCart = NULL;
    char * valueQuery_offerCart = NULL;
    keyValuePair_t *keyPairQuery_offerCart = 0;
    if (offerCart)
    {
        keyQuery_offerCart = strdup("offerCart");
        valueQuery_offerCart = strdup((offerCart));
        keyPairQuery_offerCart = keyValuePair_create(keyQuery_offerCart, valueQuery_offerCart);
        list_addElement(localVarQueryParameters,keyPairQuery_offerCart);
    }

    // query parameters
    char *keyQuery_promoCode = NULL;
    char * valueQuery_promoCode = NULL;
    keyValuePair_t *keyPairQuery_promoCode = 0;
    if (promoCode)
    {
        keyQuery_promoCode = strdup("promoCode");
        valueQuery_promoCode = strdup((promoCode));
        keyPairQuery_promoCode = keyValuePair_create(keyQuery_promoCode, valueQuery_promoCode);
        list_addElement(localVarQueryParameters,keyPairQuery_promoCode);
    }

    // query parameters
    char *keyQuery_currencyType = NULL;
    char * valueQuery_currencyType = NULL;
    keyValuePair_t *keyPairQuery_currencyType = 0;
    if (currencyType)
    {
        keyQuery_currencyType = strdup("currencyType");
        valueQuery_currencyType = strdup((currencyType));
        keyPairQuery_currencyType = keyValuePair_create(keyQuery_currencyType, valueQuery_currencyType);
        list_addElement(localVarQueryParameters,keyPairQuery_currencyType);
    }

    // query parameters
    char *keyQuery_usePoints = NULL;
    char * valueQuery_usePoints = NULL;
    keyValuePair_t *keyPairQuery_usePoints = 0;
    if (usePoints)
    {
        keyQuery_usePoints = strdup("usePoints");
        valueQuery_usePoints = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_usePoints, MAX_NUMBER_LENGTH, "%d", *usePoints);
        keyPairQuery_usePoints = keyValuePair_create(keyQuery_usePoints, valueQuery_usePoints);
        list_addElement(localVarQueryParameters,keyPairQuery_usePoints);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *WalletAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(WalletAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, WalletAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( WalletAPIlocalVarJSON);
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
    if(keyQuery_offerCart){
        free(keyQuery_offerCart);
        keyQuery_offerCart = NULL;
    }
    if(valueQuery_offerCart){
        free(valueQuery_offerCart);
        valueQuery_offerCart = NULL;
    }
    if(keyPairQuery_offerCart){
        keyValuePair_free(keyPairQuery_offerCart);
        keyPairQuery_offerCart = NULL;
    }
    if(keyQuery_promoCode){
        free(keyQuery_promoCode);
        keyQuery_promoCode = NULL;
    }
    if(valueQuery_promoCode){
        free(valueQuery_promoCode);
        valueQuery_promoCode = NULL;
    }
    if(keyPairQuery_promoCode){
        keyValuePair_free(keyPairQuery_promoCode);
        keyPairQuery_promoCode = NULL;
    }
    if(keyQuery_currencyType){
        free(keyQuery_currencyType);
        keyQuery_currencyType = NULL;
    }
    if(valueQuery_currencyType){
        free(valueQuery_currencyType);
        valueQuery_currencyType = NULL;
    }
    if(keyPairQuery_currencyType){
        keyValuePair_free(keyPairQuery_currencyType);
        keyPairQuery_currencyType = NULL;
    }
    if(keyQuery_usePoints){
        free(keyQuery_usePoints);
        keyQuery_usePoints = NULL;
    }
    if(valueQuery_usePoints){
        free(valueQuery_usePoints);
        valueQuery_usePoints = NULL;
    }
    if(keyPairQuery_usePoints){
        keyValuePair_free(keyPairQuery_usePoints);
        keyPairQuery_usePoints = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Wallet Offer
//
// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
//
sirqul_response_t*
WalletAPI_deleteOfferTransaction(apiClient_t *apiClient, double version, long transactionId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/wallet/delete");



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
        cJSON *WalletAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(WalletAPIlocalVarJSON);
        cJSON_Delete(WalletAPIlocalVarJSON);
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
    if(keyQuery_transactionId){
        free(keyQuery_transactionId);
        keyQuery_transactionId = NULL;
    }
    if(keyPairQuery_transactionId){
        keyValuePair_free(keyPairQuery_transactionId);
        keyPairQuery_transactionId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Wallet Offer
//
offer_transaction_response_t*
WalletAPI_getOfferTransaction(apiClient_t *apiClient, double version, long transactionId, char *deviceId, long accountId, int *includeMission, double latitude, double longitude, int *returnFullResponse)
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
    char *localVarPath = strdup("/api/{version}/wallet/get");



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
    char *keyQuery_includeMission = NULL;
    char * valueQuery_includeMission = NULL;
    keyValuePair_t *keyPairQuery_includeMission = 0;
    if (includeMission)
    {
        keyQuery_includeMission = strdup("includeMission");
        valueQuery_includeMission = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeMission, MAX_NUMBER_LENGTH, "%d", *includeMission);
        keyPairQuery_includeMission = keyValuePair_create(keyQuery_includeMission, valueQuery_includeMission);
        list_addElement(localVarQueryParameters,keyPairQuery_includeMission);
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
    char *keyQuery_returnFullResponse = NULL;
    char * valueQuery_returnFullResponse = NULL;
    keyValuePair_t *keyPairQuery_returnFullResponse = 0;
    if (returnFullResponse)
    {
        keyQuery_returnFullResponse = strdup("returnFullResponse");
        valueQuery_returnFullResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFullResponse, MAX_NUMBER_LENGTH, "%d", *returnFullResponse);
        keyPairQuery_returnFullResponse = keyValuePair_create(keyQuery_returnFullResponse, valueQuery_returnFullResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFullResponse);
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
    offer_transaction_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *WalletAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_transaction_response_parseFromJSON(WalletAPIlocalVarJSON);
        cJSON_Delete(WalletAPIlocalVarJSON);
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
    if(keyQuery_transactionId){
        free(keyQuery_transactionId);
        keyQuery_transactionId = NULL;
    }
    if(keyPairQuery_transactionId){
        keyValuePair_free(keyPairQuery_transactionId);
        keyPairQuery_transactionId = NULL;
    }
    if(keyQuery_includeMission){
        free(keyQuery_includeMission);
        keyQuery_includeMission = NULL;
    }
    if(valueQuery_includeMission){
        free(valueQuery_includeMission);
        valueQuery_includeMission = NULL;
    }
    if(keyPairQuery_includeMission){
        keyValuePair_free(keyPairQuery_includeMission);
        keyPairQuery_includeMission = NULL;
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
    if(keyQuery_returnFullResponse){
        free(keyQuery_returnFullResponse);
        keyQuery_returnFullResponse = NULL;
    }
    if(valueQuery_returnFullResponse){
        free(valueQuery_returnFullResponse);
        valueQuery_returnFullResponse = NULL;
    }
    if(keyPairQuery_returnFullResponse){
        keyValuePair_free(keyPairQuery_returnFullResponse);
        keyPairQuery_returnFullResponse = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Preview Wallet Offers
//
// Preview the final cost of a transaction without charging the user
//
list_t*
WalletAPI_previewOfferTransaction(apiClient_t *apiClient, double version, char *deviceId, long accountId, long offerId, long offerLocationId, char *offerCart, char *promoCode, char *currencyType, int *usePoints, char *metaData, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/wallet/preview");



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
    char *keyQuery_offerCart = NULL;
    char * valueQuery_offerCart = NULL;
    keyValuePair_t *keyPairQuery_offerCart = 0;
    if (offerCart)
    {
        keyQuery_offerCart = strdup("offerCart");
        valueQuery_offerCart = strdup((offerCart));
        keyPairQuery_offerCart = keyValuePair_create(keyQuery_offerCart, valueQuery_offerCart);
        list_addElement(localVarQueryParameters,keyPairQuery_offerCart);
    }

    // query parameters
    char *keyQuery_promoCode = NULL;
    char * valueQuery_promoCode = NULL;
    keyValuePair_t *keyPairQuery_promoCode = 0;
    if (promoCode)
    {
        keyQuery_promoCode = strdup("promoCode");
        valueQuery_promoCode = strdup((promoCode));
        keyPairQuery_promoCode = keyValuePair_create(keyQuery_promoCode, valueQuery_promoCode);
        list_addElement(localVarQueryParameters,keyPairQuery_promoCode);
    }

    // query parameters
    char *keyQuery_currencyType = NULL;
    char * valueQuery_currencyType = NULL;
    keyValuePair_t *keyPairQuery_currencyType = 0;
    if (currencyType)
    {
        keyQuery_currencyType = strdup("currencyType");
        valueQuery_currencyType = strdup((currencyType));
        keyPairQuery_currencyType = keyValuePair_create(keyQuery_currencyType, valueQuery_currencyType);
        list_addElement(localVarQueryParameters,keyPairQuery_currencyType);
    }

    // query parameters
    char *keyQuery_usePoints = NULL;
    char * valueQuery_usePoints = NULL;
    keyValuePair_t *keyPairQuery_usePoints = 0;
    if (usePoints)
    {
        keyQuery_usePoints = strdup("usePoints");
        valueQuery_usePoints = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_usePoints, MAX_NUMBER_LENGTH, "%d", *usePoints);
        keyPairQuery_usePoints = keyValuePair_create(keyQuery_usePoints, valueQuery_usePoints);
        list_addElement(localVarQueryParameters,keyPairQuery_usePoints);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *WalletAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(WalletAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, WalletAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( WalletAPIlocalVarJSON);
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
    if(keyQuery_offerCart){
        free(keyQuery_offerCart);
        keyQuery_offerCart = NULL;
    }
    if(valueQuery_offerCart){
        free(valueQuery_offerCart);
        valueQuery_offerCart = NULL;
    }
    if(keyPairQuery_offerCart){
        keyValuePair_free(keyPairQuery_offerCart);
        keyPairQuery_offerCart = NULL;
    }
    if(keyQuery_promoCode){
        free(keyQuery_promoCode);
        keyQuery_promoCode = NULL;
    }
    if(valueQuery_promoCode){
        free(valueQuery_promoCode);
        valueQuery_promoCode = NULL;
    }
    if(keyPairQuery_promoCode){
        keyValuePair_free(keyPairQuery_promoCode);
        keyPairQuery_promoCode = NULL;
    }
    if(keyQuery_currencyType){
        free(keyQuery_currencyType);
        keyQuery_currencyType = NULL;
    }
    if(valueQuery_currencyType){
        free(valueQuery_currencyType);
        valueQuery_currencyType = NULL;
    }
    if(keyPairQuery_currencyType){
        keyValuePair_free(keyPairQuery_currencyType);
        keyPairQuery_currencyType = NULL;
    }
    if(keyQuery_usePoints){
        free(keyQuery_usePoints);
        keyQuery_usePoints = NULL;
    }
    if(valueQuery_usePoints){
        free(valueQuery_usePoints);
        valueQuery_usePoints = NULL;
    }
    if(keyPairQuery_usePoints){
        keyValuePair_free(keyPairQuery_usePoints);
        keyPairQuery_usePoints = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Wallet Offers
//
// Search on active offers currently in the user's wallet, or past offers the user has already redeemed.
//
list_t*
WalletAPI_searchOfferTransactions(apiClient_t *apiClient, double version, char *deviceId, long accountId, char *keyword, long retailerId, char *retailerIds, long retailerLocationId, char *retailerLocationIds, char *excludeRetailerLocationIds, long offerId, char *offerIds, long offerLocationId, char *offerLocationIds, sirqul_iot_platform_searchOfferTransactions_offerType_e offerType, char *offerTypes, char *specialOfferType, char *specialOfferTypes, char *categoryIds, char *filterIds, char *offerAudienceIds, sirqul_iot_platform_searchOfferTransactions_sortField_e sortField, int *descending, int *start, int *limit, double latitude, double longitude, long redeemableStartDate, long redeemableEndDate, int *filterByParentOffer, long startedSince, long startedBefore, long endedSince, long endedBefore, int *redeemed, char *statuses, int *reservationsOnly, int *activeOnly, int *returnFullResponse, long recurringStartedSince, long recurringStartedBefore, long recurringExpirationSince, long recurringExpirationBefore)
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
    char *localVarPath = strdup("/api/{version}/wallet/search");



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
    char *keyQuery_retailerIds = NULL;
    char * valueQuery_retailerIds = NULL;
    keyValuePair_t *keyPairQuery_retailerIds = 0;
    if (retailerIds)
    {
        keyQuery_retailerIds = strdup("retailerIds");
        valueQuery_retailerIds = strdup((retailerIds));
        keyPairQuery_retailerIds = keyValuePair_create(keyQuery_retailerIds, valueQuery_retailerIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerIds);
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
    char *keyQuery_excludeRetailerLocationIds = NULL;
    char * valueQuery_excludeRetailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_excludeRetailerLocationIds = 0;
    if (excludeRetailerLocationIds)
    {
        keyQuery_excludeRetailerLocationIds = strdup("excludeRetailerLocationIds");
        valueQuery_excludeRetailerLocationIds = strdup((excludeRetailerLocationIds));
        keyPairQuery_excludeRetailerLocationIds = keyValuePair_create(keyQuery_excludeRetailerLocationIds, valueQuery_excludeRetailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_excludeRetailerLocationIds);
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
    char *keyQuery_offerIds = NULL;
    char * valueQuery_offerIds = NULL;
    keyValuePair_t *keyPairQuery_offerIds = 0;
    if (offerIds)
    {
        keyQuery_offerIds = strdup("offerIds");
        valueQuery_offerIds = strdup((offerIds));
        keyPairQuery_offerIds = keyValuePair_create(keyQuery_offerIds, valueQuery_offerIds);
        list_addElement(localVarQueryParameters,keyPairQuery_offerIds);
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
    char *keyQuery_offerLocationIds = NULL;
    char * valueQuery_offerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_offerLocationIds = 0;
    if (offerLocationIds)
    {
        keyQuery_offerLocationIds = strdup("offerLocationIds");
        valueQuery_offerLocationIds = strdup((offerLocationIds));
        keyPairQuery_offerLocationIds = keyValuePair_create(keyQuery_offerLocationIds, valueQuery_offerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_offerLocationIds);
    }

    // query parameters
    char *keyQuery_offerType = NULL;
    sirqul_iot_platform_searchOfferTransactions_offerType_e valueQuery_offerType ;
    keyValuePair_t *keyPairQuery_offerType = 0;
    if (offerType)
    {
        keyQuery_offerType = strdup("offerType");
        valueQuery_offerType = (offerType);
        keyPairQuery_offerType = keyValuePair_create(keyQuery_offerType, strdup(searchOfferTransactions_OFFERTYPE_ToString(
        valueQuery_offerType)));
        list_addElement(localVarQueryParameters,keyPairQuery_offerType);
    }

    // query parameters
    char *keyQuery_offerTypes = NULL;
    char * valueQuery_offerTypes = NULL;
    keyValuePair_t *keyPairQuery_offerTypes = 0;
    if (offerTypes)
    {
        keyQuery_offerTypes = strdup("offerTypes");
        valueQuery_offerTypes = strdup((offerTypes));
        keyPairQuery_offerTypes = keyValuePair_create(keyQuery_offerTypes, valueQuery_offerTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_offerTypes);
    }

    // query parameters
    char *keyQuery_specialOfferType = NULL;
    char * valueQuery_specialOfferType = NULL;
    keyValuePair_t *keyPairQuery_specialOfferType = 0;
    if (specialOfferType)
    {
        keyQuery_specialOfferType = strdup("specialOfferType");
        valueQuery_specialOfferType = strdup((specialOfferType));
        keyPairQuery_specialOfferType = keyValuePair_create(keyQuery_specialOfferType, valueQuery_specialOfferType);
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferType);
    }

    // query parameters
    char *keyQuery_specialOfferTypes = NULL;
    char * valueQuery_specialOfferTypes = NULL;
    keyValuePair_t *keyPairQuery_specialOfferTypes = 0;
    if (specialOfferTypes)
    {
        keyQuery_specialOfferTypes = strdup("specialOfferTypes");
        valueQuery_specialOfferTypes = strdup((specialOfferTypes));
        keyPairQuery_specialOfferTypes = keyValuePair_create(keyQuery_specialOfferTypes, valueQuery_specialOfferTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_specialOfferTypes);
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
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchOfferTransactions_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchOfferTransactions_SORTFIELD_ToString(
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
    char *keyQuery_redeemableStartDate = NULL;
    char * valueQuery_redeemableStartDate ;
    keyValuePair_t *keyPairQuery_redeemableStartDate = 0;
    {
        keyQuery_redeemableStartDate = strdup("redeemableStartDate");
        valueQuery_redeemableStartDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableStartDate, MAX_NUMBER_LENGTH_LONG, "%d", redeemableStartDate);
        keyPairQuery_redeemableStartDate = keyValuePair_create(keyQuery_redeemableStartDate, valueQuery_redeemableStartDate);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableStartDate);
    }

    // query parameters
    char *keyQuery_redeemableEndDate = NULL;
    char * valueQuery_redeemableEndDate ;
    keyValuePair_t *keyPairQuery_redeemableEndDate = 0;
    {
        keyQuery_redeemableEndDate = strdup("redeemableEndDate");
        valueQuery_redeemableEndDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_redeemableEndDate, MAX_NUMBER_LENGTH_LONG, "%d", redeemableEndDate);
        keyPairQuery_redeemableEndDate = keyValuePair_create(keyQuery_redeemableEndDate, valueQuery_redeemableEndDate);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemableEndDate);
    }

    // query parameters
    char *keyQuery_filterByParentOffer = NULL;
    char * valueQuery_filterByParentOffer = NULL;
    keyValuePair_t *keyPairQuery_filterByParentOffer = 0;
    if (filterByParentOffer)
    {
        keyQuery_filterByParentOffer = strdup("filterByParentOffer");
        valueQuery_filterByParentOffer = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_filterByParentOffer, MAX_NUMBER_LENGTH, "%d", *filterByParentOffer);
        keyPairQuery_filterByParentOffer = keyValuePair_create(keyQuery_filterByParentOffer, valueQuery_filterByParentOffer);
        list_addElement(localVarQueryParameters,keyPairQuery_filterByParentOffer);
    }

    // query parameters
    char *keyQuery_startedSince = NULL;
    char * valueQuery_startedSince ;
    keyValuePair_t *keyPairQuery_startedSince = 0;
    {
        keyQuery_startedSince = strdup("startedSince");
        valueQuery_startedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startedSince, MAX_NUMBER_LENGTH_LONG, "%d", startedSince);
        keyPairQuery_startedSince = keyValuePair_create(keyQuery_startedSince, valueQuery_startedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_startedSince);
    }

    // query parameters
    char *keyQuery_startedBefore = NULL;
    char * valueQuery_startedBefore ;
    keyValuePair_t *keyPairQuery_startedBefore = 0;
    {
        keyQuery_startedBefore = strdup("startedBefore");
        valueQuery_startedBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_startedBefore, MAX_NUMBER_LENGTH_LONG, "%d", startedBefore);
        keyPairQuery_startedBefore = keyValuePair_create(keyQuery_startedBefore, valueQuery_startedBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_startedBefore);
    }

    // query parameters
    char *keyQuery_endedSince = NULL;
    char * valueQuery_endedSince ;
    keyValuePair_t *keyPairQuery_endedSince = 0;
    {
        keyQuery_endedSince = strdup("endedSince");
        valueQuery_endedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endedSince, MAX_NUMBER_LENGTH_LONG, "%d", endedSince);
        keyPairQuery_endedSince = keyValuePair_create(keyQuery_endedSince, valueQuery_endedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_endedSince);
    }

    // query parameters
    char *keyQuery_endedBefore = NULL;
    char * valueQuery_endedBefore ;
    keyValuePair_t *keyPairQuery_endedBefore = 0;
    {
        keyQuery_endedBefore = strdup("endedBefore");
        valueQuery_endedBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_endedBefore, MAX_NUMBER_LENGTH_LONG, "%d", endedBefore);
        keyPairQuery_endedBefore = keyValuePair_create(keyQuery_endedBefore, valueQuery_endedBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_endedBefore);
    }

    // query parameters
    char *keyQuery_redeemed = NULL;
    char * valueQuery_redeemed = NULL;
    keyValuePair_t *keyPairQuery_redeemed = 0;
    if (redeemed)
    {
        keyQuery_redeemed = strdup("redeemed");
        valueQuery_redeemed = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_redeemed, MAX_NUMBER_LENGTH, "%d", *redeemed);
        keyPairQuery_redeemed = keyValuePair_create(keyQuery_redeemed, valueQuery_redeemed);
        list_addElement(localVarQueryParameters,keyPairQuery_redeemed);
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
    char *keyQuery_reservationsOnly = NULL;
    char * valueQuery_reservationsOnly = NULL;
    keyValuePair_t *keyPairQuery_reservationsOnly = 0;
    if (reservationsOnly)
    {
        keyQuery_reservationsOnly = strdup("reservationsOnly");
        valueQuery_reservationsOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_reservationsOnly, MAX_NUMBER_LENGTH, "%d", *reservationsOnly);
        keyPairQuery_reservationsOnly = keyValuePair_create(keyQuery_reservationsOnly, valueQuery_reservationsOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_reservationsOnly);
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
    char *keyQuery_returnFullResponse = NULL;
    char * valueQuery_returnFullResponse = NULL;
    keyValuePair_t *keyPairQuery_returnFullResponse = 0;
    if (returnFullResponse)
    {
        keyQuery_returnFullResponse = strdup("returnFullResponse");
        valueQuery_returnFullResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFullResponse, MAX_NUMBER_LENGTH, "%d", *returnFullResponse);
        keyPairQuery_returnFullResponse = keyValuePair_create(keyQuery_returnFullResponse, valueQuery_returnFullResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFullResponse);
    }

    // query parameters
    char *keyQuery_recurringStartedSince = NULL;
    char * valueQuery_recurringStartedSince ;
    keyValuePair_t *keyPairQuery_recurringStartedSince = 0;
    {
        keyQuery_recurringStartedSince = strdup("recurringStartedSince");
        valueQuery_recurringStartedSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_recurringStartedSince, MAX_NUMBER_LENGTH_LONG, "%d", recurringStartedSince);
        keyPairQuery_recurringStartedSince = keyValuePair_create(keyQuery_recurringStartedSince, valueQuery_recurringStartedSince);
        list_addElement(localVarQueryParameters,keyPairQuery_recurringStartedSince);
    }

    // query parameters
    char *keyQuery_recurringStartedBefore = NULL;
    char * valueQuery_recurringStartedBefore ;
    keyValuePair_t *keyPairQuery_recurringStartedBefore = 0;
    {
        keyQuery_recurringStartedBefore = strdup("recurringStartedBefore");
        valueQuery_recurringStartedBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_recurringStartedBefore, MAX_NUMBER_LENGTH_LONG, "%d", recurringStartedBefore);
        keyPairQuery_recurringStartedBefore = keyValuePair_create(keyQuery_recurringStartedBefore, valueQuery_recurringStartedBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_recurringStartedBefore);
    }

    // query parameters
    char *keyQuery_recurringExpirationSince = NULL;
    char * valueQuery_recurringExpirationSince ;
    keyValuePair_t *keyPairQuery_recurringExpirationSince = 0;
    {
        keyQuery_recurringExpirationSince = strdup("recurringExpirationSince");
        valueQuery_recurringExpirationSince = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_recurringExpirationSince, MAX_NUMBER_LENGTH_LONG, "%d", recurringExpirationSince);
        keyPairQuery_recurringExpirationSince = keyValuePair_create(keyQuery_recurringExpirationSince, valueQuery_recurringExpirationSince);
        list_addElement(localVarQueryParameters,keyPairQuery_recurringExpirationSince);
    }

    // query parameters
    char *keyQuery_recurringExpirationBefore = NULL;
    char * valueQuery_recurringExpirationBefore ;
    keyValuePair_t *keyPairQuery_recurringExpirationBefore = 0;
    {
        keyQuery_recurringExpirationBefore = strdup("recurringExpirationBefore");
        valueQuery_recurringExpirationBefore = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_recurringExpirationBefore, MAX_NUMBER_LENGTH_LONG, "%d", recurringExpirationBefore);
        keyPairQuery_recurringExpirationBefore = keyValuePair_create(keyQuery_recurringExpirationBefore, valueQuery_recurringExpirationBefore);
        list_addElement(localVarQueryParameters,keyPairQuery_recurringExpirationBefore);
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
        cJSON *WalletAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(WalletAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, WalletAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( WalletAPIlocalVarJSON);
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
    if(keyQuery_retailerIds){
        free(keyQuery_retailerIds);
        keyQuery_retailerIds = NULL;
    }
    if(valueQuery_retailerIds){
        free(valueQuery_retailerIds);
        valueQuery_retailerIds = NULL;
    }
    if(keyPairQuery_retailerIds){
        keyValuePair_free(keyPairQuery_retailerIds);
        keyPairQuery_retailerIds = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
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
    if(keyQuery_excludeRetailerLocationIds){
        free(keyQuery_excludeRetailerLocationIds);
        keyQuery_excludeRetailerLocationIds = NULL;
    }
    if(valueQuery_excludeRetailerLocationIds){
        free(valueQuery_excludeRetailerLocationIds);
        valueQuery_excludeRetailerLocationIds = NULL;
    }
    if(keyPairQuery_excludeRetailerLocationIds){
        keyValuePair_free(keyPairQuery_excludeRetailerLocationIds);
        keyPairQuery_excludeRetailerLocationIds = NULL;
    }
    if(keyQuery_offerId){
        free(keyQuery_offerId);
        keyQuery_offerId = NULL;
    }
    if(keyPairQuery_offerId){
        keyValuePair_free(keyPairQuery_offerId);
        keyPairQuery_offerId = NULL;
    }
    if(keyQuery_offerIds){
        free(keyQuery_offerIds);
        keyQuery_offerIds = NULL;
    }
    if(valueQuery_offerIds){
        free(valueQuery_offerIds);
        valueQuery_offerIds = NULL;
    }
    if(keyPairQuery_offerIds){
        keyValuePair_free(keyPairQuery_offerIds);
        keyPairQuery_offerIds = NULL;
    }
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    if(keyQuery_offerLocationIds){
        free(keyQuery_offerLocationIds);
        keyQuery_offerLocationIds = NULL;
    }
    if(valueQuery_offerLocationIds){
        free(valueQuery_offerLocationIds);
        valueQuery_offerLocationIds = NULL;
    }
    if(keyPairQuery_offerLocationIds){
        keyValuePair_free(keyPairQuery_offerLocationIds);
        keyPairQuery_offerLocationIds = NULL;
    }
    if(keyQuery_offerType){
        free(keyQuery_offerType);
        keyQuery_offerType = NULL;
    }
    if(keyPairQuery_offerType){
        keyValuePair_free(keyPairQuery_offerType);
        keyPairQuery_offerType = NULL;
    }
    if(keyQuery_offerTypes){
        free(keyQuery_offerTypes);
        keyQuery_offerTypes = NULL;
    }
    if(valueQuery_offerTypes){
        free(valueQuery_offerTypes);
        valueQuery_offerTypes = NULL;
    }
    if(keyPairQuery_offerTypes){
        keyValuePair_free(keyPairQuery_offerTypes);
        keyPairQuery_offerTypes = NULL;
    }
    if(keyQuery_specialOfferType){
        free(keyQuery_specialOfferType);
        keyQuery_specialOfferType = NULL;
    }
    if(valueQuery_specialOfferType){
        free(valueQuery_specialOfferType);
        valueQuery_specialOfferType = NULL;
    }
    if(keyPairQuery_specialOfferType){
        keyValuePair_free(keyPairQuery_specialOfferType);
        keyPairQuery_specialOfferType = NULL;
    }
    if(keyQuery_specialOfferTypes){
        free(keyQuery_specialOfferTypes);
        keyQuery_specialOfferTypes = NULL;
    }
    if(valueQuery_specialOfferTypes){
        free(valueQuery_specialOfferTypes);
        valueQuery_specialOfferTypes = NULL;
    }
    if(keyPairQuery_specialOfferTypes){
        keyValuePair_free(keyPairQuery_specialOfferTypes);
        keyPairQuery_specialOfferTypes = NULL;
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
    if(keyQuery_redeemableStartDate){
        free(keyQuery_redeemableStartDate);
        keyQuery_redeemableStartDate = NULL;
    }
    if(keyPairQuery_redeemableStartDate){
        keyValuePair_free(keyPairQuery_redeemableStartDate);
        keyPairQuery_redeemableStartDate = NULL;
    }
    if(keyQuery_redeemableEndDate){
        free(keyQuery_redeemableEndDate);
        keyQuery_redeemableEndDate = NULL;
    }
    if(keyPairQuery_redeemableEndDate){
        keyValuePair_free(keyPairQuery_redeemableEndDate);
        keyPairQuery_redeemableEndDate = NULL;
    }
    if(keyQuery_filterByParentOffer){
        free(keyQuery_filterByParentOffer);
        keyQuery_filterByParentOffer = NULL;
    }
    if(valueQuery_filterByParentOffer){
        free(valueQuery_filterByParentOffer);
        valueQuery_filterByParentOffer = NULL;
    }
    if(keyPairQuery_filterByParentOffer){
        keyValuePair_free(keyPairQuery_filterByParentOffer);
        keyPairQuery_filterByParentOffer = NULL;
    }
    if(keyQuery_startedSince){
        free(keyQuery_startedSince);
        keyQuery_startedSince = NULL;
    }
    if(keyPairQuery_startedSince){
        keyValuePair_free(keyPairQuery_startedSince);
        keyPairQuery_startedSince = NULL;
    }
    if(keyQuery_startedBefore){
        free(keyQuery_startedBefore);
        keyQuery_startedBefore = NULL;
    }
    if(keyPairQuery_startedBefore){
        keyValuePair_free(keyPairQuery_startedBefore);
        keyPairQuery_startedBefore = NULL;
    }
    if(keyQuery_endedSince){
        free(keyQuery_endedSince);
        keyQuery_endedSince = NULL;
    }
    if(keyPairQuery_endedSince){
        keyValuePair_free(keyPairQuery_endedSince);
        keyPairQuery_endedSince = NULL;
    }
    if(keyQuery_endedBefore){
        free(keyQuery_endedBefore);
        keyQuery_endedBefore = NULL;
    }
    if(keyPairQuery_endedBefore){
        keyValuePair_free(keyPairQuery_endedBefore);
        keyPairQuery_endedBefore = NULL;
    }
    if(keyQuery_redeemed){
        free(keyQuery_redeemed);
        keyQuery_redeemed = NULL;
    }
    if(valueQuery_redeemed){
        free(valueQuery_redeemed);
        valueQuery_redeemed = NULL;
    }
    if(keyPairQuery_redeemed){
        keyValuePair_free(keyPairQuery_redeemed);
        keyPairQuery_redeemed = NULL;
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
    if(keyQuery_reservationsOnly){
        free(keyQuery_reservationsOnly);
        keyQuery_reservationsOnly = NULL;
    }
    if(valueQuery_reservationsOnly){
        free(valueQuery_reservationsOnly);
        valueQuery_reservationsOnly = NULL;
    }
    if(keyPairQuery_reservationsOnly){
        keyValuePair_free(keyPairQuery_reservationsOnly);
        keyPairQuery_reservationsOnly = NULL;
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
    if(keyQuery_returnFullResponse){
        free(keyQuery_returnFullResponse);
        keyQuery_returnFullResponse = NULL;
    }
    if(valueQuery_returnFullResponse){
        free(valueQuery_returnFullResponse);
        valueQuery_returnFullResponse = NULL;
    }
    if(keyPairQuery_returnFullResponse){
        keyValuePair_free(keyPairQuery_returnFullResponse);
        keyPairQuery_returnFullResponse = NULL;
    }
    if(keyQuery_recurringStartedSince){
        free(keyQuery_recurringStartedSince);
        keyQuery_recurringStartedSince = NULL;
    }
    if(keyPairQuery_recurringStartedSince){
        keyValuePair_free(keyPairQuery_recurringStartedSince);
        keyPairQuery_recurringStartedSince = NULL;
    }
    if(keyQuery_recurringStartedBefore){
        free(keyQuery_recurringStartedBefore);
        keyQuery_recurringStartedBefore = NULL;
    }
    if(keyPairQuery_recurringStartedBefore){
        keyValuePair_free(keyPairQuery_recurringStartedBefore);
        keyPairQuery_recurringStartedBefore = NULL;
    }
    if(keyQuery_recurringExpirationSince){
        free(keyQuery_recurringExpirationSince);
        keyQuery_recurringExpirationSince = NULL;
    }
    if(keyPairQuery_recurringExpirationSince){
        keyValuePair_free(keyPairQuery_recurringExpirationSince);
        keyPairQuery_recurringExpirationSince = NULL;
    }
    if(keyQuery_recurringExpirationBefore){
        free(keyQuery_recurringExpirationBefore);
        keyQuery_recurringExpirationBefore = NULL;
    }
    if(keyPairQuery_recurringExpirationBefore){
        keyValuePair_free(keyPairQuery_recurringExpirationBefore);
        keyPairQuery_recurringExpirationBefore = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Wallet Offer
//
// Update offer status. The status values are: 0 - not redeemable, 1 - redeemable.  Not redeemable means the customer has received the offer but has not decided to use (or print) it yet.  Until they choose to do this the merchant cannot redeem the offer (has not been given permission yet).   Redeemable means the customer has chosen to use the offer and wishes to redeem it.  Redeemed means the merchant has accepted the offer and the given the customer its value, then marked it a used in the system.  This status change is handled by a merchant end point.
//
offer_transaction_response_t*
WalletAPI_updateOfferTransaction(apiClient_t *apiClient, double version, long transactionId, int *status, char *deviceId, long accountId, long offerLocationId, char *currencyType, int *usePoints, char *appKey, double latitude, double longitude, char *metaData, int *returnFullResponse, char *exceptionMembershipOfferIds)
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
    char *localVarPath = strdup("/api/{version}/wallet/update");



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
    char *keyQuery_currencyType = NULL;
    char * valueQuery_currencyType = NULL;
    keyValuePair_t *keyPairQuery_currencyType = 0;
    if (currencyType)
    {
        keyQuery_currencyType = strdup("currencyType");
        valueQuery_currencyType = strdup((currencyType));
        keyPairQuery_currencyType = keyValuePair_create(keyQuery_currencyType, valueQuery_currencyType);
        list_addElement(localVarQueryParameters,keyPairQuery_currencyType);
    }

    // query parameters
    char *keyQuery_usePoints = NULL;
    char * valueQuery_usePoints = NULL;
    keyValuePair_t *keyPairQuery_usePoints = 0;
    if (usePoints)
    {
        keyQuery_usePoints = strdup("usePoints");
        valueQuery_usePoints = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_usePoints, MAX_NUMBER_LENGTH, "%d", *usePoints);
        keyPairQuery_usePoints = keyValuePair_create(keyQuery_usePoints, valueQuery_usePoints);
        list_addElement(localVarQueryParameters,keyPairQuery_usePoints);
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

    // query parameters
    char *keyQuery_returnFullResponse = NULL;
    char * valueQuery_returnFullResponse = NULL;
    keyValuePair_t *keyPairQuery_returnFullResponse = 0;
    if (returnFullResponse)
    {
        keyQuery_returnFullResponse = strdup("returnFullResponse");
        valueQuery_returnFullResponse = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnFullResponse, MAX_NUMBER_LENGTH, "%d", *returnFullResponse);
        keyPairQuery_returnFullResponse = keyValuePair_create(keyQuery_returnFullResponse, valueQuery_returnFullResponse);
        list_addElement(localVarQueryParameters,keyPairQuery_returnFullResponse);
    }

    // query parameters
    char *keyQuery_exceptionMembershipOfferIds = NULL;
    char * valueQuery_exceptionMembershipOfferIds = NULL;
    keyValuePair_t *keyPairQuery_exceptionMembershipOfferIds = 0;
    if (exceptionMembershipOfferIds)
    {
        keyQuery_exceptionMembershipOfferIds = strdup("exceptionMembershipOfferIds");
        valueQuery_exceptionMembershipOfferIds = strdup((exceptionMembershipOfferIds));
        keyPairQuery_exceptionMembershipOfferIds = keyValuePair_create(keyQuery_exceptionMembershipOfferIds, valueQuery_exceptionMembershipOfferIds);
        list_addElement(localVarQueryParameters,keyPairQuery_exceptionMembershipOfferIds);
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
    offer_transaction_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *WalletAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = offer_transaction_response_parseFromJSON(WalletAPIlocalVarJSON);
        cJSON_Delete(WalletAPIlocalVarJSON);
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
    if(keyQuery_transactionId){
        free(keyQuery_transactionId);
        keyQuery_transactionId = NULL;
    }
    if(keyPairQuery_transactionId){
        keyValuePair_free(keyPairQuery_transactionId);
        keyPairQuery_transactionId = NULL;
    }
    if(keyQuery_offerLocationId){
        free(keyQuery_offerLocationId);
        keyQuery_offerLocationId = NULL;
    }
    if(keyPairQuery_offerLocationId){
        keyValuePair_free(keyPairQuery_offerLocationId);
        keyPairQuery_offerLocationId = NULL;
    }
    if(keyQuery_currencyType){
        free(keyQuery_currencyType);
        keyQuery_currencyType = NULL;
    }
    if(valueQuery_currencyType){
        free(valueQuery_currencyType);
        valueQuery_currencyType = NULL;
    }
    if(keyPairQuery_currencyType){
        keyValuePair_free(keyPairQuery_currencyType);
        keyPairQuery_currencyType = NULL;
    }
    if(keyQuery_usePoints){
        free(keyQuery_usePoints);
        keyQuery_usePoints = NULL;
    }
    if(valueQuery_usePoints){
        free(valueQuery_usePoints);
        valueQuery_usePoints = NULL;
    }
    if(keyPairQuery_usePoints){
        keyValuePair_free(keyPairQuery_usePoints);
        keyPairQuery_usePoints = NULL;
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
    if(keyQuery_returnFullResponse){
        free(keyQuery_returnFullResponse);
        keyQuery_returnFullResponse = NULL;
    }
    if(valueQuery_returnFullResponse){
        free(valueQuery_returnFullResponse);
        valueQuery_returnFullResponse = NULL;
    }
    if(keyPairQuery_returnFullResponse){
        keyValuePair_free(keyPairQuery_returnFullResponse);
        keyPairQuery_returnFullResponse = NULL;
    }
    if(keyQuery_exceptionMembershipOfferIds){
        free(keyQuery_exceptionMembershipOfferIds);
        keyQuery_exceptionMembershipOfferIds = NULL;
    }
    if(valueQuery_exceptionMembershipOfferIds){
        free(valueQuery_exceptionMembershipOfferIds);
        valueQuery_exceptionMembershipOfferIds = NULL;
    }
    if(keyPairQuery_exceptionMembershipOfferIds){
        keyValuePair_free(keyPairQuery_exceptionMembershipOfferIds);
        keyPairQuery_exceptionMembershipOfferIds = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

