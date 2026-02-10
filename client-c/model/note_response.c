#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "note_response.h"



static note_response_t *note_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long note_id,
    char *comment,
    char *tags,
    long likes_count,
    long dislikes_count,
    long date_created,
    long created_date,
    long updated_date,
    account_short_response_t *owner,
    double latitude,
    double longitude,
    char *location_description,
    char *returning
    ) {
    note_response_t *note_response_local_var = malloc(sizeof(note_response_t));
    if (!note_response_local_var) {
        return NULL;
    }
    note_response_local_var->valid = valid;
    note_response_local_var->message = message;
    note_response_local_var->version = version;
    note_response_local_var->serialize_nulls = serialize_nulls;
    note_response_local_var->start_time_log = start_time_log;
    note_response_local_var->error_code = error_code;
    note_response_local_var->request = request;
    note_response_local_var->note_id = note_id;
    note_response_local_var->comment = comment;
    note_response_local_var->tags = tags;
    note_response_local_var->likes_count = likes_count;
    note_response_local_var->dislikes_count = dislikes_count;
    note_response_local_var->date_created = date_created;
    note_response_local_var->created_date = created_date;
    note_response_local_var->updated_date = updated_date;
    note_response_local_var->owner = owner;
    note_response_local_var->latitude = latitude;
    note_response_local_var->longitude = longitude;
    note_response_local_var->location_description = location_description;
    note_response_local_var->returning = returning;

    note_response_local_var->_library_owned = 1;
    return note_response_local_var;
}

__attribute__((deprecated)) note_response_t *note_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long note_id,
    char *comment,
    char *tags,
    long likes_count,
    long dislikes_count,
    long date_created,
    long created_date,
    long updated_date,
    account_short_response_t *owner,
    double latitude,
    double longitude,
    char *location_description,
    char *returning
    ) {
    return note_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        note_id,
        comment,
        tags,
        likes_count,
        dislikes_count,
        date_created,
        created_date,
        updated_date,
        owner,
        latitude,
        longitude,
        location_description,
        returning
        );
}

