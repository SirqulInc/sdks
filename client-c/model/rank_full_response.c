#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rank_full_response.h"



static rank_full_response_t *rank_full_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *rankings,
    char *returning
    ) {
    rank_full_response_t *rank_full_response_local_var = malloc(sizeof(rank_full_response_t));
    if (!rank_full_response_local_var) {
        return NULL;
    }
    rank_full_response_local_var->valid = valid;
    rank_full_response_local_var->message = message;
    rank_full_response_local_var->version = version;
    rank_full_response_local_var->serialize_nulls = serialize_nulls;
    rank_full_response_local_var->start_time_log = start_time_log;
    rank_full_response_local_var->error_code = error_code;
    rank_full_response_local_var->request = request;
    rank_full_response_local_var->rankings = rankings;
    rank_full_response_local_var->returning = returning;

    rank_full_response_local_var->_library_owned = 1;
    return rank_full_response_local_var;
}

__attribute__((deprecated)) rank_full_response_t *rank_full_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *rankings,
    char *returning
    ) {
    return rank_full_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        rankings,
        returning
        );
}

void rank_full_response_free(rank_full_response_t *rank_full_response) {
    if(NULL == rank_full_response){
        return ;
    }
    if(rank_full_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "rank_full_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (rank_full_response->message) {
        free(rank_full_response->message);
        rank_full_response->message = NULL;
    }
    if (rank_full_response->error_code) {
        free(rank_full_response->error_code);
        rank_full_response->error_code = NULL;
    }
    if (rank_full_response->request) {
        list_ForEach(listEntry, rank_full_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(rank_full_response->request);
        rank_full_response->request = NULL;
    }
    if (rank_full_response->rankings) {
        list_ForEach(listEntry, rank_full_response->rankings) {
            rank_list_response_free(listEntry->data);
        }
        list_freeList(rank_full_response->rankings);
        rank_full_response->rankings = NULL;
    }
    if (rank_full_response->returning) {
        free(rank_full_response->returning);
        rank_full_response->returning = NULL;
    }
    free(rank_full_response);
}

cJSON *rank_full_response_convertToJSON(rank_full_response_t *rank_full_response) {
    cJSON *item = cJSON_CreateObject();

    // rank_full_response->valid
    if(rank_full_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", rank_full_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // rank_full_response->message
    if(rank_full_response->message) {
    if(cJSON_AddStringToObject(item, "message", rank_full_response->message) == NULL) {
    goto fail; //String
    }
    }


    // rank_full_response->version
    if(rank_full_response->version) {
    if(cJSON_AddNumberToObject(item, "version", rank_full_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // rank_full_response->serialize_nulls
    if(rank_full_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", rank_full_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // rank_full_response->start_time_log
    if(rank_full_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", rank_full_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // rank_full_response->error_code
    if(rank_full_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", rank_full_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // rank_full_response->request
    if(rank_full_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (rank_full_response->request) {
    list_ForEach(requestListEntry, rank_full_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // rank_full_response->rankings
    if(rank_full_response->rankings) {
    cJSON *rankings = cJSON_AddArrayToObject(item, "rankings");
    if(rankings == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *rankingsListEntry;
    if (rank_full_response->rankings) {
    list_ForEach(rankingsListEntry, rank_full_response->rankings) {
    cJSON *itemLocal = rank_list_response_convertToJSON(rankingsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(rankings, itemLocal);
    }
    }
    }


    // rank_full_response->returning
    if(rank_full_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", rank_full_response->returning) == NULL) {
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

rank_full_response_t *rank_full_response_parseFromJSON(cJSON *rank_full_responseJSON){

    rank_full_response_t *rank_full_response_local_var = NULL;

    // define the local list for rank_full_response->request
    list_t *requestList = NULL;

    // define the local list for rank_full_response->rankings
    list_t *rankingsList = NULL;

    // rank_full_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // rank_full_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // rank_full_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // rank_full_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // rank_full_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // rank_full_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // rank_full_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "request");
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

    // rank_full_response->rankings
    cJSON *rankings = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "rankings");
    if (cJSON_IsNull(rankings)) {
        rankings = NULL;
    }
    if (rankings) { 
    cJSON *rankings_local_nonprimitive = NULL;
    if(!cJSON_IsArray(rankings)){
        goto end; //nonprimitive container
    }

    rankingsList = list_createList();

    cJSON_ArrayForEach(rankings_local_nonprimitive,rankings )
    {
        if(!cJSON_IsObject(rankings_local_nonprimitive)){
            goto end;
        }
        rank_list_response_t *rankingsItem = rank_list_response_parseFromJSON(rankings_local_nonprimitive);

        list_addElement(rankingsList, rankingsItem);
    }
    }

    // rank_full_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(rank_full_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    rank_full_response_local_var = rank_full_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        rankings ? rankingsList : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return rank_full_response_local_var;
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
    if (rankingsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, rankingsList) {
            rank_list_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(rankingsList);
        rankingsList = NULL;
    }
    return NULL;

}
