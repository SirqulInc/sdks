#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "audience_device_response.h"



static audience_device_response_t *audience_device_response_create_internal(
    long device_id,
    int active,
    char *name,
    char *display,
    long minimum,
    long maximum
    ) {
    audience_device_response_t *audience_device_response_local_var = malloc(sizeof(audience_device_response_t));
    if (!audience_device_response_local_var) {
        return NULL;
    }
    audience_device_response_local_var->device_id = device_id;
    audience_device_response_local_var->active = active;
    audience_device_response_local_var->name = name;
    audience_device_response_local_var->display = display;
    audience_device_response_local_var->minimum = minimum;
    audience_device_response_local_var->maximum = maximum;

    audience_device_response_local_var->_library_owned = 1;
    return audience_device_response_local_var;
}

__attribute__((deprecated)) audience_device_response_t *audience_device_response_create(
    long device_id,
    int active,
    char *name,
    char *display,
    long minimum,
    long maximum
    ) {
    return audience_device_response_create_internal (
        device_id,
        active,
        name,
        display,
        minimum,
        maximum
        );
}

void audience_device_response_free(audience_device_response_t *audience_device_response) {
    if(NULL == audience_device_response){
        return ;
    }
    if(audience_device_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "audience_device_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (audience_device_response->name) {
        free(audience_device_response->name);
        audience_device_response->name = NULL;
    }
    if (audience_device_response->display) {
        free(audience_device_response->display);
        audience_device_response->display = NULL;
    }
    free(audience_device_response);
}

cJSON *audience_device_response_convertToJSON(audience_device_response_t *audience_device_response) {
    cJSON *item = cJSON_CreateObject();

    // audience_device_response->device_id
    if(audience_device_response->device_id) {
    if(cJSON_AddNumberToObject(item, "deviceId", audience_device_response->device_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_device_response->active
    if(audience_device_response->active) {
    if(cJSON_AddBoolToObject(item, "active", audience_device_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_device_response->name
    if(audience_device_response->name) {
    if(cJSON_AddStringToObject(item, "name", audience_device_response->name) == NULL) {
    goto fail; //String
    }
    }


    // audience_device_response->display
    if(audience_device_response->display) {
    if(cJSON_AddStringToObject(item, "display", audience_device_response->display) == NULL) {
    goto fail; //String
    }
    }


    // audience_device_response->minimum
    if(audience_device_response->minimum) {
    if(cJSON_AddNumberToObject(item, "minimum", audience_device_response->minimum) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_device_response->maximum
    if(audience_device_response->maximum) {
    if(cJSON_AddNumberToObject(item, "maximum", audience_device_response->maximum) == NULL) {
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

audience_device_response_t *audience_device_response_parseFromJSON(cJSON *audience_device_responseJSON){

    audience_device_response_t *audience_device_response_local_var = NULL;

    // audience_device_response->device_id
    cJSON *device_id = cJSON_GetObjectItemCaseSensitive(audience_device_responseJSON, "deviceId");
    if (cJSON_IsNull(device_id)) {
        device_id = NULL;
    }
    if (device_id) { 
    if(!cJSON_IsNumber(device_id))
    {
    goto end; //Numeric
    }
    }

    // audience_device_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(audience_device_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // audience_device_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(audience_device_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // audience_device_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(audience_device_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // audience_device_response->minimum
    cJSON *minimum = cJSON_GetObjectItemCaseSensitive(audience_device_responseJSON, "minimum");
    if (cJSON_IsNull(minimum)) {
        minimum = NULL;
    }
    if (minimum) { 
    if(!cJSON_IsNumber(minimum))
    {
    goto end; //Numeric
    }
    }

    // audience_device_response->maximum
    cJSON *maximum = cJSON_GetObjectItemCaseSensitive(audience_device_responseJSON, "maximum");
    if (cJSON_IsNull(maximum)) {
        maximum = NULL;
    }
    if (maximum) { 
    if(!cJSON_IsNumber(maximum))
    {
    goto end; //Numeric
    }
    }


    audience_device_response_local_var = audience_device_response_create_internal (
        device_id ? device_id->valuedouble : 0,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        minimum ? minimum->valuedouble : 0,
        maximum ? maximum->valuedouble : 0
        );

    return audience_device_response_local_var;
end:
    return NULL;

}