void note_response_free(note_response_t *note_response) {
    if(NULL == note_response){
        return ;
    }
    if(note_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "note_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (note_response->message) {
        free(note_response->message);
        note_response->message = NULL;
    }
    if (note_response->error_code) {
        free(note_response->error_code);
        note_response->error_code = NULL;
    }
    if (note_response->request) {
        list_ForEach(listEntry, note_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(note_response->request);
        note_response->request = NULL;
    }
    if (note_response->comment) {
        free(note_response->comment);
        note_response->comment = NULL;
    }
    if (note_response->tags) {
        free(note_response->tags);
        note_response->tags = NULL;
    }
    if (note_response->owner) {
        account_short_response_free(note_response->owner);
        note_response->owner = NULL;
    }
    if (note_response->location_description) {
        free(note_response->location_description);
        note_response->location_description = NULL;
    }
    if (note_response->returning) {
        free(note_response->returning);
        note_response->returning = NULL;
    }
    free(note_response);
}

cJSON *note_response_convertToJSON(note_response_t *note_response) {
    cJSON *item = cJSON_CreateObject();

    // note_response->valid
    if(note_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", note_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // note_response->message
    if(note_response->message) {
    if(cJSON_AddStringToObject(item, "message", note_response->message) == NULL) {
    goto fail; //String
    }
    }


    // note_response->version
    if(note_response->version) {
    if(cJSON_AddNumberToObject(item, "version", note_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->serialize_nulls
    if(note_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", note_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // note_response->start_time_log
    if(note_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", note_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->error_code
    if(note_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", note_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // note_response->request
    if(note_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (note_response->request) {
    list_ForEach(requestListEntry, note_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // note_response->note_id
    if(note_response->note_id) {
    if(cJSON_AddNumberToObject(item, "noteId", note_response->note_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->comment
    if(note_response->comment) {
    if(cJSON_AddStringToObject(item, "comment", note_response->comment) == NULL) {
    goto fail; //String
    }
    }


    // note_response->tags
    if(note_response->tags) {
    if(cJSON_AddStringToObject(item, "tags", note_response->tags) == NULL) {
    goto fail; //String
    }
    }


    // note_response->likes_count
    if(note_response->likes_count) {
    if(cJSON_AddNumberToObject(item, "likesCount", note_response->likes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->dislikes_count
    if(note_response->dislikes_count) {
    if(cJSON_AddNumberToObject(item, "dislikesCount", note_response->dislikes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->date_created
    if(note_response->date_created) {
    if(cJSON_AddNumberToObject(item, "dateCreated", note_response->date_created) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->created_date
    if(note_response->created_date) {
    if(cJSON_AddNumberToObject(item, "createdDate", note_response->created_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->updated_date
    if(note_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", note_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->owner
    if(note_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(note_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // note_response->latitude
    if(note_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", note_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->longitude
    if(note_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", note_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // note_response->location_description
    if(note_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", note_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // note_response->returning
    if(note_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", note_response->returning) == NULL) {
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

note_response_t *note_response_parseFromJSON(cJSON *note_responseJSON){

    note_response_t *note_response_local_var = NULL;

    // define the local list for note_response->request
    list_t *requestList = NULL;

    // define the local variable for note_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // note_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // note_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // note_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // note_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // note_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // note_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // note_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "request");
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

    // note_response->note_id
    cJSON *note_id = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "noteId");
    if (cJSON_IsNull(note_id)) {
        note_id = NULL;
    }
    if (note_id) { 
    if(!cJSON_IsNumber(note_id))
    {
    goto end; //Numeric
    }
    }

    // note_response->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }

    // note_response->tags
    cJSON *tags = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "tags");
    if (cJSON_IsNull(tags)) {
        tags = NULL;
    }
    if (tags) { 
    if(!cJSON_IsString(tags) && !cJSON_IsNull(tags))
    {
    goto end; //String
    }
    }

    // note_response->likes_count
    cJSON *likes_count = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "likesCount");
    if (cJSON_IsNull(likes_count)) {
        likes_count = NULL;
    }
    if (likes_count) { 
    if(!cJSON_IsNumber(likes_count))
    {
    goto end; //Numeric
    }
    }

    // note_response->dislikes_count
    cJSON *dislikes_count = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "dislikesCount");
    if (cJSON_IsNull(dislikes_count)) {
        dislikes_count = NULL;
    }
    if (dislikes_count) { 
    if(!cJSON_IsNumber(dislikes_count))
    {
    goto end; //Numeric
    }
    }

    // note_response->date_created
    cJSON *date_created = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "dateCreated");
    if (cJSON_IsNull(date_created)) {
        date_created = NULL;
    }
    if (date_created) { 
    if(!cJSON_IsNumber(date_created))
    {
    goto end; //Numeric
    }
    }

    // note_response->created_date
    cJSON *created_date = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "createdDate");
    if (cJSON_IsNull(created_date)) {
        created_date = NULL;
    }
    if (created_date) { 
    if(!cJSON_IsNumber(created_date))
    {
    goto end; //Numeric
    }
    }

    // note_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // note_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // note_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // note_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // note_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // note_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(note_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    note_response_local_var = note_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        note_id ? note_id->valuedouble : 0,
        comment && !cJSON_IsNull(comment) ? strdup(comment->valuestring) : NULL,
        tags && !cJSON_IsNull(tags) ? strdup(tags->valuestring) : NULL,
        likes_count ? likes_count->valuedouble : 0,
        dislikes_count ? dislikes_count->valuedouble : 0,
        date_created ? date_created->valuedouble : 0,
        created_date ? created_date->valuedouble : 0,
        updated_date ? updated_date->valuedouble : 0,
        owner ? owner_local_nonprim : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return note_response_local_var;
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
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
