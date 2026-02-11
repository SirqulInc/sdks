#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "StripeAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Stripe Checkout Session
//
// Create a Stripe checkout session
//
sirqul_response_t*
StripeAPI_createStripeCheckoutSession(apiClient_t *apiClient, char *appKey, char *stripeParameters)
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
    char *localVarPath = strdup("/stripe/checkout/session/create");





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
    char *keyQuery_stripeParameters = NULL;
    char * valueQuery_stripeParameters = NULL;
    keyValuePair_t *keyPairQuery_stripeParameters = 0;
    if (stripeParameters)
    {
        keyQuery_stripeParameters = strdup("stripeParameters");
        valueQuery_stripeParameters = strdup((stripeParameters));
        keyPairQuery_stripeParameters = keyValuePair_create(keyQuery_stripeParameters, valueQuery_stripeParameters);
        list_addElement(localVarQueryParameters,keyPairQuery_stripeParameters);
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
        cJSON *StripeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(StripeAPIlocalVarJSON);
        cJSON_Delete(StripeAPIlocalVarJSON);
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
    if(keyQuery_stripeParameters){
        free(keyQuery_stripeParameters);
        keyQuery_stripeParameters = NULL;
    }
    if(valueQuery_stripeParameters){
        free(valueQuery_stripeParameters);
        valueQuery_stripeParameters = NULL;
    }
    if(keyPairQuery_stripeParameters){
        keyValuePair_free(keyPairQuery_stripeParameters);
        keyPairQuery_stripeParameters = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

