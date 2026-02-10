#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "activity_response.h"



static activity_response_t *activity_response_create_internal(
    long activity_id,
    long created,
    char *app_key,
    long target_id,
    char *target_type,
    char *target_legacy_id,
    char *target_description,
    int target_active,
    char *action,
    long slave_entity_id
    ) {
    activity_response_t *activity_response_local_var = malloc(sizeof(activity_response_t));
    if (!activity_response_local_var) {
        return NULL;
    }
    activity_response_local_var->activity_id = activity_id;
    activity_response_local_var->created = created;
    activity_response_local_var->app_key = app_key;
    activity_response_local_var->target_id = target_id;
    activity_response_local_var->target_type = target_type;
    activity_response_local_var->target_legacy_id = target_legacy_id;
    activity_response_local_var->target_description = target_description;
    activity_response_local_var->target_active = target_active;
    activity_response_local_var->action = action;
    activity_response_local_var->slave_entity_id = slave_entity_id;

    activity_response_local_var->_library_owned = 1;
    return activity_response_local_var;
}

__attribute__((deprecated)) activity_response_t *activity_response_create(
    long activity_id,
    long created,
    char *app_key,
    long target_id,
    char *target_type,
    char *target_legacy_id,
    char *target_description,
    int target_active,
    char *action,
    long slave_entity_id
    ) {
    return activity_response_create_internal (
        activity_id,
        created,
        app_key,
        target_id,
        target_type,
        target_legacy_id,
        target_description,
        target_active,
        action,
        slave_entity_id
        );
}

void activity_response_free(activity_response_t *activity_response) {
    if(NULL == activity_response){
        return ;
    }
    if(activity_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "activity_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (activity_response->app_key) {
        free(activity_response->app_key);
        activity_response->app_key = NULL;
    }
    if (activity_response->target_type) {
        free(activity_response->target_type);
        activity_response->target_type = NULL;
    }
    if (activity_response->target_legacy_id) {
        free(activity_response->target_legacy_id);
        activity_response->target_legacy_id = NULL;
    }
    if (activity_response->target_description) {
        free(activity_response->target_description);
        activity_response->target_description = NULL;
    }
    if (activity_response->action) {
        free(activity_response->action);
        activity_response->action = NULL;
    }
    free(activity_response);
}

cJSON *activity_response_convertToJSON(activity_response_t *activity_response) {
    cJSON *item = cJSON_CreateObject();

    // activity_response->activity_id
    if(activity_response->activity_id) {
    if(cJSON_AddNumberToObject(item, "activityId", activity_response->activity_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // activity_response->created
    if(activity_response->created) {
    if(cJSON_AddNumberToObject(item, "created", activity_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // activity_response->app_key
    if(activity_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", activity_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // activity_response->target_id
    if(activity_response->target_id) {
    if(cJSON_AddNumberToObject(item, "targetId", activity_response->target_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // activity_response->target_type
    if(activity_response->target_type) {
    if(cJSON_AddStringToObject(item, "targetType", activity_response->target_type) == NULL) {
    goto fail; //String
    }
    }


    // activity_response->target_legacy_id
    if(activity_response->target_legacy_id) {
    if(cJSON_AddStringToObject(item, "targetLegacyId", activity_response->target_legacy_id) == NULL) {
    goto fail; //String
    }
    }


    // activity_response->target_description
    if(activity_response->target_description) {
    if(cJSON_AddStringToObject(item, "targetDescription", activity_response->target_description) == NULL) {
    goto fail; //String
    }
    }


    // activity_response->target_active
    if(activity_response->target_active) {
    if(cJSON_AddBoolToObject(item, "targetActive", activity_response->target_active) == NULL) {
    goto fail; //Bool
    }
    }


    // activity_response->action
    if(activity_response->action) {
    if(cJSON_AddStringToObject(item, "action", activity_response->action) == NULL) {
    goto fail; //String
    }
    }


    // activity_response->slave_entity_id
    if(activity_response->slave_entity_id) {
    if(cJSON_AddNumberToObject(item, "slaveEntityId", activity_response->slave_entity_id) == NULL) {
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

activity_response_t *activity_response_parseFromJSON(cJSON *activity_responseJSON){

    activity_response_t *activity_response_local_var = NULL;

    // activity_response->activity_id
    cJSON *activity_id = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "activityId");
    if (cJSON_IsNull(activity_id)) {
        activity_id = NULL;
    }
    if (activity_id) { 
    if(!cJSON_IsNumber(activity_id))
    {
    goto end; //Numeric
    }
    }

    // activity_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // activity_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // activity_response->target_id
    cJSON *target_id = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "targetId");
    if (cJSON_IsNull(target_id)) {
        target_id = NULL;
    }
    if (target_id) { 
    if(!cJSON_IsNumber(target_id))
    {
    goto end; //Numeric
    }
    }

    // activity_response->target_type
    cJSON *target_type = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "targetType");
    if (cJSON_IsNull(target_type)) {
        target_type = NULL;
    }
    if (target_type) { 
    if(!cJSON_IsString(target_type) && !cJSON_IsNull(target_type))
    {
    goto end; //String
    }
    }

    // activity_response->target_legacy_id
    cJSON *target_legacy_id = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "targetLegacyId");
    if (cJSON_IsNull(target_legacy_id)) {
        target_legacy_id = NULL;
    }
    if (target_legacy_id) { 
    if(!cJSON_IsString(target_legacy_id) && !cJSON_IsNull(target_legacy_id))
    {
    goto end; //String
    }
    }

    // activity_response->target_description
    cJSON *target_description = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "targetDescription");
    if (cJSON_IsNull(target_description)) {
        target_description = NULL;
    }
    if (target_description) { 
    if(!cJSON_IsString(target_description) && !cJSON_IsNull(target_description))
    {
    goto end; //String
    }
    }

    // activity_response->target_active
    cJSON *target_active = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "targetActive");
    if (cJSON_IsNull(target_active)) {
        target_active = NULL;
    }
    if (target_active) { 
    if(!cJSON_IsBool(target_active))
    {
    goto end; //Bool
    }
    }

    // activity_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    if (action) { 
    if(!cJSON_IsString(action) && !cJSON_IsNull(action))
    {
    goto end; //String
    }
    }

    // activity_response->slave_entity_id
    cJSON *slave_entity_id = cJSON_GetObjectItemCaseSensitive(activity_responseJSON, "slaveEntityId");
    if (cJSON_IsNull(slave_entity_id)) {
        slave_entity_id = NULL;
    }
    if (slave_entity_id) { 
    if(!cJSON_IsNumber(slave_entity_id))
    {
    goto end; //Numeric
    }
    }


    activity_response_local_var = activity_response_create_internal (
        activity_id ? activity_id->valuedouble : 0,
        created ? created->valuedouble : 0,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        target_id ? target_id->valuedouble : 0,
        target_type && !cJSON_IsNull(target_type) ? strdup(target_type->valuestring) : NULL,
        target_legacy_id && !cJSON_IsNull(target_legacy_id) ? strdup(target_legacy_id->valuestring) : NULL,
        target_description && !cJSON_IsNull(target_description) ? strdup(target_description->valuestring) : NULL,
        target_active ? target_active->valueint : 0,
        action && !cJSON_IsNull(action) ? strdup(action->valuestring) : NULL,
        slave_entity_id ? slave_entity_id->valuedouble : 0
        );

    return activity_response_local_var;
end:
    return NULL;

}
