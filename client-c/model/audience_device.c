#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "audience_device.h"



static audience_device_t *audience_device_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    long minimum,
    long maximum
    ) {
    audience_device_t *audience_device_local_var = malloc(sizeof(audience_device_t));
    if (!audience_device_local_var) {
        return NULL;
    }
    audience_device_local_var->id = id;
    audience_device_local_var->active = active;
    audience_device_local_var->valid = valid;
    audience_device_local_var->name = name;
    audience_device_local_var->minimum = minimum;
    audience_device_local_var->maximum = maximum;

    audience_device_local_var->_library_owned = 1;
    return audience_device_local_var;
}

__attribute__((deprecated)) audience_device_t *audience_device_create(
    long id,
    int active,
    int valid,
    char *name,
    long minimum,
    long maximum
    ) {
    return audience_device_create_internal (
        id,
        active,
        valid,
        name,
        minimum,
        maximum
        );
}

void audience_device_free(audience_device_t *audience_device) {
    if(NULL == audience_device){
        return ;
    }
    if(audience_device->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "audience_device_free");
        return ;
    }
    listEntry_t *listEntry;
    if (audience_device->name) {
        free(audience_device->name);
        audience_device->name = NULL;
    }
    free(audience_device);
}

cJSON *audience_device_convertToJSON(audience_device_t *audience_device) {
    cJSON *item = cJSON_CreateObject();

    // audience_device->id
    if(audience_device->id) {
    if(cJSON_AddNumberToObject(item, "id", audience_device->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_device->active
    if(audience_device->active) {
    if(cJSON_AddBoolToObject(item, "active", audience_device->active) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_device->valid
    if(audience_device->valid) {
    if(cJSON_AddBoolToObject(item, "valid", audience_device->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_device->name
    if(audience_device->name) {
    if(cJSON_AddStringToObject(item, "name", audience_device->name) == NULL) {
    goto fail; //String
    }
    }


    // audience_device->minimum
    if(audience_device->minimum) {
    if(cJSON_AddNumberToObject(item, "minimum", audience_device->minimum) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_device->maximum
    if(audience_device->maximum) {
    if(cJSON_AddNumberToObject(item, "maximum", audience_device->maximum) == NULL) {
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

audience_device_t *audience_device_parseFromJSON(cJSON *audience_deviceJSON){

    audience_device_t *audience_device_local_var = NULL;

    // audience_device->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(audience_deviceJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // audience_device->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(audience_deviceJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // audience_device->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(audience_deviceJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // audience_device->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(audience_deviceJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // audience_device->minimum
    cJSON *minimum = cJSON_GetObjectItemCaseSensitive(audience_deviceJSON, "minimum");
    if (cJSON_IsNull(minimum)) {
        minimum = NULL;
    }
    if (minimum) { 
    if(!cJSON_IsNumber(minimum))
    {
    goto end; //Numeric
    }
    }

    // audience_device->maximum
    cJSON *maximum = cJSON_GetObjectItemCaseSensitive(audience_deviceJSON, "maximum");
    if (cJSON_IsNull(maximum)) {
        maximum = NULL;
    }
    if (maximum) { 
    if(!cJSON_IsNumber(maximum))
    {
    goto end; //Numeric
    }
    }


    audience_device_local_var = audience_device_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        minimum ? minimum->valuedouble : 0,
        maximum ? maximum->valuedouble : 0
        );

    return audience_device_local_var;
end:
    return NULL;

}
