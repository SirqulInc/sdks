#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "platform_response.h"



static platform_response_t *platform_response_create_internal(
    long device_id,
    int active,
    char *name,
    char *display,
    long minimum,
    long maximum,
    char *download_url,
    char *description
    ) {
    platform_response_t *platform_response_local_var = malloc(sizeof(platform_response_t));
    if (!platform_response_local_var) {
        return NULL;
    }
    platform_response_local_var->device_id = device_id;
    platform_response_local_var->active = active;
    platform_response_local_var->name = name;
    platform_response_local_var->display = display;
    platform_response_local_var->minimum = minimum;
    platform_response_local_var->maximum = maximum;
    platform_response_local_var->download_url = download_url;
    platform_response_local_var->description = description;

    platform_response_local_var->_library_owned = 1;
    return platform_response_local_var;
}

__attribute__((deprecated)) platform_response_t *platform_response_create(
    long device_id,
    int active,
    char *name,
    char *display,
    long minimum,
    long maximum,
    char *download_url,
    char *description
    ) {
    return platform_response_create_internal (
        device_id,
        active,
        name,
        display,
        minimum,
        maximum,
        download_url,
        description
        );
}

void platform_response_free(platform_response_t *platform_response) {
    if(NULL == platform_response){
        return ;
    }
    if(platform_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "platform_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (platform_response->name) {
        free(platform_response->name);
        platform_response->name = NULL;
    }
    if (platform_response->display) {
        free(platform_response->display);
        platform_response->display = NULL;
    }
    if (platform_response->download_url) {
        free(platform_response->download_url);
        platform_response->download_url = NULL;
    }
    if (platform_response->description) {
        free(platform_response->description);
        platform_response->description = NULL;
    }
    free(platform_response);
}

cJSON *platform_response_convertToJSON(platform_response_t *platform_response) {
    cJSON *item = cJSON_CreateObject();

    // platform_response->device_id
    if(platform_response->device_id) {
    if(cJSON_AddNumberToObject(item, "deviceId", platform_response->device_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // platform_response->active
    if(platform_response->active) {
    if(cJSON_AddBoolToObject(item, "active", platform_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // platform_response->name
    if(platform_response->name) {
    if(cJSON_AddStringToObject(item, "name", platform_response->name) == NULL) {
    goto fail; //String
    }
    }


    // platform_response->display
    if(platform_response->display) {
    if(cJSON_AddStringToObject(item, "display", platform_response->display) == NULL) {
    goto fail; //String
    }
    }


    // platform_response->minimum
    if(platform_response->minimum) {
    if(cJSON_AddNumberToObject(item, "minimum", platform_response->minimum) == NULL) {
    goto fail; //Numeric
    }
    }


    // platform_response->maximum
    if(platform_response->maximum) {
    if(cJSON_AddNumberToObject(item, "maximum", platform_response->maximum) == NULL) {
    goto fail; //Numeric
    }
    }


    // platform_response->download_url
    if(platform_response->download_url) {
    if(cJSON_AddStringToObject(item, "downloadUrl", platform_response->download_url) == NULL) {
    goto fail; //String
    }
    }


    // platform_response->description
    if(platform_response->description) {
    if(cJSON_AddStringToObject(item, "description", platform_response->description) == NULL) {
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

platform_response_t *platform_response_parseFromJSON(cJSON *platform_responseJSON){

    platform_response_t *platform_response_local_var = NULL;

    // platform_response->device_id
    cJSON *device_id = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "deviceId");
    if (cJSON_IsNull(device_id)) {
        device_id = NULL;
    }
    if (device_id) { 
    if(!cJSON_IsNumber(device_id))
    {
    goto end; //Numeric
    }
    }

    // platform_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // platform_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // platform_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // platform_response->minimum
    cJSON *minimum = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "minimum");
    if (cJSON_IsNull(minimum)) {
        minimum = NULL;
    }
    if (minimum) { 
    if(!cJSON_IsNumber(minimum))
    {
    goto end; //Numeric
    }
    }

    // platform_response->maximum
    cJSON *maximum = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "maximum");
    if (cJSON_IsNull(maximum)) {
        maximum = NULL;
    }
    if (maximum) { 
    if(!cJSON_IsNumber(maximum))
    {
    goto end; //Numeric
    }
    }

    // platform_response->download_url
    cJSON *download_url = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "downloadUrl");
    if (cJSON_IsNull(download_url)) {
        download_url = NULL;
    }
    if (download_url) { 
    if(!cJSON_IsString(download_url) && !cJSON_IsNull(download_url))
    {
    goto end; //String
    }
    }

    // platform_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(platform_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }


    platform_response_local_var = platform_response_create_internal (
        device_id ? device_id->valuedouble : 0,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        minimum ? minimum->valuedouble : 0,
        maximum ? maximum->valuedouble : 0,
        download_url && !cJSON_IsNull(download_url) ? strdup(download_url->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL
        );

    return platform_response_local_var;
end:
    return NULL;

}
