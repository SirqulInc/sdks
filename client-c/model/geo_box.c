#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "geo_box.h"



static geo_box_t *geo_box_create_internal(
    double north,
    double east,
    double south,
    double west
    ) {
    geo_box_t *geo_box_local_var = malloc(sizeof(geo_box_t));
    if (!geo_box_local_var) {
        return NULL;
    }
    geo_box_local_var->north = north;
    geo_box_local_var->east = east;
    geo_box_local_var->south = south;
    geo_box_local_var->west = west;

    geo_box_local_var->_library_owned = 1;
    return geo_box_local_var;
}

__attribute__((deprecated)) geo_box_t *geo_box_create(
    double north,
    double east,
    double south,
    double west
    ) {
    return geo_box_create_internal (
        north,
        east,
        south,
        west
        );
}

void geo_box_free(geo_box_t *geo_box) {
    if(NULL == geo_box){
        return ;
    }
    if(geo_box->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "geo_box_free");
        return ;
    }
    listEntry_t *listEntry;
    free(geo_box);
}

cJSON *geo_box_convertToJSON(geo_box_t *geo_box) {
    cJSON *item = cJSON_CreateObject();

    // geo_box->north
    if(geo_box->north) {
    if(cJSON_AddNumberToObject(item, "north", geo_box->north) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_box->east
    if(geo_box->east) {
    if(cJSON_AddNumberToObject(item, "east", geo_box->east) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_box->south
    if(geo_box->south) {
    if(cJSON_AddNumberToObject(item, "south", geo_box->south) == NULL) {
    goto fail; //Numeric
    }
    }


    // geo_box->west
    if(geo_box->west) {
    if(cJSON_AddNumberToObject(item, "west", geo_box->west) == NULL) {
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

geo_box_t *geo_box_parseFromJSON(cJSON *geo_boxJSON){

    geo_box_t *geo_box_local_var = NULL;

    // geo_box->north
    cJSON *north = cJSON_GetObjectItemCaseSensitive(geo_boxJSON, "north");
    if (cJSON_IsNull(north)) {
        north = NULL;
    }
    if (north) { 
    if(!cJSON_IsNumber(north))
    {
    goto end; //Numeric
    }
    }

    // geo_box->east
    cJSON *east = cJSON_GetObjectItemCaseSensitive(geo_boxJSON, "east");
    if (cJSON_IsNull(east)) {
        east = NULL;
    }
    if (east) { 
    if(!cJSON_IsNumber(east))
    {
    goto end; //Numeric
    }
    }

    // geo_box->south
    cJSON *south = cJSON_GetObjectItemCaseSensitive(geo_boxJSON, "south");
    if (cJSON_IsNull(south)) {
        south = NULL;
    }
    if (south) { 
    if(!cJSON_IsNumber(south))
    {
    goto end; //Numeric
    }
    }

    // geo_box->west
    cJSON *west = cJSON_GetObjectItemCaseSensitive(geo_boxJSON, "west");
    if (cJSON_IsNull(west)) {
        west = NULL;
    }
    if (west) { 
    if(!cJSON_IsNumber(west))
    {
    goto end; //Numeric
    }
    }


    geo_box_local_var = geo_box_create_internal (
        north ? north->valuedouble : 0,
        east ? east->valuedouble : 0,
        south ? south->valuedouble : 0,
        west ? west->valuedouble : 0
        );

    return geo_box_local_var;
end:
    return NULL;

}
