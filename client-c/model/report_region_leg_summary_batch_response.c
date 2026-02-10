#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "report_region_leg_summary_batch_response.h"



static report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long success_count,
    long failure_count,
    char *returning
    ) {
    report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response_local_var = malloc(sizeof(report_region_leg_summary_batch_response_t));
    if (!report_region_leg_summary_batch_response_local_var) {
        return NULL;
    }
    report_region_leg_summary_batch_response_local_var->valid = valid;
    report_region_leg_summary_batch_response_local_var->message = message;
    report_region_leg_summary_batch_response_local_var->version = version;
    report_region_leg_summary_batch_response_local_var->serialize_nulls = serialize_nulls;
    report_region_leg_summary_batch_response_local_var->start_time_log = start_time_log;
    report_region_leg_summary_batch_response_local_var->error_code = error_code;
    report_region_leg_summary_batch_response_local_var->request = request;
    report_region_leg_summary_batch_response_local_var->success_count = success_count;
    report_region_leg_summary_batch_response_local_var->failure_count = failure_count;
    report_region_leg_summary_batch_response_local_var->returning = returning;

    report_region_leg_summary_batch_response_local_var->_library_owned = 1;
    return report_region_leg_summary_batch_response_local_var;
}

__attribute__((deprecated)) report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long success_count,
    long failure_count,
    char *returning
    ) {
    return report_region_leg_summary_batch_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        success_count,
        failure_count,
        returning
        );
}

void report_region_leg_summary_batch_response_free(report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response) {
    if(NULL == report_region_leg_summary_batch_response){
        return ;
    }
    if(report_region_leg_summary_batch_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "report_region_leg_summary_batch_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (report_region_leg_summary_batch_response->message) {
        free(report_region_leg_summary_batch_response->message);
        report_region_leg_summary_batch_response->message = NULL;
    }
    if (report_region_leg_summary_batch_response->error_code) {
        free(report_region_leg_summary_batch_response->error_code);
        report_region_leg_summary_batch_response->error_code = NULL;
    }
    if (report_region_leg_summary_batch_response->request) {
        list_ForEach(listEntry, report_region_leg_summary_batch_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(report_region_leg_summary_batch_response->request);
        report_region_leg_summary_batch_response->request = NULL;
    }
    if (report_region_leg_summary_batch_response->returning) {
        free(report_region_leg_summary_batch_response->returning);
        report_region_leg_summary_batch_response->returning = NULL;
    }
    free(report_region_leg_summary_batch_response);
}

cJSON *report_region_leg_summary_batch_response_convertToJSON(report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response) {
    cJSON *item = cJSON_CreateObject();

    // report_region_leg_summary_batch_response->valid
    if(report_region_leg_summary_batch_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", report_region_leg_summary_batch_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // report_region_leg_summary_batch_response->message
    if(report_region_leg_summary_batch_response->message) {
    if(cJSON_AddStringToObject(item, "message", report_region_leg_summary_batch_response->message) == NULL) {
    goto fail; //String
    }
    }


    // report_region_leg_summary_batch_response->version
    if(report_region_leg_summary_batch_response->version) {
    if(cJSON_AddNumberToObject(item, "version", report_region_leg_summary_batch_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_region_leg_summary_batch_response->serialize_nulls
    if(report_region_leg_summary_batch_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", report_region_leg_summary_batch_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // report_region_leg_summary_batch_response->start_time_log
    if(report_region_leg_summary_batch_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", report_region_leg_summary_batch_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_region_leg_summary_batch_response->error_code
    if(report_region_leg_summary_batch_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", report_region_leg_summary_batch_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // report_region_leg_summary_batch_response->request
    if(report_region_leg_summary_batch_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (report_region_leg_summary_batch_response->request) {
    list_ForEach(requestListEntry, report_region_leg_summary_batch_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // report_region_leg_summary_batch_response->success_count
    if(report_region_leg_summary_batch_response->success_count) {
    if(cJSON_AddNumberToObject(item, "successCount", report_region_leg_summary_batch_response->success_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_region_leg_summary_batch_response->failure_count
    if(report_region_leg_summary_batch_response->failure_count) {
    if(cJSON_AddNumberToObject(item, "failureCount", report_region_leg_summary_batch_response->failure_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_region_leg_summary_batch_response->returning
    if(report_region_leg_summary_batch_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", report_region_leg_summary_batch_response->returning) == NULL) {
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

report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response_parseFromJSON(cJSON *report_region_leg_summary_batch_responseJSON){

    report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response_local_var = NULL;

    // define the local list for report_region_leg_summary_batch_response->request
    list_t *requestList = NULL;

    // report_region_leg_summary_batch_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // report_region_leg_summary_batch_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // report_region_leg_summary_batch_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // report_region_leg_summary_batch_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // report_region_leg_summary_batch_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // report_region_leg_summary_batch_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // report_region_leg_summary_batch_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "request");
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

    // report_region_leg_summary_batch_response->success_count
    cJSON *success_count = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "successCount");
    if (cJSON_IsNull(success_count)) {
        success_count = NULL;
    }
    if (success_count) { 
    if(!cJSON_IsNumber(success_count))
    {
    goto end; //Numeric
    }
    }

    // report_region_leg_summary_batch_response->failure_count
    cJSON *failure_count = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "failureCount");
    if (cJSON_IsNull(failure_count)) {
        failure_count = NULL;
    }
    if (failure_count) { 
    if(!cJSON_IsNumber(failure_count))
    {
    goto end; //Numeric
    }
    }

    // report_region_leg_summary_batch_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(report_region_leg_summary_batch_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    report_region_leg_summary_batch_response_local_var = report_region_leg_summary_batch_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        success_count ? success_count->valuedouble : 0,
        failure_count ? failure_count->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return report_region_leg_summary_batch_response_local_var;
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
