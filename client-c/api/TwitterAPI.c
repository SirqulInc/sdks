#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "TwitterAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Authorize Twitter
//
// Makes an authorization call to twitter for a user to login and allow any app permissions.
//
sirqul_response_t*
TwitterAPI_authorizeTwitter(apiClient_t *apiClient, double version, char *appKey)
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
    char *localVarPath = strdup("/api/{version}/twitter/authorize");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
        cJSON *TwitterAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(TwitterAPIlocalVarJSON);
        cJSON_Delete(TwitterAPIlocalVarJSON);
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

// Login Twitter
//
// Returns the user profile information given an access token and the secret access token. This call verifies the tokens with twitter and creates a Sirqul account for the user if its their first time logging in.
//
profile_response_t*
TwitterAPI_loginTwitter(apiClient_t *apiClient, double version, char *accessToken, char *accessTokenSecret, char *appKey, char *responseFilters, char *deviceId, double latitude, double longitude)
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
    char *localVarPath = strdup("/api/{version}/twitter/login");



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
    char *keyQuery_accessToken = NULL;
    char * valueQuery_accessToken = NULL;
    keyValuePair_t *keyPairQuery_accessToken = 0;
    if (accessToken)
    {
        keyQuery_accessToken = strdup("accessToken");
        valueQuery_accessToken = strdup((accessToken));
        keyPairQuery_accessToken = keyValuePair_create(keyQuery_accessToken, valueQuery_accessToken);
        list_addElement(localVarQueryParameters,keyPairQuery_accessToken);
    }

    // query parameters
    char *keyQuery_accessTokenSecret = NULL;
    char * valueQuery_accessTokenSecret = NULL;
    keyValuePair_t *keyPairQuery_accessTokenSecret = 0;
    if (accessTokenSecret)
    {
        keyQuery_accessTokenSecret = strdup("accessTokenSecret");
        valueQuery_accessTokenSecret = strdup((accessTokenSecret));
        keyPairQuery_accessTokenSecret = keyValuePair_create(keyQuery_accessTokenSecret, valueQuery_accessTokenSecret);
        list_addElement(localVarQueryParameters,keyPairQuery_accessTokenSecret);
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
        cJSON *TwitterAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(TwitterAPIlocalVarJSON);
        cJSON_Delete(TwitterAPIlocalVarJSON);
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
    if(keyQuery_accessToken){
        free(keyQuery_accessToken);
        keyQuery_accessToken = NULL;
    }
    if(valueQuery_accessToken){
        free(valueQuery_accessToken);
        valueQuery_accessToken = NULL;
    }
    if(keyPairQuery_accessToken){
        keyValuePair_free(keyPairQuery_accessToken);
        keyPairQuery_accessToken = NULL;
    }
    if(keyQuery_accessTokenSecret){
        free(keyQuery_accessTokenSecret);
        keyQuery_accessTokenSecret = NULL;
    }
    if(valueQuery_accessTokenSecret){
        free(valueQuery_accessTokenSecret);
        valueQuery_accessTokenSecret = NULL;
    }
    if(keyPairQuery_accessTokenSecret){
        keyValuePair_free(keyPairQuery_accessTokenSecret);
        keyPairQuery_accessTokenSecret = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

