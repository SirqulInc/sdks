#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "BillingInfoAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Update Payment Method
//
// Update a method of payment. If the paymentMethodId is not passed in then will update their default payment method.
//
payment_types_response_t*
BillingInfoAPI_addPaymentMethod(apiClient_t *apiClient, double version, long accountId, long paymentMethodId, char *accountName, char *firstName, char *lastName, char *address, char *city, char *state, char *postalCode, char *country, char *phone, char *creditCardNumber, char *expirationDate, char *ccv, char *accountNumber, char *bankName, char *routingNumber, int *defaultPaymentMethod, char *paymentMethodNickname, char *taxId, char *providerCustomerProfileId, char *providerPaymentProfileId, char *metaData)
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
    char *localVarPath = strdup("/api/{version}/billing/update");



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
    char *keyQuery_accountName = NULL;
    char * valueQuery_accountName = NULL;
    keyValuePair_t *keyPairQuery_accountName = 0;
    if (accountName)
    {
        keyQuery_accountName = strdup("accountName");
        valueQuery_accountName = strdup((accountName));
        keyPairQuery_accountName = keyValuePair_create(keyQuery_accountName, valueQuery_accountName);
        list_addElement(localVarQueryParameters,keyPairQuery_accountName);
    }

    // query parameters
    char *keyQuery_firstName = NULL;
    char * valueQuery_firstName = NULL;
    keyValuePair_t *keyPairQuery_firstName = 0;
    if (firstName)
    {
        keyQuery_firstName = strdup("firstName");
        valueQuery_firstName = strdup((firstName));
        keyPairQuery_firstName = keyValuePair_create(keyQuery_firstName, valueQuery_firstName);
        list_addElement(localVarQueryParameters,keyPairQuery_firstName);
    }

    // query parameters
    char *keyQuery_lastName = NULL;
    char * valueQuery_lastName = NULL;
    keyValuePair_t *keyPairQuery_lastName = 0;
    if (lastName)
    {
        keyQuery_lastName = strdup("lastName");
        valueQuery_lastName = strdup((lastName));
        keyPairQuery_lastName = keyValuePair_create(keyQuery_lastName, valueQuery_lastName);
        list_addElement(localVarQueryParameters,keyPairQuery_lastName);
    }

    // query parameters
    char *keyQuery_address = NULL;
    char * valueQuery_address = NULL;
    keyValuePair_t *keyPairQuery_address = 0;
    if (address)
    {
        keyQuery_address = strdup("address");
        valueQuery_address = strdup((address));
        keyPairQuery_address = keyValuePair_create(keyQuery_address, valueQuery_address);
        list_addElement(localVarQueryParameters,keyPairQuery_address);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_postalCode = NULL;
    char * valueQuery_postalCode = NULL;
    keyValuePair_t *keyPairQuery_postalCode = 0;
    if (postalCode)
    {
        keyQuery_postalCode = strdup("postalCode");
        valueQuery_postalCode = strdup((postalCode));
        keyPairQuery_postalCode = keyValuePair_create(keyQuery_postalCode, valueQuery_postalCode);
        list_addElement(localVarQueryParameters,keyPairQuery_postalCode);
    }

    // query parameters
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
    }

    // query parameters
    char *keyQuery_phone = NULL;
    char * valueQuery_phone = NULL;
    keyValuePair_t *keyPairQuery_phone = 0;
    if (phone)
    {
        keyQuery_phone = strdup("phone");
        valueQuery_phone = strdup((phone));
        keyPairQuery_phone = keyValuePair_create(keyQuery_phone, valueQuery_phone);
        list_addElement(localVarQueryParameters,keyPairQuery_phone);
    }

    // query parameters
    char *keyQuery_creditCardNumber = NULL;
    char * valueQuery_creditCardNumber = NULL;
    keyValuePair_t *keyPairQuery_creditCardNumber = 0;
    if (creditCardNumber)
    {
        keyQuery_creditCardNumber = strdup("creditCardNumber");
        valueQuery_creditCardNumber = strdup((creditCardNumber));
        keyPairQuery_creditCardNumber = keyValuePair_create(keyQuery_creditCardNumber, valueQuery_creditCardNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_creditCardNumber);
    }

    // query parameters
    char *keyQuery_expirationDate = NULL;
    char * valueQuery_expirationDate = NULL;
    keyValuePair_t *keyPairQuery_expirationDate = 0;
    if (expirationDate)
    {
        keyQuery_expirationDate = strdup("expirationDate");
        valueQuery_expirationDate = strdup((expirationDate));
        keyPairQuery_expirationDate = keyValuePair_create(keyQuery_expirationDate, valueQuery_expirationDate);
        list_addElement(localVarQueryParameters,keyPairQuery_expirationDate);
    }

    // query parameters
    char *keyQuery_ccv = NULL;
    char * valueQuery_ccv = NULL;
    keyValuePair_t *keyPairQuery_ccv = 0;
    if (ccv)
    {
        keyQuery_ccv = strdup("ccv");
        valueQuery_ccv = strdup((ccv));
        keyPairQuery_ccv = keyValuePair_create(keyQuery_ccv, valueQuery_ccv);
        list_addElement(localVarQueryParameters,keyPairQuery_ccv);
    }

    // query parameters
    char *keyQuery_accountNumber = NULL;
    char * valueQuery_accountNumber = NULL;
    keyValuePair_t *keyPairQuery_accountNumber = 0;
    if (accountNumber)
    {
        keyQuery_accountNumber = strdup("accountNumber");
        valueQuery_accountNumber = strdup((accountNumber));
        keyPairQuery_accountNumber = keyValuePair_create(keyQuery_accountNumber, valueQuery_accountNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_accountNumber);
    }

    // query parameters
    char *keyQuery_bankName = NULL;
    char * valueQuery_bankName = NULL;
    keyValuePair_t *keyPairQuery_bankName = 0;
    if (bankName)
    {
        keyQuery_bankName = strdup("bankName");
        valueQuery_bankName = strdup((bankName));
        keyPairQuery_bankName = keyValuePair_create(keyQuery_bankName, valueQuery_bankName);
        list_addElement(localVarQueryParameters,keyPairQuery_bankName);
    }

    // query parameters
    char *keyQuery_routingNumber = NULL;
    char * valueQuery_routingNumber = NULL;
    keyValuePair_t *keyPairQuery_routingNumber = 0;
    if (routingNumber)
    {
        keyQuery_routingNumber = strdup("routingNumber");
        valueQuery_routingNumber = strdup((routingNumber));
        keyPairQuery_routingNumber = keyValuePair_create(keyQuery_routingNumber, valueQuery_routingNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_routingNumber);
    }

    // query parameters
    char *keyQuery_defaultPaymentMethod = NULL;
    char * valueQuery_defaultPaymentMethod = NULL;
    keyValuePair_t *keyPairQuery_defaultPaymentMethod = 0;
    if (defaultPaymentMethod)
    {
        keyQuery_defaultPaymentMethod = strdup("defaultPaymentMethod");
        valueQuery_defaultPaymentMethod = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_defaultPaymentMethod, MAX_NUMBER_LENGTH, "%d", *defaultPaymentMethod);
        keyPairQuery_defaultPaymentMethod = keyValuePair_create(keyQuery_defaultPaymentMethod, valueQuery_defaultPaymentMethod);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultPaymentMethod);
    }

    // query parameters
    char *keyQuery_paymentMethodNickname = NULL;
    char * valueQuery_paymentMethodNickname = NULL;
    keyValuePair_t *keyPairQuery_paymentMethodNickname = 0;
    if (paymentMethodNickname)
    {
        keyQuery_paymentMethodNickname = strdup("paymentMethodNickname");
        valueQuery_paymentMethodNickname = strdup((paymentMethodNickname));
        keyPairQuery_paymentMethodNickname = keyValuePair_create(keyQuery_paymentMethodNickname, valueQuery_paymentMethodNickname);
        list_addElement(localVarQueryParameters,keyPairQuery_paymentMethodNickname);
    }

    // query parameters
    char *keyQuery_taxId = NULL;
    char * valueQuery_taxId = NULL;
    keyValuePair_t *keyPairQuery_taxId = 0;
    if (taxId)
    {
        keyQuery_taxId = strdup("taxId");
        valueQuery_taxId = strdup((taxId));
        keyPairQuery_taxId = keyValuePair_create(keyQuery_taxId, valueQuery_taxId);
        list_addElement(localVarQueryParameters,keyPairQuery_taxId);
    }

    // query parameters
    char *keyQuery_providerCustomerProfileId = NULL;
    char * valueQuery_providerCustomerProfileId = NULL;
    keyValuePair_t *keyPairQuery_providerCustomerProfileId = 0;
    if (providerCustomerProfileId)
    {
        keyQuery_providerCustomerProfileId = strdup("providerCustomerProfileId");
        valueQuery_providerCustomerProfileId = strdup((providerCustomerProfileId));
        keyPairQuery_providerCustomerProfileId = keyValuePair_create(keyQuery_providerCustomerProfileId, valueQuery_providerCustomerProfileId);
        list_addElement(localVarQueryParameters,keyPairQuery_providerCustomerProfileId);
    }

    // query parameters
    char *keyQuery_providerPaymentProfileId = NULL;
    char * valueQuery_providerPaymentProfileId = NULL;
    keyValuePair_t *keyPairQuery_providerPaymentProfileId = 0;
    if (providerPaymentProfileId)
    {
        keyQuery_providerPaymentProfileId = strdup("providerPaymentProfileId");
        valueQuery_providerPaymentProfileId = strdup((providerPaymentProfileId));
        keyPairQuery_providerPaymentProfileId = keyValuePair_create(keyQuery_providerPaymentProfileId, valueQuery_providerPaymentProfileId);
        list_addElement(localVarQueryParameters,keyPairQuery_providerPaymentProfileId);
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
    payment_types_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillingInfoAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = payment_types_response_parseFromJSON(BillingInfoAPIlocalVarJSON);
        cJSON_Delete(BillingInfoAPIlocalVarJSON);
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
    if(keyQuery_paymentMethodId){
        free(keyQuery_paymentMethodId);
        keyQuery_paymentMethodId = NULL;
    }
    if(keyPairQuery_paymentMethodId){
        keyValuePair_free(keyPairQuery_paymentMethodId);
        keyPairQuery_paymentMethodId = NULL;
    }
    if(keyQuery_accountName){
        free(keyQuery_accountName);
        keyQuery_accountName = NULL;
    }
    if(valueQuery_accountName){
        free(valueQuery_accountName);
        valueQuery_accountName = NULL;
    }
    if(keyPairQuery_accountName){
        keyValuePair_free(keyPairQuery_accountName);
        keyPairQuery_accountName = NULL;
    }
    if(keyQuery_firstName){
        free(keyQuery_firstName);
        keyQuery_firstName = NULL;
    }
    if(valueQuery_firstName){
        free(valueQuery_firstName);
        valueQuery_firstName = NULL;
    }
    if(keyPairQuery_firstName){
        keyValuePair_free(keyPairQuery_firstName);
        keyPairQuery_firstName = NULL;
    }
    if(keyQuery_lastName){
        free(keyQuery_lastName);
        keyQuery_lastName = NULL;
    }
    if(valueQuery_lastName){
        free(valueQuery_lastName);
        valueQuery_lastName = NULL;
    }
    if(keyPairQuery_lastName){
        keyValuePair_free(keyPairQuery_lastName);
        keyPairQuery_lastName = NULL;
    }
    if(keyQuery_address){
        free(keyQuery_address);
        keyQuery_address = NULL;
    }
    if(valueQuery_address){
        free(valueQuery_address);
        valueQuery_address = NULL;
    }
    if(keyPairQuery_address){
        keyValuePair_free(keyPairQuery_address);
        keyPairQuery_address = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_postalCode){
        free(keyQuery_postalCode);
        keyQuery_postalCode = NULL;
    }
    if(valueQuery_postalCode){
        free(valueQuery_postalCode);
        valueQuery_postalCode = NULL;
    }
    if(keyPairQuery_postalCode){
        keyValuePair_free(keyPairQuery_postalCode);
        keyPairQuery_postalCode = NULL;
    }
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
    }
    if(keyQuery_phone){
        free(keyQuery_phone);
        keyQuery_phone = NULL;
    }
    if(valueQuery_phone){
        free(valueQuery_phone);
        valueQuery_phone = NULL;
    }
    if(keyPairQuery_phone){
        keyValuePair_free(keyPairQuery_phone);
        keyPairQuery_phone = NULL;
    }
    if(keyQuery_creditCardNumber){
        free(keyQuery_creditCardNumber);
        keyQuery_creditCardNumber = NULL;
    }
    if(valueQuery_creditCardNumber){
        free(valueQuery_creditCardNumber);
        valueQuery_creditCardNumber = NULL;
    }
    if(keyPairQuery_creditCardNumber){
        keyValuePair_free(keyPairQuery_creditCardNumber);
        keyPairQuery_creditCardNumber = NULL;
    }
    if(keyQuery_expirationDate){
        free(keyQuery_expirationDate);
        keyQuery_expirationDate = NULL;
    }
    if(valueQuery_expirationDate){
        free(valueQuery_expirationDate);
        valueQuery_expirationDate = NULL;
    }
    if(keyPairQuery_expirationDate){
        keyValuePair_free(keyPairQuery_expirationDate);
        keyPairQuery_expirationDate = NULL;
    }
    if(keyQuery_ccv){
        free(keyQuery_ccv);
        keyQuery_ccv = NULL;
    }
    if(valueQuery_ccv){
        free(valueQuery_ccv);
        valueQuery_ccv = NULL;
    }
    if(keyPairQuery_ccv){
        keyValuePair_free(keyPairQuery_ccv);
        keyPairQuery_ccv = NULL;
    }
    if(keyQuery_accountNumber){
        free(keyQuery_accountNumber);
        keyQuery_accountNumber = NULL;
    }
    if(valueQuery_accountNumber){
        free(valueQuery_accountNumber);
        valueQuery_accountNumber = NULL;
    }
    if(keyPairQuery_accountNumber){
        keyValuePair_free(keyPairQuery_accountNumber);
        keyPairQuery_accountNumber = NULL;
    }
    if(keyQuery_bankName){
        free(keyQuery_bankName);
        keyQuery_bankName = NULL;
    }
    if(valueQuery_bankName){
        free(valueQuery_bankName);
        valueQuery_bankName = NULL;
    }
    if(keyPairQuery_bankName){
        keyValuePair_free(keyPairQuery_bankName);
        keyPairQuery_bankName = NULL;
    }
    if(keyQuery_routingNumber){
        free(keyQuery_routingNumber);
        keyQuery_routingNumber = NULL;
    }
    if(valueQuery_routingNumber){
        free(valueQuery_routingNumber);
        valueQuery_routingNumber = NULL;
    }
    if(keyPairQuery_routingNumber){
        keyValuePair_free(keyPairQuery_routingNumber);
        keyPairQuery_routingNumber = NULL;
    }
    if(keyQuery_defaultPaymentMethod){
        free(keyQuery_defaultPaymentMethod);
        keyQuery_defaultPaymentMethod = NULL;
    }
    if(valueQuery_defaultPaymentMethod){
        free(valueQuery_defaultPaymentMethod);
        valueQuery_defaultPaymentMethod = NULL;
    }
    if(keyPairQuery_defaultPaymentMethod){
        keyValuePair_free(keyPairQuery_defaultPaymentMethod);
        keyPairQuery_defaultPaymentMethod = NULL;
    }
    if(keyQuery_paymentMethodNickname){
        free(keyQuery_paymentMethodNickname);
        keyQuery_paymentMethodNickname = NULL;
    }
    if(valueQuery_paymentMethodNickname){
        free(valueQuery_paymentMethodNickname);
        valueQuery_paymentMethodNickname = NULL;
    }
    if(keyPairQuery_paymentMethodNickname){
        keyValuePair_free(keyPairQuery_paymentMethodNickname);
        keyPairQuery_paymentMethodNickname = NULL;
    }
    if(keyQuery_taxId){
        free(keyQuery_taxId);
        keyQuery_taxId = NULL;
    }
    if(valueQuery_taxId){
        free(valueQuery_taxId);
        valueQuery_taxId = NULL;
    }
    if(keyPairQuery_taxId){
        keyValuePair_free(keyPairQuery_taxId);
        keyPairQuery_taxId = NULL;
    }
    if(keyQuery_providerCustomerProfileId){
        free(keyQuery_providerCustomerProfileId);
        keyQuery_providerCustomerProfileId = NULL;
    }
    if(valueQuery_providerCustomerProfileId){
        free(valueQuery_providerCustomerProfileId);
        valueQuery_providerCustomerProfileId = NULL;
    }
    if(keyPairQuery_providerCustomerProfileId){
        keyValuePair_free(keyPairQuery_providerCustomerProfileId);
        keyPairQuery_providerCustomerProfileId = NULL;
    }
    if(keyQuery_providerPaymentProfileId){
        free(keyQuery_providerPaymentProfileId);
        keyQuery_providerPaymentProfileId = NULL;
    }
    if(valueQuery_providerPaymentProfileId){
        free(valueQuery_providerPaymentProfileId);
        valueQuery_providerPaymentProfileId = NULL;
    }
    if(keyPairQuery_providerPaymentProfileId){
        keyValuePair_free(keyPairQuery_providerPaymentProfileId);
        keyPairQuery_providerPaymentProfileId = NULL;
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

// Create Payment Method
//
// Add a new method of payment.
//
payment_types_response_t*
BillingInfoAPI_createPaymentMethod(apiClient_t *apiClient, double version, long accountId, char *accountName, char *firstName, char *lastName, char *address, char *city, char *state, char *postalCode, char *country, char *phone, char *creditCardNumber, char *expirationDate, char *ccv, char *accountNumber, char *bankName, char *routingNumber, char *paymentMethodNickname, char *taxId, int *defaultPaymentMethod, char *authToken, char *provider, char *providerCustomerProfileId, char *providerPaymentProfileId, char *metaData, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/billing/create");



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
    char *keyQuery_accountName = NULL;
    char * valueQuery_accountName = NULL;
    keyValuePair_t *keyPairQuery_accountName = 0;
    if (accountName)
    {
        keyQuery_accountName = strdup("accountName");
        valueQuery_accountName = strdup((accountName));
        keyPairQuery_accountName = keyValuePair_create(keyQuery_accountName, valueQuery_accountName);
        list_addElement(localVarQueryParameters,keyPairQuery_accountName);
    }

    // query parameters
    char *keyQuery_firstName = NULL;
    char * valueQuery_firstName = NULL;
    keyValuePair_t *keyPairQuery_firstName = 0;
    if (firstName)
    {
        keyQuery_firstName = strdup("firstName");
        valueQuery_firstName = strdup((firstName));
        keyPairQuery_firstName = keyValuePair_create(keyQuery_firstName, valueQuery_firstName);
        list_addElement(localVarQueryParameters,keyPairQuery_firstName);
    }

    // query parameters
    char *keyQuery_lastName = NULL;
    char * valueQuery_lastName = NULL;
    keyValuePair_t *keyPairQuery_lastName = 0;
    if (lastName)
    {
        keyQuery_lastName = strdup("lastName");
        valueQuery_lastName = strdup((lastName));
        keyPairQuery_lastName = keyValuePair_create(keyQuery_lastName, valueQuery_lastName);
        list_addElement(localVarQueryParameters,keyPairQuery_lastName);
    }

    // query parameters
    char *keyQuery_address = NULL;
    char * valueQuery_address = NULL;
    keyValuePair_t *keyPairQuery_address = 0;
    if (address)
    {
        keyQuery_address = strdup("address");
        valueQuery_address = strdup((address));
        keyPairQuery_address = keyValuePair_create(keyQuery_address, valueQuery_address);
        list_addElement(localVarQueryParameters,keyPairQuery_address);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_postalCode = NULL;
    char * valueQuery_postalCode = NULL;
    keyValuePair_t *keyPairQuery_postalCode = 0;
    if (postalCode)
    {
        keyQuery_postalCode = strdup("postalCode");
        valueQuery_postalCode = strdup((postalCode));
        keyPairQuery_postalCode = keyValuePair_create(keyQuery_postalCode, valueQuery_postalCode);
        list_addElement(localVarQueryParameters,keyPairQuery_postalCode);
    }

    // query parameters
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
    }

    // query parameters
    char *keyQuery_phone = NULL;
    char * valueQuery_phone = NULL;
    keyValuePair_t *keyPairQuery_phone = 0;
    if (phone)
    {
        keyQuery_phone = strdup("phone");
        valueQuery_phone = strdup((phone));
        keyPairQuery_phone = keyValuePair_create(keyQuery_phone, valueQuery_phone);
        list_addElement(localVarQueryParameters,keyPairQuery_phone);
    }

    // query parameters
    char *keyQuery_creditCardNumber = NULL;
    char * valueQuery_creditCardNumber = NULL;
    keyValuePair_t *keyPairQuery_creditCardNumber = 0;
    if (creditCardNumber)
    {
        keyQuery_creditCardNumber = strdup("creditCardNumber");
        valueQuery_creditCardNumber = strdup((creditCardNumber));
        keyPairQuery_creditCardNumber = keyValuePair_create(keyQuery_creditCardNumber, valueQuery_creditCardNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_creditCardNumber);
    }

    // query parameters
    char *keyQuery_expirationDate = NULL;
    char * valueQuery_expirationDate = NULL;
    keyValuePair_t *keyPairQuery_expirationDate = 0;
    if (expirationDate)
    {
        keyQuery_expirationDate = strdup("expirationDate");
        valueQuery_expirationDate = strdup((expirationDate));
        keyPairQuery_expirationDate = keyValuePair_create(keyQuery_expirationDate, valueQuery_expirationDate);
        list_addElement(localVarQueryParameters,keyPairQuery_expirationDate);
    }

    // query parameters
    char *keyQuery_ccv = NULL;
    char * valueQuery_ccv = NULL;
    keyValuePair_t *keyPairQuery_ccv = 0;
    if (ccv)
    {
        keyQuery_ccv = strdup("ccv");
        valueQuery_ccv = strdup((ccv));
        keyPairQuery_ccv = keyValuePair_create(keyQuery_ccv, valueQuery_ccv);
        list_addElement(localVarQueryParameters,keyPairQuery_ccv);
    }

    // query parameters
    char *keyQuery_accountNumber = NULL;
    char * valueQuery_accountNumber = NULL;
    keyValuePair_t *keyPairQuery_accountNumber = 0;
    if (accountNumber)
    {
        keyQuery_accountNumber = strdup("accountNumber");
        valueQuery_accountNumber = strdup((accountNumber));
        keyPairQuery_accountNumber = keyValuePair_create(keyQuery_accountNumber, valueQuery_accountNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_accountNumber);
    }

    // query parameters
    char *keyQuery_bankName = NULL;
    char * valueQuery_bankName = NULL;
    keyValuePair_t *keyPairQuery_bankName = 0;
    if (bankName)
    {
        keyQuery_bankName = strdup("bankName");
        valueQuery_bankName = strdup((bankName));
        keyPairQuery_bankName = keyValuePair_create(keyQuery_bankName, valueQuery_bankName);
        list_addElement(localVarQueryParameters,keyPairQuery_bankName);
    }

    // query parameters
    char *keyQuery_routingNumber = NULL;
    char * valueQuery_routingNumber = NULL;
    keyValuePair_t *keyPairQuery_routingNumber = 0;
    if (routingNumber)
    {
        keyQuery_routingNumber = strdup("routingNumber");
        valueQuery_routingNumber = strdup((routingNumber));
        keyPairQuery_routingNumber = keyValuePair_create(keyQuery_routingNumber, valueQuery_routingNumber);
        list_addElement(localVarQueryParameters,keyPairQuery_routingNumber);
    }

    // query parameters
    char *keyQuery_paymentMethodNickname = NULL;
    char * valueQuery_paymentMethodNickname = NULL;
    keyValuePair_t *keyPairQuery_paymentMethodNickname = 0;
    if (paymentMethodNickname)
    {
        keyQuery_paymentMethodNickname = strdup("paymentMethodNickname");
        valueQuery_paymentMethodNickname = strdup((paymentMethodNickname));
        keyPairQuery_paymentMethodNickname = keyValuePair_create(keyQuery_paymentMethodNickname, valueQuery_paymentMethodNickname);
        list_addElement(localVarQueryParameters,keyPairQuery_paymentMethodNickname);
    }

    // query parameters
    char *keyQuery_taxId = NULL;
    char * valueQuery_taxId = NULL;
    keyValuePair_t *keyPairQuery_taxId = 0;
    if (taxId)
    {
        keyQuery_taxId = strdup("taxId");
        valueQuery_taxId = strdup((taxId));
        keyPairQuery_taxId = keyValuePair_create(keyQuery_taxId, valueQuery_taxId);
        list_addElement(localVarQueryParameters,keyPairQuery_taxId);
    }

    // query parameters
    char *keyQuery_defaultPaymentMethod = NULL;
    char * valueQuery_defaultPaymentMethod = NULL;
    keyValuePair_t *keyPairQuery_defaultPaymentMethod = 0;
    if (defaultPaymentMethod)
    {
        keyQuery_defaultPaymentMethod = strdup("defaultPaymentMethod");
        valueQuery_defaultPaymentMethod = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_defaultPaymentMethod, MAX_NUMBER_LENGTH, "%d", *defaultPaymentMethod);
        keyPairQuery_defaultPaymentMethod = keyValuePair_create(keyQuery_defaultPaymentMethod, valueQuery_defaultPaymentMethod);
        list_addElement(localVarQueryParameters,keyPairQuery_defaultPaymentMethod);
    }

    // query parameters
    char *keyQuery_authToken = NULL;
    char * valueQuery_authToken = NULL;
    keyValuePair_t *keyPairQuery_authToken = 0;
    if (authToken)
    {
        keyQuery_authToken = strdup("authToken");
        valueQuery_authToken = strdup((authToken));
        keyPairQuery_authToken = keyValuePair_create(keyQuery_authToken, valueQuery_authToken);
        list_addElement(localVarQueryParameters,keyPairQuery_authToken);
    }

    // query parameters
    char *keyQuery_provider = NULL;
    char * valueQuery_provider = NULL;
    keyValuePair_t *keyPairQuery_provider = 0;
    if (provider)
    {
        keyQuery_provider = strdup("provider");
        valueQuery_provider = strdup((provider));
        keyPairQuery_provider = keyValuePair_create(keyQuery_provider, valueQuery_provider);
        list_addElement(localVarQueryParameters,keyPairQuery_provider);
    }

    // query parameters
    char *keyQuery_providerCustomerProfileId = NULL;
    char * valueQuery_providerCustomerProfileId = NULL;
    keyValuePair_t *keyPairQuery_providerCustomerProfileId = 0;
    if (providerCustomerProfileId)
    {
        keyQuery_providerCustomerProfileId = strdup("providerCustomerProfileId");
        valueQuery_providerCustomerProfileId = strdup((providerCustomerProfileId));
        keyPairQuery_providerCustomerProfileId = keyValuePair_create(keyQuery_providerCustomerProfileId, valueQuery_providerCustomerProfileId);
        list_addElement(localVarQueryParameters,keyPairQuery_providerCustomerProfileId);
    }

    // query parameters
    char *keyQuery_providerPaymentProfileId = NULL;
    char * valueQuery_providerPaymentProfileId = NULL;
    keyValuePair_t *keyPairQuery_providerPaymentProfileId = 0;
    if (providerPaymentProfileId)
    {
        keyQuery_providerPaymentProfileId = strdup("providerPaymentProfileId");
        valueQuery_providerPaymentProfileId = strdup((providerPaymentProfileId));
        keyPairQuery_providerPaymentProfileId = keyValuePair_create(keyQuery_providerPaymentProfileId, valueQuery_providerPaymentProfileId);
        list_addElement(localVarQueryParameters,keyPairQuery_providerPaymentProfileId);
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
    //nonprimitive not container
    payment_types_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillingInfoAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = payment_types_response_parseFromJSON(BillingInfoAPIlocalVarJSON);
        cJSON_Delete(BillingInfoAPIlocalVarJSON);
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
    if(keyQuery_accountName){
        free(keyQuery_accountName);
        keyQuery_accountName = NULL;
    }
    if(valueQuery_accountName){
        free(valueQuery_accountName);
        valueQuery_accountName = NULL;
    }
    if(keyPairQuery_accountName){
        keyValuePair_free(keyPairQuery_accountName);
        keyPairQuery_accountName = NULL;
    }
    if(keyQuery_firstName){
        free(keyQuery_firstName);
        keyQuery_firstName = NULL;
    }
    if(valueQuery_firstName){
        free(valueQuery_firstName);
        valueQuery_firstName = NULL;
    }
    if(keyPairQuery_firstName){
        keyValuePair_free(keyPairQuery_firstName);
        keyPairQuery_firstName = NULL;
    }
    if(keyQuery_lastName){
        free(keyQuery_lastName);
        keyQuery_lastName = NULL;
    }
    if(valueQuery_lastName){
        free(valueQuery_lastName);
        valueQuery_lastName = NULL;
    }
    if(keyPairQuery_lastName){
        keyValuePair_free(keyPairQuery_lastName);
        keyPairQuery_lastName = NULL;
    }
    if(keyQuery_address){
        free(keyQuery_address);
        keyQuery_address = NULL;
    }
    if(valueQuery_address){
        free(valueQuery_address);
        valueQuery_address = NULL;
    }
    if(keyPairQuery_address){
        keyValuePair_free(keyPairQuery_address);
        keyPairQuery_address = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_postalCode){
        free(keyQuery_postalCode);
        keyQuery_postalCode = NULL;
    }
    if(valueQuery_postalCode){
        free(valueQuery_postalCode);
        valueQuery_postalCode = NULL;
    }
    if(keyPairQuery_postalCode){
        keyValuePair_free(keyPairQuery_postalCode);
        keyPairQuery_postalCode = NULL;
    }
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
    }
    if(keyQuery_phone){
        free(keyQuery_phone);
        keyQuery_phone = NULL;
    }
    if(valueQuery_phone){
        free(valueQuery_phone);
        valueQuery_phone = NULL;
    }
    if(keyPairQuery_phone){
        keyValuePair_free(keyPairQuery_phone);
        keyPairQuery_phone = NULL;
    }
    if(keyQuery_creditCardNumber){
        free(keyQuery_creditCardNumber);
        keyQuery_creditCardNumber = NULL;
    }
    if(valueQuery_creditCardNumber){
        free(valueQuery_creditCardNumber);
        valueQuery_creditCardNumber = NULL;
    }
    if(keyPairQuery_creditCardNumber){
        keyValuePair_free(keyPairQuery_creditCardNumber);
        keyPairQuery_creditCardNumber = NULL;
    }
    if(keyQuery_expirationDate){
        free(keyQuery_expirationDate);
        keyQuery_expirationDate = NULL;
    }
    if(valueQuery_expirationDate){
        free(valueQuery_expirationDate);
        valueQuery_expirationDate = NULL;
    }
    if(keyPairQuery_expirationDate){
        keyValuePair_free(keyPairQuery_expirationDate);
        keyPairQuery_expirationDate = NULL;
    }
    if(keyQuery_ccv){
        free(keyQuery_ccv);
        keyQuery_ccv = NULL;
    }
    if(valueQuery_ccv){
        free(valueQuery_ccv);
        valueQuery_ccv = NULL;
    }
    if(keyPairQuery_ccv){
        keyValuePair_free(keyPairQuery_ccv);
        keyPairQuery_ccv = NULL;
    }
    if(keyQuery_accountNumber){
        free(keyQuery_accountNumber);
        keyQuery_accountNumber = NULL;
    }
    if(valueQuery_accountNumber){
        free(valueQuery_accountNumber);
        valueQuery_accountNumber = NULL;
    }
    if(keyPairQuery_accountNumber){
        keyValuePair_free(keyPairQuery_accountNumber);
        keyPairQuery_accountNumber = NULL;
    }
    if(keyQuery_bankName){
        free(keyQuery_bankName);
        keyQuery_bankName = NULL;
    }
    if(valueQuery_bankName){
        free(valueQuery_bankName);
        valueQuery_bankName = NULL;
    }
    if(keyPairQuery_bankName){
        keyValuePair_free(keyPairQuery_bankName);
        keyPairQuery_bankName = NULL;
    }
    if(keyQuery_routingNumber){
        free(keyQuery_routingNumber);
        keyQuery_routingNumber = NULL;
    }
    if(valueQuery_routingNumber){
        free(valueQuery_routingNumber);
        valueQuery_routingNumber = NULL;
    }
    if(keyPairQuery_routingNumber){
        keyValuePair_free(keyPairQuery_routingNumber);
        keyPairQuery_routingNumber = NULL;
    }
    if(keyQuery_paymentMethodNickname){
        free(keyQuery_paymentMethodNickname);
        keyQuery_paymentMethodNickname = NULL;
    }
    if(valueQuery_paymentMethodNickname){
        free(valueQuery_paymentMethodNickname);
        valueQuery_paymentMethodNickname = NULL;
    }
    if(keyPairQuery_paymentMethodNickname){
        keyValuePair_free(keyPairQuery_paymentMethodNickname);
        keyPairQuery_paymentMethodNickname = NULL;
    }
    if(keyQuery_taxId){
        free(keyQuery_taxId);
        keyQuery_taxId = NULL;
    }
    if(valueQuery_taxId){
        free(valueQuery_taxId);
        valueQuery_taxId = NULL;
    }
    if(keyPairQuery_taxId){
        keyValuePair_free(keyPairQuery_taxId);
        keyPairQuery_taxId = NULL;
    }
    if(keyQuery_defaultPaymentMethod){
        free(keyQuery_defaultPaymentMethod);
        keyQuery_defaultPaymentMethod = NULL;
    }
    if(valueQuery_defaultPaymentMethod){
        free(valueQuery_defaultPaymentMethod);
        valueQuery_defaultPaymentMethod = NULL;
    }
    if(keyPairQuery_defaultPaymentMethod){
        keyValuePair_free(keyPairQuery_defaultPaymentMethod);
        keyPairQuery_defaultPaymentMethod = NULL;
    }
    if(keyQuery_authToken){
        free(keyQuery_authToken);
        keyQuery_authToken = NULL;
    }
    if(valueQuery_authToken){
        free(valueQuery_authToken);
        valueQuery_authToken = NULL;
    }
    if(keyPairQuery_authToken){
        keyValuePair_free(keyPairQuery_authToken);
        keyPairQuery_authToken = NULL;
    }
    if(keyQuery_provider){
        free(keyQuery_provider);
        keyQuery_provider = NULL;
    }
    if(valueQuery_provider){
        free(valueQuery_provider);
        valueQuery_provider = NULL;
    }
    if(keyPairQuery_provider){
        keyValuePair_free(keyPairQuery_provider);
        keyPairQuery_provider = NULL;
    }
    if(keyQuery_providerCustomerProfileId){
        free(keyQuery_providerCustomerProfileId);
        keyQuery_providerCustomerProfileId = NULL;
    }
    if(valueQuery_providerCustomerProfileId){
        free(valueQuery_providerCustomerProfileId);
        valueQuery_providerCustomerProfileId = NULL;
    }
    if(keyPairQuery_providerCustomerProfileId){
        keyValuePair_free(keyPairQuery_providerCustomerProfileId);
        keyPairQuery_providerCustomerProfileId = NULL;
    }
    if(keyQuery_providerPaymentProfileId){
        free(keyQuery_providerPaymentProfileId);
        keyQuery_providerPaymentProfileId = NULL;
    }
    if(valueQuery_providerPaymentProfileId){
        free(valueQuery_providerPaymentProfileId);
        valueQuery_providerPaymentProfileId = NULL;
    }
    if(keyPairQuery_providerPaymentProfileId){
        keyValuePair_free(keyPairQuery_providerPaymentProfileId);
        keyPairQuery_providerPaymentProfileId = NULL;
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

// Create Smart Contract
//
// Adds a smart contract.
//
payment_types_response_t*
BillingInfoAPI_createSmartContract(apiClient_t *apiClient, double version, long accountId, char *tokenName, char *tokenSymbol, long paymentMethodId)
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
    char *localVarPath = strdup("/api/{version}/billing/crypto/transfer");



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
    char *keyQuery_tokenName = NULL;
    char * valueQuery_tokenName = NULL;
    keyValuePair_t *keyPairQuery_tokenName = 0;
    if (tokenName)
    {
        keyQuery_tokenName = strdup("tokenName");
        valueQuery_tokenName = strdup((tokenName));
        keyPairQuery_tokenName = keyValuePair_create(keyQuery_tokenName, valueQuery_tokenName);
        list_addElement(localVarQueryParameters,keyPairQuery_tokenName);
    }

    // query parameters
    char *keyQuery_tokenSymbol = NULL;
    char * valueQuery_tokenSymbol = NULL;
    keyValuePair_t *keyPairQuery_tokenSymbol = 0;
    if (tokenSymbol)
    {
        keyQuery_tokenSymbol = strdup("tokenSymbol");
        valueQuery_tokenSymbol = strdup((tokenSymbol));
        keyPairQuery_tokenSymbol = keyValuePair_create(keyQuery_tokenSymbol, valueQuery_tokenSymbol);
        list_addElement(localVarQueryParameters,keyPairQuery_tokenSymbol);
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
    payment_types_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillingInfoAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = payment_types_response_parseFromJSON(BillingInfoAPIlocalVarJSON);
        cJSON_Delete(BillingInfoAPIlocalVarJSON);
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
    if(keyQuery_paymentMethodId){
        free(keyQuery_paymentMethodId);
        keyQuery_paymentMethodId = NULL;
    }
    if(keyPairQuery_paymentMethodId){
        keyValuePair_free(keyPairQuery_paymentMethodId);
        keyPairQuery_paymentMethodId = NULL;
    }
    if(keyQuery_tokenName){
        free(keyQuery_tokenName);
        keyQuery_tokenName = NULL;
    }
    if(valueQuery_tokenName){
        free(valueQuery_tokenName);
        valueQuery_tokenName = NULL;
    }
    if(keyPairQuery_tokenName){
        keyValuePair_free(keyPairQuery_tokenName);
        keyPairQuery_tokenName = NULL;
    }
    if(keyQuery_tokenSymbol){
        free(keyQuery_tokenSymbol);
        keyQuery_tokenSymbol = NULL;
    }
    if(valueQuery_tokenSymbol){
        free(valueQuery_tokenSymbol);
        valueQuery_tokenSymbol = NULL;
    }
    if(keyPairQuery_tokenSymbol){
        keyValuePair_free(keyPairQuery_tokenSymbol);
        keyPairQuery_tokenSymbol = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Crypto Balances
//
// Get the cypto balance details for a user
//
payment_types_response_t*
BillingInfoAPI_getCryptoBalance(apiClient_t *apiClient, double version, long accountId, long ownerAccountId, long paymentMethodId)
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
    char *localVarPath = strdup("/api/{version}/billing/crypto/get");



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
    char *keyQuery_ownerAccountId = NULL;
    char * valueQuery_ownerAccountId ;
    keyValuePair_t *keyPairQuery_ownerAccountId = 0;
    {
        keyQuery_ownerAccountId = strdup("ownerAccountId");
        valueQuery_ownerAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_ownerAccountId, MAX_NUMBER_LENGTH_LONG, "%d", ownerAccountId);
        keyPairQuery_ownerAccountId = keyValuePair_create(keyQuery_ownerAccountId, valueQuery_ownerAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_ownerAccountId);
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
    payment_types_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillingInfoAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = payment_types_response_parseFromJSON(BillingInfoAPIlocalVarJSON);
        cJSON_Delete(BillingInfoAPIlocalVarJSON);
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
    if(keyQuery_ownerAccountId){
        free(keyQuery_ownerAccountId);
        keyQuery_ownerAccountId = NULL;
    }
    if(keyPairQuery_ownerAccountId){
        keyValuePair_free(keyPairQuery_ownerAccountId);
        keyPairQuery_ownerAccountId = NULL;
    }
    if(keyQuery_paymentMethodId){
        free(keyQuery_paymentMethodId);
        keyQuery_paymentMethodId = NULL;
    }
    if(keyPairQuery_paymentMethodId){
        keyValuePair_free(keyPairQuery_paymentMethodId);
        keyPairQuery_paymentMethodId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Payment Method
//
// Get the details of the user's payment method or their current default method of payment
//
payment_types_response_t*
BillingInfoAPI_getPaymentMethod(apiClient_t *apiClient, double version, long accountId, long paymentMethodId, int *getCurrentBalance)
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
    char *localVarPath = strdup("/api/{version}/billing/get");



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
    char *keyQuery_getCurrentBalance = NULL;
    char * valueQuery_getCurrentBalance = NULL;
    keyValuePair_t *keyPairQuery_getCurrentBalance = 0;
    if (getCurrentBalance)
    {
        keyQuery_getCurrentBalance = strdup("getCurrentBalance");
        valueQuery_getCurrentBalance = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_getCurrentBalance, MAX_NUMBER_LENGTH, "%d", *getCurrentBalance);
        keyPairQuery_getCurrentBalance = keyValuePair_create(keyQuery_getCurrentBalance, valueQuery_getCurrentBalance);
        list_addElement(localVarQueryParameters,keyPairQuery_getCurrentBalance);
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
    payment_types_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillingInfoAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = payment_types_response_parseFromJSON(BillingInfoAPIlocalVarJSON);
        cJSON_Delete(BillingInfoAPIlocalVarJSON);
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
    if(keyQuery_paymentMethodId){
        free(keyQuery_paymentMethodId);
        keyQuery_paymentMethodId = NULL;
    }
    if(keyPairQuery_paymentMethodId){
        keyValuePair_free(keyPairQuery_paymentMethodId);
        keyPairQuery_paymentMethodId = NULL;
    }
    if(keyQuery_getCurrentBalance){
        free(keyQuery_getCurrentBalance);
        keyQuery_getCurrentBalance = NULL;
    }
    if(valueQuery_getCurrentBalance){
        free(valueQuery_getCurrentBalance);
        valueQuery_getCurrentBalance = NULL;
    }
    if(keyPairQuery_getCurrentBalance){
        keyValuePair_free(keyPairQuery_getCurrentBalance);
        keyPairQuery_getCurrentBalance = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Payment Methods
//
// Search the payment methods of an account
//
payment_types_response_t*
BillingInfoAPI_searchPaymentMethod(apiClient_t *apiClient, double version, long accountId, char *provider, char *type, char *keyword, char *sortField, int *descending, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/billing/search");



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
    char *keyQuery_provider = NULL;
    char * valueQuery_provider = NULL;
    keyValuePair_t *keyPairQuery_provider = 0;
    if (provider)
    {
        keyQuery_provider = strdup("provider");
        valueQuery_provider = strdup((provider));
        keyPairQuery_provider = keyValuePair_create(keyQuery_provider, valueQuery_provider);
        list_addElement(localVarQueryParameters,keyPairQuery_provider);
    }

    // query parameters
    char *keyQuery_type = NULL;
    char * valueQuery_type = NULL;
    keyValuePair_t *keyPairQuery_type = 0;
    if (type)
    {
        keyQuery_type = strdup("type");
        valueQuery_type = strdup((type));
        keyPairQuery_type = keyValuePair_create(keyQuery_type, valueQuery_type);
        list_addElement(localVarQueryParameters,keyPairQuery_type);
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
    //nonprimitive not container
    payment_types_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *BillingInfoAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = payment_types_response_parseFromJSON(BillingInfoAPIlocalVarJSON);
        cJSON_Delete(BillingInfoAPIlocalVarJSON);
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
    if(keyQuery_provider){
        free(keyQuery_provider);
        keyQuery_provider = NULL;
    }
    if(valueQuery_provider){
        free(valueQuery_provider);
        valueQuery_provider = NULL;
    }
    if(keyPairQuery_provider){
        keyValuePair_free(keyPairQuery_provider);
        keyPairQuery_provider = NULL;
    }
    if(keyQuery_type){
        free(keyQuery_type);
        keyQuery_type = NULL;
    }
    if(valueQuery_type){
        free(valueQuery_type);
        valueQuery_type = NULL;
    }
    if(keyPairQuery_type){
        keyValuePair_free(keyPairQuery_type);
        keyPairQuery_type = NULL;
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

