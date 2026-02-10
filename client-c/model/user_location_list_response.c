#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "user_location_list_response.h"


char* user_location_list_response_user_location_type_ToString(sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_type) {
    char* user_location_typeArray[] =  { "NULL", "POSTALCODE", "EXACT" };
    return user_location_typeArray[user_location_type];
}

sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_list_response_user_location_type_FromString(char* user_location_type){
    int stringToReturn = 0;
    char *user_location_typeArray[] =  { "NULL", "POSTALCODE", "EXACT" };
    size_t sizeofArray = sizeof(user_location_typeArray) / sizeof(user_location_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(user_location_type, user_location_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static user_location_list_response_t *user_location_list_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_type,
    double latitude,
    double longitude,
    char *postal_code,
    int count,
    char *returning
    ) {
    user_location_list_response_t *user_location_list_response_local_var = malloc(sizeof(user_location_list_response_t));
    if (!user_location_list_response_local_var) {
        return NULL;
    }
    user_location_list_response_local_var->valid = valid;
    user_location_list_response_local_var->message = message;
    user_location_list_response_local_var->version = version;
    user_location_list_response_local_var->serialize_nulls = serialize_nulls;
    user_location_list_response_local_var->start_time_log = start_time_log;
    user_location_list_response_local_var->error_code = error_code;
    user_location_list_response_local_var->request = request;
    user_location_list_response_local_var->items = items;
    user_location_list_response_local_var->user_location_type = user_location_type;
    user_location_list_response_local_var->latitude = latitude;
    user_location_list_response_local_var->longitude = longitude;
    user_location_list_response_local_var->postal_code = postal_code;
    user_location_list_response_local_var->count = count;
    user_location_list_response_local_var->returning = returning;

    user_location_list_response_local_var->_library_owned = 1;
    return user_location_list_response_local_var;
}

__attribute__((deprecated)) user_location_list_response_t *user_location_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_type,
    double latitude,
    double longitude,
    char *postal_code,
    int count,
    char *returning
    ) {
    return user_location_list_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        items,
        user_location_type,
        latitude,
        longitude,
        postal_code,
        count,
        returning
        );
}

void user_location_list_response_free(user_location_list_response_t *user_location_list_response) {
    if(NULL == user_location_list_response){
        return ;
    }
    if(user_location_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "user_location_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (user_location_list_response->message) {
        free(user_location_list_response->message);
        user_location_list_response->message = NULL;
    }
    if (user_location_list_response->error_code) {
        free(user_location_list_response->error_code);
        user_location_list_response->error_code = NULL;
    }
    if (user_location_list_response->request) {
        list_ForEach(listEntry, user_location_list_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(user_location_list_response->request);
        user_location_list_response->request = NULL;
    }
    if (user_location_list_response->items) {
        list_ForEach(listEntry, user_location_list_response->items) {
            user_location_response_free(listEntry->data);
        }
        list_freeList(user_location_list_response->items);
        user_location_list_response->items = NULL;
    }
    if (user_location_list_response->postal_code) {
        free(user_location_list_response->postal_code);
        user_location_list_response->postal_code = NULL;
    }
    if (user_location_list_response->returning) {
        free(user_location_list_response->returning);
        user_location_list_response->returning = NULL;
    }
    free(user_location_list_response);
}

cJSON *user_location_list_response_convertToJSON(user_location_list_response_t *user_location_list_response) {
    cJSON *item = cJSON_CreateObject();

    // user_location_list_response->valid
    if(user_location_list_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", user_location_list_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // user_location_list_response->message
    if(user_location_list_response->message) {
    if(cJSON_AddStringToObject(item, "message", user_location_list_response->message) == NULL) {
    goto fail; //String
    }
    }


    // user_location_list_response->version
    if(user_location_list_response->version) {
    if(cJSON_AddNumberToObject(item, "version", user_location_list_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_location_list_response->serialize_nulls
    if(user_location_list_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", user_location_list_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // user_location_list_response->start_time_log
    if(user_location_list_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", user_location_list_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_location_list_response->error_code
    if(user_location_list_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", user_location_list_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // user_location_list_response->request
    if(user_location_list_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (user_location_list_response->request) {
    list_ForEach(requestListEntry, user_location_list_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // user_location_list_response->items
    if(user_location_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (user_location_list_response->items) {
    list_ForEach(itemsListEntry, user_location_list_response->items) {
    cJSON *itemLocal = user_location_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // user_location_list_response->user_location_type
    if(user_location_list_response->user_location_type != sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "userLocationType", user_location_list_response_user_location_type_ToString(user_location_list_response->user_location_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // user_location_list_response->latitude
    if(user_location_list_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", user_location_list_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_location_list_response->longitude
    if(user_location_list_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", user_location_list_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_location_list_response->postal_code
    if(user_location_list_response->postal_code) {
    if(cJSON_AddStringToObject(item, "postalCode", user_location_list_response->postal_code) == NULL) {
    goto fail; //String
    }
    }


    // user_location_list_response->count
    if(user_location_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", user_location_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // user_location_list_response->returning
    if(user_location_list_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", user_location_list_response->returning) == NULL) {
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

user_location_list_response_t *user_location_list_response_parseFromJSON(cJSON *user_location_list_responseJSON){

    user_location_list_response_t *user_location_list_response_local_var = NULL;

    // define the local list for user_location_list_response->request
    list_t *requestList = NULL;

    // define the local list for user_location_list_response->items
    list_t *itemsList = NULL;

    // user_location_list_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // user_location_list_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // user_location_list_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // user_location_list_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // user_location_list_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // user_location_list_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // user_location_list_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "request");
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

    // user_location_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        user_location_response_t *itemsItem = user_location_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // user_location_list_response->user_location_type
    cJSON *user_location_type = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "userLocationType");
    if (cJSON_IsNull(user_location_type)) {
        user_location_type = NULL;
    }
    sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_typeVariable;
    if (user_location_type) { 
    if(!cJSON_IsString(user_location_type))
    {
    goto end; //Enum
    }
    user_location_typeVariable = user_location_list_response_user_location_type_FromString(user_location_type->valuestring);
    }

    // user_location_list_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // user_location_list_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // user_location_list_response->postal_code
    cJSON *postal_code = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "postalCode");
    if (cJSON_IsNull(postal_code)) {
        postal_code = NULL;
    }
    if (postal_code) { 
    if(!cJSON_IsString(postal_code) && !cJSON_IsNull(postal_code))
    {
    goto end; //String
    }
    }

    // user_location_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // user_location_list_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(user_location_list_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    user_location_list_response_local_var = user_location_list_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        items ? itemsList : NULL,
        user_location_type ? user_location_typeVariable : sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        postal_code && !cJSON_IsNull(postal_code) ? strdup(postal_code->valuestring) : NULL,
        count ? count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return user_location_list_response_local_var;
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
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            user_location_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
