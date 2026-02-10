#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "audience_location.h"



static audience_location_t *audience_location_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    double radius
    ) {
    audience_location_t *audience_location_local_var = malloc(sizeof(audience_location_t));
    if (!audience_location_local_var) {
        return NULL;
    }
    audience_location_local_var->id = id;
    audience_location_local_var->active = active;
    audience_location_local_var->valid = valid;
    audience_location_local_var->latitude = latitude;
    audience_location_local_var->longitude = longitude;
    audience_location_local_var->location_description = location_description;
    audience_location_local_var->radius = radius;

    audience_location_local_var->_library_owned = 1;
    return audience_location_local_var;
}

__attribute__((deprecated)) audience_location_t *audience_location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    double radius
    ) {
    return audience_location_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        radius
        );
}

void audience_location_free(audience_location_t *audience_location) {
    if(NULL == audience_location){
        return ;
    }
    if(audience_location->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "audience_location_free");
        return ;
    }
    listEntry_t *listEntry;
    if (audience_location->location_description) {
        free(audience_location->location_description);
        audience_location->location_description = NULL;
    }
    free(audience_location);
}

cJSON *audience_location_convertToJSON(audience_location_t *audience_location) {
    cJSON *item = cJSON_CreateObject();

    // audience_location->id
    if(audience_location->id) {
    if(cJSON_AddNumberToObject(item, "id", audience_location->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_location->active
    if(audience_location->active) {
    if(cJSON_AddBoolToObject(item, "active", audience_location->active) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_location->valid
    if(audience_location->valid) {
    if(cJSON_AddBoolToObject(item, "valid", audience_location->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_location->latitude
    if(audience_location->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", audience_location->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_location->longitude
    if(audience_location->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", audience_location->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_location->location_description
    if(audience_location->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", audience_location->location_description) == NULL) {
    goto fail; //String
    }
    }


    // audience_location->radius
    if(audience_location->radius) {
    if(cJSON_AddNumberToObject(item, "radius", audience_location->radius) == NULL) {
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

audience_location_t *audience_location_parseFromJSON(cJSON *audience_locationJSON){

    audience_location_t *audience_location_local_var = NULL;

    // audience_location->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(audience_locationJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // audience_location->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(audience_locationJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // audience_location->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(audience_locationJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // audience_location->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(audience_locationJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // audience_location->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(audience_locationJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // audience_location->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(audience_locationJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // audience_location->radius
    cJSON *radius = cJSON_GetObjectItemCaseSensitive(audience_locationJSON, "radius");
    if (cJSON_IsNull(radius)) {
        radius = NULL;
    }
    if (radius) { 
    if(!cJSON_IsNumber(radius))
    {
    goto end; //Numeric
    }
    }


    audience_location_local_var = audience_location_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        radius ? radius->valuedouble : 0
        );

    return audience_location_local_var;
end:
    return NULL;

}
