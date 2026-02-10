#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "service_hub.h"



static service_hub_t *service_hub_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    char *external_id,
    retailer_t *business,
    location_t *location,
    char *time_zone
    ) {
    service_hub_t *service_hub_local_var = malloc(sizeof(service_hub_t));
    if (!service_hub_local_var) {
        return NULL;
    }
    service_hub_local_var->id = id;
    service_hub_local_var->active = active;
    service_hub_local_var->valid = valid;
    service_hub_local_var->latitude = latitude;
    service_hub_local_var->longitude = longitude;
    service_hub_local_var->location_description = location_description;
    service_hub_local_var->name = name;
    service_hub_local_var->external_id = external_id;
    service_hub_local_var->business = business;
    service_hub_local_var->location = location;
    service_hub_local_var->time_zone = time_zone;

    service_hub_local_var->_library_owned = 1;
    return service_hub_local_var;
}

__attribute__((deprecated)) service_hub_t *service_hub_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    char *external_id,
    retailer_t *business,
    location_t *location,
    char *time_zone
    ) {
    return service_hub_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        name,
        external_id,
        business,
        location,
        time_zone
        );
}

void service_hub_free(service_hub_t *service_hub) {
    if(NULL == service_hub){
        return ;
    }
    if(service_hub->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "service_hub_free");
        return ;
    }
    listEntry_t *listEntry;
    if (service_hub->location_description) {
        free(service_hub->location_description);
        service_hub->location_description = NULL;
    }
    if (service_hub->name) {
        free(service_hub->name);
        service_hub->name = NULL;
    }
    if (service_hub->external_id) {
        free(service_hub->external_id);
        service_hub->external_id = NULL;
    }
    if (service_hub->business) {
        retailer_free(service_hub->business);
        service_hub->business = NULL;
    }
    if (service_hub->location) {
        location_free(service_hub->location);
        service_hub->location = NULL;
    }
    if (service_hub->time_zone) {
        free(service_hub->time_zone);
        service_hub->time_zone = NULL;
    }
    free(service_hub);
}

cJSON *service_hub_convertToJSON(service_hub_t *service_hub) {
    cJSON *item = cJSON_CreateObject();

    // service_hub->id
    if(service_hub->id) {
    if(cJSON_AddNumberToObject(item, "id", service_hub->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // service_hub->active
    if(service_hub->active) {
    if(cJSON_AddBoolToObject(item, "active", service_hub->active) == NULL) {
    goto fail; //Bool
    }
    }


    // service_hub->valid
    if(service_hub->valid) {
    if(cJSON_AddBoolToObject(item, "valid", service_hub->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // service_hub->latitude
    if(service_hub->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", service_hub->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // service_hub->longitude
    if(service_hub->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", service_hub->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // service_hub->location_description
    if(service_hub->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", service_hub->location_description) == NULL) {
    goto fail; //String
    }
    }


    // service_hub->name
    if(service_hub->name) {
    if(cJSON_AddStringToObject(item, "name", service_hub->name) == NULL) {
    goto fail; //String
    }
    }


    // service_hub->external_id
    if(service_hub->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", service_hub->external_id) == NULL) {
    goto fail; //String
    }
    }


    // service_hub->business
    if(service_hub->business) {
    cJSON *business_local_JSON = retailer_convertToJSON(service_hub->business);
    if(business_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "business", business_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_hub->location
    if(service_hub->location) {
    cJSON *location_local_JSON = location_convertToJSON(service_hub->location);
    if(location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "location", location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_hub->time_zone
    if(service_hub->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", service_hub->time_zone) == NULL) {
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

service_hub_t *service_hub_parseFromJSON(cJSON *service_hubJSON){

    service_hub_t *service_hub_local_var = NULL;

    // define the local variable for service_hub->business
    retailer_t *business_local_nonprim = NULL;

    // define the local variable for service_hub->location
    location_t *location_local_nonprim = NULL;

    // service_hub->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // service_hub->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // service_hub->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // service_hub->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // service_hub->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // service_hub->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // service_hub->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // service_hub->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // service_hub->business
    cJSON *business = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "business");
    if (cJSON_IsNull(business)) {
        business = NULL;
    }
    if (business) { 
    business_local_nonprim = retailer_parseFromJSON(business); //nonprimitive
    }

    // service_hub->location
    cJSON *location = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "location");
    if (cJSON_IsNull(location)) {
        location = NULL;
    }
    if (location) { 
    location_local_nonprim = location_parseFromJSON(location); //nonprimitive
    }

    // service_hub->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(service_hubJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }


    service_hub_local_var = service_hub_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        business ? business_local_nonprim : NULL,
        location ? location_local_nonprim : NULL,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL
        );

    return service_hub_local_var;
end:
    if (business_local_nonprim) {
        retailer_free(business_local_nonprim);
        business_local_nonprim = NULL;
    }
    if (location_local_nonprim) {
        location_free(location_local_nonprim);
        location_local_nonprim = NULL;
    }
    return NULL;

}
