#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "achievement_short_response.h"



static achievement_short_response_t *achievement_short_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long achievement_id,
    char *title,
    char *description,
    char *analytics_tag,
    char *rank_type,
    int rank_increment,
    int validate,
    char *app_name,
    int active,
    long updated,
    long created,
    int tier_count,
    int min_increment,
    int max_increment,
    char *returning
    ) {
    achievement_short_response_t *achievement_short_response_local_var = malloc(sizeof(achievement_short_response_t));
    if (!achievement_short_response_local_var) {
        return NULL;
    }
    achievement_short_response_local_var->valid = valid;
    achievement_short_response_local_var->message = message;
    achievement_short_response_local_var->version = version;
    achievement_short_response_local_var->serialize_nulls = serialize_nulls;
    achievement_short_response_local_var->start_time_log = start_time_log;
    achievement_short_response_local_var->error_code = error_code;
    achievement_short_response_local_var->request = request;
    achievement_short_response_local_var->achievement_id = achievement_id;
    achievement_short_response_local_var->title = title;
    achievement_short_response_local_var->description = description;
    achievement_short_response_local_var->analytics_tag = analytics_tag;
    achievement_short_response_local_var->rank_type = rank_type;
    achievement_short_response_local_var->rank_increment = rank_increment;
    achievement_short_response_local_var->validate = validate;
    achievement_short_response_local_var->app_name = app_name;
    achievement_short_response_local_var->active = active;
    achievement_short_response_local_var->updated = updated;
    achievement_short_response_local_var->created = created;
    achievement_short_response_local_var->tier_count = tier_count;
    achievement_short_response_local_var->min_increment = min_increment;
    achievement_short_response_local_var->max_increment = max_increment;
    achievement_short_response_local_var->returning = returning;

    achievement_short_response_local_var->_library_owned = 1;
    return achievement_short_response_local_var;
}

__attribute__((deprecated)) achievement_short_response_t *achievement_short_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long achievement_id,
    char *title,
    char *description,
    char *analytics_tag,
    char *rank_type,
    int rank_increment,
    int validate,
    char *app_name,
    int active,
    long updated,
    long created,
    int tier_count,
    int min_increment,
    int max_increment,
    char *returning
    ) {
    return achievement_short_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        achievement_id,
        title,
        description,
        analytics_tag,
        rank_type,
        rank_increment,
        validate,
        app_name,
        active,
        updated,
        created,
        tier_count,
        min_increment,
        max_increment,
        returning
        );
}

