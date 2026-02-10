#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "LocationAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Create Trilateration Data with File
//
// Creates trilateration samples for a source device (i.e. a router).
//
sirqul_response_t*
LocationAPI_cacheTrilaterationData(apiClient_t *apiClient, double version, char *udid, long sourceTime, int *minimumSampleSize, char *data, binary_t* dataFile)
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
    char *localVarPath = strdup("/api/{version}/location/trilaterate/cache");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_udid = NULL;
    char * valueQuery_udid = NULL;
    keyValuePair_t *keyPairQuery_udid = 0;
    if (udid)
    {
        keyQuery_udid = strdup("udid");
        valueQuery_udid = strdup((udid));
        keyPairQuery_udid = keyValuePair_create(keyQuery_udid, valueQuery_udid);
        list_addElement(localVarQueryParameters,keyPairQuery_udid);
    }

    // query parameters
    char *keyQuery_sourceTime = NULL;
    char * valueQuery_sourceTime ;
    keyValuePair_t *keyPairQuery_sourceTime = 0;
    {
        keyQuery_sourceTime = strdup("sourceTime");
        valueQuery_sourceTime = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_sourceTime, MAX_NUMBER_LENGTH_LONG, "%d", sourceTime);
        keyPairQuery_sourceTime = keyValuePair_create(keyQuery_sourceTime, valueQuery_sourceTime);
        list_addElement(localVarQueryParameters,keyPairQuery_sourceTime);
    }

    // query parameters
    char *keyQuery_minimumSampleSize = NULL;
    char * valueQuery_minimumSampleSize = NULL;
    keyValuePair_t *keyPairQuery_minimumSampleSize = 0;
    if (minimumSampleSize)
    {
        keyQuery_minimumSampleSize = strdup("minimumSampleSize");
        valueQuery_minimumSampleSize = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_minimumSampleSize, MAX_NUMBER_LENGTH, "%d", *minimumSampleSize);
        keyPairQuery_minimumSampleSize = keyValuePair_create(keyQuery_minimumSampleSize, valueQuery_minimumSampleSize);
        list_addElement(localVarQueryParameters,keyPairQuery_minimumSampleSize);
    }

    // query parameters
    char *keyQuery_data = NULL;
    char * valueQuery_data = NULL;
    keyValuePair_t *keyPairQuery_data = 0;
    if (data)
    {
        keyQuery_data = strdup("data");
        valueQuery_data = strdup((data));
        keyPairQuery_data = keyValuePair_create(keyQuery_data, valueQuery_data);
        list_addElement(localVarQueryParameters,keyPairQuery_data);
    }

    // query parameters
    char *keyQuery_dataFile = NULL;
    binary_t* valueQuery_dataFile ;
    keyValuePair_t *keyPairQuery_dataFile = 0;
    if (dataFile)
    {
        keyQuery_dataFile = strdup("dataFile");
        valueQuery_dataFile = (dataFile);
        keyPairQuery_dataFile = keyValuePair_create(keyQuery_dataFile, &valueQuery_dataFile);
        list_addElement(localVarQueryParameters,keyPairQuery_dataFile);
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
        cJSON *LocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(LocationAPIlocalVarJSON);
        cJSON_Delete(LocationAPIlocalVarJSON);
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
    if(keyQuery_udid){
        free(keyQuery_udid);
        keyQuery_udid = NULL;
    }
    if(valueQuery_udid){
        free(valueQuery_udid);
        valueQuery_udid = NULL;
    }
    if(keyPairQuery_udid){
        keyValuePair_free(keyPairQuery_udid);
        keyPairQuery_udid = NULL;
    }
    if(keyQuery_sourceTime){
        free(keyQuery_sourceTime);
        keyQuery_sourceTime = NULL;
    }
    if(keyPairQuery_sourceTime){
        keyValuePair_free(keyPairQuery_sourceTime);
        keyPairQuery_sourceTime = NULL;
    }
    if(keyQuery_minimumSampleSize){
        free(keyQuery_minimumSampleSize);
        keyQuery_minimumSampleSize = NULL;
    }
    if(valueQuery_minimumSampleSize){
        free(valueQuery_minimumSampleSize);
        valueQuery_minimumSampleSize = NULL;
    }
    if(keyPairQuery_minimumSampleSize){
        keyValuePair_free(keyPairQuery_minimumSampleSize);
        keyPairQuery_minimumSampleSize = NULL;
    }
    if(keyQuery_data){
        free(keyQuery_data);
        keyQuery_data = NULL;
    }
    if(valueQuery_data){
        free(valueQuery_data);
        valueQuery_data = NULL;
    }
    if(keyPairQuery_data){
        keyValuePair_free(keyPairQuery_data);
        keyPairQuery_data = NULL;
    }
    if(keyQuery_dataFile){
        free(keyQuery_dataFile);
        keyQuery_dataFile = NULL;
    }
    if(keyPairQuery_dataFile){
        keyValuePair_free(keyPairQuery_dataFile);
        keyPairQuery_dataFile = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Trilateration Data with Rest
//
// Creates trilateration samples for a source device (i.e. a router).
//
sirqul_response_t*
LocationAPI_cacheTrilaterationDataGzip(apiClient_t *apiClient, double version, trilat_cache_request_t *body)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/location/trilaterate/cache/submit");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = trilat_cache_request_convertToJSON(body);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_body);
        localVarBodyLength = strlen(localVarBodyParameters);
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
        cJSON *LocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(LocationAPIlocalVarJSON);
        cJSON_Delete(LocationAPIlocalVarJSON);
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
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Location by IP
//
// Get location information based on an IP address.
//
coords_response_t*
LocationAPI_getLocationByIp(apiClient_t *apiClient, double version, char *ip)
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
    char *localVarPath = strdup("/api/{version}/location/ip");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_ip = NULL;
    char * valueQuery_ip = NULL;
    keyValuePair_t *keyPairQuery_ip = 0;
    if (ip)
    {
        keyQuery_ip = strdup("ip");
        valueQuery_ip = strdup((ip));
        keyPairQuery_ip = keyValuePair_create(keyQuery_ip, valueQuery_ip);
        list_addElement(localVarQueryParameters,keyPairQuery_ip);
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
    coords_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = coords_response_parseFromJSON(LocationAPIlocalVarJSON);
        cJSON_Delete(LocationAPIlocalVarJSON);
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
    if(keyQuery_ip){
        free(keyQuery_ip);
        keyQuery_ip = NULL;
    }
    if(valueQuery_ip){
        free(valueQuery_ip);
        valueQuery_ip = NULL;
    }
    if(keyPairQuery_ip){
        keyValuePair_free(keyPairQuery_ip);
        keyPairQuery_ip = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Location by Trilateration
//
// Send in device data and calculate a position based on signal strengths.
//
geo_point_response_t*
LocationAPI_getLocationByTrilateration(apiClient_t *apiClient, double version, long accountId, double latitude, double longitude, char *data, char *responseFilters)
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
    char *localVarPath = strdup("/api/{version}/account/location/trilaterate");



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
    char *keyQuery_data = NULL;
    char * valueQuery_data = NULL;
    keyValuePair_t *keyPairQuery_data = 0;
    if (data)
    {
        keyQuery_data = strdup("data");
        valueQuery_data = strdup((data));
        keyPairQuery_data = keyValuePair_create(keyQuery_data, valueQuery_data);
        list_addElement(localVarQueryParameters,keyPairQuery_data);
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
    geo_point_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = geo_point_response_parseFromJSON(LocationAPIlocalVarJSON);
        cJSON_Delete(LocationAPIlocalVarJSON);
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
    if(keyQuery_data){
        free(keyQuery_data);
        keyQuery_data = NULL;
    }
    if(valueQuery_data){
        free(valueQuery_data);
        valueQuery_data = NULL;
    }
    if(keyPairQuery_data){
        keyValuePair_free(keyPairQuery_data);
        keyPairQuery_data = NULL;
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
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Regions or Postal Codes
//
// Searches geographic locations by proximity via address or keyword.
//
location_search_response_t*
LocationAPI_getLocations(apiClient_t *apiClient, double version, char *deviceId, long accountId, double currentlatitude, double currentlongitude, double currentLatitude, double currentLongitude, char *query, char *zipcode, char *zipCode, double selectedMaplatitude, double selectedMaplongitude, double selectedMapLatitude, double selectedMapLongitude, double searchRange, int *useGeocode, int *_i, int *start, int *_l, int *limit)
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
    char *localVarPath = strdup("/api/{version}/location/search");



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
    char *keyQuery_currentlatitude = NULL;
    char * valueQuery_currentlatitude = NULL;
    keyValuePair_t *keyPairQuery_currentlatitude = 0;
    {
        keyQuery_currentlatitude = strdup("currentlatitude");
        int s = snprintf(NULL, 0, "%.16e", currentlatitude);
        if (s >= 0)
        {
            valueQuery_currentlatitude = calloc(1,s+1);
            snprintf(valueQuery_currentlatitude, s+1, "%.16e", currentlatitude);
        }
        keyPairQuery_currentlatitude = keyValuePair_create(keyQuery_currentlatitude, valueQuery_currentlatitude);
        list_addElement(localVarQueryParameters,keyPairQuery_currentlatitude);
    }

    // query parameters
    char *keyQuery_currentlongitude = NULL;
    char * valueQuery_currentlongitude = NULL;
    keyValuePair_t *keyPairQuery_currentlongitude = 0;
    {
        keyQuery_currentlongitude = strdup("currentlongitude");
        int s = snprintf(NULL, 0, "%.16e", currentlongitude);
        if (s >= 0)
        {
            valueQuery_currentlongitude = calloc(1,s+1);
            snprintf(valueQuery_currentlongitude, s+1, "%.16e", currentlongitude);
        }
        keyPairQuery_currentlongitude = keyValuePair_create(keyQuery_currentlongitude, valueQuery_currentlongitude);
        list_addElement(localVarQueryParameters,keyPairQuery_currentlongitude);
    }

    // query parameters
    char *keyQuery_currentLatitude = NULL;
    char * valueQuery_currentLatitude = NULL;
    keyValuePair_t *keyPairQuery_currentLatitude = 0;
    {
        keyQuery_currentLatitude = strdup("currentLatitude");
        int s = snprintf(NULL, 0, "%.16e", currentLatitude);
        if (s >= 0)
        {
            valueQuery_currentLatitude = calloc(1,s+1);
            snprintf(valueQuery_currentLatitude, s+1, "%.16e", currentLatitude);
        }
        keyPairQuery_currentLatitude = keyValuePair_create(keyQuery_currentLatitude, valueQuery_currentLatitude);
        list_addElement(localVarQueryParameters,keyPairQuery_currentLatitude);
    }

    // query parameters
    char *keyQuery_currentLongitude = NULL;
    char * valueQuery_currentLongitude = NULL;
    keyValuePair_t *keyPairQuery_currentLongitude = 0;
    {
        keyQuery_currentLongitude = strdup("currentLongitude");
        int s = snprintf(NULL, 0, "%.16e", currentLongitude);
        if (s >= 0)
        {
            valueQuery_currentLongitude = calloc(1,s+1);
            snprintf(valueQuery_currentLongitude, s+1, "%.16e", currentLongitude);
        }
        keyPairQuery_currentLongitude = keyValuePair_create(keyQuery_currentLongitude, valueQuery_currentLongitude);
        list_addElement(localVarQueryParameters,keyPairQuery_currentLongitude);
    }

    // query parameters
    char *keyQuery_query = NULL;
    char * valueQuery_query = NULL;
    keyValuePair_t *keyPairQuery_query = 0;
    if (query)
    {
        keyQuery_query = strdup("query");
        valueQuery_query = strdup((query));
        keyPairQuery_query = keyValuePair_create(keyQuery_query, valueQuery_query);
        list_addElement(localVarQueryParameters,keyPairQuery_query);
    }

    // query parameters
    char *keyQuery_zipcode = NULL;
    char * valueQuery_zipcode = NULL;
    keyValuePair_t *keyPairQuery_zipcode = 0;
    if (zipcode)
    {
        keyQuery_zipcode = strdup("zipcode");
        valueQuery_zipcode = strdup((zipcode));
        keyPairQuery_zipcode = keyValuePair_create(keyQuery_zipcode, valueQuery_zipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_zipcode);
    }

    // query parameters
    char *keyQuery_zipCode = NULL;
    char * valueQuery_zipCode = NULL;
    keyValuePair_t *keyPairQuery_zipCode = 0;
    if (zipCode)
    {
        keyQuery_zipCode = strdup("zipCode");
        valueQuery_zipCode = strdup((zipCode));
        keyPairQuery_zipCode = keyValuePair_create(keyQuery_zipCode, valueQuery_zipCode);
        list_addElement(localVarQueryParameters,keyPairQuery_zipCode);
    }

    // query parameters
    char *keyQuery_selectedMaplatitude = NULL;
    char * valueQuery_selectedMaplatitude = NULL;
    keyValuePair_t *keyPairQuery_selectedMaplatitude = 0;
    {
        keyQuery_selectedMaplatitude = strdup("selectedMaplatitude");
        int s = snprintf(NULL, 0, "%.16e", selectedMaplatitude);
        if (s >= 0)
        {
            valueQuery_selectedMaplatitude = calloc(1,s+1);
            snprintf(valueQuery_selectedMaplatitude, s+1, "%.16e", selectedMaplatitude);
        }
        keyPairQuery_selectedMaplatitude = keyValuePair_create(keyQuery_selectedMaplatitude, valueQuery_selectedMaplatitude);
        list_addElement(localVarQueryParameters,keyPairQuery_selectedMaplatitude);
    }

    // query parameters
    char *keyQuery_selectedMaplongitude = NULL;
    char * valueQuery_selectedMaplongitude = NULL;
    keyValuePair_t *keyPairQuery_selectedMaplongitude = 0;
    {
        keyQuery_selectedMaplongitude = strdup("selectedMaplongitude");
        int s = snprintf(NULL, 0, "%.16e", selectedMaplongitude);
        if (s >= 0)
        {
            valueQuery_selectedMaplongitude = calloc(1,s+1);
            snprintf(valueQuery_selectedMaplongitude, s+1, "%.16e", selectedMaplongitude);
        }
        keyPairQuery_selectedMaplongitude = keyValuePair_create(keyQuery_selectedMaplongitude, valueQuery_selectedMaplongitude);
        list_addElement(localVarQueryParameters,keyPairQuery_selectedMaplongitude);
    }

    // query parameters
    char *keyQuery_selectedMapLatitude = NULL;
    char * valueQuery_selectedMapLatitude = NULL;
    keyValuePair_t *keyPairQuery_selectedMapLatitude = 0;
    {
        keyQuery_selectedMapLatitude = strdup("selectedMapLatitude");
        int s = snprintf(NULL, 0, "%.16e", selectedMapLatitude);
        if (s >= 0)
        {
            valueQuery_selectedMapLatitude = calloc(1,s+1);
            snprintf(valueQuery_selectedMapLatitude, s+1, "%.16e", selectedMapLatitude);
        }
        keyPairQuery_selectedMapLatitude = keyValuePair_create(keyQuery_selectedMapLatitude, valueQuery_selectedMapLatitude);
        list_addElement(localVarQueryParameters,keyPairQuery_selectedMapLatitude);
    }

    // query parameters
    char *keyQuery_selectedMapLongitude = NULL;
    char * valueQuery_selectedMapLongitude = NULL;
    keyValuePair_t *keyPairQuery_selectedMapLongitude = 0;
    {
        keyQuery_selectedMapLongitude = strdup("selectedMapLongitude");
        int s = snprintf(NULL, 0, "%.16e", selectedMapLongitude);
        if (s >= 0)
        {
            valueQuery_selectedMapLongitude = calloc(1,s+1);
            snprintf(valueQuery_selectedMapLongitude, s+1, "%.16e", selectedMapLongitude);
        }
        keyPairQuery_selectedMapLongitude = keyValuePair_create(keyQuery_selectedMapLongitude, valueQuery_selectedMapLongitude);
        list_addElement(localVarQueryParameters,keyPairQuery_selectedMapLongitude);
    }

    // query parameters
    char *keyQuery_searchRange = NULL;
    char * valueQuery_searchRange = NULL;
    keyValuePair_t *keyPairQuery_searchRange = 0;
    {
        keyQuery_searchRange = strdup("searchRange");
        int s = snprintf(NULL, 0, "%.16e", searchRange);
        if (s >= 0)
        {
            valueQuery_searchRange = calloc(1,s+1);
            snprintf(valueQuery_searchRange, s+1, "%.16e", searchRange);
        }
        keyPairQuery_searchRange = keyValuePair_create(keyQuery_searchRange, valueQuery_searchRange);
        list_addElement(localVarQueryParameters,keyPairQuery_searchRange);
    }

    // query parameters
    char *keyQuery_useGeocode = NULL;
    char * valueQuery_useGeocode = NULL;
    keyValuePair_t *keyPairQuery_useGeocode = 0;
    if (useGeocode)
    {
        keyQuery_useGeocode = strdup("useGeocode");
        valueQuery_useGeocode = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_useGeocode, MAX_NUMBER_LENGTH, "%d", *useGeocode);
        keyPairQuery_useGeocode = keyValuePair_create(keyQuery_useGeocode, valueQuery_useGeocode);
        list_addElement(localVarQueryParameters,keyPairQuery_useGeocode);
    }

    // query parameters
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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
    location_search_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *LocationAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = location_search_response_parseFromJSON(LocationAPIlocalVarJSON);
        cJSON_Delete(LocationAPIlocalVarJSON);
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
    if(keyQuery_currentlatitude){
        free(keyQuery_currentlatitude);
        keyQuery_currentlatitude = NULL;
    }
    if(keyPairQuery_currentlatitude){
        keyValuePair_free(keyPairQuery_currentlatitude);
        keyPairQuery_currentlatitude = NULL;
    }
    if(keyQuery_currentlongitude){
        free(keyQuery_currentlongitude);
        keyQuery_currentlongitude = NULL;
    }
    if(keyPairQuery_currentlongitude){
        keyValuePair_free(keyPairQuery_currentlongitude);
        keyPairQuery_currentlongitude = NULL;
    }
    if(keyQuery_currentLatitude){
        free(keyQuery_currentLatitude);
        keyQuery_currentLatitude = NULL;
    }
    if(keyPairQuery_currentLatitude){
        keyValuePair_free(keyPairQuery_currentLatitude);
        keyPairQuery_currentLatitude = NULL;
    }
    if(keyQuery_currentLongitude){
        free(keyQuery_currentLongitude);
        keyQuery_currentLongitude = NULL;
    }
    if(keyPairQuery_currentLongitude){
        keyValuePair_free(keyPairQuery_currentLongitude);
        keyPairQuery_currentLongitude = NULL;
    }
    if(keyQuery_query){
        free(keyQuery_query);
        keyQuery_query = NULL;
    }
    if(valueQuery_query){
        free(valueQuery_query);
        valueQuery_query = NULL;
    }
    if(keyPairQuery_query){
        keyValuePair_free(keyPairQuery_query);
        keyPairQuery_query = NULL;
    }
    if(keyQuery_zipcode){
        free(keyQuery_zipcode);
        keyQuery_zipcode = NULL;
    }
    if(valueQuery_zipcode){
        free(valueQuery_zipcode);
        valueQuery_zipcode = NULL;
    }
    if(keyPairQuery_zipcode){
        keyValuePair_free(keyPairQuery_zipcode);
        keyPairQuery_zipcode = NULL;
    }
    if(keyQuery_zipCode){
        free(keyQuery_zipCode);
        keyQuery_zipCode = NULL;
    }
    if(valueQuery_zipCode){
        free(valueQuery_zipCode);
        valueQuery_zipCode = NULL;
    }
    if(keyPairQuery_zipCode){
        keyValuePair_free(keyPairQuery_zipCode);
        keyPairQuery_zipCode = NULL;
    }
    if(keyQuery_selectedMaplatitude){
        free(keyQuery_selectedMaplatitude);
        keyQuery_selectedMaplatitude = NULL;
    }
    if(keyPairQuery_selectedMaplatitude){
        keyValuePair_free(keyPairQuery_selectedMaplatitude);
        keyPairQuery_selectedMaplatitude = NULL;
    }
    if(keyQuery_selectedMaplongitude){
        free(keyQuery_selectedMaplongitude);
        keyQuery_selectedMaplongitude = NULL;
    }
    if(keyPairQuery_selectedMaplongitude){
        keyValuePair_free(keyPairQuery_selectedMaplongitude);
        keyPairQuery_selectedMaplongitude = NULL;
    }
    if(keyQuery_selectedMapLatitude){
        free(keyQuery_selectedMapLatitude);
        keyQuery_selectedMapLatitude = NULL;
    }
    if(keyPairQuery_selectedMapLatitude){
        keyValuePair_free(keyPairQuery_selectedMapLatitude);
        keyPairQuery_selectedMapLatitude = NULL;
    }
    if(keyQuery_selectedMapLongitude){
        free(keyQuery_selectedMapLongitude);
        keyQuery_selectedMapLongitude = NULL;
    }
    if(keyPairQuery_selectedMapLongitude){
        keyValuePair_free(keyPairQuery_selectedMapLongitude);
        keyPairQuery_selectedMapLongitude = NULL;
    }
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
    }
    if(keyQuery_useGeocode){
        free(keyQuery_useGeocode);
        keyQuery_useGeocode = NULL;
    }
    if(valueQuery_useGeocode){
        free(valueQuery_useGeocode);
        valueQuery_useGeocode = NULL;
    }
    if(keyPairQuery_useGeocode){
        keyValuePair_free(keyPairQuery_useGeocode);
        keyPairQuery_useGeocode = NULL;
    }
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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

