#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/payment_types_response.h"


// Update Payment Method
//
// Update a method of payment. If the paymentMethodId is not passed in then will update their default payment method.
//
payment_types_response_t*
BillingInfoAPI_addPaymentMethod(apiClient_t *apiClient, long accountId, long paymentMethodId, char *accountName, char *firstName, char *lastName, char *address, char *city, char *state, char *postalCode, char *country, char *phone, char *creditCardNumber, char *expirationDate, char *ccv, char *accountNumber, char *bankName, char *routingNumber, int *defaultPaymentMethod, char *paymentMethodNickname, char *taxId, char *providerCustomerProfileId, char *providerPaymentProfileId, char *metaData);


// Create Payment Method
//
// Add a new method of payment.
//
payment_types_response_t*
BillingInfoAPI_createPaymentMethod(apiClient_t *apiClient, long accountId, char *accountName, char *firstName, char *lastName, char *address, char *city, char *state, char *postalCode, char *country, char *phone, char *creditCardNumber, char *expirationDate, char *ccv, char *accountNumber, char *bankName, char *routingNumber, char *paymentMethodNickname, char *taxId, int *defaultPaymentMethod, char *authToken, char *provider, char *providerCustomerProfileId, char *providerPaymentProfileId, char *metaData, char *appKey);


// Create Smart Contract
//
// Adds a smart contract.
//
payment_types_response_t*
BillingInfoAPI_createSmartContract(apiClient_t *apiClient, long accountId, char *tokenName, char *tokenSymbol, long paymentMethodId);


// Get Crypto Balances
//
// Get the cypto balance details for a user
//
payment_types_response_t*
BillingInfoAPI_getCryptoBalance(apiClient_t *apiClient, long accountId, long ownerAccountId, long paymentMethodId);


// Get Payment Method
//
// Get the details of the user's payment method or their current default method of payment
//
payment_types_response_t*
BillingInfoAPI_getPaymentMethod(apiClient_t *apiClient, long accountId, long paymentMethodId, int *getCurrentBalance);


// Search Payment Methods
//
// Search the payment methods of an account
//
payment_types_response_t*
BillingInfoAPI_searchPaymentMethod(apiClient_t *apiClient, long accountId, char *provider, char *type, char *keyword, char *sortField, int *descending, int *start, int *limit);


