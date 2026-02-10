#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rating_response.h"



static rating_response_t *rating_response_create_internal(
    long rating_id,
    int rating_value,
    double latitude,
    double longitude,
    char *location_description,
    category_response_t *category,
    account_short_response_t *owner
    ) {
    rating_response_t *rating_response_local_var = malloc(sizeof(rating_response_t));
    if (!rating_response_local_var) {
        return NULL;
    }
    rating_response_local_var->rating_id = rating_id;
    rating_response_local_var->rating_value = rating_value;
    rating_response_local_var->latitude = latitude;
    rating_response_local_var->longitude = longitude;
    rating_response_local_var->location_description = location_description;
    rating_response_local_var->category = category;
    rating_response_local_var->owner = owner;

    rating_response_local_var->_library_owned = 1;
    return rating_response_local_var;
}

__attribute__((deprecated)) rating_response_t *rating_response_create(
    long rating_id,
    int rating_value,
    double latitude,
    double longitude,
    char *location_description,
    category_response_t *category,
    account_short_response_t *owner
    ) {
    return rating_response_create_internal (
        rating_id,
        rating_value,
        latitude,
        longitude,
        location_description,
        category,
        owner
        );
}

void rating_response_free(rating_response_t *rating_response) {
    if(NULL == rating_response){
        return ;
    }
    if(rating_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "rating_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (rating_response->location_description) {
        free(rating_response->location_description);
        rating_response->location_description = NULL;
    }
    if (rating_response->category) {
        category_response_free(rating_response->category);
        rating_response->category = NULL;
    }
    if (rating_response->owner) {
        account_short_response_free(rating_response->owner);
        rating_response->owner = NULL;
    }
    free(rating_response);
}

cJSON *rating_response_convertToJSON(rating_response_t *rating_response) {
    cJSON *item = cJSON_CreateObject();

    // rating_response->rating_id
    if(rating_response->rating_id) {
    if(cJSON_AddNumberToObject(item, "ratingId", rating_response->rating_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_response->rating_value
    if(rating_response->rating_value) {
    if(cJSON_AddNumberToObject(item, "ratingValue", rating_response->rating_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_response->latitude
    if(rating_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", rating_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_response->longitude
    if(rating_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", rating_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // rating_response->location_description
    if(rating_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", rating_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // rating_response->category
    if(rating_response->category) {
    cJSON *category_local_JSON = category_response_convertToJSON(rating_response->category);
    if(category_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "category", category_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // rating_response->owner
    if(rating_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(rating_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

rating_response_t *rating_response_parseFromJSON(cJSON *rating_responseJSON){

    rating_response_t *rating_response_local_var = NULL;

    // define the local variable for rating_response->category
    category_response_t *category_local_nonprim = NULL;

    // define the local variable for rating_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // rating_response->rating_id
    cJSON *rating_id = cJSON_GetObjectItemCaseSensitive(rating_responseJSON, "ratingId");
    if (cJSON_IsNull(rating_id)) {
        rating_id = NULL;
    }
    if (rating_id) { 
    if(!cJSON_IsNumber(rating_id))
    {
    goto end; //Numeric
    }
    }

    // rating_response->rating_value
    cJSON *rating_value = cJSON_GetObjectItemCaseSensitive(rating_responseJSON, "ratingValue");
    if (cJSON_IsNull(rating_value)) {
        rating_value = NULL;
    }
    if (rating_value) { 
    if(!cJSON_IsNumber(rating_value))
    {
    goto end; //Numeric
    }
    }

    // rating_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(rating_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // rating_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(rating_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // rating_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(rating_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // rating_response->category
    cJSON *category = cJSON_GetObjectItemCaseSensitive(rating_responseJSON, "category");
    if (cJSON_IsNull(category)) {
        category = NULL;
    }
    if (category) { 
    category_local_nonprim = category_response_parseFromJSON(category); //nonprimitive
    }

    // rating_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(rating_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }


    rating_response_local_var = rating_response_create_internal (
        rating_id ? rating_id->valuedouble : 0,
        rating_value ? rating_value->valuedouble : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        category ? category_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL
        );

    return rating_response_local_var;
end:
    if (category_local_nonprim) {
        category_response_free(category_local_nonprim);
        category_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
