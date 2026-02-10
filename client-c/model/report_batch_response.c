#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "report_batch_response.h"


char* report_batch_response_report_batch_status_ToString(sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_status) {
    char* report_batch_statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY" };
    return report_batch_statusArray[report_batch_status];
}

sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_response_report_batch_status_FromString(char* report_batch_status){
    int stringToReturn = 0;
    char *report_batch_statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE", "SAVEONLY" };
    size_t sizeofArray = sizeof(report_batch_statusArray) / sizeof(report_batch_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(report_batch_status, report_batch_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static report_batch_response_t *report_batch_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long batch_id,
    sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_status,
    char *error_message,
    char *endpoint,
    char *page_url,
    char *name,
    char *description,
    long created,
    long updated,
    char *returning
    ) {
    report_batch_response_t *report_batch_response_local_var = malloc(sizeof(report_batch_response_t));
    if (!report_batch_response_local_var) {
        return NULL;
    }
    report_batch_response_local_var->valid = valid;
    report_batch_response_local_var->message = message;
    report_batch_response_local_var->version = version;
    report_batch_response_local_var->serialize_nulls = serialize_nulls;
    report_batch_response_local_var->start_time_log = start_time_log;
    report_batch_response_local_var->error_code = error_code;
    report_batch_response_local_var->request = request;
    report_batch_response_local_var->batch_id = batch_id;
    report_batch_response_local_var->report_batch_status = report_batch_status;
    report_batch_response_local_var->error_message = error_message;
    report_batch_response_local_var->endpoint = endpoint;
    report_batch_response_local_var->page_url = page_url;
    report_batch_response_local_var->name = name;
    report_batch_response_local_var->description = description;
    report_batch_response_local_var->created = created;
    report_batch_response_local_var->updated = updated;
    report_batch_response_local_var->returning = returning;

    report_batch_response_local_var->_library_owned = 1;
    return report_batch_response_local_var;
}

__attribute__((deprecated)) report_batch_response_t *report_batch_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long batch_id,
    sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_status,
    char *error_message,
    char *endpoint,
    char *page_url,
    char *name,
    char *description,
    long created,
    long updated,
    char *returning
    ) {
    return report_batch_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        batch_id,
        report_batch_status,
        error_message,
        endpoint,
        page_url,
        name,
        description,
        created,
        updated,
        returning
        );
}

