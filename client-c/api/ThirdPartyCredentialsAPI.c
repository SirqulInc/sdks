#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "ThirdPartyCredentialsAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum SORTFIELD for ThirdPartyCredentialsAPI_searchNetworks

static char* searchNetworks_SORTFIELD_ToString(sirqul_iot_platform_searchNetworks_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "NAME", "DESCRIPTION" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchNetworks_sortField_e searchNetworks_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "CREATED", "UPDATED", "DELETED", "SEARCH_TAGS", "ACTIVE", "BILLABLE_ENTITY_ID", "BILLABLE_ENTITY_NAME", "RESPONSIBLE_DISPLAY", "NAME", "DESCRIPTION" };
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
// Function searchNetworks_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchNetworks_SORTFIELD_convertToJSON(sirqul_iot_platform_searchNetworks_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchNetworks_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchNetworks_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchNetworks_sortField_e searchNetworks_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchNetworks_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchNetworks_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/


// Create Credential
//
// This endpoint creates a third-party login for a Sirqul account. A third party login is a way for external systems (Third Party Networks) to link their own user accounts with a Sirqul account.   The thirdPartyId parameter is used to determine if the user already exists in Sirqul or not. This parameter needs to be unique for each user in the Third Party Network (identified by the networkUID parameter). Note that subsequent calls will update the user's third-party login credentials for the user with the same thirdPartyId and networkUID combination.    The thirdPartyToken parameter acts as a shared secret and used by client applications to log users into Sirqul without providing a Sirqul username and password. 
//
profile_response_t*
ThirdPartyCredentialsAPI_createCredential(apiClient_t *apiClient, double version, char *thirdPartyId, char *thirdPartyToken, char *networkUID, char *appKey, long accountId, char *deviceId, char *sessionId, char *thirdPartyName, char *emailAddress, int *signinOnlyMode, char *responseFilters, double latitude, double longitude, char *metaData, char *thirdPartyRefreshToken, char *audienceIdsToAdd, char *audienceIdsToRemove)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/credential/create");



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
    char *keyQuery_sessionId = NULL;
    char * valueQuery_sessionId = NULL;
    keyValuePair_t *keyPairQuery_sessionId = 0;
    if (sessionId)
    {
        keyQuery_sessionId = strdup("sessionId");
        valueQuery_sessionId = strdup((sessionId));
        keyPairQuery_sessionId = keyValuePair_create(keyQuery_sessionId, valueQuery_sessionId);
        list_addElement(localVarQueryParameters,keyPairQuery_sessionId);
    }

    // query parameters
    char *keyQuery_thirdPartyId = NULL;
    char * valueQuery_thirdPartyId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyId = 0;
    if (thirdPartyId)
    {
        keyQuery_thirdPartyId = strdup("thirdPartyId");
        valueQuery_thirdPartyId = strdup((thirdPartyId));
        keyPairQuery_thirdPartyId = keyValuePair_create(keyQuery_thirdPartyId, valueQuery_thirdPartyId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyId);
    }

    // query parameters
    char *keyQuery_thirdPartyName = NULL;
    char * valueQuery_thirdPartyName = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyName = 0;
    if (thirdPartyName)
    {
        keyQuery_thirdPartyName = strdup("thirdPartyName");
        valueQuery_thirdPartyName = strdup((thirdPartyName));
        keyPairQuery_thirdPartyName = keyValuePair_create(keyQuery_thirdPartyName, valueQuery_thirdPartyName);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyName);
    }

    // query parameters
    char *keyQuery_thirdPartyToken = NULL;
    char * valueQuery_thirdPartyToken = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyToken = 0;
    if (thirdPartyToken)
    {
        keyQuery_thirdPartyToken = strdup("thirdPartyToken");
        valueQuery_thirdPartyToken = strdup((thirdPartyToken));
        keyPairQuery_thirdPartyToken = keyValuePair_create(keyQuery_thirdPartyToken, valueQuery_thirdPartyToken);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyToken);
    }

    // query parameters
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
    char *keyQuery_emailAddress = NULL;
    char * valueQuery_emailAddress = NULL;
    keyValuePair_t *keyPairQuery_emailAddress = 0;
    if (emailAddress)
    {
        keyQuery_emailAddress = strdup("emailAddress");
        valueQuery_emailAddress = strdup((emailAddress));
        keyPairQuery_emailAddress = keyValuePair_create(keyQuery_emailAddress, valueQuery_emailAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_emailAddress);
    }

    // query parameters
    char *keyQuery_signinOnlyMode = NULL;
    char * valueQuery_signinOnlyMode = NULL;
    keyValuePair_t *keyPairQuery_signinOnlyMode = 0;
    if (signinOnlyMode)
    {
        keyQuery_signinOnlyMode = strdup("signinOnlyMode");
        valueQuery_signinOnlyMode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_signinOnlyMode, MAX_NUMBER_LENGTH, "%d", *signinOnlyMode);
        keyPairQuery_signinOnlyMode = keyValuePair_create(keyQuery_signinOnlyMode, valueQuery_signinOnlyMode);
        list_addElement(localVarQueryParameters,keyPairQuery_signinOnlyMode);
    }

    // query parameters
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    char *keyQuery_thirdPartyRefreshToken = NULL;
    char * valueQuery_thirdPartyRefreshToken = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyRefreshToken = 0;
    if (thirdPartyRefreshToken)
    {
        keyQuery_thirdPartyRefreshToken = strdup("thirdPartyRefreshToken");
        valueQuery_thirdPartyRefreshToken = strdup((thirdPartyRefreshToken));
        keyPairQuery_thirdPartyRefreshToken = keyValuePair_create(keyQuery_thirdPartyRefreshToken, valueQuery_thirdPartyRefreshToken);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyRefreshToken);
    }

    // query parameters
    char *keyQuery_audienceIdsToAdd = NULL;
    char * valueQuery_audienceIdsToAdd = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToAdd = 0;
    if (audienceIdsToAdd)
    {
        keyQuery_audienceIdsToAdd = strdup("audienceIdsToAdd");
        valueQuery_audienceIdsToAdd = strdup((audienceIdsToAdd));
        keyPairQuery_audienceIdsToAdd = keyValuePair_create(keyQuery_audienceIdsToAdd, valueQuery_audienceIdsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToAdd);
    }

    // query parameters
    char *keyQuery_audienceIdsToRemove = NULL;
    char * valueQuery_audienceIdsToRemove = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToRemove = 0;
    if (audienceIdsToRemove)
    {
        keyQuery_audienceIdsToRemove = strdup("audienceIdsToRemove");
        valueQuery_audienceIdsToRemove = strdup((audienceIdsToRemove));
        keyPairQuery_audienceIdsToRemove = keyValuePair_create(keyQuery_audienceIdsToRemove, valueQuery_audienceIdsToRemove);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToRemove);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_sessionId){
        free(keyQuery_sessionId);
        keyQuery_sessionId = NULL;
    }
    if(valueQuery_sessionId){
        free(valueQuery_sessionId);
        valueQuery_sessionId = NULL;
    }
    if(keyPairQuery_sessionId){
        keyValuePair_free(keyPairQuery_sessionId);
        keyPairQuery_sessionId = NULL;
    }
    if(keyQuery_thirdPartyId){
        free(keyQuery_thirdPartyId);
        keyQuery_thirdPartyId = NULL;
    }
    if(valueQuery_thirdPartyId){
        free(valueQuery_thirdPartyId);
        valueQuery_thirdPartyId = NULL;
    }
    if(keyPairQuery_thirdPartyId){
        keyValuePair_free(keyPairQuery_thirdPartyId);
        keyPairQuery_thirdPartyId = NULL;
    }
    if(keyQuery_thirdPartyName){
        free(keyQuery_thirdPartyName);
        keyQuery_thirdPartyName = NULL;
    }
    if(valueQuery_thirdPartyName){
        free(valueQuery_thirdPartyName);
        valueQuery_thirdPartyName = NULL;
    }
    if(keyPairQuery_thirdPartyName){
        keyValuePair_free(keyPairQuery_thirdPartyName);
        keyPairQuery_thirdPartyName = NULL;
    }
    if(keyQuery_thirdPartyToken){
        free(keyQuery_thirdPartyToken);
        keyQuery_thirdPartyToken = NULL;
    }
    if(valueQuery_thirdPartyToken){
        free(valueQuery_thirdPartyToken);
        valueQuery_thirdPartyToken = NULL;
    }
    if(keyPairQuery_thirdPartyToken){
        keyValuePair_free(keyPairQuery_thirdPartyToken);
        keyPairQuery_thirdPartyToken = NULL;
    }
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
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
    if(keyQuery_emailAddress){
        free(keyQuery_emailAddress);
        keyQuery_emailAddress = NULL;
    }
    if(valueQuery_emailAddress){
        free(valueQuery_emailAddress);
        valueQuery_emailAddress = NULL;
    }
    if(keyPairQuery_emailAddress){
        keyValuePair_free(keyPairQuery_emailAddress);
        keyPairQuery_emailAddress = NULL;
    }
    if(keyQuery_signinOnlyMode){
        free(keyQuery_signinOnlyMode);
        keyQuery_signinOnlyMode = NULL;
    }
    if(valueQuery_signinOnlyMode){
        free(valueQuery_signinOnlyMode);
        valueQuery_signinOnlyMode = NULL;
    }
    if(keyPairQuery_signinOnlyMode){
        keyValuePair_free(keyPairQuery_signinOnlyMode);
        keyPairQuery_signinOnlyMode = NULL;
    }
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
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
    if(keyQuery_thirdPartyRefreshToken){
        free(keyQuery_thirdPartyRefreshToken);
        keyQuery_thirdPartyRefreshToken = NULL;
    }
    if(valueQuery_thirdPartyRefreshToken){
        free(valueQuery_thirdPartyRefreshToken);
        valueQuery_thirdPartyRefreshToken = NULL;
    }
    if(keyPairQuery_thirdPartyRefreshToken){
        keyValuePair_free(keyPairQuery_thirdPartyRefreshToken);
        keyPairQuery_thirdPartyRefreshToken = NULL;
    }
    if(keyQuery_audienceIdsToAdd){
        free(keyQuery_audienceIdsToAdd);
        keyQuery_audienceIdsToAdd = NULL;
    }
    if(valueQuery_audienceIdsToAdd){
        free(valueQuery_audienceIdsToAdd);
        valueQuery_audienceIdsToAdd = NULL;
    }
    if(keyPairQuery_audienceIdsToAdd){
        keyValuePair_free(keyPairQuery_audienceIdsToAdd);
        keyPairQuery_audienceIdsToAdd = NULL;
    }
    if(keyQuery_audienceIdsToRemove){
        free(keyQuery_audienceIdsToRemove);
        keyQuery_audienceIdsToRemove = NULL;
    }
    if(valueQuery_audienceIdsToRemove){
        free(valueQuery_audienceIdsToRemove);
        valueQuery_audienceIdsToRemove = NULL;
    }
    if(keyPairQuery_audienceIdsToRemove){
        keyValuePair_free(keyPairQuery_audienceIdsToRemove);
        keyPairQuery_audienceIdsToRemove = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Network
//
// Creates a custom third party network.
//
third_party_network_response_t*
ThirdPartyCredentialsAPI_createNetwork(apiClient_t *apiClient, double version, long accountId, char *name, int *enableIntrospection, char *description, char *introspectionMethod, char *introspectionURL, char *introspectionParams, char *requiredRootField, int *enableMFA, int *sizeMFA, int *shelfLifeMFA, char *oauthTokenURL, binary_t* oauthPrivateKey, binary_t* oauthPublicKey, char *oauthClientId, char *oauthSecretKey, char *body)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/network/create");



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
    char *keyQuery_enableIntrospection = NULL;
    char * valueQuery_enableIntrospection = NULL;
    keyValuePair_t *keyPairQuery_enableIntrospection = 0;
    if (enableIntrospection)
    {
        keyQuery_enableIntrospection = strdup("enableIntrospection");
        valueQuery_enableIntrospection = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableIntrospection, MAX_NUMBER_LENGTH, "%d", *enableIntrospection);
        keyPairQuery_enableIntrospection = keyValuePair_create(keyQuery_enableIntrospection, valueQuery_enableIntrospection);
        list_addElement(localVarQueryParameters,keyPairQuery_enableIntrospection);
    }

    // query parameters
    char *keyQuery_introspectionMethod = NULL;
    char * valueQuery_introspectionMethod = NULL;
    keyValuePair_t *keyPairQuery_introspectionMethod = 0;
    if (introspectionMethod)
    {
        keyQuery_introspectionMethod = strdup("introspectionMethod");
        valueQuery_introspectionMethod = strdup((introspectionMethod));
        keyPairQuery_introspectionMethod = keyValuePair_create(keyQuery_introspectionMethod, valueQuery_introspectionMethod);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionMethod);
    }

    // query parameters
    char *keyQuery_introspectionURL = NULL;
    char * valueQuery_introspectionURL = NULL;
    keyValuePair_t *keyPairQuery_introspectionURL = 0;
    if (introspectionURL)
    {
        keyQuery_introspectionURL = strdup("introspectionURL");
        valueQuery_introspectionURL = strdup((introspectionURL));
        keyPairQuery_introspectionURL = keyValuePair_create(keyQuery_introspectionURL, valueQuery_introspectionURL);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionURL);
    }

    // query parameters
    char *keyQuery_introspectionParams = NULL;
    char * valueQuery_introspectionParams = NULL;
    keyValuePair_t *keyPairQuery_introspectionParams = 0;
    if (introspectionParams)
    {
        keyQuery_introspectionParams = strdup("introspectionParams");
        valueQuery_introspectionParams = strdup((introspectionParams));
        keyPairQuery_introspectionParams = keyValuePair_create(keyQuery_introspectionParams, valueQuery_introspectionParams);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionParams);
    }

    // query parameters
    char *keyQuery_requiredRootField = NULL;
    char * valueQuery_requiredRootField = NULL;
    keyValuePair_t *keyPairQuery_requiredRootField = 0;
    if (requiredRootField)
    {
        keyQuery_requiredRootField = strdup("requiredRootField");
        valueQuery_requiredRootField = strdup((requiredRootField));
        keyPairQuery_requiredRootField = keyValuePair_create(keyQuery_requiredRootField, valueQuery_requiredRootField);
        list_addElement(localVarQueryParameters,keyPairQuery_requiredRootField);
    }

    // query parameters
    char *keyQuery_enableMFA = NULL;
    char * valueQuery_enableMFA = NULL;
    keyValuePair_t *keyPairQuery_enableMFA = 0;
    if (enableMFA)
    {
        keyQuery_enableMFA = strdup("enableMFA");
        valueQuery_enableMFA = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableMFA, MAX_NUMBER_LENGTH, "%d", *enableMFA);
        keyPairQuery_enableMFA = keyValuePair_create(keyQuery_enableMFA, valueQuery_enableMFA);
        list_addElement(localVarQueryParameters,keyPairQuery_enableMFA);
    }

    // query parameters
    char *keyQuery_sizeMFA = NULL;
    char * valueQuery_sizeMFA = NULL;
    keyValuePair_t *keyPairQuery_sizeMFA = 0;
    if (sizeMFA)
    {
        keyQuery_sizeMFA = strdup("sizeMFA");
        valueQuery_sizeMFA = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sizeMFA, MAX_NUMBER_LENGTH, "%d", *sizeMFA);
        keyPairQuery_sizeMFA = keyValuePair_create(keyQuery_sizeMFA, valueQuery_sizeMFA);
        list_addElement(localVarQueryParameters,keyPairQuery_sizeMFA);
    }

    // query parameters
    char *keyQuery_shelfLifeMFA = NULL;
    char * valueQuery_shelfLifeMFA = NULL;
    keyValuePair_t *keyPairQuery_shelfLifeMFA = 0;
    if (shelfLifeMFA)
    {
        keyQuery_shelfLifeMFA = strdup("shelfLifeMFA");
        valueQuery_shelfLifeMFA = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_shelfLifeMFA, MAX_NUMBER_LENGTH, "%d", *shelfLifeMFA);
        keyPairQuery_shelfLifeMFA = keyValuePair_create(keyQuery_shelfLifeMFA, valueQuery_shelfLifeMFA);
        list_addElement(localVarQueryParameters,keyPairQuery_shelfLifeMFA);
    }

    // query parameters
    char *keyQuery_oauthTokenURL = NULL;
    char * valueQuery_oauthTokenURL = NULL;
    keyValuePair_t *keyPairQuery_oauthTokenURL = 0;
    if (oauthTokenURL)
    {
        keyQuery_oauthTokenURL = strdup("oauthTokenURL");
        valueQuery_oauthTokenURL = strdup((oauthTokenURL));
        keyPairQuery_oauthTokenURL = keyValuePair_create(keyQuery_oauthTokenURL, valueQuery_oauthTokenURL);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthTokenURL);
    }

    // query parameters
    char *keyQuery_oauthPrivateKey = NULL;
    binary_t* valueQuery_oauthPrivateKey ;
    keyValuePair_t *keyPairQuery_oauthPrivateKey = 0;
    if (oauthPrivateKey)
    {
        keyQuery_oauthPrivateKey = strdup("oauthPrivateKey");
        valueQuery_oauthPrivateKey = (oauthPrivateKey);
        keyPairQuery_oauthPrivateKey = keyValuePair_create(keyQuery_oauthPrivateKey, &valueQuery_oauthPrivateKey);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthPrivateKey);
    }

    // query parameters
    char *keyQuery_oauthPublicKey = NULL;
    binary_t* valueQuery_oauthPublicKey ;
    keyValuePair_t *keyPairQuery_oauthPublicKey = 0;
    if (oauthPublicKey)
    {
        keyQuery_oauthPublicKey = strdup("oauthPublicKey");
        valueQuery_oauthPublicKey = (oauthPublicKey);
        keyPairQuery_oauthPublicKey = keyValuePair_create(keyQuery_oauthPublicKey, &valueQuery_oauthPublicKey);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthPublicKey);
    }

    // query parameters
    char *keyQuery_oauthClientId = NULL;
    char * valueQuery_oauthClientId = NULL;
    keyValuePair_t *keyPairQuery_oauthClientId = 0;
    if (oauthClientId)
    {
        keyQuery_oauthClientId = strdup("oauthClientId");
        valueQuery_oauthClientId = strdup((oauthClientId));
        keyPairQuery_oauthClientId = keyValuePair_create(keyQuery_oauthClientId, valueQuery_oauthClientId);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthClientId);
    }

    // query parameters
    char *keyQuery_oauthSecretKey = NULL;
    char * valueQuery_oauthSecretKey = NULL;
    keyValuePair_t *keyPairQuery_oauthSecretKey = 0;
    if (oauthSecretKey)
    {
        keyQuery_oauthSecretKey = strdup("oauthSecretKey");
        valueQuery_oauthSecretKey = strdup((oauthSecretKey));
        keyPairQuery_oauthSecretKey = keyValuePair_create(keyQuery_oauthSecretKey, valueQuery_oauthSecretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthSecretKey);
    }

    // Body Param
    localVarBodyParameters = strdup(body);
    localVarBodyLength = strlen(localVarBodyParameters);
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
    third_party_network_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = third_party_network_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    free(localVarBodyParameters);
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
    if(keyQuery_enableIntrospection){
        free(keyQuery_enableIntrospection);
        keyQuery_enableIntrospection = NULL;
    }
    if(valueQuery_enableIntrospection){
        free(valueQuery_enableIntrospection);
        valueQuery_enableIntrospection = NULL;
    }
    if(keyPairQuery_enableIntrospection){
        keyValuePair_free(keyPairQuery_enableIntrospection);
        keyPairQuery_enableIntrospection = NULL;
    }
    if(keyQuery_introspectionMethod){
        free(keyQuery_introspectionMethod);
        keyQuery_introspectionMethod = NULL;
    }
    if(valueQuery_introspectionMethod){
        free(valueQuery_introspectionMethod);
        valueQuery_introspectionMethod = NULL;
    }
    if(keyPairQuery_introspectionMethod){
        keyValuePair_free(keyPairQuery_introspectionMethod);
        keyPairQuery_introspectionMethod = NULL;
    }
    if(keyQuery_introspectionURL){
        free(keyQuery_introspectionURL);
        keyQuery_introspectionURL = NULL;
    }
    if(valueQuery_introspectionURL){
        free(valueQuery_introspectionURL);
        valueQuery_introspectionURL = NULL;
    }
    if(keyPairQuery_introspectionURL){
        keyValuePair_free(keyPairQuery_introspectionURL);
        keyPairQuery_introspectionURL = NULL;
    }
    if(keyQuery_introspectionParams){
        free(keyQuery_introspectionParams);
        keyQuery_introspectionParams = NULL;
    }
    if(valueQuery_introspectionParams){
        free(valueQuery_introspectionParams);
        valueQuery_introspectionParams = NULL;
    }
    if(keyPairQuery_introspectionParams){
        keyValuePair_free(keyPairQuery_introspectionParams);
        keyPairQuery_introspectionParams = NULL;
    }
    if(keyQuery_requiredRootField){
        free(keyQuery_requiredRootField);
        keyQuery_requiredRootField = NULL;
    }
    if(valueQuery_requiredRootField){
        free(valueQuery_requiredRootField);
        valueQuery_requiredRootField = NULL;
    }
    if(keyPairQuery_requiredRootField){
        keyValuePair_free(keyPairQuery_requiredRootField);
        keyPairQuery_requiredRootField = NULL;
    }
    if(keyQuery_enableMFA){
        free(keyQuery_enableMFA);
        keyQuery_enableMFA = NULL;
    }
    if(valueQuery_enableMFA){
        free(valueQuery_enableMFA);
        valueQuery_enableMFA = NULL;
    }
    if(keyPairQuery_enableMFA){
        keyValuePair_free(keyPairQuery_enableMFA);
        keyPairQuery_enableMFA = NULL;
    }
    if(keyQuery_sizeMFA){
        free(keyQuery_sizeMFA);
        keyQuery_sizeMFA = NULL;
    }
    if(valueQuery_sizeMFA){
        free(valueQuery_sizeMFA);
        valueQuery_sizeMFA = NULL;
    }
    if(keyPairQuery_sizeMFA){
        keyValuePair_free(keyPairQuery_sizeMFA);
        keyPairQuery_sizeMFA = NULL;
    }
    if(keyQuery_shelfLifeMFA){
        free(keyQuery_shelfLifeMFA);
        keyQuery_shelfLifeMFA = NULL;
    }
    if(valueQuery_shelfLifeMFA){
        free(valueQuery_shelfLifeMFA);
        valueQuery_shelfLifeMFA = NULL;
    }
    if(keyPairQuery_shelfLifeMFA){
        keyValuePair_free(keyPairQuery_shelfLifeMFA);
        keyPairQuery_shelfLifeMFA = NULL;
    }
    if(keyQuery_oauthTokenURL){
        free(keyQuery_oauthTokenURL);
        keyQuery_oauthTokenURL = NULL;
    }
    if(valueQuery_oauthTokenURL){
        free(valueQuery_oauthTokenURL);
        valueQuery_oauthTokenURL = NULL;
    }
    if(keyPairQuery_oauthTokenURL){
        keyValuePair_free(keyPairQuery_oauthTokenURL);
        keyPairQuery_oauthTokenURL = NULL;
    }
    if(keyQuery_oauthPrivateKey){
        free(keyQuery_oauthPrivateKey);
        keyQuery_oauthPrivateKey = NULL;
    }
    if(keyPairQuery_oauthPrivateKey){
        keyValuePair_free(keyPairQuery_oauthPrivateKey);
        keyPairQuery_oauthPrivateKey = NULL;
    }
    if(keyQuery_oauthPublicKey){
        free(keyQuery_oauthPublicKey);
        keyQuery_oauthPublicKey = NULL;
    }
    if(keyPairQuery_oauthPublicKey){
        keyValuePair_free(keyPairQuery_oauthPublicKey);
        keyPairQuery_oauthPublicKey = NULL;
    }
    if(keyQuery_oauthClientId){
        free(keyQuery_oauthClientId);
        keyQuery_oauthClientId = NULL;
    }
    if(valueQuery_oauthClientId){
        free(valueQuery_oauthClientId);
        valueQuery_oauthClientId = NULL;
    }
    if(keyPairQuery_oauthClientId){
        keyValuePair_free(keyPairQuery_oauthClientId);
        keyPairQuery_oauthClientId = NULL;
    }
    if(keyQuery_oauthSecretKey){
        free(keyQuery_oauthSecretKey);
        keyQuery_oauthSecretKey = NULL;
    }
    if(valueQuery_oauthSecretKey){
        free(valueQuery_oauthSecretKey);
        valueQuery_oauthSecretKey = NULL;
    }
    if(keyPairQuery_oauthSecretKey){
        keyValuePair_free(keyPairQuery_oauthSecretKey);
        keyPairQuery_oauthSecretKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Credential
//
// Delete a third party network on a Sirqul account.
//
sirqul_response_t*
ThirdPartyCredentialsAPI_deleteCredential(apiClient_t *apiClient, double version, long accountId, char *networkUID, char *thirdPartyId, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/credential/delete");



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
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
    }

    // query parameters
    char *keyQuery_thirdPartyId = NULL;
    char * valueQuery_thirdPartyId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyId = 0;
    if (thirdPartyId)
    {
        keyQuery_thirdPartyId = strdup("thirdPartyId");
        valueQuery_thirdPartyId = strdup((thirdPartyId));
        keyPairQuery_thirdPartyId = keyValuePair_create(keyQuery_thirdPartyId, valueQuery_thirdPartyId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyId);
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
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
    }
    if(keyQuery_thirdPartyId){
        free(keyQuery_thirdPartyId);
        keyQuery_thirdPartyId = NULL;
    }
    if(valueQuery_thirdPartyId){
        free(valueQuery_thirdPartyId);
        valueQuery_thirdPartyId = NULL;
    }
    if(keyPairQuery_thirdPartyId){
        keyValuePair_free(keyPairQuery_thirdPartyId);
        keyPairQuery_thirdPartyId = NULL;
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

// Delete Network
//
// Marks a custom third party network as deleted. Only the network owners and managers have access to this.
//
sirqul_response_t*
ThirdPartyCredentialsAPI_deleteNetwork(apiClient_t *apiClient, double version, long accountId, char *networkUID)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/network/delete");



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
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Credential
//
// Gets the account information given a third party token.
//
profile_response_t*
ThirdPartyCredentialsAPI_getCredential(apiClient_t *apiClient, double version, char *networkUID, char *appKey, long accountId, char *deviceId, char *sessionId, long thirdPartyCredentialId, char *thirdPartyToken, char *thirdPartySecret, int *createNewAccount, char *responseFilters, double latitude, double longitude, char *audienceIdsToAdd, char *audienceIdsToRemove, long referralAccountId)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/credential/get");



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
    char *keyQuery_sessionId = NULL;
    char * valueQuery_sessionId = NULL;
    keyValuePair_t *keyPairQuery_sessionId = 0;
    if (sessionId)
    {
        keyQuery_sessionId = strdup("sessionId");
        valueQuery_sessionId = strdup((sessionId));
        keyPairQuery_sessionId = keyValuePair_create(keyQuery_sessionId, valueQuery_sessionId);
        list_addElement(localVarQueryParameters,keyPairQuery_sessionId);
    }

    // query parameters
    char *keyQuery_thirdPartyCredentialId = NULL;
    char * valueQuery_thirdPartyCredentialId ;
    keyValuePair_t *keyPairQuery_thirdPartyCredentialId = 0;
    {
        keyQuery_thirdPartyCredentialId = strdup("thirdPartyCredentialId");
        valueQuery_thirdPartyCredentialId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_thirdPartyCredentialId, MAX_NUMBER_LENGTH_LONG, "%d", thirdPartyCredentialId);
        keyPairQuery_thirdPartyCredentialId = keyValuePair_create(keyQuery_thirdPartyCredentialId, valueQuery_thirdPartyCredentialId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyCredentialId);
    }

    // query parameters
    char *keyQuery_thirdPartyToken = NULL;
    char * valueQuery_thirdPartyToken = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyToken = 0;
    if (thirdPartyToken)
    {
        keyQuery_thirdPartyToken = strdup("thirdPartyToken");
        valueQuery_thirdPartyToken = strdup((thirdPartyToken));
        keyPairQuery_thirdPartyToken = keyValuePair_create(keyQuery_thirdPartyToken, valueQuery_thirdPartyToken);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyToken);
    }

    // query parameters
    char *keyQuery_thirdPartySecret = NULL;
    char * valueQuery_thirdPartySecret = NULL;
    keyValuePair_t *keyPairQuery_thirdPartySecret = 0;
    if (thirdPartySecret)
    {
        keyQuery_thirdPartySecret = strdup("thirdPartySecret");
        valueQuery_thirdPartySecret = strdup((thirdPartySecret));
        keyPairQuery_thirdPartySecret = keyValuePair_create(keyQuery_thirdPartySecret, valueQuery_thirdPartySecret);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartySecret);
    }

    // query parameters
    char *keyQuery_createNewAccount = NULL;
    char * valueQuery_createNewAccount = NULL;
    keyValuePair_t *keyPairQuery_createNewAccount = 0;
    if (createNewAccount)
    {
        keyQuery_createNewAccount = strdup("createNewAccount");
        valueQuery_createNewAccount = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_createNewAccount, MAX_NUMBER_LENGTH, "%d", *createNewAccount);
        keyPairQuery_createNewAccount = keyValuePair_create(keyQuery_createNewAccount, valueQuery_createNewAccount);
        list_addElement(localVarQueryParameters,keyPairQuery_createNewAccount);
    }

    // query parameters
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    char *keyQuery_audienceIdsToAdd = NULL;
    char * valueQuery_audienceIdsToAdd = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToAdd = 0;
    if (audienceIdsToAdd)
    {
        keyQuery_audienceIdsToAdd = strdup("audienceIdsToAdd");
        valueQuery_audienceIdsToAdd = strdup((audienceIdsToAdd));
        keyPairQuery_audienceIdsToAdd = keyValuePair_create(keyQuery_audienceIdsToAdd, valueQuery_audienceIdsToAdd);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToAdd);
    }

    // query parameters
    char *keyQuery_audienceIdsToRemove = NULL;
    char * valueQuery_audienceIdsToRemove = NULL;
    keyValuePair_t *keyPairQuery_audienceIdsToRemove = 0;
    if (audienceIdsToRemove)
    {
        keyQuery_audienceIdsToRemove = strdup("audienceIdsToRemove");
        valueQuery_audienceIdsToRemove = strdup((audienceIdsToRemove));
        keyPairQuery_audienceIdsToRemove = keyValuePair_create(keyQuery_audienceIdsToRemove, valueQuery_audienceIdsToRemove);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIdsToRemove);
    }

    // query parameters
    char *keyQuery_referralAccountId = NULL;
    char * valueQuery_referralAccountId ;
    keyValuePair_t *keyPairQuery_referralAccountId = 0;
    {
        keyQuery_referralAccountId = strdup("referralAccountId");
        valueQuery_referralAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_referralAccountId, MAX_NUMBER_LENGTH_LONG, "%d", referralAccountId);
        keyPairQuery_referralAccountId = keyValuePair_create(keyQuery_referralAccountId, valueQuery_referralAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_referralAccountId);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_sessionId){
        free(keyQuery_sessionId);
        keyQuery_sessionId = NULL;
    }
    if(valueQuery_sessionId){
        free(valueQuery_sessionId);
        valueQuery_sessionId = NULL;
    }
    if(keyPairQuery_sessionId){
        keyValuePair_free(keyPairQuery_sessionId);
        keyPairQuery_sessionId = NULL;
    }
    if(keyQuery_thirdPartyCredentialId){
        free(keyQuery_thirdPartyCredentialId);
        keyQuery_thirdPartyCredentialId = NULL;
    }
    if(keyPairQuery_thirdPartyCredentialId){
        keyValuePair_free(keyPairQuery_thirdPartyCredentialId);
        keyPairQuery_thirdPartyCredentialId = NULL;
    }
    if(keyQuery_thirdPartyToken){
        free(keyQuery_thirdPartyToken);
        keyQuery_thirdPartyToken = NULL;
    }
    if(valueQuery_thirdPartyToken){
        free(valueQuery_thirdPartyToken);
        valueQuery_thirdPartyToken = NULL;
    }
    if(keyPairQuery_thirdPartyToken){
        keyValuePair_free(keyPairQuery_thirdPartyToken);
        keyPairQuery_thirdPartyToken = NULL;
    }
    if(keyQuery_thirdPartySecret){
        free(keyQuery_thirdPartySecret);
        keyQuery_thirdPartySecret = NULL;
    }
    if(valueQuery_thirdPartySecret){
        free(valueQuery_thirdPartySecret);
        valueQuery_thirdPartySecret = NULL;
    }
    if(keyPairQuery_thirdPartySecret){
        keyValuePair_free(keyPairQuery_thirdPartySecret);
        keyPairQuery_thirdPartySecret = NULL;
    }
    if(keyQuery_createNewAccount){
        free(keyQuery_createNewAccount);
        keyQuery_createNewAccount = NULL;
    }
    if(valueQuery_createNewAccount){
        free(valueQuery_createNewAccount);
        valueQuery_createNewAccount = NULL;
    }
    if(keyPairQuery_createNewAccount){
        keyValuePair_free(keyPairQuery_createNewAccount);
        keyPairQuery_createNewAccount = NULL;
    }
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
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
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
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
    if(keyQuery_audienceIdsToAdd){
        free(keyQuery_audienceIdsToAdd);
        keyQuery_audienceIdsToAdd = NULL;
    }
    if(valueQuery_audienceIdsToAdd){
        free(valueQuery_audienceIdsToAdd);
        valueQuery_audienceIdsToAdd = NULL;
    }
    if(keyPairQuery_audienceIdsToAdd){
        keyValuePair_free(keyPairQuery_audienceIdsToAdd);
        keyPairQuery_audienceIdsToAdd = NULL;
    }
    if(keyQuery_audienceIdsToRemove){
        free(keyQuery_audienceIdsToRemove);
        keyQuery_audienceIdsToRemove = NULL;
    }
    if(valueQuery_audienceIdsToRemove){
        free(valueQuery_audienceIdsToRemove);
        valueQuery_audienceIdsToRemove = NULL;
    }
    if(keyPairQuery_audienceIdsToRemove){
        keyValuePair_free(keyPairQuery_audienceIdsToRemove);
        keyPairQuery_audienceIdsToRemove = NULL;
    }
    if(keyQuery_referralAccountId){
        free(keyQuery_referralAccountId);
        keyQuery_referralAccountId = NULL;
    }
    if(keyPairQuery_referralAccountId){
        keyValuePair_free(keyPairQuery_referralAccountId);
        keyPairQuery_referralAccountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Network
//
// Get the details of a third party network. Only the network owners and managers have access to this.
//
third_party_network_response_t*
ThirdPartyCredentialsAPI_getNetwork(apiClient_t *apiClient, double version, long accountId, char *networkUID)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/network/get");



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
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
    third_party_network_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = third_party_network_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Credentials
//
// Search on a user's linked third party networks.
//
list_t*
ThirdPartyCredentialsAPI_searchCredentials(apiClient_t *apiClient, double version, long accountId, char *keyword, char *networkUID, int *descending, int *start, int *limit)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/credential/search");



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
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ThirdPartyCredentialsAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ThirdPartyCredentialsAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
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

// Search Networks
//
// Search on supported third party networks and custom networks from external users.
//
list_t*
ThirdPartyCredentialsAPI_searchNetworks(apiClient_t *apiClient, double version, long accountId, sirqul_iot_platform_searchNetworks_sortField_e sortField, int *descending, int *start, int *limit, int *activeOnly, char *keyword, int *filterBillable)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/network/search");



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
    char *keyQuery_sortField = NULL;
    sirqul_iot_platform_searchNetworks_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchNetworks_SORTFIELD_ToString(
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
    char *keyQuery_filterBillable = NULL;
    char * valueQuery_filterBillable = NULL;
    keyValuePair_t *keyPairQuery_filterBillable = 0;
    if (filterBillable)
    {
        keyQuery_filterBillable = strdup("filterBillable");
        valueQuery_filterBillable = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_filterBillable, MAX_NUMBER_LENGTH, "%d", *filterBillable);
        keyPairQuery_filterBillable = keyValuePair_create(keyQuery_filterBillable, valueQuery_filterBillable);
        list_addElement(localVarQueryParameters,keyPairQuery_filterBillable);
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
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(ThirdPartyCredentialsAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, ThirdPartyCredentialsAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_filterBillable){
        free(keyQuery_filterBillable);
        keyQuery_filterBillable = NULL;
    }
    if(valueQuery_filterBillable){
        free(valueQuery_filterBillable);
        valueQuery_filterBillable = NULL;
    }
    if(keyPairQuery_filterBillable){
        keyValuePair_free(keyPairQuery_filterBillable);
        keyPairQuery_filterBillable = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Send MFA Challenge
//
// Sends an MFA challenge (SMS or Email) for networks with MFA enabled.
//
sirqul_response_t*
ThirdPartyCredentialsAPI_sendMFAChallenge(apiClient_t *apiClient, double version, char *networkUID, char *appKey, char *thirdPartyToken, long thirdPartyCredentialId, char *deviceId)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/credential/mfa/send");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_thirdPartyToken = NULL;
    char * valueQuery_thirdPartyToken = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyToken = 0;
    if (thirdPartyToken)
    {
        keyQuery_thirdPartyToken = strdup("thirdPartyToken");
        valueQuery_thirdPartyToken = strdup((thirdPartyToken));
        keyPairQuery_thirdPartyToken = keyValuePair_create(keyQuery_thirdPartyToken, valueQuery_thirdPartyToken);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyToken);
    }

    // query parameters
    char *keyQuery_thirdPartyCredentialId = NULL;
    char * valueQuery_thirdPartyCredentialId ;
    keyValuePair_t *keyPairQuery_thirdPartyCredentialId = 0;
    {
        keyQuery_thirdPartyCredentialId = strdup("thirdPartyCredentialId");
        valueQuery_thirdPartyCredentialId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_thirdPartyCredentialId, MAX_NUMBER_LENGTH_LONG, "%d", thirdPartyCredentialId);
        keyPairQuery_thirdPartyCredentialId = keyValuePair_create(keyQuery_thirdPartyCredentialId, valueQuery_thirdPartyCredentialId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyCredentialId);
    }

    // query parameters
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_thirdPartyToken){
        free(keyQuery_thirdPartyToken);
        keyQuery_thirdPartyToken = NULL;
    }
    if(valueQuery_thirdPartyToken){
        free(valueQuery_thirdPartyToken);
        valueQuery_thirdPartyToken = NULL;
    }
    if(keyPairQuery_thirdPartyToken){
        keyValuePair_free(keyPairQuery_thirdPartyToken);
        keyPairQuery_thirdPartyToken = NULL;
    }
    if(keyQuery_thirdPartyCredentialId){
        free(keyQuery_thirdPartyCredentialId);
        keyQuery_thirdPartyCredentialId = NULL;
    }
    if(keyPairQuery_thirdPartyCredentialId){
        keyValuePair_free(keyPairQuery_thirdPartyCredentialId);
        keyPairQuery_thirdPartyCredentialId = NULL;
    }
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Credential
//
// Updates a third-party login for an account.
//
profile_response_t*
ThirdPartyCredentialsAPI_updateCredential(apiClient_t *apiClient, double version, char *networkUID, char *thirdPartyId, char *appKey, char *deviceId, char *thirdPartyName, char *thirdPartyToken, char *responseFilters, char *metaData, char *thirdPartyRefreshToken)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/credential/update");



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
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
    }

    // query parameters
    char *keyQuery_thirdPartyId = NULL;
    char * valueQuery_thirdPartyId = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyId = 0;
    if (thirdPartyId)
    {
        keyQuery_thirdPartyId = strdup("thirdPartyId");
        valueQuery_thirdPartyId = strdup((thirdPartyId));
        keyPairQuery_thirdPartyId = keyValuePair_create(keyQuery_thirdPartyId, valueQuery_thirdPartyId);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyId);
    }

    // query parameters
    char *keyQuery_thirdPartyName = NULL;
    char * valueQuery_thirdPartyName = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyName = 0;
    if (thirdPartyName)
    {
        keyQuery_thirdPartyName = strdup("thirdPartyName");
        valueQuery_thirdPartyName = strdup((thirdPartyName));
        keyPairQuery_thirdPartyName = keyValuePair_create(keyQuery_thirdPartyName, valueQuery_thirdPartyName);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyName);
    }

    // query parameters
    char *keyQuery_thirdPartyToken = NULL;
    char * valueQuery_thirdPartyToken = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyToken = 0;
    if (thirdPartyToken)
    {
        keyQuery_thirdPartyToken = strdup("thirdPartyToken");
        valueQuery_thirdPartyToken = strdup((thirdPartyToken));
        keyPairQuery_thirdPartyToken = keyValuePair_create(keyQuery_thirdPartyToken, valueQuery_thirdPartyToken);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyToken);
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
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    char *keyQuery_thirdPartyRefreshToken = NULL;
    char * valueQuery_thirdPartyRefreshToken = NULL;
    keyValuePair_t *keyPairQuery_thirdPartyRefreshToken = 0;
    if (thirdPartyRefreshToken)
    {
        keyQuery_thirdPartyRefreshToken = strdup("thirdPartyRefreshToken");
        valueQuery_thirdPartyRefreshToken = strdup((thirdPartyRefreshToken));
        keyPairQuery_thirdPartyRefreshToken = keyValuePair_create(keyQuery_thirdPartyRefreshToken, valueQuery_thirdPartyRefreshToken);
        list_addElement(localVarQueryParameters,keyPairQuery_thirdPartyRefreshToken);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
    }
    if(keyQuery_thirdPartyId){
        free(keyQuery_thirdPartyId);
        keyQuery_thirdPartyId = NULL;
    }
    if(valueQuery_thirdPartyId){
        free(valueQuery_thirdPartyId);
        valueQuery_thirdPartyId = NULL;
    }
    if(keyPairQuery_thirdPartyId){
        keyValuePair_free(keyPairQuery_thirdPartyId);
        keyPairQuery_thirdPartyId = NULL;
    }
    if(keyQuery_thirdPartyName){
        free(keyQuery_thirdPartyName);
        keyQuery_thirdPartyName = NULL;
    }
    if(valueQuery_thirdPartyName){
        free(valueQuery_thirdPartyName);
        valueQuery_thirdPartyName = NULL;
    }
    if(keyPairQuery_thirdPartyName){
        keyValuePair_free(keyPairQuery_thirdPartyName);
        keyPairQuery_thirdPartyName = NULL;
    }
    if(keyQuery_thirdPartyToken){
        free(keyQuery_thirdPartyToken);
        keyQuery_thirdPartyToken = NULL;
    }
    if(valueQuery_thirdPartyToken){
        free(valueQuery_thirdPartyToken);
        valueQuery_thirdPartyToken = NULL;
    }
    if(keyPairQuery_thirdPartyToken){
        keyValuePair_free(keyPairQuery_thirdPartyToken);
        keyPairQuery_thirdPartyToken = NULL;
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
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
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
    if(keyQuery_thirdPartyRefreshToken){
        free(keyQuery_thirdPartyRefreshToken);
        keyQuery_thirdPartyRefreshToken = NULL;
    }
    if(valueQuery_thirdPartyRefreshToken){
        free(valueQuery_thirdPartyRefreshToken);
        valueQuery_thirdPartyRefreshToken = NULL;
    }
    if(keyPairQuery_thirdPartyRefreshToken){
        keyValuePair_free(keyPairQuery_thirdPartyRefreshToken);
        keyPairQuery_thirdPartyRefreshToken = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Network
//
// Updates a custom third party network. Only the network owners and managers have access to this.
//
third_party_network_response_t*
ThirdPartyCredentialsAPI_updateNetwork(apiClient_t *apiClient, double version, long accountId, char *networkUID, char *name, char *description, int *enableIntrospection, char *introspectionMethod, char *introspectionURL, char *introspectionParams, char *requiredRootField, int *enableMFA, int *sizeMFA, int *shelfLifeMFA, char *oauthTokenURL, binary_t* oauthPrivateKey, binary_t* oauthPublicKey, char *oauthClientId, char *oauthSecretKey, char *body)
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
    char *localVarPath = strdup("/api/{version}/thirdparty/network/update");



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
    char *keyQuery_networkUID = NULL;
    char * valueQuery_networkUID = NULL;
    keyValuePair_t *keyPairQuery_networkUID = 0;
    if (networkUID)
    {
        keyQuery_networkUID = strdup("networkUID");
        valueQuery_networkUID = strdup((networkUID));
        keyPairQuery_networkUID = keyValuePair_create(keyQuery_networkUID, valueQuery_networkUID);
        list_addElement(localVarQueryParameters,keyPairQuery_networkUID);
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
    char *keyQuery_enableIntrospection = NULL;
    char * valueQuery_enableIntrospection = NULL;
    keyValuePair_t *keyPairQuery_enableIntrospection = 0;
    if (enableIntrospection)
    {
        keyQuery_enableIntrospection = strdup("enableIntrospection");
        valueQuery_enableIntrospection = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableIntrospection, MAX_NUMBER_LENGTH, "%d", *enableIntrospection);
        keyPairQuery_enableIntrospection = keyValuePair_create(keyQuery_enableIntrospection, valueQuery_enableIntrospection);
        list_addElement(localVarQueryParameters,keyPairQuery_enableIntrospection);
    }

    // query parameters
    char *keyQuery_introspectionMethod = NULL;
    char * valueQuery_introspectionMethod = NULL;
    keyValuePair_t *keyPairQuery_introspectionMethod = 0;
    if (introspectionMethod)
    {
        keyQuery_introspectionMethod = strdup("introspectionMethod");
        valueQuery_introspectionMethod = strdup((introspectionMethod));
        keyPairQuery_introspectionMethod = keyValuePair_create(keyQuery_introspectionMethod, valueQuery_introspectionMethod);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionMethod);
    }

    // query parameters
    char *keyQuery_introspectionURL = NULL;
    char * valueQuery_introspectionURL = NULL;
    keyValuePair_t *keyPairQuery_introspectionURL = 0;
    if (introspectionURL)
    {
        keyQuery_introspectionURL = strdup("introspectionURL");
        valueQuery_introspectionURL = strdup((introspectionURL));
        keyPairQuery_introspectionURL = keyValuePair_create(keyQuery_introspectionURL, valueQuery_introspectionURL);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionURL);
    }

    // query parameters
    char *keyQuery_introspectionParams = NULL;
    char * valueQuery_introspectionParams = NULL;
    keyValuePair_t *keyPairQuery_introspectionParams = 0;
    if (introspectionParams)
    {
        keyQuery_introspectionParams = strdup("introspectionParams");
        valueQuery_introspectionParams = strdup((introspectionParams));
        keyPairQuery_introspectionParams = keyValuePair_create(keyQuery_introspectionParams, valueQuery_introspectionParams);
        list_addElement(localVarQueryParameters,keyPairQuery_introspectionParams);
    }

    // query parameters
    char *keyQuery_requiredRootField = NULL;
    char * valueQuery_requiredRootField = NULL;
    keyValuePair_t *keyPairQuery_requiredRootField = 0;
    if (requiredRootField)
    {
        keyQuery_requiredRootField = strdup("requiredRootField");
        valueQuery_requiredRootField = strdup((requiredRootField));
        keyPairQuery_requiredRootField = keyValuePair_create(keyQuery_requiredRootField, valueQuery_requiredRootField);
        list_addElement(localVarQueryParameters,keyPairQuery_requiredRootField);
    }

    // query parameters
    char *keyQuery_enableMFA = NULL;
    char * valueQuery_enableMFA = NULL;
    keyValuePair_t *keyPairQuery_enableMFA = 0;
    if (enableMFA)
    {
        keyQuery_enableMFA = strdup("enableMFA");
        valueQuery_enableMFA = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_enableMFA, MAX_NUMBER_LENGTH, "%d", *enableMFA);
        keyPairQuery_enableMFA = keyValuePair_create(keyQuery_enableMFA, valueQuery_enableMFA);
        list_addElement(localVarQueryParameters,keyPairQuery_enableMFA);
    }

    // query parameters
    char *keyQuery_sizeMFA = NULL;
    char * valueQuery_sizeMFA = NULL;
    keyValuePair_t *keyPairQuery_sizeMFA = 0;
    if (sizeMFA)
    {
        keyQuery_sizeMFA = strdup("sizeMFA");
        valueQuery_sizeMFA = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_sizeMFA, MAX_NUMBER_LENGTH, "%d", *sizeMFA);
        keyPairQuery_sizeMFA = keyValuePair_create(keyQuery_sizeMFA, valueQuery_sizeMFA);
        list_addElement(localVarQueryParameters,keyPairQuery_sizeMFA);
    }

    // query parameters
    char *keyQuery_shelfLifeMFA = NULL;
    char * valueQuery_shelfLifeMFA = NULL;
    keyValuePair_t *keyPairQuery_shelfLifeMFA = 0;
    if (shelfLifeMFA)
    {
        keyQuery_shelfLifeMFA = strdup("shelfLifeMFA");
        valueQuery_shelfLifeMFA = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_shelfLifeMFA, MAX_NUMBER_LENGTH, "%d", *shelfLifeMFA);
        keyPairQuery_shelfLifeMFA = keyValuePair_create(keyQuery_shelfLifeMFA, valueQuery_shelfLifeMFA);
        list_addElement(localVarQueryParameters,keyPairQuery_shelfLifeMFA);
    }

    // query parameters
    char *keyQuery_oauthTokenURL = NULL;
    char * valueQuery_oauthTokenURL = NULL;
    keyValuePair_t *keyPairQuery_oauthTokenURL = 0;
    if (oauthTokenURL)
    {
        keyQuery_oauthTokenURL = strdup("oauthTokenURL");
        valueQuery_oauthTokenURL = strdup((oauthTokenURL));
        keyPairQuery_oauthTokenURL = keyValuePair_create(keyQuery_oauthTokenURL, valueQuery_oauthTokenURL);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthTokenURL);
    }

    // query parameters
    char *keyQuery_oauthPrivateKey = NULL;
    binary_t* valueQuery_oauthPrivateKey ;
    keyValuePair_t *keyPairQuery_oauthPrivateKey = 0;
    if (oauthPrivateKey)
    {
        keyQuery_oauthPrivateKey = strdup("oauthPrivateKey");
        valueQuery_oauthPrivateKey = (oauthPrivateKey);
        keyPairQuery_oauthPrivateKey = keyValuePair_create(keyQuery_oauthPrivateKey, &valueQuery_oauthPrivateKey);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthPrivateKey);
    }

    // query parameters
    char *keyQuery_oauthPublicKey = NULL;
    binary_t* valueQuery_oauthPublicKey ;
    keyValuePair_t *keyPairQuery_oauthPublicKey = 0;
    if (oauthPublicKey)
    {
        keyQuery_oauthPublicKey = strdup("oauthPublicKey");
        valueQuery_oauthPublicKey = (oauthPublicKey);
        keyPairQuery_oauthPublicKey = keyValuePair_create(keyQuery_oauthPublicKey, &valueQuery_oauthPublicKey);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthPublicKey);
    }

    // query parameters
    char *keyQuery_oauthClientId = NULL;
    char * valueQuery_oauthClientId = NULL;
    keyValuePair_t *keyPairQuery_oauthClientId = 0;
    if (oauthClientId)
    {
        keyQuery_oauthClientId = strdup("oauthClientId");
        valueQuery_oauthClientId = strdup((oauthClientId));
        keyPairQuery_oauthClientId = keyValuePair_create(keyQuery_oauthClientId, valueQuery_oauthClientId);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthClientId);
    }

    // query parameters
    char *keyQuery_oauthSecretKey = NULL;
    char * valueQuery_oauthSecretKey = NULL;
    keyValuePair_t *keyPairQuery_oauthSecretKey = 0;
    if (oauthSecretKey)
    {
        keyQuery_oauthSecretKey = strdup("oauthSecretKey");
        valueQuery_oauthSecretKey = strdup((oauthSecretKey));
        keyPairQuery_oauthSecretKey = keyValuePair_create(keyQuery_oauthSecretKey, valueQuery_oauthSecretKey);
        list_addElement(localVarQueryParameters,keyPairQuery_oauthSecretKey);
    }

    // Body Param
    localVarBodyParameters = strdup(body);
    localVarBodyLength = strlen(localVarBodyParameters);
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
    third_party_network_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *ThirdPartyCredentialsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = third_party_network_response_parseFromJSON(ThirdPartyCredentialsAPIlocalVarJSON);
        cJSON_Delete(ThirdPartyCredentialsAPIlocalVarJSON);
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
    free(localVarBodyParameters);
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_networkUID){
        free(keyQuery_networkUID);
        keyQuery_networkUID = NULL;
    }
    if(valueQuery_networkUID){
        free(valueQuery_networkUID);
        valueQuery_networkUID = NULL;
    }
    if(keyPairQuery_networkUID){
        keyValuePair_free(keyPairQuery_networkUID);
        keyPairQuery_networkUID = NULL;
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
    if(keyQuery_enableIntrospection){
        free(keyQuery_enableIntrospection);
        keyQuery_enableIntrospection = NULL;
    }
    if(valueQuery_enableIntrospection){
        free(valueQuery_enableIntrospection);
        valueQuery_enableIntrospection = NULL;
    }
    if(keyPairQuery_enableIntrospection){
        keyValuePair_free(keyPairQuery_enableIntrospection);
        keyPairQuery_enableIntrospection = NULL;
    }
    if(keyQuery_introspectionMethod){
        free(keyQuery_introspectionMethod);
        keyQuery_introspectionMethod = NULL;
    }
    if(valueQuery_introspectionMethod){
        free(valueQuery_introspectionMethod);
        valueQuery_introspectionMethod = NULL;
    }
    if(keyPairQuery_introspectionMethod){
        keyValuePair_free(keyPairQuery_introspectionMethod);
        keyPairQuery_introspectionMethod = NULL;
    }
    if(keyQuery_introspectionURL){
        free(keyQuery_introspectionURL);
        keyQuery_introspectionURL = NULL;
    }
    if(valueQuery_introspectionURL){
        free(valueQuery_introspectionURL);
        valueQuery_introspectionURL = NULL;
    }
    if(keyPairQuery_introspectionURL){
        keyValuePair_free(keyPairQuery_introspectionURL);
        keyPairQuery_introspectionURL = NULL;
    }
    if(keyQuery_introspectionParams){
        free(keyQuery_introspectionParams);
        keyQuery_introspectionParams = NULL;
    }
    if(valueQuery_introspectionParams){
        free(valueQuery_introspectionParams);
        valueQuery_introspectionParams = NULL;
    }
    if(keyPairQuery_introspectionParams){
        keyValuePair_free(keyPairQuery_introspectionParams);
        keyPairQuery_introspectionParams = NULL;
    }
    if(keyQuery_requiredRootField){
        free(keyQuery_requiredRootField);
        keyQuery_requiredRootField = NULL;
    }
    if(valueQuery_requiredRootField){
        free(valueQuery_requiredRootField);
        valueQuery_requiredRootField = NULL;
    }
    if(keyPairQuery_requiredRootField){
        keyValuePair_free(keyPairQuery_requiredRootField);
        keyPairQuery_requiredRootField = NULL;
    }
    if(keyQuery_enableMFA){
        free(keyQuery_enableMFA);
        keyQuery_enableMFA = NULL;
    }
    if(valueQuery_enableMFA){
        free(valueQuery_enableMFA);
        valueQuery_enableMFA = NULL;
    }
    if(keyPairQuery_enableMFA){
        keyValuePair_free(keyPairQuery_enableMFA);
        keyPairQuery_enableMFA = NULL;
    }
    if(keyQuery_sizeMFA){
        free(keyQuery_sizeMFA);
        keyQuery_sizeMFA = NULL;
    }
    if(valueQuery_sizeMFA){
        free(valueQuery_sizeMFA);
        valueQuery_sizeMFA = NULL;
    }
    if(keyPairQuery_sizeMFA){
        keyValuePair_free(keyPairQuery_sizeMFA);
        keyPairQuery_sizeMFA = NULL;
    }
    if(keyQuery_shelfLifeMFA){
        free(keyQuery_shelfLifeMFA);
        keyQuery_shelfLifeMFA = NULL;
    }
    if(valueQuery_shelfLifeMFA){
        free(valueQuery_shelfLifeMFA);
        valueQuery_shelfLifeMFA = NULL;
    }
    if(keyPairQuery_shelfLifeMFA){
        keyValuePair_free(keyPairQuery_shelfLifeMFA);
        keyPairQuery_shelfLifeMFA = NULL;
    }
    if(keyQuery_oauthTokenURL){
        free(keyQuery_oauthTokenURL);
        keyQuery_oauthTokenURL = NULL;
    }
    if(valueQuery_oauthTokenURL){
        free(valueQuery_oauthTokenURL);
        valueQuery_oauthTokenURL = NULL;
    }
    if(keyPairQuery_oauthTokenURL){
        keyValuePair_free(keyPairQuery_oauthTokenURL);
        keyPairQuery_oauthTokenURL = NULL;
    }
    if(keyQuery_oauthPrivateKey){
        free(keyQuery_oauthPrivateKey);
        keyQuery_oauthPrivateKey = NULL;
    }
    if(keyPairQuery_oauthPrivateKey){
        keyValuePair_free(keyPairQuery_oauthPrivateKey);
        keyPairQuery_oauthPrivateKey = NULL;
    }
    if(keyQuery_oauthPublicKey){
        free(keyQuery_oauthPublicKey);
        keyQuery_oauthPublicKey = NULL;
    }
    if(keyPairQuery_oauthPublicKey){
        keyValuePair_free(keyPairQuery_oauthPublicKey);
        keyPairQuery_oauthPublicKey = NULL;
    }
    if(keyQuery_oauthClientId){
        free(keyQuery_oauthClientId);
        keyQuery_oauthClientId = NULL;
    }
    if(valueQuery_oauthClientId){
        free(valueQuery_oauthClientId);
        valueQuery_oauthClientId = NULL;
    }
    if(keyPairQuery_oauthClientId){
        keyValuePair_free(keyPairQuery_oauthClientId);
        keyPairQuery_oauthClientId = NULL;
    }
    if(keyQuery_oauthSecretKey){
        free(keyQuery_oauthSecretKey);
        keyQuery_oauthSecretKey = NULL;
    }
    if(valueQuery_oauthSecretKey){
        free(valueQuery_oauthSecretKey);
        valueQuery_oauthSecretKey = NULL;
    }
    if(keyPairQuery_oauthSecretKey){
        keyValuePair_free(keyPairQuery_oauthSecretKey);
        keyPairQuery_oauthSecretKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

