#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "geo_response.h"



static geo_response_t *geo_response_create_internal(
    char *geo_id,
    double latitude,
    double longitude
    ) {
    geo_response_t *geo_response_local_var = malloc(sizeof(geo_response_t));
    if (!geo_response_local_var) {
        return NULL;
    }
    geo_response_local_var->geo_id = geo_id;
    geo_response_local_var->latitude = latitude;
    geo_response_local_var->longitude = longitude;

    geo_response_local_var->_library_owned = 1;
    return geo_response_local_var;
}

__attribute__((deprecated)) geo_response_t *geo_response_create(
    char *geo_id,
    double latitude,
    double longitude
    ) {
    return geo_response_create_internal (
        geo_id,
        latitude,
        longitude
        );
}

void geo_response_free(geo_response_t *geo_response) {
    if(NULL == geo_response){
        return ;
    }
    if(geo_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "geo_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (geo_response->geo_id) {
        free(geo_response->geo_id);
        geo_response->geo_id = NULL;
    }
    free(geo_response);
}

cJSON *geo_response_convertToJSON(geo_response_t *geo_response) {
    cJSON *item = cJSON_CreateObject();

    // geo_response->geo_id
    if(geo_response->geo_id) {
    if(cJSON_AddStringToObject(item, "geoId", geo_response->geo_id) == NULL) {
    goto fail; //String
    }
    }


    // geo_response->latitude
    if(geo_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", geo_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_response->longitude
    if(geo_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", geo_response->longitude) == NULL) {
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

geo_response_t *geo_response_parseFromJSON(cJSON *geo_responseJSON){

    geo_response_t *geo_response_local_var = NULL;

    // geo_response->geo_id
    cJSON *geo_id = cJSON_GetObjectItemCaseSensitive(geo_responseJSON, "geoId");
    if (cJSON_IsNull(geo_id)) {
        geo_id = NULL;
    }
    if (geo_id) { 
    if(!cJSON_IsString(geo_id) && !cJSON_IsNull(geo_id))
    {
    goto end; //String
    }
    }

    // geo_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(geo_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // geo_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(geo_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }


    geo_response_local_var = geo_response_create_internal (
        geo_id && !cJSON_IsNull(geo_id) ? strdup(geo_id->valuestring) : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0
        );

    return geo_response_local_var;
end:
    return NULL;

}
