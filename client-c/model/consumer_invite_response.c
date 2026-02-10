#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "consumer_invite_response.h"



static consumer_invite_response_t *consumer_invite_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long inviter_id,
    account_short_response_t *inviter,
    connection_response_t *connection,
    char *invite_text,
    char *token,
    char *album_cover_url,
    char *album_title,
    char *app_name,
    char *welcome_text,
    application_short_response_t *application,
    retailer_location_response_t *retailer_location,
    offer_short_response_t *offer,
    album_response_t *album,
    char *returning
    ) {
    consumer_invite_response_t *consumer_invite_response_local_var = malloc(sizeof(consumer_invite_response_t));
    if (!consumer_invite_response_local_var) {
        return NULL;
    }
    consumer_invite_response_local_var->valid = valid;
    consumer_invite_response_local_var->message = message;
    consumer_invite_response_local_var->version = version;
    consumer_invite_response_local_var->serialize_nulls = serialize_nulls;
    consumer_invite_response_local_var->start_time_log = start_time_log;
    consumer_invite_response_local_var->error_code = error_code;
    consumer_invite_response_local_var->request = request;
    consumer_invite_response_local_var->inviter_id = inviter_id;
    consumer_invite_response_local_var->inviter = inviter;
    consumer_invite_response_local_var->connection = connection;
    consumer_invite_response_local_var->invite_text = invite_text;
    consumer_invite_response_local_var->token = token;
    consumer_invite_response_local_var->album_cover_url = album_cover_url;
    consumer_invite_response_local_var->album_title = album_title;
    consumer_invite_response_local_var->app_name = app_name;
    consumer_invite_response_local_var->welcome_text = welcome_text;
    consumer_invite_response_local_var->application = application;
    consumer_invite_response_local_var->retailer_location = retailer_location;
    consumer_invite_response_local_var->offer = offer;
    consumer_invite_response_local_var->album = album;
    consumer_invite_response_local_var->returning = returning;

    consumer_invite_response_local_var->_library_owned = 1;
    return consumer_invite_response_local_var;
}

__attribute__((deprecated)) consumer_invite_response_t *consumer_invite_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long inviter_id,
    account_short_response_t *inviter,
    connection_response_t *connection,
    char *invite_text,
    char *token,
    char *album_cover_url,
    char *album_title,
    char *app_name,
    char *welcome_text,
    application_short_response_t *application,
    retailer_location_response_t *retailer_location,
    offer_short_response_t *offer,
    album_response_t *album,
    char *returning
    ) {
    return consumer_invite_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        inviter_id,
        inviter,
        connection,
        invite_text,
        token,
        album_cover_url,
        album_title,
        app_name,
        welcome_text,
        application,
        retailer_location,
        offer,
        album,
        returning
        );
}

