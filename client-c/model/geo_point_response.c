#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "geo_point_response.h"



static geo_point_response_t *geo_point_response_create_internal(
    char *object_id,
    double latitude,
    double longitude,
    double altitude,
    char *location_description,
    long locatable_id,
    char *locatable_object_id,
    char *locatable_object_name,
    char *locatable_display,
    asset_short_response_t *asset,
    double distance
    ) {
    geo_point_response_t *geo_point_response_local_var = malloc(sizeof(geo_point_response_t));
    if (!geo_point_response_local_var) {
        return NULL;
    }
    geo_point_response_local_var->object_id = object_id;
    geo_point_response_local_var->latitude = latitude;
    geo_point_response_local_var->longitude = longitude;
    geo_point_response_local_var->altitude = altitude;
    geo_point_response_local_var->location_description = location_description;
    geo_point_response_local_var->locatable_id = locatable_id;
    geo_point_response_local_var->locatable_object_id = locatable_object_id;
    geo_point_response_local_var->locatable_object_name = locatable_object_name;
    geo_point_response_local_var->locatable_display = locatable_display;
    geo_point_response_local_var->asset = asset;
    geo_point_response_local_var->distance = distance;

    geo_point_response_local_var->_library_owned = 1;
    return geo_point_response_local_var;
}

__attribute__((deprecated)) geo_point_response_t *geo_point_response_create(
    char *object_id,
    double latitude,
    double longitude,
    double altitude,
    char *location_description,
    long locatable_id,
    char *locatable_object_id,
    char *locatable_object_name,
    char *locatable_display,
    asset_short_response_t *asset,
    double distance
    ) {
    return geo_point_response_create_internal (
        object_id,
        latitude,
        longitude,
        altitude,
        location_description,
        locatable_id,
        locatable_object_id,
        locatable_object_name,
        locatable_display,
        asset,
        distance
        );
}

void geo_point_response_free(geo_point_response_t *geo_point_response) {
    if(NULL == geo_point_response){
        return ;
    }
    if(geo_point_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "geo_point_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (geo_point_response->object_id) {
        free(geo_point_response->object_id);
        geo_point_response->object_id = NULL;
    }
    if (geo_point_response->location_description) {
        free(geo_point_response->location_description);
        geo_point_response->location_description = NULL;
    }
    if (geo_point_response->locatable_object_id) {
        free(geo_point_response->locatable_object_id);
        geo_point_response->locatable_object_id = NULL;
    }
    if (geo_point_response->locatable_object_name) {
        free(geo_point_response->locatable_object_name);
        geo_point_response->locatable_object_name = NULL;
    }
    if (geo_point_response->locatable_display) {
        free(geo_point_response->locatable_display);
        geo_point_response->locatable_display = NULL;
    }
    if (geo_point_response->asset) {
        asset_short_response_free(geo_point_response->asset);
        geo_point_response->asset = NULL;
    }
    free(geo_point_response);
}

