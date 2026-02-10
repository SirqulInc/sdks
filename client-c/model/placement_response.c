#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "placement_response.h"


char* placement_response_size_ToString(sirqul_iot_platform_placement_response_SIZE_e size) {
    char* sizeArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    return sizeArray[size];
}

sirqul_iot_platform_placement_response_SIZE_e placement_response_size_FromString(char* size){
    int stringToReturn = 0;
    char *sizeArray[] =  { "NULL", "CONFIG", "BANNER", "LEADERBOARD", "SKYSCRAPER", "VIDEO", "ZIP", "INTERSTITIAL", "CUSTOM1", "CUSTOM2", "CUSTOM3", "CUSTOM4", "CUSTOM5", "CUSTOM6", "CUSTOM7", "CUSTOM8", "CUSTOM9", "CUSTOM10" };
    size_t sizeofArray = sizeof(sizeArray) / sizeof(sizeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(size, sizeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static placement_response_t *placement_response_create_internal(
    long placement_id,
    char *name,
    char *description,
    sirqul_iot_platform_placement_response_SIZE_e size,
    int height,
    int width,
    int refresh_interval,
    char *app_name,
    char *app_key,
    int active,
    asset_short_response_t *default_image
    ) {
    placement_response_t *placement_response_local_var = malloc(sizeof(placement_response_t));
    if (!placement_response_local_var) {
        return NULL;
    }
    placement_response_local_var->placement_id = placement_id;
    placement_response_local_var->name = name;
    placement_response_local_var->description = description;
    placement_response_local_var->size = size;
    placement_response_local_var->height = height;
    placement_response_local_var->width = width;
    placement_response_local_var->refresh_interval = refresh_interval;
    placement_response_local_var->app_name = app_name;
    placement_response_local_var->app_key = app_key;
    placement_response_local_var->active = active;
    placement_response_local_var->default_image = default_image;

    placement_response_local_var->_library_owned = 1;
    return placement_response_local_var;
}

__attribute__((deprecated)) placement_response_t *placement_response_create(
    long placement_id,
    char *name,
    char *description,
    sirqul_iot_platform_placement_response_SIZE_e size,
    int height,
    int width,
    int refresh_interval,
    char *app_name,
    char *app_key,
    int active,
    asset_short_response_t *default_image
    ) {
    return placement_response_create_internal (
        placement_id,
        name,
        description,
        size,
        height,
        width,
        refresh_interval,
        app_name,
        app_key,
        active,
        default_image
        );
}

void placement_response_free(placement_response_t *placement_response) {
    if(NULL == placement_response){
        return ;
    }
    if(placement_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "placement_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (placement_response->name) {
        free(placement_response->name);
        placement_response->name = NULL;
    }
    if (placement_response->description) {
        free(placement_response->description);
        placement_response->description = NULL;
    }
    if (placement_response->app_name) {
        free(placement_response->app_name);
        placement_response->app_name = NULL;
    }
    if (placement_response->app_key) {
        free(placement_response->app_key);
        placement_response->app_key = NULL;
    }
    if (placement_response->default_image) {
        asset_short_response_free(placement_response->default_image);
        placement_response->default_image = NULL;
    }
    free(placement_response);
}

cJSON *placement_response_convertToJSON(placement_response_t *placement_response) {
    cJSON *item = cJSON_CreateObject();

    // placement_response->placement_id
    if(placement_response->placement_id) {
    if(cJSON_AddNumberToObject(item, "placementId", placement_response->placement_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement_response->name
    if(placement_response->name) {
    if(cJSON_AddStringToObject(item, "name", placement_response->name) == NULL) {
    goto fail; //String
    }
    }


    // placement_response->description
    if(placement_response->description) {
    if(cJSON_AddStringToObject(item, "description", placement_response->description) == NULL) {
    goto fail; //String
    }
    }


    // placement_response->size
    if(placement_response->size != sirqul_iot_platform_placement_response_SIZE_NULL) {
    if(cJSON_AddStringToObject(item, "size", placement_response_size_ToString(placement_response->size)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // placement_response->height
    if(placement_response->height) {
    if(cJSON_AddNumberToObject(item, "height", placement_response->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement_response->width
    if(placement_response->width) {
    if(cJSON_AddNumberToObject(item, "width", placement_response->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement_response->refresh_interval
    if(placement_response->refresh_interval) {
    if(cJSON_AddNumberToObject(item, "refreshInterval", placement_response->refresh_interval) == NULL) {
    goto fail; //Numeric
    }
    }


    // placement_response->app_name
    if(placement_response->app_name) {
    if(cJSON_AddStringToObject(item, "appName", placement_response->app_name) == NULL) {
    goto fail; //String
    }
    }


    // placement_response->app_key
    if(placement_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", placement_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // placement_response->active
    if(placement_response->active) {
    if(cJSON_AddBoolToObject(item, "active", placement_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // placement_response->default_image
    if(placement_response->default_image) {
    cJSON *default_image_local_JSON = asset_short_response_convertToJSON(placement_response->default_image);
    if(default_image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "defaultImage", default_image_local_JSON);
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

placement_response_t *placement_response_parseFromJSON(cJSON *placement_responseJSON){

    placement_response_t *placement_response_local_var = NULL;

    // define the local variable for placement_response->default_image
    asset_short_response_t *default_image_local_nonprim = NULL;

    // placement_response->placement_id
    cJSON *placement_id = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "placementId");
    if (cJSON_IsNull(placement_id)) {
        placement_id = NULL;
    }
    if (placement_id) { 
    if(!cJSON_IsNumber(placement_id))
    {
    goto end; //Numeric
    }
    }

    // placement_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // placement_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // placement_response->size
    cJSON *size = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "size");
    if (cJSON_IsNull(size)) {
        size = NULL;
    }
    sirqul_iot_platform_placement_response_SIZE_e sizeVariable;
    if (size) { 
    if(!cJSON_IsString(size))
    {
    goto end; //Enum
    }
    sizeVariable = placement_response_size_FromString(size->valuestring);
    }

    // placement_response->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // placement_response->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // placement_response->refresh_interval
    cJSON *refresh_interval = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "refreshInterval");
    if (cJSON_IsNull(refresh_interval)) {
        refresh_interval = NULL;
    }
    if (refresh_interval) { 
    if(!cJSON_IsNumber(refresh_interval))
    {
    goto end; //Numeric
    }
    }

    // placement_response->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }

    // placement_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // placement_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // placement_response->default_image
    cJSON *default_image = cJSON_GetObjectItemCaseSensitive(placement_responseJSON, "defaultImage");
    if (cJSON_IsNull(default_image)) {
        default_image = NULL;
    }
    if (default_image) { 
    default_image_local_nonprim = asset_short_response_parseFromJSON(default_image); //nonprimitive
    }


    placement_response_local_var = placement_response_create_internal (
        placement_id ? placement_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        size ? sizeVariable : sirqul_iot_platform_placement_response_SIZE_NULL,
        height ? height->valuedouble : 0,
        width ? width->valuedouble : 0,
        refresh_interval ? refresh_interval->valuedouble : 0,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        active ? active->valueint : 0,
        default_image ? default_image_local_nonprim : NULL
        );

    return placement_response_local_var;
end:
    if (default_image_local_nonprim) {
        asset_short_response_free(default_image_local_nonprim);
        default_image_local_nonprim = NULL;
    }
    return NULL;

}
