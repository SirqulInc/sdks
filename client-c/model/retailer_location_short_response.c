#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_location_short_response.h"



static retailer_location_short_response_t *retailer_location_short_response_create_internal(
    long retailer_location_id,
    char *name,
    contact_info_response_t *contact,
    double latitude,
    double longitude,
    int active,
    long favorite_id,
    int favorite
    ) {
    retailer_location_short_response_t *retailer_location_short_response_local_var = malloc(sizeof(retailer_location_short_response_t));
    if (!retailer_location_short_response_local_var) {
        return NULL;
    }
    retailer_location_short_response_local_var->retailer_location_id = retailer_location_id;
    retailer_location_short_response_local_var->name = name;
    retailer_location_short_response_local_var->contact = contact;
    retailer_location_short_response_local_var->latitude = latitude;
    retailer_location_short_response_local_var->longitude = longitude;
    retailer_location_short_response_local_var->active = active;
    retailer_location_short_response_local_var->favorite_id = favorite_id;
    retailer_location_short_response_local_var->favorite = favorite;

    retailer_location_short_response_local_var->_library_owned = 1;
    return retailer_location_short_response_local_var;
}

__attribute__((deprecated)) retailer_location_short_response_t *retailer_location_short_response_create(
    long retailer_location_id,
    char *name,
    contact_info_response_t *contact,
    double latitude,
    double longitude,
    int active,
    long favorite_id,
    int favorite
    ) {
    return retailer_location_short_response_create_internal (
        retailer_location_id,
        name,
        contact,
        latitude,
        longitude,
        active,
        favorite_id,
        favorite
        );
}

void retailer_location_short_response_free(retailer_location_short_response_t *retailer_location_short_response) {
    if(NULL == retailer_location_short_response){
        return ;
    }
    if(retailer_location_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_location_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer_location_short_response->name) {
        free(retailer_location_short_response->name);
        retailer_location_short_response->name = NULL;
    }
    if (retailer_location_short_response->contact) {
        contact_info_response_free(retailer_location_short_response->contact);
        retailer_location_short_response->contact = NULL;
    }
    free(retailer_location_short_response);
}

cJSON *retailer_location_short_response_convertToJSON(retailer_location_short_response_t *retailer_location_short_response) {
    cJSON *item = cJSON_CreateObject();

    // retailer_location_short_response->retailer_location_id
    if(retailer_location_short_response->retailer_location_id) {
    if(cJSON_AddNumberToObject(item, "retailerLocationId", retailer_location_short_response->retailer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_short_response->name
    if(retailer_location_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", retailer_location_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_location_short_response->contact
    if(retailer_location_short_response->contact) {
    cJSON *contact_local_JSON = contact_info_response_convertToJSON(retailer_location_short_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_location_short_response->latitude
    if(retailer_location_short_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", retailer_location_short_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_short_response->longitude
    if(retailer_location_short_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", retailer_location_short_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_short_response->active
    if(retailer_location_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", retailer_location_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_location_short_response->favorite_id
    if(retailer_location_short_response->favorite_id) {
    if(cJSON_AddNumberToObject(item, "favoriteId", retailer_location_short_response->favorite_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_location_short_response->favorite
    if(retailer_location_short_response->favorite) {
    if(cJSON_AddBoolToObject(item, "favorite", retailer_location_short_response->favorite) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

retailer_location_short_response_t *retailer_location_short_response_parseFromJSON(cJSON *retailer_location_short_responseJSON){

    retailer_location_short_response_t *retailer_location_short_response_local_var = NULL;

    // define the local variable for retailer_location_short_response->contact
    contact_info_response_t *contact_local_nonprim = NULL;

    // retailer_location_short_response->retailer_location_id
    cJSON *retailer_location_id = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "retailerLocationId");
    if (cJSON_IsNull(retailer_location_id)) {
        retailer_location_id = NULL;
    }
    if (retailer_location_id) { 
    if(!cJSON_IsNumber(retailer_location_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // retailer_location_short_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_info_response_parseFromJSON(contact); //nonprimitive
    }

    // retailer_location_short_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_short_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // retailer_location_short_response->favorite_id
    cJSON *favorite_id = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "favoriteId");
    if (cJSON_IsNull(favorite_id)) {
        favorite_id = NULL;
    }
    if (favorite_id) { 
    if(!cJSON_IsNumber(favorite_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_location_short_response->favorite
    cJSON *favorite = cJSON_GetObjectItemCaseSensitive(retailer_location_short_responseJSON, "favorite");
    if (cJSON_IsNull(favorite)) {
        favorite = NULL;
    }
    if (favorite) { 
    if(!cJSON_IsBool(favorite))
    {
    goto end; //Bool
    }
    }


    retailer_location_short_response_local_var = retailer_location_short_response_create_internal (
        retailer_location_id ? retailer_location_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        contact ? contact_local_nonprim : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        active ? active->valueint : 0,
        favorite_id ? favorite_id->valuedouble : 0,
        favorite ? favorite->valueint : 0
        );

    return retailer_location_short_response_local_var;
end:
    if (contact_local_nonprim) {
        contact_info_response_free(contact_local_nonprim);
        contact_local_nonprim = NULL;
    }
    return NULL;

}