cJSON *geo_point_response_convertToJSON(geo_point_response_t *geo_point_response) {
    cJSON *item = cJSON_CreateObject();

    // geo_point_response->object_id
    if(geo_point_response->object_id) {
    if(cJSON_AddStringToObject(item, "objectId", geo_point_response->object_id) == NULL) {
    goto fail; //String
    }
    }


    // geo_point_response->latitude
    if(geo_point_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", geo_point_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_point_response->longitude
    if(geo_point_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", geo_point_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_point_response->altitude
    if(geo_point_response->altitude) {
    if(cJSON_AddNumberToObject(item, "altitude", geo_point_response->altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_point_response->location_description
    if(geo_point_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", geo_point_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // geo_point_response->locatable_id
    if(geo_point_response->locatable_id) {
    if(cJSON_AddNumberToObject(item, "locatableId", geo_point_response->locatable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_point_response->locatable_object_id
    if(geo_point_response->locatable_object_id) {
    if(cJSON_AddStringToObject(item, "locatableObjectId", geo_point_response->locatable_object_id) == NULL) {
    goto fail; //String
    }
    }


    // geo_point_response->locatable_object_name
    if(geo_point_response->locatable_object_name) {
    if(cJSON_AddStringToObject(item, "locatableObjectName", geo_point_response->locatable_object_name) == NULL) {
    goto fail; //String
    }
    }


    // geo_point_response->locatable_display
    if(geo_point_response->locatable_display) {
    if(cJSON_AddStringToObject(item, "locatableDisplay", geo_point_response->locatable_display) == NULL) {
    goto fail; //String
    }
    }


    // geo_point_response->asset
    if(geo_point_response->asset) {
    cJSON *asset_local_JSON = asset_short_response_convertToJSON(geo_point_response->asset);
    if(asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asset", asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // geo_point_response->distance
    if(geo_point_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", geo_point_response->distance) == NULL) {
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

geo_point_response_t *geo_point_response_parseFromJSON(cJSON *geo_point_responseJSON){

    geo_point_response_t *geo_point_response_local_var = NULL;

    // define the local variable for geo_point_response->asset
    asset_short_response_t *asset_local_nonprim = NULL;

    // geo_point_response->object_id
    cJSON *object_id = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "objectId");
    if (cJSON_IsNull(object_id)) {
        object_id = NULL;
    }
    if (object_id) { 
    if(!cJSON_IsString(object_id) && !cJSON_IsNull(object_id))
    {
    goto end; //String
    }
    }

    // geo_point_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // geo_point_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // geo_point_response->altitude
    cJSON *altitude = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "altitude");
    if (cJSON_IsNull(altitude)) {
        altitude = NULL;
    }
    if (altitude) { 
    if(!cJSON_IsNumber(altitude))
    {
    goto end; //Numeric
    }
    }

    // geo_point_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // geo_point_response->locatable_id
    cJSON *locatable_id = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "locatableId");
    if (cJSON_IsNull(locatable_id)) {
        locatable_id = NULL;
    }
    if (locatable_id) { 
    if(!cJSON_IsNumber(locatable_id))
    {
    goto end; //Numeric
    }
    }

    // geo_point_response->locatable_object_id
    cJSON *locatable_object_id = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "locatableObjectId");
    if (cJSON_IsNull(locatable_object_id)) {
        locatable_object_id = NULL;
    }
    if (locatable_object_id) { 
    if(!cJSON_IsString(locatable_object_id) && !cJSON_IsNull(locatable_object_id))
    {
    goto end; //String
    }
    }

    // geo_point_response->locatable_object_name
    cJSON *locatable_object_name = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "locatableObjectName");
    if (cJSON_IsNull(locatable_object_name)) {
        locatable_object_name = NULL;
    }
    if (locatable_object_name) { 
    if(!cJSON_IsString(locatable_object_name) && !cJSON_IsNull(locatable_object_name))
    {
    goto end; //String
    }
    }

    // geo_point_response->locatable_display
    cJSON *locatable_display = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "locatableDisplay");
    if (cJSON_IsNull(locatable_display)) {
        locatable_display = NULL;
    }
    if (locatable_display) { 
    if(!cJSON_IsString(locatable_display) && !cJSON_IsNull(locatable_display))
    {
    goto end; //String
    }
    }

    // geo_point_response->asset
    cJSON *asset = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "asset");
    if (cJSON_IsNull(asset)) {
        asset = NULL;
    }
    if (asset) { 
    asset_local_nonprim = asset_short_response_parseFromJSON(asset); //nonprimitive
    }

    // geo_point_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(geo_point_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }


    geo_point_response_local_var = geo_point_response_create_internal (
        object_id && !cJSON_IsNull(object_id) ? strdup(object_id->valuestring) : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        altitude ? altitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        locatable_id ? locatable_id->valuedouble : 0,
        locatable_object_id && !cJSON_IsNull(locatable_object_id) ? strdup(locatable_object_id->valuestring) : NULL,
        locatable_object_name && !cJSON_IsNull(locatable_object_name) ? strdup(locatable_object_name->valuestring) : NULL,
        locatable_display && !cJSON_IsNull(locatable_display) ? strdup(locatable_display->valuestring) : NULL,
        asset ? asset_local_nonprim : NULL,
        distance ? distance->valuedouble : 0
        );

    return geo_point_response_local_var;
end:
    if (asset_local_nonprim) {
        asset_short_response_free(asset_local_nonprim);
        asset_local_nonprim = NULL;
    }
    return NULL;

}
