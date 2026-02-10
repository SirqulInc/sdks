#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "PurchaseOrderAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum CURRENCYTYPE for PurchaseOrderAPI_createOrder

static char* createOrder_CURRENCYTYPE_ToString(sirqul_iot_platform_createOrder_currencyType_e CURRENCYTYPE){
    char *CURRENCYTYPEArray[] =  { "NULL", "VOID", "CASH", "POINTS", "TICKETS", "REFUND", "CREDIT", "RELOAD" };
    return CURRENCYTYPEArray[CURRENCYTYPE];
}

static sirqul_iot_platform_createOrder_currencyType_e createOrder_CURRENCYTYPE_FromString(char* CURRENCYTYPE){
    int stringToReturn = 0;
    char *CURRENCYTYPEArray[] =  { "NULL", "VOID", "CASH", "POINTS", "TICKETS", "REFUND", "CREDIT", "RELOAD" };
    size_t sizeofArray = sizeof(CURRENCYTYPEArray) / sizeof(CURRENCYTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CURRENCYTYPE, CURRENCYTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createOrder_CURRENCYTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createOrder_CURRENCYTYPE_convertToJSON(sirqul_iot_platform_createOrder_currencyType_e CURRENCYTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "currencyType", createOrder_CURRENCYTYPE_ToString(CURRENCYTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createOrder_CURRENCYTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createOrder_currencyType_e createOrder_CURRENCYTYPE_parseFromJSON(cJSON* CURRENCYTYPEJSON) {
    sirqul_iot_platform_createOrder_currencyType_e CURRENCYTYPEVariable = 0;
    cJSON *CURRENCYTYPEVar = cJSON_GetObjectItemCaseSensitive(CURRENCYTYPEJSON, "currencyType");
    if(!cJSON_IsString(CURRENCYTYPEVar) || (CURRENCYTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CURRENCYTYPEVariable = createOrder_CURRENCYTYPE_FromString(CURRENCYTYPEVar->valuestring);
    return CURRENCYTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum CURRENCYTYPE for PurchaseOrderAPI_previewOrder

static char* previewOrder_CURRENCYTYPE_ToString(sirqul_iot_platform_previewOrder_currencyType_e CURRENCYTYPE){
    char *CURRENCYTYPEArray[] =  { "NULL", "VOID", "CASH", "POINTS", "TICKETS", "REFUND", "CREDIT", "RELOAD" };
    return CURRENCYTYPEArray[CURRENCYTYPE];
}

static sirqul_iot_platform_previewOrder_currencyType_e previewOrder_CURRENCYTYPE_FromString(char* CURRENCYTYPE){
    int stringToReturn = 0;
    char *CURRENCYTYPEArray[] =  { "NULL", "VOID", "CASH", "POINTS", "TICKETS", "REFUND", "CREDIT", "RELOAD" };
    size_t sizeofArray = sizeof(CURRENCYTYPEArray) / sizeof(CURRENCYTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CURRENCYTYPE, CURRENCYTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function previewOrder_CURRENCYTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *previewOrder_CURRENCYTYPE_convertToJSON(sirqul_iot_platform_previewOrder_currencyType_e CURRENCYTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "currencyType", previewOrder_CURRENCYTYPE_ToString(CURRENCYTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function previewOrder_CURRENCYTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_previewOrder_currencyType_e previewOrder_CURRENCYTYPE_parseFromJSON(cJSON* CURRENCYTYPEJSON) {
    sirqul_iot_platform_previewOrder_currencyType_e CURRENCYTYPEVariable = 0;
    cJSON *CURRENCYTYPEVar = cJSON_GetObjectItemCaseSensitive(CURRENCYTYPEJSON, "currencyType");
    if(!cJSON_IsString(CURRENCYTYPEVar) || (CURRENCYTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CURRENCYTYPEVariable = previewOrder_CURRENCYTYPE_FromString(CURRENCYTYPEVar->valuestring);
    return CURRENCYTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum CURRENCYTYPE for PurchaseOrderAPI_updateOrder

static char* updateOrder_CURRENCYTYPE_ToString(sirqul_iot_platform_updateOrder_currencyType_e CURRENCYTYPE){
    char *CURRENCYTYPEArray[] =  { "NULL", "VOID", "CASH", "POINTS", "TICKETS", "REFUND", "CREDIT", "RELOAD" };
    return CURRENCYTYPEArray[CURRENCYTYPE];
}

static sirqul_iot_platform_updateOrder_currencyType_e updateOrder_CURRENCYTYPE_FromString(char* CURRENCYTYPE){
    int stringToReturn = 0;
    char *CURRENCYTYPEArray[] =  { "NULL", "VOID", "CASH", "POINTS", "TICKETS", "REFUND", "CREDIT", "RELOAD" };
    size_t sizeofArray = sizeof(CURRENCYTYPEArray) / sizeof(CURRENCYTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(CURRENCYTYPE, CURRENCYTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateOrder_CURRENCYTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateOrder_CURRENCYTYPE_convertToJSON(sirqul_iot_platform_updateOrder_currencyType_e CURRENCYTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "currencyType", updateOrder_CURRENCYTYPE_ToString(CURRENCYTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateOrder_CURRENCYTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateOrder_currencyType_e updateOrder_CURRENCYTYPE_parseFromJSON(cJSON* CURRENCYTYPEJSON) {
    sirqul_iot_platform_updateOrder_currencyType_e CURRENCYTYPEVariable = 0;
    cJSON *CURRENCYTYPEVar = cJSON_GetObjectItemCaseSensitive(CURRENCYTYPEJSON, "currencyType");
    if(!cJSON_IsString(CURRENCYTYPEVar) || (CURRENCYTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    CURRENCYTYPEVariable = updateOrder_CURRENCYTYPE_FromString(CURRENCYTYPEVar->valuestring);
    return CURRENCYTYPEVariable;
end:
    return 0;
}
*/


// Create Order
//
// Creates a new purchase with some number of items associated with it. The purchase is added to the order that was created
//
order_response_t*
PurchaseOrderAPI_createOrder(apiClient_t *apiClient, double version, char *appKey, char *cart, char *deviceId, long accountId, char *description, sirqul_iot_platform_createOrder_currencyType_e currencyType, long paymentMethodId, char *externalOrderId, char *externalPaymentId, char *remoteRefType, long externalDate, char *promoCode)
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
    char *localVarPath = strdup("/api/{version}/order/create");



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
    char *keyQuery_currencyType = NULL;
    sirqul_iot_platform_createOrder_currencyType_e valueQuery_currencyType ;
    keyValuePair_t *keyPairQuery_currencyType = 0;
    if (currencyType)
    {
        keyQuery_currencyType = strdup("currencyType");
        valueQuery_currencyType = (currencyType);
        keyPairQuery_currencyType = keyValuePair_create(keyQuery_currencyType, strdup(createOrder_CURRENCYTYPE_ToString(
        valueQuery_currencyType)));
        list_addElement(localVarQueryParameters,keyPairQuery_currencyType);
    }

    // query parameters
    char *keyQuery_cart = NULL;
    char * valueQuery_cart = NULL;
    keyValuePair_t *keyPairQuery_cart = 0;
    if (cart)
    {
        keyQuery_cart = strdup("cart");
        valueQuery_cart = strdup((cart));
        keyPairQuery_cart = keyValuePair_create(keyQuery_cart, valueQuery_cart);
        list_addElement(localVarQueryParameters,keyPairQuery_cart);
    }

    // query parameters
    char *keyQuery_paymentMethodId = NULL;
    char * valueQuery_paymentMethodId ;
    keyValuePair_t *keyPairQuery_paymentMethodId = 0;
    {
        keyQuery_paymentMethodId = strdup("paymentMethodId");
        valueQuery_paymentMethodId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_paymentMethodId, MAX_NUMBER_LENGTH_LONG, "%d", paymentMethodId);
        keyPairQuery_paymentMethodId = keyValuePair_create(keyQuery_paymentMethodId, valueQuery_paymentMethodId);
        list_addElement(localVarQueryParameters,keyPairQuery_paymentMethodId);
    }

    // query parameters
    char *keyQuery_externalOrderId = NULL;
    char * valueQuery_externalOrderId = NULL;
    keyValuePair_t *keyPairQuery_externalOrderId = 0;
    if (externalOrderId)
    {
        keyQuery_externalOrderId = strdup("externalOrderId");
        valueQuery_externalOrderId = strdup((externalOrderId));
        keyPairQuery_externalOrderId = keyValuePair_create(keyQuery_externalOrderId, valueQuery_externalOrderId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalOrderId);
    }

    // query parameters
    char *keyQuery_externalPaymentId = NULL;
    char * valueQuery_externalPaymentId = NULL;
    keyValuePair_t *keyPairQuery_externalPaymentId = 0;
    if (externalPaymentId)
    {
        keyQuery_externalPaymentId = strdup("externalPaymentId");
        valueQuery_externalPaymentId = strdup((externalPaymentId));
        keyPairQuery_externalPaymentId = keyValuePair_create(keyQuery_externalPaymentId, valueQuery_externalPaymentId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalPaymentId);
    }

    // query parameters
    char *keyQuery_remoteRefType = NULL;
    char * valueQuery_remoteRefType = NULL;
    keyValuePair_t *keyPairQuery_remoteRefType = 0;
    if (remoteRefType)
    {
        keyQuery_remoteRefType = strdup("remoteRefType");
        valueQuery_remoteRefType = strdup((remoteRefType));
        keyPairQuery_remoteRefType = keyValuePair_create(keyQuery_remoteRefType, valueQuery_remoteRefType);
        list_addElement(localVarQueryParameters,keyPairQuery_remoteRefType);
    }

    // query parameters
    char *keyQuery_externalDate = NULL;
    char * valueQuery_externalDate ;
    keyValuePair_t *keyPairQuery_externalDate = 0;
    {
        keyQuery_externalDate = strdup("externalDate");
        valueQuery_externalDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_externalDate, MAX_NUMBER_LENGTH_LONG, "%d", externalDate);
        keyPairQuery_externalDate = keyValuePair_create(keyQuery_externalDate, valueQuery_externalDate);
        list_addElement(localVarQueryParameters,keyPairQuery_externalDate);
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
    order_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PurchaseOrderAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = order_response_parseFromJSON(PurchaseOrderAPIlocalVarJSON);
        cJSON_Delete(PurchaseOrderAPIlocalVarJSON);
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
    if(keyQuery_currencyType){
        free(keyQuery_currencyType);
        keyQuery_currencyType = NULL;
    }
    if(keyPairQuery_currencyType){
        keyValuePair_free(keyPairQuery_currencyType);
        keyPairQuery_currencyType = NULL;
    }
    if(keyQuery_cart){
        free(keyQuery_cart);
        keyQuery_cart = NULL;
    }
    if(valueQuery_cart){
        free(valueQuery_cart);
        valueQuery_cart = NULL;
    }
    if(keyPairQuery_cart){
        keyValuePair_free(keyPairQuery_cart);
        keyPairQuery_cart = NULL;
    }
    if(keyQuery_paymentMethodId){
        free(keyQuery_paymentMethodId);
        keyQuery_paymentMethodId = NULL;
    }
    if(keyPairQuery_paymentMethodId){
        keyValuePair_free(keyPairQuery_paymentMethodId);
        keyPairQuery_paymentMethodId = NULL;
    }
    if(keyQuery_externalOrderId){
        free(keyQuery_externalOrderId);
        keyQuery_externalOrderId = NULL;
    }
    if(valueQuery_externalOrderId){
        free(valueQuery_externalOrderId);
        valueQuery_externalOrderId = NULL;
    }
    if(keyPairQuery_externalOrderId){
        keyValuePair_free(keyPairQuery_externalOrderId);
        keyPairQuery_externalOrderId = NULL;
    }
    if(keyQuery_externalPaymentId){
        free(keyQuery_externalPaymentId);
        keyQuery_externalPaymentId = NULL;
    }
    if(valueQuery_externalPaymentId){
        free(valueQuery_externalPaymentId);
        valueQuery_externalPaymentId = NULL;
    }
    if(keyPairQuery_externalPaymentId){
        keyValuePair_free(keyPairQuery_externalPaymentId);
        keyPairQuery_externalPaymentId = NULL;
    }
    if(keyQuery_remoteRefType){
        free(keyQuery_remoteRefType);
        keyQuery_remoteRefType = NULL;
    }
    if(valueQuery_remoteRefType){
        free(valueQuery_remoteRefType);
        valueQuery_remoteRefType = NULL;
    }
    if(keyPairQuery_remoteRefType){
        keyValuePair_free(keyPairQuery_remoteRefType);
        keyPairQuery_remoteRefType = NULL;
    }
    if(keyQuery_externalDate){
        free(keyQuery_externalDate);
        keyQuery_externalDate = NULL;
    }
    if(keyPairQuery_externalDate){
        keyValuePair_free(keyPairQuery_externalDate);
        keyPairQuery_externalDate = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Order
//
// Removes the transaction from the wallet by setting the deleted date to the current date/time.  Requires a valid account and transactionId.
//
sirqul_response_t*
PurchaseOrderAPI_deleteOrder(apiClient_t *apiClient, double version, long orderId, char *deviceId, long accountId)
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
    char *localVarPath = strdup("/api/{version}/order/delete");



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
    char *keyQuery_orderId = NULL;
    char * valueQuery_orderId ;
    keyValuePair_t *keyPairQuery_orderId = 0;
    {
        keyQuery_orderId = strdup("orderId");
        valueQuery_orderId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_orderId, MAX_NUMBER_LENGTH_LONG, "%d", orderId);
        keyPairQuery_orderId = keyValuePair_create(keyQuery_orderId, valueQuery_orderId);
        list_addElement(localVarQueryParameters,keyPairQuery_orderId);
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
        cJSON *PurchaseOrderAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(PurchaseOrderAPIlocalVarJSON);
        cJSON_Delete(PurchaseOrderAPIlocalVarJSON);
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
    if(keyQuery_orderId){
        free(keyQuery_orderId);
        keyQuery_orderId = NULL;
    }
    if(keyPairQuery_orderId){
        keyValuePair_free(keyPairQuery_orderId);
        keyPairQuery_orderId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Order
//
// Get an order record
//
order_response_t*
PurchaseOrderAPI_getOrder(apiClient_t *apiClient, double version, char *deviceId, long accountId, long orderId, char *externalOrderId)
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
    char *localVarPath = strdup("/api/{version}/order/get");



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
    char *keyQuery_orderId = NULL;
    char * valueQuery_orderId ;
    keyValuePair_t *keyPairQuery_orderId = 0;
    {
        keyQuery_orderId = strdup("orderId");
        valueQuery_orderId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_orderId, MAX_NUMBER_LENGTH_LONG, "%d", orderId);
        keyPairQuery_orderId = keyValuePair_create(keyQuery_orderId, valueQuery_orderId);
        list_addElement(localVarQueryParameters,keyPairQuery_orderId);
    }

    // query parameters
    char *keyQuery_externalOrderId = NULL;
    char * valueQuery_externalOrderId = NULL;
    keyValuePair_t *keyPairQuery_externalOrderId = 0;
    if (externalOrderId)
    {
        keyQuery_externalOrderId = strdup("externalOrderId");
        valueQuery_externalOrderId = strdup((externalOrderId));
        keyPairQuery_externalOrderId = keyValuePair_create(keyQuery_externalOrderId, valueQuery_externalOrderId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalOrderId);
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
    order_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PurchaseOrderAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = order_response_parseFromJSON(PurchaseOrderAPIlocalVarJSON);
        cJSON_Delete(PurchaseOrderAPIlocalVarJSON);
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
    if(keyQuery_orderId){
        free(keyQuery_orderId);
        keyQuery_orderId = NULL;
    }
    if(keyPairQuery_orderId){
        keyValuePair_free(keyPairQuery_orderId);
        keyPairQuery_orderId = NULL;
    }
    if(keyQuery_externalOrderId){
        free(keyQuery_externalOrderId);
        keyQuery_externalOrderId = NULL;
    }
    if(valueQuery_externalOrderId){
        free(valueQuery_externalOrderId);
        valueQuery_externalOrderId = NULL;
    }
    if(keyPairQuery_externalOrderId){
        keyValuePair_free(keyPairQuery_externalOrderId);
        keyPairQuery_externalOrderId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Preview Order
//
// Previews a purchase to see the total cost before making it.
//
order_response_t*
PurchaseOrderAPI_previewOrder(apiClient_t *apiClient, double version, char *appKey, char *cart, char *deviceId, long accountId, char *description, sirqul_iot_platform_previewOrder_currencyType_e currencyType, long paymentMethodId, char *externalOrderId, char *externalPaymentId, char *remoteRefType, long externalDate, char *promoCode)
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
    char *localVarPath = strdup("/api/{version}/order/preview");



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
    char *keyQuery_currencyType = NULL;
    sirqul_iot_platform_previewOrder_currencyType_e valueQuery_currencyType ;
    keyValuePair_t *keyPairQuery_currencyType = 0;
    if (currencyType)
    {
        keyQuery_currencyType = strdup("currencyType");
        valueQuery_currencyType = (currencyType);
        keyPairQuery_currencyType = keyValuePair_create(keyQuery_currencyType, strdup(previewOrder_CURRENCYTYPE_ToString(
        valueQuery_currencyType)));
        list_addElement(localVarQueryParameters,keyPairQuery_currencyType);
    }

    // query parameters
    char *keyQuery_cart = NULL;
    char * valueQuery_cart = NULL;
    keyValuePair_t *keyPairQuery_cart = 0;
    if (cart)
    {
        keyQuery_cart = strdup("cart");
        valueQuery_cart = strdup((cart));
        keyPairQuery_cart = keyValuePair_create(keyQuery_cart, valueQuery_cart);
        list_addElement(localVarQueryParameters,keyPairQuery_cart);
    }

    // query parameters
    char *keyQuery_paymentMethodId = NULL;
    char * valueQuery_paymentMethodId ;
    keyValuePair_t *keyPairQuery_paymentMethodId = 0;
    {
        keyQuery_paymentMethodId = strdup("paymentMethodId");
        valueQuery_paymentMethodId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_paymentMethodId, MAX_NUMBER_LENGTH_LONG, "%d", paymentMethodId);
        keyPairQuery_paymentMethodId = keyValuePair_create(keyQuery_paymentMethodId, valueQuery_paymentMethodId);
        list_addElement(localVarQueryParameters,keyPairQuery_paymentMethodId);
    }

    // query parameters
    char *keyQuery_externalOrderId = NULL;
    char * valueQuery_externalOrderId = NULL;
    keyValuePair_t *keyPairQuery_externalOrderId = 0;
    if (externalOrderId)
    {
        keyQuery_externalOrderId = strdup("externalOrderId");
        valueQuery_externalOrderId = strdup((externalOrderId));
        keyPairQuery_externalOrderId = keyValuePair_create(keyQuery_externalOrderId, valueQuery_externalOrderId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalOrderId);
    }

    // query parameters
    char *keyQuery_externalPaymentId = NULL;
    char * valueQuery_externalPaymentId = NULL;
    keyValuePair_t *keyPairQuery_externalPaymentId = 0;
    if (externalPaymentId)
    {
        keyQuery_externalPaymentId = strdup("externalPaymentId");
        valueQuery_externalPaymentId = strdup((externalPaymentId));
        keyPairQuery_externalPaymentId = keyValuePair_create(keyQuery_externalPaymentId, valueQuery_externalPaymentId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalPaymentId);
    }

    // query parameters
    char *keyQuery_remoteRefType = NULL;
    char * valueQuery_remoteRefType = NULL;
    keyValuePair_t *keyPairQuery_remoteRefType = 0;
    if (remoteRefType)
    {
        keyQuery_remoteRefType = strdup("remoteRefType");
        valueQuery_remoteRefType = strdup((remoteRefType));
        keyPairQuery_remoteRefType = keyValuePair_create(keyQuery_remoteRefType, valueQuery_remoteRefType);
        list_addElement(localVarQueryParameters,keyPairQuery_remoteRefType);
    }

    // query parameters
    char *keyQuery_externalDate = NULL;
    char * valueQuery_externalDate ;
    keyValuePair_t *keyPairQuery_externalDate = 0;
    {
        keyQuery_externalDate = strdup("externalDate");
        valueQuery_externalDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_externalDate, MAX_NUMBER_LENGTH_LONG, "%d", externalDate);
        keyPairQuery_externalDate = keyValuePair_create(keyQuery_externalDate, valueQuery_externalDate);
        list_addElement(localVarQueryParameters,keyPairQuery_externalDate);
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
    order_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PurchaseOrderAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = order_response_parseFromJSON(PurchaseOrderAPIlocalVarJSON);
        cJSON_Delete(PurchaseOrderAPIlocalVarJSON);
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
    if(keyQuery_currencyType){
        free(keyQuery_currencyType);
        keyQuery_currencyType = NULL;
    }
    if(keyPairQuery_currencyType){
        keyValuePair_free(keyPairQuery_currencyType);
        keyPairQuery_currencyType = NULL;
    }
    if(keyQuery_cart){
        free(keyQuery_cart);
        keyQuery_cart = NULL;
    }
    if(valueQuery_cart){
        free(valueQuery_cart);
        valueQuery_cart = NULL;
    }
    if(keyPairQuery_cart){
        keyValuePair_free(keyPairQuery_cart);
        keyPairQuery_cart = NULL;
    }
    if(keyQuery_paymentMethodId){
        free(keyQuery_paymentMethodId);
        keyQuery_paymentMethodId = NULL;
    }
    if(keyPairQuery_paymentMethodId){
        keyValuePair_free(keyPairQuery_paymentMethodId);
        keyPairQuery_paymentMethodId = NULL;
    }
    if(keyQuery_externalOrderId){
        free(keyQuery_externalOrderId);
        keyQuery_externalOrderId = NULL;
    }
    if(valueQuery_externalOrderId){
        free(valueQuery_externalOrderId);
        valueQuery_externalOrderId = NULL;
    }
    if(keyPairQuery_externalOrderId){
        keyValuePair_free(keyPairQuery_externalOrderId);
        keyPairQuery_externalOrderId = NULL;
    }
    if(keyQuery_externalPaymentId){
        free(keyQuery_externalPaymentId);
        keyQuery_externalPaymentId = NULL;
    }
    if(valueQuery_externalPaymentId){
        free(valueQuery_externalPaymentId);
        valueQuery_externalPaymentId = NULL;
    }
    if(keyPairQuery_externalPaymentId){
        keyValuePair_free(keyPairQuery_externalPaymentId);
        keyPairQuery_externalPaymentId = NULL;
    }
    if(keyQuery_remoteRefType){
        free(keyQuery_remoteRefType);
        keyQuery_remoteRefType = NULL;
    }
    if(valueQuery_remoteRefType){
        free(valueQuery_remoteRefType);
        valueQuery_remoteRefType = NULL;
    }
    if(keyPairQuery_remoteRefType){
        keyValuePair_free(keyPairQuery_remoteRefType);
        keyPairQuery_remoteRefType = NULL;
    }
    if(keyQuery_externalDate){
        free(keyQuery_externalDate);
        keyQuery_externalDate = NULL;
    }
    if(keyPairQuery_externalDate){
        keyValuePair_free(keyPairQuery_externalDate);
        keyPairQuery_externalDate = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Orders
//
// Search on active orders by customer
//
list_t*
PurchaseOrderAPI_searchOrders(apiClient_t *apiClient, double version, char *appKey, char *deviceId, long accountId, int *start, int *limit, int *descending, int *activeOnly, int *ignoreCustomerFilter, char *orderItemTypes, char *orderItemIds, char *orderCustomTypes, char *orderCustomIds, char *sortField, char *offerTypes, char *specialOfferTypes, char *categoryIds, char *filterIds, char *offerAudienceIds, char *transactionAudienceIds, char *offerIds, char *offerLocationIds, char *retailerIds, char *retailerLocationIds, char *statuses, char *keyword, long redeemableStartDate, long redeemableEndDate, long startedSince, long startedBefore, long endedSince, long endedBefore)
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
    char *localVarPath = strdup("/api/{version}/order/search");



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
    char *keyQuery_ignoreCustomerFilter = NULL;
    char * valueQuery_ignoreCustomerFilter = NULL;
    keyValuePair_t *keyPairQuery_ignoreCustomerFilter = 0;
    if (ignoreCustomerFilter)
    {
        keyQuery_ignoreCustomerFilter = strdup("ignoreCustomerFilter");
        valueQuery_ignoreCustomerFilter = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ignoreCustomerFilter, MAX_NUMBER_LENGTH, "%d", *ignoreCustomerFilter);
        keyPairQuery_ignoreCustomerFilter = keyValuePair_create(keyQuery_ignoreCustomerFilter, valueQuery_ignoreCustomerFilter);
        list_addElement(localVarQueryParameters,keyPairQuery_ignoreCustomerFilter);
    }

    // query parameters
    char *keyQuery_orderItemTypes = NULL;
    char * valueQuery_orderItemTypes = NULL;
    keyValuePair_t *keyPairQuery_orderItemTypes = 0;
    if (orderItemTypes)
    {
        keyQuery_orderItemTypes = strdup("orderItemTypes");
        valueQuery_orderItemTypes = strdup((orderItemTypes));
        keyPairQuery_orderItemTypes = keyValuePair_create(keyQuery_orderItemTypes, valueQuery_orderItemTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_orderItemTypes);
    }

    // query parameters
    char *keyQuery_orderItemIds = NULL;
    char * valueQuery_orderItemIds = NULL;
    keyValuePair_t *keyPairQuery_orderItemIds = 0;
    if (orderItemIds)
    {
        keyQuery_orderItemIds = strdup("orderItemIds");
        valueQuery_orderItemIds = strdup((orderItemIds));
        keyPairQuery_orderItemIds = keyValuePair_create(keyQuery_orderItemIds, valueQuery_orderItemIds);
        list_addElement(localVarQueryParameters,keyPairQuery_orderItemIds);
    }

    // query parameters
    char *keyQuery_orderCustomTypes = NULL;
    char * valueQuery_orderCustomTypes = NULL;
    keyValuePair_t *keyPairQuery_orderCustomTypes = 0;
    if (orderCustomTypes)
    {
        keyQuery_orderCustomTypes = strdup("orderCustomTypes");
        valueQuery_orderCustomTypes = strdup((orderCustomTypes));
        keyPairQuery_orderCustomTypes = keyValuePair_create(keyQuery_orderCustomTypes, valueQuery_orderCustomTypes);
        list_addElement(localVarQueryParameters,keyPairQuery_orderCustomTypes);
    }

    // query parameters
    char *keyQuery_orderCustomIds = NULL;
    char * valueQuery_orderCustomIds = NULL;
    keyValuePair_t *keyPairQuery_orderCustomIds = 0;
    if (orderCustomIds)
    {
        keyQuery_orderCustomIds = strdup("orderCustomIds");
        valueQuery_orderCustomIds = strdup((orderCustomIds));
        keyPairQuery_orderCustomIds = keyValuePair_create(keyQuery_orderCustomIds, valueQuery_orderCustomIds);
        list_addElement(localVarQueryParameters,keyPairQuery_orderCustomIds);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
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
        cJSON *PurchaseOrderAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(PurchaseOrderAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, PurchaseOrderAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( PurchaseOrderAPIlocalVarJSON);
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
    if(keyQuery_ignoreCustomerFilter){
        free(keyQuery_ignoreCustomerFilter);
        keyQuery_ignoreCustomerFilter = NULL;
    }
    if(valueQuery_ignoreCustomerFilter){
        free(valueQuery_ignoreCustomerFilter);
        valueQuery_ignoreCustomerFilter = NULL;
    }
    if(keyPairQuery_ignoreCustomerFilter){
        keyValuePair_free(keyPairQuery_ignoreCustomerFilter);
        keyPairQuery_ignoreCustomerFilter = NULL;
    }
    if(keyQuery_orderItemTypes){
        free(keyQuery_orderItemTypes);
        keyQuery_orderItemTypes = NULL;
    }
    if(valueQuery_orderItemTypes){
        free(valueQuery_orderItemTypes);
        valueQuery_orderItemTypes = NULL;
    }
    if(keyPairQuery_orderItemTypes){
        keyValuePair_free(keyPairQuery_orderItemTypes);
        keyPairQuery_orderItemTypes = NULL;
    }
    if(keyQuery_orderItemIds){
        free(keyQuery_orderItemIds);
        keyQuery_orderItemIds = NULL;
    }
    if(valueQuery_orderItemIds){
        free(valueQuery_orderItemIds);
        valueQuery_orderItemIds = NULL;
    }
    if(keyPairQuery_orderItemIds){
        keyValuePair_free(keyPairQuery_orderItemIds);
        keyPairQuery_orderItemIds = NULL;
    }
    if(keyQuery_orderCustomTypes){
        free(keyQuery_orderCustomTypes);
        keyQuery_orderCustomTypes = NULL;
    }
    if(valueQuery_orderCustomTypes){
        free(valueQuery_orderCustomTypes);
        valueQuery_orderCustomTypes = NULL;
    }
    if(keyPairQuery_orderCustomTypes){
        keyValuePair_free(keyPairQuery_orderCustomTypes);
        keyPairQuery_orderCustomTypes = NULL;
    }
    if(keyQuery_orderCustomIds){
        free(keyQuery_orderCustomIds);
        keyQuery_orderCustomIds = NULL;
    }
    if(valueQuery_orderCustomIds){
        free(valueQuery_orderCustomIds);
        valueQuery_orderCustomIds = NULL;
    }
    if(keyPairQuery_orderCustomIds){
        keyValuePair_free(keyPairQuery_orderCustomIds);
        keyPairQuery_orderCustomIds = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Order
//
// Updates new purchase with some number of items associated with it. The orderId provided is used to retrieve the record and the payment is added to it.
//
order_response_t*
PurchaseOrderAPI_updateOrder(apiClient_t *apiClient, double version, long orderId, char *appKey, char *cart, char *deviceId, long accountId, long paymentTransactionId, char *description, sirqul_iot_platform_updateOrder_currencyType_e currencyType, long paymentMethodId, char *externalPaymentId, long externalDate)
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
    char *localVarPath = strdup("/api/{version}/order/update");



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
    char *keyQuery_orderId = NULL;
    char * valueQuery_orderId ;
    keyValuePair_t *keyPairQuery_orderId = 0;
    {
        keyQuery_orderId = strdup("orderId");
        valueQuery_orderId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_orderId, MAX_NUMBER_LENGTH_LONG, "%d", orderId);
        keyPairQuery_orderId = keyValuePair_create(keyQuery_orderId, valueQuery_orderId);
        list_addElement(localVarQueryParameters,keyPairQuery_orderId);
    }

    // query parameters
    char *keyQuery_paymentTransactionId = NULL;
    char * valueQuery_paymentTransactionId ;
    keyValuePair_t *keyPairQuery_paymentTransactionId = 0;
    {
        keyQuery_paymentTransactionId = strdup("paymentTransactionId");
        valueQuery_paymentTransactionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_paymentTransactionId, MAX_NUMBER_LENGTH_LONG, "%d", paymentTransactionId);
        keyPairQuery_paymentTransactionId = keyValuePair_create(keyQuery_paymentTransactionId, valueQuery_paymentTransactionId);
        list_addElement(localVarQueryParameters,keyPairQuery_paymentTransactionId);
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
    char *keyQuery_currencyType = NULL;
    sirqul_iot_platform_updateOrder_currencyType_e valueQuery_currencyType ;
    keyValuePair_t *keyPairQuery_currencyType = 0;
    if (currencyType)
    {
        keyQuery_currencyType = strdup("currencyType");
        valueQuery_currencyType = (currencyType);
        keyPairQuery_currencyType = keyValuePair_create(keyQuery_currencyType, strdup(updateOrder_CURRENCYTYPE_ToString(
        valueQuery_currencyType)));
        list_addElement(localVarQueryParameters,keyPairQuery_currencyType);
    }

    // query parameters
    char *keyQuery_cart = NULL;
    char * valueQuery_cart = NULL;
    keyValuePair_t *keyPairQuery_cart = 0;
    if (cart)
    {
        keyQuery_cart = strdup("cart");
        valueQuery_cart = strdup((cart));
        keyPairQuery_cart = keyValuePair_create(keyQuery_cart, valueQuery_cart);
        list_addElement(localVarQueryParameters,keyPairQuery_cart);
    }

    // query parameters
    char *keyQuery_paymentMethodId = NULL;
    char * valueQuery_paymentMethodId ;
    keyValuePair_t *keyPairQuery_paymentMethodId = 0;
    {
        keyQuery_paymentMethodId = strdup("paymentMethodId");
        valueQuery_paymentMethodId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_paymentMethodId, MAX_NUMBER_LENGTH_LONG, "%d", paymentMethodId);
        keyPairQuery_paymentMethodId = keyValuePair_create(keyQuery_paymentMethodId, valueQuery_paymentMethodId);
        list_addElement(localVarQueryParameters,keyPairQuery_paymentMethodId);
    }

    // query parameters
    char *keyQuery_externalPaymentId = NULL;
    char * valueQuery_externalPaymentId = NULL;
    keyValuePair_t *keyPairQuery_externalPaymentId = 0;
    if (externalPaymentId)
    {
        keyQuery_externalPaymentId = strdup("externalPaymentId");
        valueQuery_externalPaymentId = strdup((externalPaymentId));
        keyPairQuery_externalPaymentId = keyValuePair_create(keyQuery_externalPaymentId, valueQuery_externalPaymentId);
        list_addElement(localVarQueryParameters,keyPairQuery_externalPaymentId);
    }

    // query parameters
    char *keyQuery_externalDate = NULL;
    char * valueQuery_externalDate ;
    keyValuePair_t *keyPairQuery_externalDate = 0;
    {
        keyQuery_externalDate = strdup("externalDate");
        valueQuery_externalDate = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_externalDate, MAX_NUMBER_LENGTH_LONG, "%d", externalDate);
        keyPairQuery_externalDate = keyValuePair_create(keyQuery_externalDate, valueQuery_externalDate);
        list_addElement(localVarQueryParameters,keyPairQuery_externalDate);
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
    order_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *PurchaseOrderAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = order_response_parseFromJSON(PurchaseOrderAPIlocalVarJSON);
        cJSON_Delete(PurchaseOrderAPIlocalVarJSON);
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
    if(keyQuery_orderId){
        free(keyQuery_orderId);
        keyQuery_orderId = NULL;
    }
    if(keyPairQuery_orderId){
        keyValuePair_free(keyPairQuery_orderId);
        keyPairQuery_orderId = NULL;
    }
    if(keyQuery_paymentTransactionId){
        free(keyQuery_paymentTransactionId);
        keyQuery_paymentTransactionId = NULL;
    }
    if(keyPairQuery_paymentTransactionId){
        keyValuePair_free(keyPairQuery_paymentTransactionId);
        keyPairQuery_paymentTransactionId = NULL;
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
    if(keyQuery_currencyType){
        free(keyQuery_currencyType);
        keyQuery_currencyType = NULL;
    }
    if(keyPairQuery_currencyType){
        keyValuePair_free(keyPairQuery_currencyType);
        keyPairQuery_currencyType = NULL;
    }
    if(keyQuery_cart){
        free(keyQuery_cart);
        keyQuery_cart = NULL;
    }
    if(valueQuery_cart){
        free(valueQuery_cart);
        valueQuery_cart = NULL;
    }
    if(keyPairQuery_cart){
        keyValuePair_free(keyPairQuery_cart);
        keyPairQuery_cart = NULL;
    }
    if(keyQuery_paymentMethodId){
        free(keyQuery_paymentMethodId);
        keyQuery_paymentMethodId = NULL;
    }
    if(keyPairQuery_paymentMethodId){
        keyValuePair_free(keyPairQuery_paymentMethodId);
        keyPairQuery_paymentMethodId = NULL;
    }
    if(keyQuery_externalPaymentId){
        free(keyQuery_externalPaymentId);
        keyQuery_externalPaymentId = NULL;
    }
    if(valueQuery_externalPaymentId){
        free(valueQuery_externalPaymentId);
        valueQuery_externalPaymentId = NULL;
    }
    if(keyPairQuery_externalPaymentId){
        keyValuePair_free(keyPairQuery_externalPaymentId);
        keyPairQuery_externalPaymentId = NULL;
    }
    if(keyQuery_externalDate){
        free(keyQuery_externalDate);
        keyQuery_externalDate = NULL;
    }
    if(keyPairQuery_externalDate){
        keyValuePair_free(keyPairQuery_externalDate);
        keyPairQuery_externalDate = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

