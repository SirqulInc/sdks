#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "geocode_lat_lng_response.h"



static geocode_lat_lng_response_t *geocode_lat_lng_response_create_internal(
    double lat,
    double lng
    ) {
    geocode_lat_lng_response_t *geocode_lat_lng_response_local_var = malloc(sizeof(geocode_lat_lng_response_t));
    if (!geocode_lat_lng_response_local_var) {
        return NULL;
    }
    geocode_lat_lng_response_local_var->lat = lat;
    geocode_lat_lng_response_local_var->lng = lng;

    geocode_lat_lng_response_local_var->_library_owned = 1;
    return geocode_lat_lng_response_local_var;
}

__attribute__((deprecated)) geocode_lat_lng_response_t *geocode_lat_lng_response_create(
    double lat,
    double lng
    ) {
    return geocode_lat_lng_response_create_internal (
        lat,
        lng
        );
}

void geocode_lat_lng_response_free(geocode_lat_lng_response_t *geocode_lat_lng_response) {
    if(NULL == geocode_lat_lng_response){
        return ;
    }
    if(geocode_lat_lng_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "geocode_lat_lng_response_free");
        return ;
    }
    listEntry_t *listEntry;
    free(geocode_lat_lng_response);
}

cJSON *geocode_lat_lng_response_convertToJSON(geocode_lat_lng_response_t *geocode_lat_lng_response) {
    cJSON *item = cJSON_CreateObject();

    // geocode_lat_lng_response->lat
    if(geocode_lat_lng_response->lat) {
    if(cJSON_AddNumberToObject(item, "lat", geocode_lat_lng_response->lat) == NULL) {
    goto fail; //Numeric
    }
    }


    // geocode_lat_lng_response->lng
    if(geocode_lat_lng_response->lng) {
    if(cJSON_AddNumberToObject(item, "lng", geocode_lat_lng_response->lng) == NULL) {
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

geocode_lat_lng_response_t *geocode_lat_lng_response_parseFromJSON(cJSON *geocode_lat_lng_responseJSON){

    geocode_lat_lng_response_t *geocode_lat_lng_response_local_var = NULL;

    // geocode_lat_lng_response->lat
    cJSON *lat = cJSON_GetObjectItemCaseSensitive(geocode_lat_lng_responseJSON, "lat");
    if (cJSON_IsNull(lat)) {
        lat = NULL;
    }
    if (lat) { 
    if(!cJSON_IsNumber(lat))
    {
    goto end; //Numeric
    }
    }

    // geocode_lat_lng_response->lng
    cJSON *lng = cJSON_GetObjectItemCaseSensitive(geocode_lat_lng_responseJSON, "lng");
    if (cJSON_IsNull(lng)) {
        lng = NULL;
    }
    if (lng) { 
    if(!cJSON_IsNumber(lng))
    {
    goto end; //Numeric
    }
    }


    geocode_lat_lng_response_local_var = geocode_lat_lng_response_create_internal (
        lat ? lat->valuedouble : 0,
        lng ? lng->valuedouble : 0
        );

    return geocode_lat_lng_response_local_var;
end:
    return NULL;

}