void consumer_invite_response_free(consumer_invite_response_t *consumer_invite_response) {
    if(NULL == consumer_invite_response){
        return ;
    }
    if(consumer_invite_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "consumer_invite_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (consumer_invite_response->message) {
        free(consumer_invite_response->message);
        consumer_invite_response->message = NULL;
    }
    if (consumer_invite_response->error_code) {
        free(consumer_invite_response->error_code);
        consumer_invite_response->error_code = NULL;
    }
    if (consumer_invite_response->request) {
        list_ForEach(listEntry, consumer_invite_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(consumer_invite_response->request);
        consumer_invite_response->request = NULL;
    }
    if (consumer_invite_response->inviter) {
        account_short_response_free(consumer_invite_response->inviter);
        consumer_invite_response->inviter = NULL;
    }
    if (consumer_invite_response->connection) {
        connection_response_free(consumer_invite_response->connection);
        consumer_invite_response->connection = NULL;
    }
    if (consumer_invite_response->invite_text) {
        free(consumer_invite_response->invite_text);
        consumer_invite_response->invite_text = NULL;
    }
    if (consumer_invite_response->token) {
        free(consumer_invite_response->token);
        consumer_invite_response->token = NULL;
    }
    if (consumer_invite_response->album_cover_url) {
        free(consumer_invite_response->album_cover_url);
        consumer_invite_response->album_cover_url = NULL;
    }
    if (consumer_invite_response->album_title) {
        free(consumer_invite_response->album_title);
        consumer_invite_response->album_title = NULL;
    }
    if (consumer_invite_response->app_name) {
        free(consumer_invite_response->app_name);
        consumer_invite_response->app_name = NULL;
    }
    if (consumer_invite_response->welcome_text) {
        free(consumer_invite_response->welcome_text);
        consumer_invite_response->welcome_text = NULL;
    }
    if (consumer_invite_response->application) {
        application_short_response_free(consumer_invite_response->application);
        consumer_invite_response->application = NULL;
    }
    if (consumer_invite_response->retailer_location) {
        retailer_location_response_free(consumer_invite_response->retailer_location);
        consumer_invite_response->retailer_location = NULL;
    }
    if (consumer_invite_response->offer) {
        offer_short_response_free(consumer_invite_response->offer);
        consumer_invite_response->offer = NULL;
    }
    if (consumer_invite_response->album) {
        album_response_free(consumer_invite_response->album);
        consumer_invite_response->album = NULL;
    }
    if (consumer_invite_response->returning) {
        free(consumer_invite_response->returning);
        consumer_invite_response->returning = NULL;
    }
    free(consumer_invite_response);
}

cJSON *consumer_invite_response_convertToJSON(consumer_invite_response_t *consumer_invite_response) {
    cJSON *item = cJSON_CreateObject();

    // consumer_invite_response->valid
    if(consumer_invite_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", consumer_invite_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // consumer_invite_response->message
    if(consumer_invite_response->message) {
    if(cJSON_AddStringToObject(item, "message", consumer_invite_response->message) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->version
    if(consumer_invite_response->version) {
    if(cJSON_AddNumberToObject(item, "version", consumer_invite_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // consumer_invite_response->serialize_nulls
    if(consumer_invite_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", consumer_invite_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // consumer_invite_response->start_time_log
    if(consumer_invite_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", consumer_invite_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // consumer_invite_response->error_code
    if(consumer_invite_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", consumer_invite_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->request
    if(consumer_invite_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (consumer_invite_response->request) {
    list_ForEach(requestListEntry, consumer_invite_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // consumer_invite_response->inviter_id
    if(consumer_invite_response->inviter_id) {
    if(cJSON_AddNumberToObject(item, "inviterId", consumer_invite_response->inviter_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // consumer_invite_response->inviter
    if(consumer_invite_response->inviter) {
    cJSON *inviter_local_JSON = account_short_response_convertToJSON(consumer_invite_response->inviter);
    if(inviter_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "inviter", inviter_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // consumer_invite_response->connection
    if(consumer_invite_response->connection) {
    cJSON *connection_local_JSON = connection_response_convertToJSON(consumer_invite_response->connection);
    if(connection_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "connection", connection_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // consumer_invite_response->invite_text
    if(consumer_invite_response->invite_text) {
    if(cJSON_AddStringToObject(item, "inviteText", consumer_invite_response->invite_text) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->token
    if(consumer_invite_response->token) {
    if(cJSON_AddStringToObject(item, "token", consumer_invite_response->token) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->album_cover_url
    if(consumer_invite_response->album_cover_url) {
    if(cJSON_AddStringToObject(item, "albumCoverUrl", consumer_invite_response->album_cover_url) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->album_title
    if(consumer_invite_response->album_title) {
    if(cJSON_AddStringToObject(item, "albumTitle", consumer_invite_response->album_title) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->app_name
    if(consumer_invite_response->app_name) {
    if(cJSON_AddStringToObject(item, "appName", consumer_invite_response->app_name) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->welcome_text
    if(consumer_invite_response->welcome_text) {
    if(cJSON_AddStringToObject(item, "welcomeText", consumer_invite_response->welcome_text) == NULL) {
    goto fail; //String
    }
    }


    // consumer_invite_response->application
    if(consumer_invite_response->application) {
    cJSON *application_local_JSON = application_short_response_convertToJSON(consumer_invite_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // consumer_invite_response->retailer_location
    if(consumer_invite_response->retailer_location) {
    cJSON *retailer_location_local_JSON = retailer_location_response_convertToJSON(consumer_invite_response->retailer_location);
    if(retailer_location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retailerLocation", retailer_location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // consumer_invite_response->offer
    if(consumer_invite_response->offer) {
    cJSON *offer_local_JSON = offer_short_response_convertToJSON(consumer_invite_response->offer);
    if(offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offer", offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // consumer_invite_response->album
    if(consumer_invite_response->album) {
    cJSON *album_local_JSON = album_response_convertToJSON(consumer_invite_response->album);
    if(album_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "album", album_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // consumer_invite_response->returning
    if(consumer_invite_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", consumer_invite_response->returning) == NULL) {
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

consumer_invite_response_t *consumer_invite_response_parseFromJSON(cJSON *consumer_invite_responseJSON){

    consumer_invite_response_t *consumer_invite_response_local_var = NULL;

    // define the local list for consumer_invite_response->request
    list_t *requestList = NULL;

    // define the local variable for consumer_invite_response->inviter
    account_short_response_t *inviter_local_nonprim = NULL;

    // define the local variable for consumer_invite_response->connection
    connection_response_t *connection_local_nonprim = NULL;

    // define the local variable for consumer_invite_response->application
    application_short_response_t *application_local_nonprim = NULL;

    // define the local variable for consumer_invite_response->retailer_location
    retailer_location_response_t *retailer_location_local_nonprim = NULL;

    // define the local variable for consumer_invite_response->offer
    offer_short_response_t *offer_local_nonprim = NULL;

    // define the local variable for consumer_invite_response->album
    album_response_t *album_local_nonprim = NULL;

    // consumer_invite_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // consumer_invite_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // consumer_invite_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // consumer_invite_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // consumer_invite_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "request");
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

    // consumer_invite_response->inviter_id
    cJSON *inviter_id = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "inviterId");
    if (cJSON_IsNull(inviter_id)) {
        inviter_id = NULL;
    }
    if (inviter_id) { 
    if(!cJSON_IsNumber(inviter_id))
    {
    goto end; //Numeric
    }
    }

    // consumer_invite_response->inviter
    cJSON *inviter = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "inviter");
    if (cJSON_IsNull(inviter)) {
        inviter = NULL;
    }
    if (inviter) { 
    inviter_local_nonprim = account_short_response_parseFromJSON(inviter); //nonprimitive
    }

    // consumer_invite_response->connection
    cJSON *connection = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "connection");
    if (cJSON_IsNull(connection)) {
        connection = NULL;
    }
    if (connection) { 
    connection_local_nonprim = connection_response_parseFromJSON(connection); //nonprimitive
    }

    // consumer_invite_response->invite_text
    cJSON *invite_text = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "inviteText");
    if (cJSON_IsNull(invite_text)) {
        invite_text = NULL;
    }
    if (invite_text) { 
    if(!cJSON_IsString(invite_text) && !cJSON_IsNull(invite_text))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "token");
    if (cJSON_IsNull(token)) {
        token = NULL;
    }
    if (token) { 
    if(!cJSON_IsString(token) && !cJSON_IsNull(token))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->album_cover_url
    cJSON *album_cover_url = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "albumCoverUrl");
    if (cJSON_IsNull(album_cover_url)) {
        album_cover_url = NULL;
    }
    if (album_cover_url) { 
    if(!cJSON_IsString(album_cover_url) && !cJSON_IsNull(album_cover_url))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->album_title
    cJSON *album_title = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "albumTitle");
    if (cJSON_IsNull(album_title)) {
        album_title = NULL;
    }
    if (album_title) { 
    if(!cJSON_IsString(album_title) && !cJSON_IsNull(album_title))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->welcome_text
    cJSON *welcome_text = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "welcomeText");
    if (cJSON_IsNull(welcome_text)) {
        welcome_text = NULL;
    }
    if (welcome_text) { 
    if(!cJSON_IsString(welcome_text) && !cJSON_IsNull(welcome_text))
    {
    goto end; //String
    }
    }

    // consumer_invite_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_short_response_parseFromJSON(application); //nonprimitive
    }

    // consumer_invite_response->retailer_location
    cJSON *retailer_location = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "retailerLocation");
    if (cJSON_IsNull(retailer_location)) {
        retailer_location = NULL;
    }
    if (retailer_location) { 
    retailer_location_local_nonprim = retailer_location_response_parseFromJSON(retailer_location); //nonprimitive
    }

    // consumer_invite_response->offer
    cJSON *offer = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "offer");
    if (cJSON_IsNull(offer)) {
        offer = NULL;
    }
    if (offer) { 
    offer_local_nonprim = offer_short_response_parseFromJSON(offer); //nonprimitive
    }

    // consumer_invite_response->album
    cJSON *album = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "album");
    if (cJSON_IsNull(album)) {
        album = NULL;
    }
    if (album) { 
    album_local_nonprim = album_response_parseFromJSON(album); //nonprimitive
    }

    // consumer_invite_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(consumer_invite_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    consumer_invite_response_local_var = consumer_invite_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        inviter_id ? inviter_id->valuedouble : 0,
        inviter ? inviter_local_nonprim : NULL,
        connection ? connection_local_nonprim : NULL,
        invite_text && !cJSON_IsNull(invite_text) ? strdup(invite_text->valuestring) : NULL,
        token && !cJSON_IsNull(token) ? strdup(token->valuestring) : NULL,
        album_cover_url && !cJSON_IsNull(album_cover_url) ? strdup(album_cover_url->valuestring) : NULL,
        album_title && !cJSON_IsNull(album_title) ? strdup(album_title->valuestring) : NULL,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL,
        welcome_text && !cJSON_IsNull(welcome_text) ? strdup(welcome_text->valuestring) : NULL,
        application ? application_local_nonprim : NULL,
        retailer_location ? retailer_location_local_nonprim : NULL,
        offer ? offer_local_nonprim : NULL,
        album ? album_local_nonprim : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return consumer_invite_response_local_var;
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
    if (inviter_local_nonprim) {
        account_short_response_free(inviter_local_nonprim);
        inviter_local_nonprim = NULL;
    }
    if (connection_local_nonprim) {
        connection_response_free(connection_local_nonprim);
        connection_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_short_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (retailer_location_local_nonprim) {
        retailer_location_response_free(retailer_location_local_nonprim);
        retailer_location_local_nonprim = NULL;
    }
    if (offer_local_nonprim) {
        offer_short_response_free(offer_local_nonprim);
        offer_local_nonprim = NULL;
    }
    if (album_local_nonprim) {
        album_response_free(album_local_nonprim);
        album_local_nonprim = NULL;
    }
    return NULL;

}
