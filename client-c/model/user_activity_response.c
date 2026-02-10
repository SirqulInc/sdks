#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user_activity_response.h"



static user_activity_response_t *user_activity_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *created,
    double latitude,
    double longitude,
    char *tag,
    long custom_id,
    char *custom_type,
    long user_id,
    char *username,
    char *app_title,
    long app_id,
    char *app_url,
    char *app_description,
    char *image_url,
    char *profile_image,
    char *fields,
    long id,
    char *custom_text,
    double custom_value,
    char *custom_message,
    char *returning
    ) {
    user_activity_response_t *user_activity_response_local_var = malloc(sizeof(user_activity_response_t));
    if (!user_activity_response_local_var) {
        return NULL;
    }
    user_activity_response_local_var->valid = valid;
    user_activity_response_local_var->message = message;
    user_activity_response_local_var->version = version;
    user_activity_response_local_var->serialize_nulls = serialize_nulls;
    user_activity_response_local_var->start_time_log = start_time_log;
    user_activity_response_local_var->error_code = error_code;
    user_activity_response_local_var->request = request;
    user_activity_response_local_var->created = created;
    user_activity_response_local_var->latitude = latitude;
    user_activity_response_local_var->longitude = longitude;
    user_activity_response_local_var->tag = tag;
    user_activity_response_local_var->custom_id = custom_id;
    user_activity_response_local_var->custom_type = custom_type;
    user_activity_response_local_var->user_id = user_id;
    user_activity_response_local_var->username = username;
    user_activity_response_local_var->app_title = app_title;
    user_activity_response_local_var->app_id = app_id;
    user_activity_response_local_var->app_url = app_url;
    user_activity_response_local_var->app_description = app_description;
    user_activity_response_local_var->image_url = image_url;
    user_activity_response_local_var->profile_image = profile_image;
    user_activity_response_local_var->fields = fields;
    user_activity_response_local_var->id = id;
    user_activity_response_local_var->custom_text = custom_text;
    user_activity_response_local_var->custom_value = custom_value;
    user_activity_response_local_var->custom_message = custom_message;
    user_activity_response_local_var->returning = returning;

    user_activity_response_local_var->_library_owned = 1;
    return user_activity_response_local_var;
}

__attribute__((deprecated)) user_activity_response_t *user_activity_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *created,
    double latitude,
    double longitude,
    char *tag,
    long custom_id,
    char *custom_type,
    long user_id,
    char *username,
    char *app_title,
    long app_id,
    char *app_url,
    char *app_description,
    char *image_url,
    char *profile_image,
    char *fields,
    long id,
    char *custom_text,
    double custom_value,
    char *custom_message,
    char *returning
    ) {
    return user_activity_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        created,
        latitude,
        longitude,
        tag,
        custom_id,
        custom_type,
        user_id,
        username,
        app_title,
        app_id,
        app_url,
        app_description,
        image_url,
        profile_image,
        fields,
        id,
        custom_text,
        custom_value,
        custom_message,
        returning
        );
}

