#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "TwilioAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Buy Offer by SMS
//
// Recieve an SMS payload from Twillio to purchase an offer.
//
twi_ml_response_t*
TwilioAPI_smsBuyOffer(apiClient_t *apiClient, char *appKey, char *Body, char *From, char *currencyType)
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
    char *localVarPath = strdup("/sms/buyoffer/{appKey}");

    if(!appKey)
        goto end;


    // Path Params
    long sizeOfPathParams_appKey = strlen(appKey)+3 + sizeof("{ appKey }") - 1;
    if(appKey == NULL) {
        goto end;
    }
    char* localVarToReplace_appKey = malloc(sizeOfPathParams_appKey);
    sprintf(localVarToReplace_appKey, "{%s}", "appKey");

    localVarPath = strReplace(localVarPath, localVarToReplace_appKey, appKey);



    // query parameters
    char *keyQuery_Body = NULL;
    char * valueQuery_Body = NULL;
    keyValuePair_t *keyPairQuery_Body = 0;
    if (Body)
    {
        keyQuery_Body = strdup("Body");
        valueQuery_Body = strdup((Body));
        keyPairQuery_Body = keyValuePair_create(keyQuery_Body, valueQuery_Body);
        list_addElement(localVarQueryParameters,keyPairQuery_Body);
    }

    // query parameters
    char *keyQuery_From = NULL;
    char * valueQuery_From = NULL;
    keyValuePair_t *keyPairQuery_From = 0;
    if (From)
    {
        keyQuery_From = strdup("From");
        valueQuery_From = strdup((From));
        keyPairQuery_From = keyValuePair_create(keyQuery_From, valueQuery_From);
        list_addElement(localVarQueryParameters,keyPairQuery_From);
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
    list_addElement(localVarHeaderType,"application/xml"); //produces
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
    twi_ml_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *TwilioAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = twi_ml_response_parseFromJSON(TwilioAPIlocalVarJSON);
        cJSON_Delete(TwilioAPIlocalVarJSON);
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
    free(localVarToReplace_appKey);
    if(keyQuery_Body){
        free(keyQuery_Body);
        keyQuery_Body = NULL;
    }
    if(valueQuery_Body){
        free(valueQuery_Body);
        valueQuery_Body = NULL;
    }
    if(keyPairQuery_Body){
        keyValuePair_free(keyPairQuery_Body);
        keyPairQuery_Body = NULL;
    }
    if(keyQuery_From){
        free(keyQuery_From);
        keyQuery_From = NULL;
    }
    if(valueQuery_From){
        free(valueQuery_From);
        valueQuery_From = NULL;
    }
    if(keyPairQuery_From){
        keyValuePair_free(keyPairQuery_From);
        keyPairQuery_From = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

