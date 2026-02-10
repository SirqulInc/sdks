#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "coords_response.h"



static coords_response_t *coords_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    double latitude,
    double longitude,
    char *country,
    char *country_code,
    char *region,
    char *city,
    char *postal_code,
    char *region_code,
    char *returning
    ) {
    coords_response_t *coords_response_local_var = malloc(sizeof(coords_response_t));
    if (!coords_response_local_var) {
        return NULL;
    }
    coords_response_local_var->valid = valid;
    coords_response_local_var->message = message;
    coords_response_local_var->version = version;
    coords_response_local_var->serialize_nulls = serialize_nulls;
    coords_response_local_var->start_time_log = start_time_log;
    coords_response_local_var->error_code = error_code;
    coords_response_local_var->request = request;
    coords_response_local_var->latitude = latitude;
    coords_response_local_var->longitude = longitude;
    coords_response_local_var->country = country;
    coords_response_local_var->country_code = country_code;
    coords_response_local_var->region = region;
    coords_response_local_var->city = city;
    coords_response_local_var->postal_code = postal_code;
    coords_response_local_var->region_code = region_code;
    coords_response_local_var->returning = returning;

    coords_response_local_var->_library_owned = 1;
    return coords_response_local_var;
}

__attribute__((deprecated)) coords_response_t *coords_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    double latitude,
    double longitude,
    char *country,
    char *country_code,
    char *region,
    char *city,
    char *postal_code,
    char *region_code,
    char *returning
    ) {
    return coords_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        latitude,
        longitude,
        country,
        country_code,
        region,
        city,
        postal_code,
        region_code,
        returning
        );
}

void coords_response_free(coords_response_t *coords_response) {
    if(NULL == coords_response){
        return ;
    }
    if(coords_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "coords_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (coords_response->message) {
        free(coords_response->message);
        coords_response->message = NULL;
    }
    if (coords_response->error_code) {
        free(coords_response->error_code);
        coords_response->error_code = NULL;
    }
    if (coords_response->request) {
        list_ForEach(listEntry, coords_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(coords_response->request);
        coords_response->request = NULL;
    }
    if (coords_response->country) {
        free(coords_response->country);
        coords_response->country = NULL;
    }
    if (coords_response->country_code) {
        free(coords_response->country_code);
        coords_response->country_code = NULL;
    }
    if (coords_response->region) {
        free(coords_response->region);
        coords_response->region = NULL;
    }
    if (coords_response->city) {
        free(coords_response->city);
        coords_response->city = NULL;
    }
    if (coords_response->postal_code) {
        free(coords_response->postal_code);
        coords_response->postal_code = NULL;
    }
    if (coords_response->region_code) {
        free(coords_response->region_code);
        coords_response->region_code = NULL;
    }
    if (coords_response->returning) {
        free(coords_response->returning);
        coords_response->returning = NULL;
    }
    free(coords_response);
}

cJSON *coords_response_convertToJSON(coords_response_t *coords_response) {
    cJSON *item = cJSON_CreateObject();

    // coords_response->valid
    if(coords_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", coords_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // coords_response->message
    if(coords_response->message) {
    if(cJSON_AddStringToObject(item, "message", coords_response->message) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->version
    if(coords_response->version) {
    if(cJSON_AddNumberToObject(item, "version", coords_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // coords_response->serialize_nulls
    if(coords_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", coords_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // coords_response->start_time_log
    if(coords_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", coords_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // coords_response->error_code
    if(coords_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", coords_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->request
    if(coords_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (coords_response->request) {
    list_ForEach(requestListEntry, coords_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // coords_response->latitude
    if(coords_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", coords_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // coords_response->longitude
    if(coords_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", coords_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // coords_response->country
    if(coords_response->country) {
    if(cJSON_AddStringToObject(item, "country", coords_response->country) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->country_code
    if(coords_response->country_code) {
    if(cJSON_AddStringToObject(item, "countryCode", coords_response->country_code) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->region
    if(coords_response->region) {
    if(cJSON_AddStringToObject(item, "region", coords_response->region) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->city
    if(coords_response->city) {
    if(cJSON_AddStringToObject(item, "city", coords_response->city) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->postal_code
    if(coords_response->postal_code) {
    if(cJSON_AddStringToObject(item, "postalCode", coords_response->postal_code) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->region_code
    if(coords_response->region_code) {
    if(cJSON_AddStringToObject(item, "regionCode", coords_response->region_code) == NULL) {
    goto fail; //String
    }
    }


    // coords_response->returning
    if(coords_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", coords_response->returning) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

coords_response_t *coords_response_parseFromJSON(cJSON *coords_responseJSON){

    coords_response_t *coords_response_local_var = NULL;

    // define the local list for coords_response->request
    list_t *requestList = NULL;

    // coords_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // coords_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // coords_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // coords_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // coords_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // coords_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // coords_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }

    // coords_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // coords_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // coords_response->country
    cJSON *country = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "country");
    if (cJSON_IsNull(country)) {
        country = NULL;
    }
    if (country) { 
    if(!cJSON_IsString(country) && !cJSON_IsNull(country))
    {
    goto end; //String
    }
    }

    // coords_response->country_code
    cJSON *country_code = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "countryCode");
    if (cJSON_IsNull(country_code)) {
        country_code = NULL;
    }
    if (country_code) { 
    if(!cJSON_IsString(country_code) && !cJSON_IsNull(country_code))
    {
    goto end; //String
    }
    }

    // coords_response->region
    cJSON *region = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "region");
    if (cJSON_IsNull(region)) {
        region = NULL;
    }
    if (region) { 
    if(!cJSON_IsString(region) && !cJSON_IsNull(region))
    {
    goto end; //String
    }
    }

    // coords_response->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // coords_response->postal_code
    cJSON *postal_code = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "postalCode");
    if (cJSON_IsNull(postal_code)) {
        postal_code = NULL;
    }
    if (postal_code) { 
    if(!cJSON_IsString(postal_code) && !cJSON_IsNull(postal_code))
    {
    goto end; //String
    }
    }

    // coords_response->region_code
    cJSON *region_code = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "regionCode");
    if (cJSON_IsNull(region_code)) {
        region_code = NULL;
    }
    if (region_code) { 
    if(!cJSON_IsString(region_code) && !cJSON_IsNull(region_code))
    {
    goto end; //String
    }
    }

    // coords_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(coords_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    coords_response_local_var = coords_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        country && !cJSON_IsNull(country) ? strdup(country->valuestring) : NULL,
        country_code && !cJSON_IsNull(country_code) ? strdup(country_code->valuestring) : NULL,
        region && !cJSON_IsNull(region) ? strdup(region->valuestring) : NULL,
        city && !cJSON_IsNull(city) ? strdup(city->valuestring) : NULL,
        postal_code && !cJSON_IsNull(postal_code) ? strdup(postal_code->valuestring) : NULL,
        region_code && !cJSON_IsNull(region_code) ? strdup(region_code->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return coords_response_local_var;
end:
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    return NULL;

}
