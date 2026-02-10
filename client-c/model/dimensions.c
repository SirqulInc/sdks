#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "dimensions.h"



static dimensions_t *dimensions_create_internal(
    double width,
    double height,
    double depth,
    double volume
    ) {
    dimensions_t *dimensions_local_var = malloc(sizeof(dimensions_t));
    if (!dimensions_local_var) {
        return NULL;
    }
    dimensions_local_var->width = width;
    dimensions_local_var->height = height;
    dimensions_local_var->depth = depth;
    dimensions_local_var->volume = volume;

    dimensions_local_var->_library_owned = 1;
    return dimensions_local_var;
}

__attribute__((deprecated)) dimensions_t *dimensions_create(
    double width,
    double height,
    double depth,
    double volume
    ) {
    return dimensions_create_internal (
        width,
        height,
        depth,
        volume
        );
}

void dimensions_free(dimensions_t *dimensions) {
    if(NULL == dimensions){
        return ;
    }
    if(dimensions->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "dimensions_free");
        return ;
    }
    listEntry_t *listEntry;
    free(dimensions);
}

cJSON *dimensions_convertToJSON(dimensions_t *dimensions) {
    cJSON *item = cJSON_CreateObject();

    // dimensions->width
    if(dimensions->width) {
    if(cJSON_AddNumberToObject(item, "width", dimensions->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // dimensions->height
    if(dimensions->height) {
    if(cJSON_AddNumberToObject(item, "height", dimensions->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // dimensions->depth
    if(dimensions->depth) {
    if(cJSON_AddNumberToObject(item, "depth", dimensions->depth) == NULL) {
    goto fail; //Numeric
    }
    }


    // dimensions->volume
    if(dimensions->volume) {
    if(cJSON_AddNumberToObject(item, "volume", dimensions->volume) == NULL) {
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

dimensions_t *dimensions_parseFromJSON(cJSON *dimensionsJSON){

    dimensions_t *dimensions_local_var = NULL;

    // dimensions->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(dimensionsJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // dimensions->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(dimensionsJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // dimensions->depth
    cJSON *depth = cJSON_GetObjectItemCaseSensitive(dimensionsJSON, "depth");
    if (cJSON_IsNull(depth)) {
        depth = NULL;
    }
    if (depth) { 
    if(!cJSON_IsNumber(depth))
    {
    goto end; //Numeric
    }
    }

    // dimensions->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(dimensionsJSON, "volume");
    if (cJSON_IsNull(volume)) {
        volume = NULL;
    }
    if (volume) { 
    if(!cJSON_IsNumber(volume))
    {
    goto end; //Numeric
    }
    }


    dimensions_local_var = dimensions_create_internal (
        width ? width->valuedouble : 0,
        height ? height->valuedouble : 0,
        depth ? depth->valuedouble : 0,
        volume ? volume->valuedouble : 0
        );

    return dimensions_local_var;
end:
    return NULL;

}