void user_activity_response_free(user_activity_response_t *user_activity_response) {
    if(NULL == user_activity_response){
        return ;
    }
    if(user_activity_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "user_activity_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (user_activity_response->message) {
        free(user_activity_response->message);
        user_activity_response->message = NULL;
    }
    if (user_activity_response->error_code) {
        free(user_activity_response->error_code);
        user_activity_response->error_code = NULL;
    }
    if (user_activity_response->request) {
        list_ForEach(listEntry, user_activity_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(user_activity_response->request);
        user_activity_response->request = NULL;
    }
    if (user_activity_response->created) {
        free(user_activity_response->created);
        user_activity_response->created = NULL;
    }
    if (user_activity_response->tag) {
        free(user_activity_response->tag);
        user_activity_response->tag = NULL;
    }
    if (user_activity_response->custom_type) {
        free(user_activity_response->custom_type);
        user_activity_response->custom_type = NULL;
    }
    if (user_activity_response->username) {
        free(user_activity_response->username);
        user_activity_response->username = NULL;
    }
    if (user_activity_response->app_title) {
        free(user_activity_response->app_title);
        user_activity_response->app_title = NULL;
    }
    if (user_activity_response->app_url) {
        free(user_activity_response->app_url);
        user_activity_response->app_url = NULL;
    }
    if (user_activity_response->app_description) {
        free(user_activity_response->app_description);
        user_activity_response->app_description = NULL;
    }
    if (user_activity_response->image_url) {
        free(user_activity_response->image_url);
        user_activity_response->image_url = NULL;
    }
    if (user_activity_response->profile_image) {
        free(user_activity_response->profile_image);
        user_activity_response->profile_image = NULL;
    }
    if (user_activity_response->fields) {
        free(user_activity_response->fields);
        user_activity_response->fields = NULL;
    }
    if (user_activity_response->custom_text) {
        free(user_activity_response->custom_text);
        user_activity_response->custom_text = NULL;
    }
    if (user_activity_response->custom_message) {
        free(user_activity_response->custom_message);
        user_activity_response->custom_message = NULL;
    }
    if (user_activity_response->returning) {
        free(user_activity_response->returning);
        user_activity_response->returning = NULL;
    }
    free(user_activity_response);
}

cJSON *user_activity_response_convertToJSON(user_activity_response_t *user_activity_response) {
    cJSON *item = cJSON_CreateObject();

    // user_activity_response->valid
    if(user_activity_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", user_activity_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // user_activity_response->message
    if(user_activity_response->message) {
    if(cJSON_AddStringToObject(item, "message", user_activity_response->message) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->version
    if(user_activity_response->version) {
    if(cJSON_AddNumberToObject(item, "version", user_activity_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->serialize_nulls
    if(user_activity_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", user_activity_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // user_activity_response->start_time_log
    if(user_activity_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", user_activity_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->error_code
    if(user_activity_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", user_activity_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->request
    if(user_activity_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (user_activity_response->request) {
    list_ForEach(requestListEntry, user_activity_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // user_activity_response->created
    if(user_activity_response->created) {
    if(cJSON_AddStringToObject(item, "created", user_activity_response->created) == NULL) {
    goto fail; //Date-Time
    }
    }


    // user_activity_response->latitude
    if(user_activity_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", user_activity_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->longitude
    if(user_activity_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", user_activity_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->tag
    if(user_activity_response->tag) {
    if(cJSON_AddStringToObject(item, "tag", user_activity_response->tag) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->custom_id
    if(user_activity_response->custom_id) {
    if(cJSON_AddNumberToObject(item, "customId", user_activity_response->custom_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->custom_type
    if(user_activity_response->custom_type) {
    if(cJSON_AddStringToObject(item, "customType", user_activity_response->custom_type) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->user_id
    if(user_activity_response->user_id) {
    if(cJSON_AddNumberToObject(item, "userId", user_activity_response->user_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->username
    if(user_activity_response->username) {
    if(cJSON_AddStringToObject(item, "username", user_activity_response->username) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->app_title
    if(user_activity_response->app_title) {
    if(cJSON_AddStringToObject(item, "appTitle", user_activity_response->app_title) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->app_id
    if(user_activity_response->app_id) {
    if(cJSON_AddNumberToObject(item, "appId", user_activity_response->app_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->app_url
    if(user_activity_response->app_url) {
    if(cJSON_AddStringToObject(item, "appUrl", user_activity_response->app_url) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->app_description
    if(user_activity_response->app_description) {
    if(cJSON_AddStringToObject(item, "appDescription", user_activity_response->app_description) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->image_url
    if(user_activity_response->image_url) {
    if(cJSON_AddStringToObject(item, "imageURL", user_activity_response->image_url) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->profile_image
    if(user_activity_response->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", user_activity_response->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->fields
    if(user_activity_response->fields) {
    if(cJSON_AddStringToObject(item, "fields", user_activity_response->fields) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->id
    if(user_activity_response->id) {
    if(cJSON_AddNumberToObject(item, "id", user_activity_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->custom_text
    if(user_activity_response->custom_text) {
    if(cJSON_AddStringToObject(item, "customText", user_activity_response->custom_text) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->custom_value
    if(user_activity_response->custom_value) {
    if(cJSON_AddNumberToObject(item, "customValue", user_activity_response->custom_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_activity_response->custom_message
    if(user_activity_response->custom_message) {
    if(cJSON_AddStringToObject(item, "customMessage", user_activity_response->custom_message) == NULL) {
    goto fail; //String
    }
    }


    // user_activity_response->returning
    if(user_activity_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", user_activity_response->returning) == NULL) {
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

user_activity_response_t *user_activity_response_parseFromJSON(cJSON *user_activity_responseJSON){

    user_activity_response_t *user_activity_response_local_var = NULL;

    // define the local list for user_activity_response->request
    list_t *requestList = NULL;

    // user_activity_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // user_activity_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // user_activity_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // user_activity_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // user_activity_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "request");
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

    // user_activity_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //DateTime
    }
    }

    // user_activity_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->tag
    cJSON *tag = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "tag");
    if (cJSON_IsNull(tag)) {
        tag = NULL;
    }
    if (tag) { 
    if(!cJSON_IsString(tag) && !cJSON_IsNull(tag))
    {
    goto end; //String
    }
    }

    // user_activity_response->custom_id
    cJSON *custom_id = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "customId");
    if (cJSON_IsNull(custom_id)) {
        custom_id = NULL;
    }
    if (custom_id) { 
    if(!cJSON_IsNumber(custom_id))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->custom_type
    cJSON *custom_type = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "customType");
    if (cJSON_IsNull(custom_type)) {
        custom_type = NULL;
    }
    if (custom_type) { 
    if(!cJSON_IsString(custom_type) && !cJSON_IsNull(custom_type))
    {
    goto end; //String
    }
    }

    // user_activity_response->user_id
    cJSON *user_id = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "userId");
    if (cJSON_IsNull(user_id)) {
        user_id = NULL;
    }
    if (user_id) { 
    if(!cJSON_IsNumber(user_id))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // user_activity_response->app_title
    cJSON *app_title = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "appTitle");
    if (cJSON_IsNull(app_title)) {
        app_title = NULL;
    }
    if (app_title) { 
    if(!cJSON_IsString(app_title) && !cJSON_IsNull(app_title))
    {
    goto end; //String
    }
    }

    // user_activity_response->app_id
    cJSON *app_id = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "appId");
    if (cJSON_IsNull(app_id)) {
        app_id = NULL;
    }
    if (app_id) { 
    if(!cJSON_IsNumber(app_id))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->app_url
    cJSON *app_url = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "appUrl");
    if (cJSON_IsNull(app_url)) {
        app_url = NULL;
    }
    if (app_url) { 
    if(!cJSON_IsString(app_url) && !cJSON_IsNull(app_url))
    {
    goto end; //String
    }
    }

    // user_activity_response->app_description
    cJSON *app_description = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "appDescription");
    if (cJSON_IsNull(app_description)) {
        app_description = NULL;
    }
    if (app_description) { 
    if(!cJSON_IsString(app_description) && !cJSON_IsNull(app_description))
    {
    goto end; //String
    }
    }

    // user_activity_response->image_url
    cJSON *image_url = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "imageURL");
    if (cJSON_IsNull(image_url)) {
        image_url = NULL;
    }
    if (image_url) { 
    if(!cJSON_IsString(image_url) && !cJSON_IsNull(image_url))
    {
    goto end; //String
    }
    }

    // user_activity_response->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // user_activity_response->fields
    cJSON *fields = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "fields");
    if (cJSON_IsNull(fields)) {
        fields = NULL;
    }
    if (fields) { 
    if(!cJSON_IsString(fields) && !cJSON_IsNull(fields))
    {
    goto end; //String
    }
    }

    // user_activity_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->custom_text
    cJSON *custom_text = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "customText");
    if (cJSON_IsNull(custom_text)) {
        custom_text = NULL;
    }
    if (custom_text) { 
    if(!cJSON_IsString(custom_text) && !cJSON_IsNull(custom_text))
    {
    goto end; //String
    }
    }

    // user_activity_response->custom_value
    cJSON *custom_value = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "customValue");
    if (cJSON_IsNull(custom_value)) {
        custom_value = NULL;
    }
    if (custom_value) { 
    if(!cJSON_IsNumber(custom_value))
    {
    goto end; //Numeric
    }
    }

    // user_activity_response->custom_message
    cJSON *custom_message = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "customMessage");
    if (cJSON_IsNull(custom_message)) {
        custom_message = NULL;
    }
    if (custom_message) { 
    if(!cJSON_IsString(custom_message) && !cJSON_IsNull(custom_message))
    {
    goto end; //String
    }
    }

    // user_activity_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(user_activity_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    user_activity_response_local_var = user_activity_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        tag && !cJSON_IsNull(tag) ? strdup(tag->valuestring) : NULL,
        custom_id ? custom_id->valuedouble : 0,
        custom_type && !cJSON_IsNull(custom_type) ? strdup(custom_type->valuestring) : NULL,
        user_id ? user_id->valuedouble : 0,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        app_title && !cJSON_IsNull(app_title) ? strdup(app_title->valuestring) : NULL,
        app_id ? app_id->valuedouble : 0,
        app_url && !cJSON_IsNull(app_url) ? strdup(app_url->valuestring) : NULL,
        app_description && !cJSON_IsNull(app_description) ? strdup(app_description->valuestring) : NULL,
        image_url && !cJSON_IsNull(image_url) ? strdup(image_url->valuestring) : NULL,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        fields && !cJSON_IsNull(fields) ? strdup(fields->valuestring) : NULL,
        id ? id->valuedouble : 0,
        custom_text && !cJSON_IsNull(custom_text) ? strdup(custom_text->valuestring) : NULL,
        custom_value ? custom_value->valuedouble : 0,
        custom_message && !cJSON_IsNull(custom_message) ? strdup(custom_message->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return user_activity_response_local_var;
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
