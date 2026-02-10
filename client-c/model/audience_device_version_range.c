#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "audience_device_version_range.h"



static audience_device_version_range_t *audience_device_version_range_create_internal(
    long id,
    int active,
    int valid,
    audience_device_t *device,
    long minimum,
    long maximum
    ) {
    audience_device_version_range_t *audience_device_version_range_local_var = malloc(sizeof(audience_device_version_range_t));
    if (!audience_device_version_range_local_var) {
        return NULL;
    }
    audience_device_version_range_local_var->id = id;
    audience_device_version_range_local_var->active = active;
    audience_device_version_range_local_var->valid = valid;
    audience_device_version_range_local_var->device = device;
    audience_device_version_range_local_var->minimum = minimum;
    audience_device_version_range_local_var->maximum = maximum;

    audience_device_version_range_local_var->_library_owned = 1;
    return audience_device_version_range_local_var;
}

__attribute__((deprecated)) audience_device_version_range_t *audience_device_version_range_create(
    long id,
    int active,
    int valid,
    audience_device_t *device,
    long minimum,
    long maximum
    ) {
    return audience_device_version_range_create_internal (
        id,
        active,
        valid,
        device,
        minimum,
        maximum
        );
}

void audience_device_version_range_free(audience_device_version_range_t *audience_device_version_range) {
    if(NULL == audience_device_version_range){
        return ;
    }
    if(audience_device_version_range->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "audience_device_version_range_free");
        return ;
    }
    listEntry_t *listEntry;
    if (audience_device_version_range->device) {
        audience_device_free(audience_device_version_range->device);
        audience_device_version_range->device = NULL;
    }
    free(audience_device_version_range);
}

cJSON *audience_device_version_range_convertToJSON(audience_device_version_range_t *audience_device_version_range) {
    cJSON *item = cJSON_CreateObject();

    // audience_device_version_range->id
    if(audience_device_version_range->id) {
    if(cJSON_AddNumberToObject(item, "id", audience_device_version_range->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_device_version_range->active
    if(audience_device_version_range->active) {
    if(cJSON_AddBoolToObject(item, "active", audience_device_version_range->active) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_device_version_range->valid
    if(audience_device_version_range->valid) {
    if(cJSON_AddBoolToObject(item, "valid", audience_device_version_range->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // audience_device_version_range->device
    if(audience_device_version_range->device) {
    cJSON *device_local_JSON = audience_device_convertToJSON(audience_device_version_range->device);
    if(device_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "device", device_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // audience_device_version_range->minimum
    if(audience_device_version_range->minimum) {
    if(cJSON_AddNumberToObject(item, "minimum", audience_device_version_range->minimum) == NULL) {
    goto fail; //Numeric
    }
    }


    // audience_device_version_range->maximum
    if(audience_device_version_range->maximum) {
    if(cJSON_AddNumberToObject(item, "maximum", audience_device_version_range->maximum) == NULL) {
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

audience_device_version_range_t *audience_device_version_range_parseFromJSON(cJSON *audience_device_version_rangeJSON){

    audience_device_version_range_t *audience_device_version_range_local_var = NULL;

    // define the local variable for audience_device_version_range->device
    audience_device_t *device_local_nonprim = NULL;

    // audience_device_version_range->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(audience_device_version_rangeJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // audience_device_version_range->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(audience_device_version_rangeJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // audience_device_version_range->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(audience_device_version_rangeJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // audience_device_version_range->device
    cJSON *device = cJSON_GetObjectItemCaseSensitive(audience_device_version_rangeJSON, "device");
    if (cJSON_IsNull(device)) {
        device = NULL;
    }
    if (device) { 
    device_local_nonprim = audience_device_parseFromJSON(device); //nonprimitive
    }

    // audience_device_version_range->minimum
    cJSON *minimum = cJSON_GetObjectItemCaseSensitive(audience_device_version_rangeJSON, "minimum");
    if (cJSON_IsNull(minimum)) {
        minimum = NULL;
    }
    if (minimum) { 
    if(!cJSON_IsNumber(minimum))
    {
    goto end; //Numeric
    }
    }

    // audience_device_version_range->maximum
    cJSON *maximum = cJSON_GetObjectItemCaseSensitive(audience_device_version_rangeJSON, "maximum");
    if (cJSON_IsNull(maximum)) {
        maximum = NULL;
    }
    if (maximum) { 
    if(!cJSON_IsNumber(maximum))
    {
    goto end; //Numeric
    }
    }


    audience_device_version_range_local_var = audience_device_version_range_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        device ? device_local_nonprim : NULL,
        minimum ? minimum->valuedouble : 0,
        maximum ? maximum->valuedouble : 0
        );

    return audience_device_version_range_local_var;
end:
    if (device_local_nonprim) {
        audience_device_free(device_local_nonprim);
        device_local_nonprim = NULL;
    }
    return NULL;

}
