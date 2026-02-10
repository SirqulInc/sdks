#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "address_response.h"



static address_response_t *address_response_create_internal(
    char *street_address,
    char *street_address2,
    char *city,
    char *state_code,
    char *state,
    char *postal_code,
    char *country_code,
    char *country,
    char *display
    ) {
    address_response_t *address_response_local_var = malloc(sizeof(address_response_t));
    if (!address_response_local_var) {
        return NULL;
    }
    address_response_local_var->street_address = street_address;
    address_response_local_var->street_address2 = street_address2;
    address_response_local_var->city = city;
    address_response_local_var->state_code = state_code;
    address_response_local_var->state = state;
    address_response_local_var->postal_code = postal_code;
    address_response_local_var->country_code = country_code;
    address_response_local_var->country = country;
    address_response_local_var->display = display;

    address_response_local_var->_library_owned = 1;
    return address_response_local_var;
}

__attribute__((deprecated)) address_response_t *address_response_create(
    char *street_address,
    char *street_address2,
    char *city,
    char *state_code,
    char *state,
    char *postal_code,
    char *country_code,
    char *country,
    char *display
    ) {
    return address_response_create_internal (
        street_address,
        street_address2,
        city,
        state_code,
        state,
        postal_code,
        country_code,
        country,
        display
        );
}

void address_response_free(address_response_t *address_response) {
    if(NULL == address_response){
        return ;
    }
    if(address_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "address_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (address_response->street_address) {
        free(address_response->street_address);
        address_response->street_address = NULL;
    }
    if (address_response->street_address2) {
        free(address_response->street_address2);
        address_response->street_address2 = NULL;
    }
    if (address_response->city) {
        free(address_response->city);
        address_response->city = NULL;
    }
    if (address_response->state_code) {
        free(address_response->state_code);
        address_response->state_code = NULL;
    }
    if (address_response->state) {
        free(address_response->state);
        address_response->state = NULL;
    }
    if (address_response->postal_code) {
        free(address_response->postal_code);
        address_response->postal_code = NULL;
    }
    if (address_response->country_code) {
        free(address_response->country_code);
        address_response->country_code = NULL;
    }
    if (address_response->country) {
        free(address_response->country);
        address_response->country = NULL;
    }
    if (address_response->display) {
        free(address_response->display);
        address_response->display = NULL;
    }
    free(address_response);
}

cJSON *address_response_convertToJSON(address_response_t *address_response) {
    cJSON *item = cJSON_CreateObject();

    // address_response->street_address
    if(address_response->street_address) {
    if(cJSON_AddStringToObject(item, "streetAddress", address_response->street_address) == NULL) {
    goto fail; //String
    }
    }


    // address_response->street_address2
    if(address_response->street_address2) {
    if(cJSON_AddStringToObject(item, "streetAddress2", address_response->street_address2) == NULL) {
    goto fail; //String
    }
    }


    // address_response->city
    if(address_response->city) {
    if(cJSON_AddStringToObject(item, "city", address_response->city) == NULL) {
    goto fail; //String
    }
    }


    // address_response->state_code
    if(address_response->state_code) {
    if(cJSON_AddStringToObject(item, "stateCode", address_response->state_code) == NULL) {
    goto fail; //String
    }
    }


    // address_response->state
    if(address_response->state) {
    if(cJSON_AddStringToObject(item, "state", address_response->state) == NULL) {
    goto fail; //String
    }
    }


    // address_response->postal_code
    if(address_response->postal_code) {
    if(cJSON_AddStringToObject(item, "postalCode", address_response->postal_code) == NULL) {
    goto fail; //String
    }
    }


    // address_response->country_code
    if(address_response->country_code) {
    if(cJSON_AddStringToObject(item, "countryCode", address_response->country_code) == NULL) {
    goto fail; //String
    }
    }


    // address_response->country
    if(address_response->country) {
    if(cJSON_AddStringToObject(item, "country", address_response->country) == NULL) {
    goto fail; //String
    }
    }


    // address_response->display
    if(address_response->display) {
    if(cJSON_AddStringToObject(item, "display", address_response->display) == NULL) {
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

address_response_t *address_response_parseFromJSON(cJSON *address_responseJSON){

    address_response_t *address_response_local_var = NULL;

    // address_response->street_address
    cJSON *street_address = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "streetAddress");
    if (cJSON_IsNull(street_address)) {
        street_address = NULL;
    }
    if (street_address) { 
    if(!cJSON_IsString(street_address) && !cJSON_IsNull(street_address))
    {
    goto end; //String
    }
    }

    // address_response->street_address2
    cJSON *street_address2 = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "streetAddress2");
    if (cJSON_IsNull(street_address2)) {
        street_address2 = NULL;
    }
    if (street_address2) { 
    if(!cJSON_IsString(street_address2) && !cJSON_IsNull(street_address2))
    {
    goto end; //String
    }
    }

    // address_response->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // address_response->state_code
    cJSON *state_code = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "stateCode");
    if (cJSON_IsNull(state_code)) {
        state_code = NULL;
    }
    if (state_code) { 
    if(!cJSON_IsString(state_code) && !cJSON_IsNull(state_code))
    {
    goto end; //String
    }
    }

    // address_response->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // address_response->postal_code
    cJSON *postal_code = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "postalCode");
    if (cJSON_IsNull(postal_code)) {
        postal_code = NULL;
    }
    if (postal_code) { 
    if(!cJSON_IsString(postal_code) && !cJSON_IsNull(postal_code))
    {
    goto end; //String
    }
    }

    // address_response->country_code
    cJSON *country_code = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "countryCode");
    if (cJSON_IsNull(country_code)) {
        country_code = NULL;
    }
    if (country_code) { 
    if(!cJSON_IsString(country_code) && !cJSON_IsNull(country_code))
    {
    goto end; //String
    }
    }

    // address_response->country
    cJSON *country = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "country");
    if (cJSON_IsNull(country)) {
        country = NULL;
    }
    if (country) { 
    if(!cJSON_IsString(country) && !cJSON_IsNull(country))
    {
    goto end; //String
    }
    }

    // address_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(address_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }


    address_response_local_var = address_response_create_internal (
        street_address && !cJSON_IsNull(street_address) ? strdup(street_address->valuestring) : NULL,
        street_address2 && !cJSON_IsNull(street_address2) ? strdup(street_address2->valuestring) : NULL,
        city && !cJSON_IsNull(city) ? strdup(city->valuestring) : NULL,
        state_code && !cJSON_IsNull(state_code) ? strdup(state_code->valuestring) : NULL,
        state && !cJSON_IsNull(state) ? strdup(state->valuestring) : NULL,
        postal_code && !cJSON_IsNull(postal_code) ? strdup(postal_code->valuestring) : NULL,
        country_code && !cJSON_IsNull(country_code) ? strdup(country_code->valuestring) : NULL,
        country && !cJSON_IsNull(country) ? strdup(country->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL
        );

    return address_response_local_var;
end:
    return NULL;

}
