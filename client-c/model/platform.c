#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "platform.h"



static platform_t *platform_create_internal(
    long id,
    int active,
    int valid,
    audience_device_t *device,
    long minimum,
    long maximum,
    char *download_url,
    char *description
    ) {
    platform_t *platform_local_var = malloc(sizeof(platform_t));
    if (!platform_local_var) {
        return NULL;
    }
    platform_local_var->id = id;
    platform_local_var->active = active;
    platform_local_var->valid = valid;
    platform_local_var->device = device;
    platform_local_var->minimum = minimum;
    platform_local_var->maximum = maximum;
    platform_local_var->download_url = download_url;
    platform_local_var->description = description;

    platform_local_var->_library_owned = 1;
    return platform_local_var;
}

__attribute__((deprecated)) platform_t *platform_create(
    long id,
    int active,
    int valid,
    audience_device_t *device,
    long minimum,
    long maximum,
    char *download_url,
    char *description
    ) {
    return platform_create_internal (
        id,
        active,
        valid,
        device,
        minimum,
        maximum,
        download_url,
        description
        );
}

void platform_free(platform_t *platform) {
    if(NULL == platform){
        return ;
    }
    if(platform->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "platform_free");
        return ;
    }
    listEntry_t *listEntry;
    if (platform->device) {
        audience_device_free(platform->device);
        platform->device = NULL;
    }
    if (platform->download_url) {
        free(platform->download_url);
        platform->download_url = NULL;
    }
    if (platform->description) {
        free(platform->description);
        platform->description = NULL;
    }
    free(platform);
}

cJSON *platform_convertToJSON(platform_t *platform) {
    cJSON *item = cJSON_CreateObject();

    // platform->id
    if(platform->id) {
    if(cJSON_AddNumberToObject(item, "id", platform->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // platform->active
    if(platform->active) {
    if(cJSON_AddBoolToObject(item, "active", platform->active) == NULL) {
    goto fail; //Bool
    }
    }


    // platform->valid
    if(platform->valid) {
    if(cJSON_AddBoolToObject(item, "valid", platform->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // platform->device
    if(platform->device) {
    cJSON *device_local_JSON = audience_device_convertToJSON(platform->device);
    if(device_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "device", device_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // platform->minimum
    if(platform->minimum) {
    if(cJSON_AddNumberToObject(item, "minimum", platform->minimum) == NULL) {
    goto fail; //Numeric
    }
    }


    // platform->maximum
    if(platform->maximum) {
    if(cJSON_AddNumberToObject(item, "maximum", platform->maximum) == NULL) {
    goto fail; //Numeric
    }
    }


    // platform->download_url
    if(platform->download_url) {
    if(cJSON_AddStringToObject(item, "downloadUrl", platform->download_url) == NULL) {
    goto fail; //String
    }
    }


    // platform->description
    if(platform->description) {
    if(cJSON_AddStringToObject(item, "description", platform->description) == NULL) {
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

platform_t *platform_parseFromJSON(cJSON *platformJSON){

    platform_t *platform_local_var = NULL;

    // define the local variable for platform->device
    audience_device_t *device_local_nonprim = NULL;

    // platform->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(platformJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // platform->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(platformJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // platform->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(platformJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // platform->device
    cJSON *device = cJSON_GetObjectItemCaseSensitive(platformJSON, "device");
    if (cJSON_IsNull(device)) {
        device = NULL;
    }
    if (device) { 
    device_local_nonprim = audience_device_parseFromJSON(device); //nonprimitive
    }

    // platform->minimum
    cJSON *minimum = cJSON_GetObjectItemCaseSensitive(platformJSON, "minimum");
    if (cJSON_IsNull(minimum)) {
        minimum = NULL;
    }
    if (minimum) { 
    if(!cJSON_IsNumber(minimum))
    {
    goto end; //Numeric
    }
    }

    // platform->maximum
    cJSON *maximum = cJSON_GetObjectItemCaseSensitive(platformJSON, "maximum");
    if (cJSON_IsNull(maximum)) {
        maximum = NULL;
    }
    if (maximum) { 
    if(!cJSON_IsNumber(maximum))
    {
    goto end; //Numeric
    }
    }

    // platform->download_url
    cJSON *download_url = cJSON_GetObjectItemCaseSensitive(platformJSON, "downloadUrl");
    if (cJSON_IsNull(download_url)) {
        download_url = NULL;
    }
    if (download_url) { 
    if(!cJSON_IsString(download_url) && !cJSON_IsNull(download_url))
    {
    goto end; //String
    }
    }

    // platform->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(platformJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }


    platform_local_var = platform_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        device ? device_local_nonprim : NULL,
        minimum ? minimum->valuedouble : 0,
        maximum ? maximum->valuedouble : 0,
        download_url && !cJSON_IsNull(download_url) ? strdup(download_url->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL
        );

    return platform_local_var;
end:
    if (device_local_nonprim) {
        audience_device_free(device_local_nonprim);
        device_local_nonprim = NULL;
    }
    return NULL;

}
