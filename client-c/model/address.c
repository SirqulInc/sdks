#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "address.h"



static address_t *address_create_internal(
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
    address_t *address_local_var = malloc(sizeof(address_t));
    if (!address_local_var) {
        return NULL;
    }
    address_local_var->street_address = street_address;
    address_local_var->street_address2 = street_address2;
    address_local_var->city = city;
    address_local_var->state_code = state_code;
    address_local_var->state = state;
    address_local_var->postal_code = postal_code;
    address_local_var->country_code = country_code;
    address_local_var->country = country;
    address_local_var->display = display;

    address_local_var->_library_owned = 1;
    return address_local_var;
}

__attribute__((deprecated)) address_t *address_create(
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
    return address_create_internal (
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

void address_free(address_t *address) {
    if(NULL == address){
        return ;
    }
    if(address->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "address_free");
        return ;
    }
    listEntry_t *listEntry;
    if (address->street_address) {
        free(address->street_address);
        address->street_address = NULL;
    }
    if (address->street_address2) {
        free(address->street_address2);
        address->street_address2 = NULL;
    }
    if (address->city) {
        free(address->city);
        address->city = NULL;
    }
    if (address->state_code) {
        free(address->state_code);
        address->state_code = NULL;
    }
    if (address->state) {
        free(address->state);
        address->state = NULL;
    }
    if (address->postal_code) {
        free(address->postal_code);
        address->postal_code = NULL;
    }
    if (address->country_code) {
        free(address->country_code);
        address->country_code = NULL;
    }
    if (address->country) {
        free(address->country);
        address->country = NULL;
    }
    if (address->display) {
        free(address->display);
        address->display = NULL;
    }
    free(address);
}

cJSON *address_convertToJSON(address_t *address) {
    cJSON *item = cJSON_CreateObject();

    // address->street_address
    if(address->street_address) {
    if(cJSON_AddStringToObject(item, "streetAddress", address->street_address) == NULL) {
    goto fail; //String
    }
    }


    // address->street_address2
    if(address->street_address2) {
    if(cJSON_AddStringToObject(item, "streetAddress2", address->street_address2) == NULL) {
    goto fail; //String
    }
    }


    // address->city
    if(address->city) {
    if(cJSON_AddStringToObject(item, "city", address->city) == NULL) {
    goto fail; //String
    }
    }


    // address->state_code
    if(address->state_code) {
    if(cJSON_AddStringToObject(item, "stateCode", address->state_code) == NULL) {
    goto fail; //String
    }
    }


    // address->state
    if(address->state) {
    if(cJSON_AddStringToObject(item, "state", address->state) == NULL) {
    goto fail; //String
    }
    }


    // address->postal_code
    if(address->postal_code) {
    if(cJSON_AddStringToObject(item, "postalCode", address->postal_code) == NULL) {
    goto fail; //String
    }
    }


    // address->country_code
    if(address->country_code) {
    if(cJSON_AddStringToObject(item, "countryCode", address->country_code) == NULL) {
    goto fail; //String
    }
    }


    // address->country
    if(address->country) {
    if(cJSON_AddStringToObject(item, "country", address->country) == NULL) {
    goto fail; //String
    }
    }


    // address->display
    if(address->display) {
    if(cJSON_AddStringToObject(item, "display", address->display) == NULL) {
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

address_t *address_parseFromJSON(cJSON *addressJSON){

    address_t *address_local_var = NULL;

    // address->street_address
    cJSON *street_address = cJSON_GetObjectItemCaseSensitive(addressJSON, "streetAddress");
    if (cJSON_IsNull(street_address)) {
        street_address = NULL;
    }
    if (street_address) { 
    if(!cJSON_IsString(street_address) && !cJSON_IsNull(street_address))
    {
    goto end; //String
    }
    }

    // address->street_address2
    cJSON *street_address2 = cJSON_GetObjectItemCaseSensitive(addressJSON, "streetAddress2");
    if (cJSON_IsNull(street_address2)) {
        street_address2 = NULL;
    }
    if (street_address2) { 
    if(!cJSON_IsString(street_address2) && !cJSON_IsNull(street_address2))
    {
    goto end; //String
    }
    }

    // address->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(addressJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // address->state_code
    cJSON *state_code = cJSON_GetObjectItemCaseSensitive(addressJSON, "stateCode");
    if (cJSON_IsNull(state_code)) {
        state_code = NULL;
    }
    if (state_code) { 
    if(!cJSON_IsString(state_code) && !cJSON_IsNull(state_code))
    {
    goto end; //String
    }
    }

    // address->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(addressJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // address->postal_code
    cJSON *postal_code = cJSON_GetObjectItemCaseSensitive(addressJSON, "postalCode");
    if (cJSON_IsNull(postal_code)) {
        postal_code = NULL;
    }
    if (postal_code) { 
    if(!cJSON_IsString(postal_code) && !cJSON_IsNull(postal_code))
    {
    goto end; //String
    }
    }

    // address->country_code
    cJSON *country_code = cJSON_GetObjectItemCaseSensitive(addressJSON, "countryCode");
    if (cJSON_IsNull(country_code)) {
        country_code = NULL;
    }
    if (country_code) { 
    if(!cJSON_IsString(country_code) && !cJSON_IsNull(country_code))
    {
    goto end; //String
    }
    }

    // address->country
    cJSON *country = cJSON_GetObjectItemCaseSensitive(addressJSON, "country");
    if (cJSON_IsNull(country)) {
        country = NULL;
    }
    if (country) { 
    if(!cJSON_IsString(country) && !cJSON_IsNull(country))
    {
    goto end; //String
    }
    }

    // address->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(addressJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }


    address_local_var = address_create_internal (
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

    return address_local_var;
end:
    return NULL;

}