void achievement_short_response_free(achievement_short_response_t *achievement_short_response) {
    if(NULL == achievement_short_response){
        return ;
    }
    if(achievement_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "achievement_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (achievement_short_response->message) {
        free(achievement_short_response->message);
        achievement_short_response->message = NULL;
    }
    if (achievement_short_response->error_code) {
        free(achievement_short_response->error_code);
        achievement_short_response->error_code = NULL;
    }
    if (achievement_short_response->request) {
        list_ForEach(listEntry, achievement_short_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(achievement_short_response->request);
        achievement_short_response->request = NULL;
    }
    if (achievement_short_response->title) {
        free(achievement_short_response->title);
        achievement_short_response->title = NULL;
    }
    if (achievement_short_response->description) {
        free(achievement_short_response->description);
        achievement_short_response->description = NULL;
    }
    if (achievement_short_response->analytics_tag) {
        free(achievement_short_response->analytics_tag);
        achievement_short_response->analytics_tag = NULL;
    }
    if (achievement_short_response->rank_type) {
        free(achievement_short_response->rank_type);
        achievement_short_response->rank_type = NULL;
    }
    if (achievement_short_response->app_name) {
        free(achievement_short_response->app_name);
        achievement_short_response->app_name = NULL;
    }
    if (achievement_short_response->returning) {
        free(achievement_short_response->returning);
        achievement_short_response->returning = NULL;
    }
    free(achievement_short_response);
}

cJSON *achievement_short_response_convertToJSON(achievement_short_response_t *achievement_short_response) {
    cJSON *item = cJSON_CreateObject();

    // achievement_short_response->valid
    if(achievement_short_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", achievement_short_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // achievement_short_response->message
    if(achievement_short_response->message) {
    if(cJSON_AddStringToObject(item, "message", achievement_short_response->message) == NULL) {
    goto fail; //String
    }
    }


    // achievement_short_response->version
    if(achievement_short_response->version) {
    if(cJSON_AddNumberToObject(item, "version", achievement_short_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->serialize_nulls
    if(achievement_short_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", achievement_short_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // achievement_short_response->start_time_log
    if(achievement_short_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", achievement_short_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->error_code
    if(achievement_short_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", achievement_short_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // achievement_short_response->request
    if(achievement_short_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (achievement_short_response->request) {
    list_ForEach(requestListEntry, achievement_short_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // achievement_short_response->achievement_id
    if(achievement_short_response->achievement_id) {
    if(cJSON_AddNumberToObject(item, "achievementId", achievement_short_response->achievement_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->title
    if(achievement_short_response->title) {
    if(cJSON_AddStringToObject(item, "title", achievement_short_response->title) == NULL) {
    goto fail; //String
    }
    }


    // achievement_short_response->description
    if(achievement_short_response->description) {
    if(cJSON_AddStringToObject(item, "description", achievement_short_response->description) == NULL) {
    goto fail; //String
    }
    }


    // achievement_short_response->analytics_tag
    if(achievement_short_response->analytics_tag) {
    if(cJSON_AddStringToObject(item, "analyticsTag", achievement_short_response->analytics_tag) == NULL) {
    goto fail; //String
    }
    }


    // achievement_short_response->rank_type
    if(achievement_short_response->rank_type) {
    if(cJSON_AddStringToObject(item, "rankType", achievement_short_response->rank_type) == NULL) {
    goto fail; //String
    }
    }


    // achievement_short_response->rank_increment
    if(achievement_short_response->rank_increment) {
    if(cJSON_AddNumberToObject(item, "rankIncrement", achievement_short_response->rank_increment) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->validate
    if(achievement_short_response->validate) {
    if(cJSON_AddBoolToObject(item, "validate", achievement_short_response->validate) == NULL) {
    goto fail; //Bool
    }
    }


    // achievement_short_response->app_name
    if(achievement_short_response->app_name) {
    if(cJSON_AddStringToObject(item, "appName", achievement_short_response->app_name) == NULL) {
    goto fail; //String
    }
    }


    // achievement_short_response->active
    if(achievement_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", achievement_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // achievement_short_response->updated
    if(achievement_short_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", achievement_short_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->created
    if(achievement_short_response->created) {
    if(cJSON_AddNumberToObject(item, "created", achievement_short_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->tier_count
    if(achievement_short_response->tier_count) {
    if(cJSON_AddNumberToObject(item, "tierCount", achievement_short_response->tier_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->min_increment
    if(achievement_short_response->min_increment) {
    if(cJSON_AddNumberToObject(item, "minIncrement", achievement_short_response->min_increment) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->max_increment
    if(achievement_short_response->max_increment) {
    if(cJSON_AddNumberToObject(item, "maxIncrement", achievement_short_response->max_increment) == NULL) {
    goto fail; //Numeric
    }
    }


    // achievement_short_response->returning
    if(achievement_short_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", achievement_short_response->returning) == NULL) {
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

achievement_short_response_t *achievement_short_response_parseFromJSON(cJSON *achievement_short_responseJSON){

    achievement_short_response_t *achievement_short_response_local_var = NULL;

    // define the local list for achievement_short_response->request
    list_t *requestList = NULL;

    // achievement_short_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // achievement_short_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // achievement_short_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // achievement_short_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // achievement_short_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }

    // achievement_short_response->achievement_id
    cJSON *achievement_id = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "achievementId");
    if (cJSON_IsNull(achievement_id)) {
        achievement_id = NULL;
    }
    if (achievement_id) { 
    if(!cJSON_IsNumber(achievement_id))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // achievement_short_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // achievement_short_response->analytics_tag
    cJSON *analytics_tag = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "analyticsTag");
    if (cJSON_IsNull(analytics_tag)) {
        analytics_tag = NULL;
    }
    if (analytics_tag) { 
    if(!cJSON_IsString(analytics_tag) && !cJSON_IsNull(analytics_tag))
    {
    goto end; //String
    }
    }

    // achievement_short_response->rank_type
    cJSON *rank_type = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "rankType");
    if (cJSON_IsNull(rank_type)) {
        rank_type = NULL;
    }
    if (rank_type) { 
    if(!cJSON_IsString(rank_type) && !cJSON_IsNull(rank_type))
    {
    goto end; //String
    }
    }

    // achievement_short_response->rank_increment
    cJSON *rank_increment = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "rankIncrement");
    if (cJSON_IsNull(rank_increment)) {
        rank_increment = NULL;
    }
    if (rank_increment) { 
    if(!cJSON_IsNumber(rank_increment))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->validate
    cJSON *validate = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "validate");
    if (cJSON_IsNull(validate)) {
        validate = NULL;
    }
    if (validate) { 
    if(!cJSON_IsBool(validate))
    {
    goto end; //Bool
    }
    }

    // achievement_short_response->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }

    // achievement_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // achievement_short_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->tier_count
    cJSON *tier_count = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "tierCount");
    if (cJSON_IsNull(tier_count)) {
        tier_count = NULL;
    }
    if (tier_count) { 
    if(!cJSON_IsNumber(tier_count))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->min_increment
    cJSON *min_increment = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "minIncrement");
    if (cJSON_IsNull(min_increment)) {
        min_increment = NULL;
    }
    if (min_increment) { 
    if(!cJSON_IsNumber(min_increment))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->max_increment
    cJSON *max_increment = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "maxIncrement");
    if (cJSON_IsNull(max_increment)) {
        max_increment = NULL;
    }
    if (max_increment) { 
    if(!cJSON_IsNumber(max_increment))
    {
    goto end; //Numeric
    }
    }

    // achievement_short_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(achievement_short_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    achievement_short_response_local_var = achievement_short_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        achievement_id ? achievement_id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        analytics_tag && !cJSON_IsNull(analytics_tag) ? strdup(analytics_tag->valuestring) : NULL,
        rank_type && !cJSON_IsNull(rank_type) ? strdup(rank_type->valuestring) : NULL,
        rank_increment ? rank_increment->valuedouble : 0,
        validate ? validate->valueint : 0,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL,
        active ? active->valueint : 0,
        updated ? updated->valuedouble : 0,
        created ? created->valuedouble : 0,
        tier_count ? tier_count->valuedouble : 0,
        min_increment ? min_increment->valuedouble : 0,
        max_increment ? max_increment->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return achievement_short_response_local_var;
end:
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    return NULL;

}
