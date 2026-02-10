#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "WeatherAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Search Weather
//
// Search the weather forcast for the next 5 days
//
weather_response_t*
WeatherAPI_searchWeather(apiClient_t *apiClient, double version, long regionId, double latitude, double longitude, long timezoneOffset)
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
    char *localVarPath = strdup("/api/{version}/weather/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_regionId = NULL;
    char * valueQuery_regionId ;
    keyValuePair_t *keyPairQuery_regionId = 0;
    {
        keyQuery_regionId = strdup("regionId");
        valueQuery_regionId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_regionId, MAX_NUMBER_LENGTH_LONG, "%d", regionId);
        keyPairQuery_regionId = keyValuePair_create(keyQuery_regionId, valueQuery_regionId);
        list_addElement(localVarQueryParameters,keyPairQuery_regionId);
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
    char *keyQuery_timezoneOffset = NULL;
    char * valueQuery_timezoneOffset ;
    keyValuePair_t *keyPairQuery_timezoneOffset = 0;
    {
        keyQuery_timezoneOffset = strdup("timezoneOffset");
        valueQuery_timezoneOffset = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_timezoneOffset, MAX_NUMBER_LENGTH_LONG, "%d", timezoneOffset);
        keyPairQuery_timezoneOffset = keyValuePair_create(keyQuery_timezoneOffset, valueQuery_timezoneOffset);
        list_addElement(localVarQueryParameters,keyPairQuery_timezoneOffset);
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
    weather_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *WeatherAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = weather_response_parseFromJSON(WeatherAPIlocalVarJSON);
        cJSON_Delete(WeatherAPIlocalVarJSON);
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
    if(keyQuery_regionId){
        free(keyQuery_regionId);
        keyQuery_regionId = NULL;
    }
    if(keyPairQuery_regionId){
        keyValuePair_free(keyPairQuery_regionId);
        keyPairQuery_regionId = NULL;
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
    if(keyQuery_timezoneOffset){
        free(keyQuery_timezoneOffset);
        keyQuery_timezoneOffset = NULL;
    }
    if(keyPairQuery_timezoneOffset){
        keyValuePair_free(keyPairQuery_timezoneOffset);
        keyPairQuery_timezoneOffset = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

