#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "tutorial_response.h"



static tutorial_response_t *tutorial_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long id,
    char *name,
    char *description,
    char *alignment,
    asset_short_response_t *image,
    long order_index,
    char *object_type,
    char *returning
    ) {
    tutorial_response_t *tutorial_response_local_var = malloc(sizeof(tutorial_response_t));
    if (!tutorial_response_local_var) {
        return NULL;
    }
    tutorial_response_local_var->valid = valid;
    tutorial_response_local_var->message = message;
    tutorial_response_local_var->version = version;
    tutorial_response_local_var->serialize_nulls = serialize_nulls;
    tutorial_response_local_var->start_time_log = start_time_log;
    tutorial_response_local_var->error_code = error_code;
    tutorial_response_local_var->request = request;
    tutorial_response_local_var->id = id;
    tutorial_response_local_var->name = name;
    tutorial_response_local_var->description = description;
    tutorial_response_local_var->alignment = alignment;
    tutorial_response_local_var->image = image;
    tutorial_response_local_var->order_index = order_index;
    tutorial_response_local_var->object_type = object_type;
    tutorial_response_local_var->returning = returning;

    tutorial_response_local_var->_library_owned = 1;
    return tutorial_response_local_var;
}

__attribute__((deprecated)) tutorial_response_t *tutorial_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long id,
    char *name,
    char *description,
    char *alignment,
    asset_short_response_t *image,
    long order_index,
    char *object_type,
    char *returning
    ) {
    return tutorial_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        id,
        name,
        description,
        alignment,
        image,
        order_index,
        object_type,
        returning
        );
}

void tutorial_response_free(tutorial_response_t *tutorial_response) {
    if(NULL == tutorial_response){
        return ;
    }
    if(tutorial_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "tutorial_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (tutorial_response->message) {
        free(tutorial_response->message);
        tutorial_response->message = NULL;
    }
    if (tutorial_response->error_code) {
        free(tutorial_response->error_code);
        tutorial_response->error_code = NULL;
    }
    if (tutorial_response->request) {
        list_ForEach(listEntry, tutorial_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(tutorial_response->request);
        tutorial_response->request = NULL;
    }
    if (tutorial_response->name) {
        free(tutorial_response->name);
        tutorial_response->name = NULL;
    }
    if (tutorial_response->description) {
        free(tutorial_response->description);
        tutorial_response->description = NULL;
    }
    if (tutorial_response->alignment) {
        free(tutorial_response->alignment);
        tutorial_response->alignment = NULL;
    }
    if (tutorial_response->image) {
        asset_short_response_free(tutorial_response->image);
        tutorial_response->image = NULL;
    }
    if (tutorial_response->object_type) {
        free(tutorial_response->object_type);
        tutorial_response->object_type = NULL;
    }
    if (tutorial_response->returning) {
        free(tutorial_response->returning);
        tutorial_response->returning = NULL;
    }
    free(tutorial_response);
}

cJSON *tutorial_response_convertToJSON(tutorial_response_t *tutorial_response) {
    cJSON *item = cJSON_CreateObject();

    // tutorial_response->valid
    if(tutorial_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", tutorial_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // tutorial_response->message
    if(tutorial_response->message) {
    if(cJSON_AddStringToObject(item, "message", tutorial_response->message) == NULL) {
    goto fail; //String
    }
    }


    // tutorial_response->version
    if(tutorial_response->version) {
    if(cJSON_AddNumberToObject(item, "version", tutorial_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // tutorial_response->serialize_nulls
    if(tutorial_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", tutorial_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // tutorial_response->start_time_log
    if(tutorial_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", tutorial_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // tutorial_response->error_code
    if(tutorial_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", tutorial_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // tutorial_response->request
    if(tutorial_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (tutorial_response->request) {
    list_ForEach(requestListEntry, tutorial_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // tutorial_response->id
    if(tutorial_response->id) {
    if(cJSON_AddNumberToObject(item, "id", tutorial_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // tutorial_response->name
    if(tutorial_response->name) {
    if(cJSON_AddStringToObject(item, "name", tutorial_response->name) == NULL) {
    goto fail; //String
    }
    }


    // tutorial_response->description
    if(tutorial_response->description) {
    if(cJSON_AddStringToObject(item, "description", tutorial_response->description) == NULL) {
    goto fail; //String
    }
    }


    // tutorial_response->alignment
    if(tutorial_response->alignment) {
    if(cJSON_AddStringToObject(item, "alignment", tutorial_response->alignment) == NULL) {
    goto fail; //String
    }
    }


    // tutorial_response->image
    if(tutorial_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(tutorial_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tutorial_response->order_index
    if(tutorial_response->order_index) {
    if(cJSON_AddNumberToObject(item, "orderIndex", tutorial_response->order_index) == NULL) {
    goto fail; //Numeric
    }
    }


    // tutorial_response->object_type
    if(tutorial_response->object_type) {
    if(cJSON_AddStringToObject(item, "objectType", tutorial_response->object_type) == NULL) {
    goto fail; //String
    }
    }


    // tutorial_response->returning
    if(tutorial_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", tutorial_response->returning) == NULL) {
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

tutorial_response_t *tutorial_response_parseFromJSON(cJSON *tutorial_responseJSON){

    tutorial_response_t *tutorial_response_local_var = NULL;

    // define the local list for tutorial_response->request
    list_t *requestList = NULL;

    // define the local variable for tutorial_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // tutorial_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // tutorial_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // tutorial_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // tutorial_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // tutorial_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // tutorial_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // tutorial_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "request");
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

    // tutorial_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // tutorial_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // tutorial_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // tutorial_response->alignment
    cJSON *alignment = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "alignment");
    if (cJSON_IsNull(alignment)) {
        alignment = NULL;
    }
    if (alignment) { 
    if(!cJSON_IsString(alignment) && !cJSON_IsNull(alignment))
    {
    goto end; //String
    }
    }

    // tutorial_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // tutorial_response->order_index
    cJSON *order_index = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "orderIndex");
    if (cJSON_IsNull(order_index)) {
        order_index = NULL;
    }
    if (order_index) { 
    if(!cJSON_IsNumber(order_index))
    {
    goto end; //Numeric
    }
    }

    // tutorial_response->object_type
    cJSON *object_type = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "objectType");
    if (cJSON_IsNull(object_type)) {
        object_type = NULL;
    }
    if (object_type) { 
    if(!cJSON_IsString(object_type) && !cJSON_IsNull(object_type))
    {
    goto end; //String
    }
    }

    // tutorial_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(tutorial_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    tutorial_response_local_var = tutorial_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        alignment && !cJSON_IsNull(alignment) ? strdup(alignment->valuestring) : NULL,
        image ? image_local_nonprim : NULL,
        order_index ? order_index->valuedouble : 0,
        object_type && !cJSON_IsNull(object_type) ? strdup(object_type->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return tutorial_response_local_var;
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
    if (image_local_nonprim) {
        asset_short_response_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    return NULL;

}