void report_batch_response_free(report_batch_response_t *report_batch_response) {
    if(NULL == report_batch_response){
        return ;
    }
    if(report_batch_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "report_batch_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (report_batch_response->message) {
        free(report_batch_response->message);
        report_batch_response->message = NULL;
    }
    if (report_batch_response->error_code) {
        free(report_batch_response->error_code);
        report_batch_response->error_code = NULL;
    }
    if (report_batch_response->request) {
        list_ForEach(listEntry, report_batch_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(report_batch_response->request);
        report_batch_response->request = NULL;
    }
    if (report_batch_response->error_message) {
        free(report_batch_response->error_message);
        report_batch_response->error_message = NULL;
    }
    if (report_batch_response->endpoint) {
        free(report_batch_response->endpoint);
        report_batch_response->endpoint = NULL;
    }
    if (report_batch_response->page_url) {
        free(report_batch_response->page_url);
        report_batch_response->page_url = NULL;
    }
    if (report_batch_response->name) {
        free(report_batch_response->name);
        report_batch_response->name = NULL;
    }
    if (report_batch_response->description) {
        free(report_batch_response->description);
        report_batch_response->description = NULL;
    }
    if (report_batch_response->returning) {
        free(report_batch_response->returning);
        report_batch_response->returning = NULL;
    }
    free(report_batch_response);
}

cJSON *report_batch_response_convertToJSON(report_batch_response_t *report_batch_response) {
    cJSON *item = cJSON_CreateObject();

    // report_batch_response->valid
    if(report_batch_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", report_batch_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // report_batch_response->message
    if(report_batch_response->message) {
    if(cJSON_AddStringToObject(item, "message", report_batch_response->message) == NULL) {
    goto fail; //String
    }
    }


    // report_batch_response->version
    if(report_batch_response->version) {
    if(cJSON_AddNumberToObject(item, "version", report_batch_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_batch_response->serialize_nulls
    if(report_batch_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", report_batch_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // report_batch_response->start_time_log
    if(report_batch_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", report_batch_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_batch_response->error_code
    if(report_batch_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", report_batch_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // report_batch_response->request
    if(report_batch_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (report_batch_response->request) {
    list_ForEach(requestListEntry, report_batch_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // report_batch_response->batch_id
    if(report_batch_response->batch_id) {
    if(cJSON_AddNumberToObject(item, "batchId", report_batch_response->batch_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_batch_response->report_batch_status
    if(report_batch_response->report_batch_status != sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "reportBatchStatus", report_batch_response_report_batch_status_ToString(report_batch_response->report_batch_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // report_batch_response->error_message
    if(report_batch_response->error_message) {
    if(cJSON_AddStringToObject(item, "errorMessage", report_batch_response->error_message) == NULL) {
    goto fail; //String
    }
    }


    // report_batch_response->endpoint
    if(report_batch_response->endpoint) {
    if(cJSON_AddStringToObject(item, "endpoint", report_batch_response->endpoint) == NULL) {
    goto fail; //String
    }
    }


    // report_batch_response->page_url
    if(report_batch_response->page_url) {
    if(cJSON_AddStringToObject(item, "pageUrl", report_batch_response->page_url) == NULL) {
    goto fail; //String
    }
    }


    // report_batch_response->name
    if(report_batch_response->name) {
    if(cJSON_AddStringToObject(item, "name", report_batch_response->name) == NULL) {
    goto fail; //String
    }
    }


    // report_batch_response->description
    if(report_batch_response->description) {
    if(cJSON_AddStringToObject(item, "description", report_batch_response->description) == NULL) {
    goto fail; //String
    }
    }


    // report_batch_response->created
    if(report_batch_response->created) {
    if(cJSON_AddNumberToObject(item, "created", report_batch_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_batch_response->updated
    if(report_batch_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", report_batch_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_batch_response->returning
    if(report_batch_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", report_batch_response->returning) == NULL) {
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

report_batch_response_t *report_batch_response_parseFromJSON(cJSON *report_batch_responseJSON){

    report_batch_response_t *report_batch_response_local_var = NULL;

    // define the local list for report_batch_response->request
    list_t *requestList = NULL;

    // report_batch_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // report_batch_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // report_batch_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // report_batch_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // report_batch_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // report_batch_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // report_batch_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "request");
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

    // report_batch_response->batch_id
    cJSON *batch_id = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "batchId");
    if (cJSON_IsNull(batch_id)) {
        batch_id = NULL;
    }
    if (batch_id) { 
    if(!cJSON_IsNumber(batch_id))
    {
    goto end; //Numeric
    }
    }

    // report_batch_response->report_batch_status
    cJSON *report_batch_status = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "reportBatchStatus");
    if (cJSON_IsNull(report_batch_status)) {
        report_batch_status = NULL;
    }
    sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_statusVariable;
    if (report_batch_status) { 
    if(!cJSON_IsString(report_batch_status))
    {
    goto end; //Enum
    }
    report_batch_statusVariable = report_batch_response_report_batch_status_FromString(report_batch_status->valuestring);
    }

    // report_batch_response->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "errorMessage");
    if (cJSON_IsNull(error_message)) {
        error_message = NULL;
    }
    if (error_message) { 
    if(!cJSON_IsString(error_message) && !cJSON_IsNull(error_message))
    {
    goto end; //String
    }
    }

    // report_batch_response->endpoint
    cJSON *endpoint = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "endpoint");
    if (cJSON_IsNull(endpoint)) {
        endpoint = NULL;
    }
    if (endpoint) { 
    if(!cJSON_IsString(endpoint) && !cJSON_IsNull(endpoint))
    {
    goto end; //String
    }
    }

    // report_batch_response->page_url
    cJSON *page_url = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "pageUrl");
    if (cJSON_IsNull(page_url)) {
        page_url = NULL;
    }
    if (page_url) { 
    if(!cJSON_IsString(page_url) && !cJSON_IsNull(page_url))
    {
    goto end; //String
    }
    }

    // report_batch_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // report_batch_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // report_batch_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // report_batch_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // report_batch_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(report_batch_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    report_batch_response_local_var = report_batch_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        batch_id ? batch_id->valuedouble : 0,
        report_batch_status ? report_batch_statusVariable : sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_NULL,
        error_message && !cJSON_IsNull(error_message) ? strdup(error_message->valuestring) : NULL,
        endpoint && !cJSON_IsNull(endpoint) ? strdup(endpoint->valuestring) : NULL,
        page_url && !cJSON_IsNull(page_url) ? strdup(page_url->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return report_batch_response_local_var;
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
