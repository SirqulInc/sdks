#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "flag_threshold.h"



static flag_threshold_t *flag_threshold_create_internal(
    long id,
    int active,
    int valid,
    long threshold,
    char *flagable_object_type,
    application_t *application
    ) {
    flag_threshold_t *flag_threshold_local_var = malloc(sizeof(flag_threshold_t));
    if (!flag_threshold_local_var) {
        return NULL;
    }
    flag_threshold_local_var->id = id;
    flag_threshold_local_var->active = active;
    flag_threshold_local_var->valid = valid;
    flag_threshold_local_var->threshold = threshold;
    flag_threshold_local_var->flagable_object_type = flagable_object_type;
    flag_threshold_local_var->application = application;

    flag_threshold_local_var->_library_owned = 1;
    return flag_threshold_local_var;
}

__attribute__((deprecated)) flag_threshold_t *flag_threshold_create(
    long id,
    int active,
    int valid,
    long threshold,
    char *flagable_object_type,
    application_t *application
    ) {
    return flag_threshold_create_internal (
        id,
        active,
        valid,
        threshold,
        flagable_object_type,
        application
        );
}

void flag_threshold_free(flag_threshold_t *flag_threshold) {
    if(NULL == flag_threshold){
        return ;
    }
    if(flag_threshold->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "flag_threshold_free");
        return ;
    }
    listEntry_t *listEntry;
    if (flag_threshold->flagable_object_type) {
        free(flag_threshold->flagable_object_type);
        flag_threshold->flagable_object_type = NULL;
    }
    if (flag_threshold->application) {
        application_free(flag_threshold->application);
        flag_threshold->application = NULL;
    }
    free(flag_threshold);
}

cJSON *flag_threshold_convertToJSON(flag_threshold_t *flag_threshold) {
    cJSON *item = cJSON_CreateObject();

    // flag_threshold->id
    if(flag_threshold->id) {
    if(cJSON_AddNumberToObject(item, "id", flag_threshold->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // flag_threshold->active
    if(flag_threshold->active) {
    if(cJSON_AddBoolToObject(item, "active", flag_threshold->active) == NULL) {
    goto fail; //Bool
    }
    }


    // flag_threshold->valid
    if(flag_threshold->valid) {
    if(cJSON_AddBoolToObject(item, "valid", flag_threshold->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // flag_threshold->threshold
    if(flag_threshold->threshold) {
    if(cJSON_AddNumberToObject(item, "threshold", flag_threshold->threshold) == NULL) {
    goto fail; //Numeric
    }
    }


    // flag_threshold->flagable_object_type
    if(flag_threshold->flagable_object_type) {
    if(cJSON_AddStringToObject(item, "flagableObjectType", flag_threshold->flagable_object_type) == NULL) {
    goto fail; //String
    }
    }


    // flag_threshold->application
    if(flag_threshold->application) {
    cJSON *application_local_JSON = application_convertToJSON(flag_threshold->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
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

flag_threshold_t *flag_threshold_parseFromJSON(cJSON *flag_thresholdJSON){

    flag_threshold_t *flag_threshold_local_var = NULL;

    // define the local variable for flag_threshold->application
    application_t *application_local_nonprim = NULL;

    // flag_threshold->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(flag_thresholdJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // flag_threshold->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(flag_thresholdJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // flag_threshold->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(flag_thresholdJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // flag_threshold->threshold
    cJSON *threshold = cJSON_GetObjectItemCaseSensitive(flag_thresholdJSON, "threshold");
    if (cJSON_IsNull(threshold)) {
        threshold = NULL;
    }
    if (threshold) { 
    if(!cJSON_IsNumber(threshold))
    {
    goto end; //Numeric
    }
    }

    // flag_threshold->flagable_object_type
    cJSON *flagable_object_type = cJSON_GetObjectItemCaseSensitive(flag_thresholdJSON, "flagableObjectType");
    if (cJSON_IsNull(flagable_object_type)) {
        flagable_object_type = NULL;
    }
    if (flagable_object_type) { 
    if(!cJSON_IsString(flagable_object_type) && !cJSON_IsNull(flagable_object_type))
    {
    goto end; //String
    }
    }

    // flag_threshold->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(flag_thresholdJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }


    flag_threshold_local_var = flag_threshold_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        threshold ? threshold->valuedouble : 0,
        flagable_object_type && !cJSON_IsNull(flagable_object_type) ? strdup(flagable_object_type->valuestring) : NULL,
        application ? application_local_nonprim : NULL
        );

    return flag_threshold_local_var;
end:
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    return NULL;

}
