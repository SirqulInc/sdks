#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "postal_code_response.h"



static postal_code_response_t *postal_code_response_create_internal(
    char *city,
    char *state_code,
    char *code,
    double latitude,
    double longitude,
    char *timezone,
    int utc_offset
    ) {
    postal_code_response_t *postal_code_response_local_var = malloc(sizeof(postal_code_response_t));
    if (!postal_code_response_local_var) {
        return NULL;
    }
    postal_code_response_local_var->city = city;
    postal_code_response_local_var->state_code = state_code;
    postal_code_response_local_var->code = code;
    postal_code_response_local_var->latitude = latitude;
    postal_code_response_local_var->longitude = longitude;
    postal_code_response_local_var->timezone = timezone;
    postal_code_response_local_var->utc_offset = utc_offset;

    postal_code_response_local_var->_library_owned = 1;
    return postal_code_response_local_var;
}

__attribute__((deprecated)) postal_code_response_t *postal_code_response_create(
    char *city,
    char *state_code,
    char *code,
    double latitude,
    double longitude,
    char *timezone,
    int utc_offset
    ) {
    return postal_code_response_create_internal (
        city,
        state_code,
        code,
        latitude,
        longitude,
        timezone,
        utc_offset
        );
}

void postal_code_response_free(postal_code_response_t *postal_code_response) {
    if(NULL == postal_code_response){
        return ;
    }
    if(postal_code_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "postal_code_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (postal_code_response->city) {
        free(postal_code_response->city);
        postal_code_response->city = NULL;
    }
    if (postal_code_response->state_code) {
        free(postal_code_response->state_code);
        postal_code_response->state_code = NULL;
    }
    if (postal_code_response->code) {
        free(postal_code_response->code);
        postal_code_response->code = NULL;
    }
    if (postal_code_response->timezone) {
        free(postal_code_response->timezone);
        postal_code_response->timezone = NULL;
    }
    free(postal_code_response);
}

cJSON *postal_code_response_convertToJSON(postal_code_response_t *postal_code_response) {
    cJSON *item = cJSON_CreateObject();

    // postal_code_response->city
    if(postal_code_response->city) {
    if(cJSON_AddStringToObject(item, "city", postal_code_response->city) == NULL) {
    goto fail; //String
    }
    }


    // postal_code_response->state_code
    if(postal_code_response->state_code) {
    if(cJSON_AddStringToObject(item, "stateCode", postal_code_response->state_code) == NULL) {
    goto fail; //String
    }
    }


    // postal_code_response->code
    if(postal_code_response->code) {
    if(cJSON_AddStringToObject(item, "code", postal_code_response->code) == NULL) {
    goto fail; //String
    }
    }


    // postal_code_response->latitude
    if(postal_code_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", postal_code_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // postal_code_response->longitude
    if(postal_code_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", postal_code_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // postal_code_response->timezone
    if(postal_code_response->timezone) {
    if(cJSON_AddStringToObject(item, "timezone", postal_code_response->timezone) == NULL) {
    goto fail; //String
    }
    }


    // postal_code_response->utc_offset
    if(postal_code_response->utc_offset) {
    if(cJSON_AddNumberToObject(item, "utcOffset", postal_code_response->utc_offset) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

postal_code_response_t *postal_code_response_parseFromJSON(cJSON *postal_code_responseJSON){

    postal_code_response_t *postal_code_response_local_var = NULL;

    // postal_code_response->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(postal_code_responseJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // postal_code_response->state_code
    cJSON *state_code = cJSON_GetObjectItemCaseSensitive(postal_code_responseJSON, "stateCode");
    if (cJSON_IsNull(state_code)) {
        state_code = NULL;
    }
    if (state_code) { 
    if(!cJSON_IsString(state_code) && !cJSON_IsNull(state_code))
    {
    goto end; //String
    }
    }

    // postal_code_response->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(postal_code_responseJSON, "code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    if(!cJSON_IsString(code) && !cJSON_IsNull(code))
    {
    goto end; //String
    }
    }

    // postal_code_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(postal_code_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // postal_code_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(postal_code_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // postal_code_response->timezone
    cJSON *timezone = cJSON_GetObjectItemCaseSensitive(postal_code_responseJSON, "timezone");
    if (cJSON_IsNull(timezone)) {
        timezone = NULL;
    }
    if (timezone) { 
    if(!cJSON_IsString(timezone) && !cJSON_IsNull(timezone))
    {
    goto end; //String
    }
    }

    // postal_code_response->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(postal_code_responseJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsNumber(utc_offset))
    {
    goto end; //Numeric
    }
    }


    postal_code_response_local_var = postal_code_response_create_internal (
        city && !cJSON_IsNull(city) ? strdup(city->valuestring) : NULL,
        state_code && !cJSON_IsNull(state_code) ? strdup(state_code->valuestring) : NULL,
        code && !cJSON_IsNull(code) ? strdup(code->valuestring) : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        timezone && !cJSON_IsNull(timezone) ? strdup(timezone->valuestring) : NULL,
        utc_offset ? utc_offset->valuedouble : 0
        );

    return postal_code_response_local_var;
end:
    return NULL;

}
