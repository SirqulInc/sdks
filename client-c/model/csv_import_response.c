#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "csv_import_response.h"


char* csv_import_response_csv_import_batch_status_ToString(sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_batch_status) {
    char* csv_import_batch_statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE" };
    return csv_import_batch_statusArray[csv_import_batch_status];
}

sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_response_csv_import_batch_status_FromString(char* csv_import_batch_status){
    int stringToReturn = 0;
    char *csv_import_batch_statusArray[] =  { "NULL", "NEW", "ERROR", "COMPLETE", "PARSE_ERROR", "PROCESSING", "DUPLICATE" };
    size_t sizeofArray = sizeof(csv_import_batch_statusArray) / sizeof(csv_import_batch_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(csv_import_batch_status, csv_import_batch_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* csv_import_response_object_type_ToString(sirqul_iot_platform_csv_import_response_OBJECTTYPE_e object_type) {
    char* object_typeArray[] =  { "NULL", "OFFERS", "RETAILERS", "RETAILERLOCATIONS", "CATEGORIES", "FILTERS" };
    return object_typeArray[object_type];
}

sirqul_iot_platform_csv_import_response_OBJECTTYPE_e csv_import_response_object_type_FromString(char* object_type){
    int stringToReturn = 0;
    char *object_typeArray[] =  { "NULL", "OFFERS", "RETAILERS", "RETAILERLOCATIONS", "CATEGORIES", "FILTERS" };
    size_t sizeofArray = sizeof(object_typeArray) / sizeof(object_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(object_type, object_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static csv_import_response_t *csv_import_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long batch_id,
    sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_batch_status,
    char *error_message,
    sirqul_iot_platform_csv_import_response_OBJECTTYPE_e object_type,
    char *returning
    ) {
    csv_import_response_t *csv_import_response_local_var = malloc(sizeof(csv_import_response_t));
    if (!csv_import_response_local_var) {
        return NULL;
    }
    csv_import_response_local_var->valid = valid;
    csv_import_response_local_var->message = message;
    csv_import_response_local_var->version = version;
    csv_import_response_local_var->serialize_nulls = serialize_nulls;
    csv_import_response_local_var->start_time_log = start_time_log;
    csv_import_response_local_var->error_code = error_code;
    csv_import_response_local_var->request = request;
    csv_import_response_local_var->batch_id = batch_id;
    csv_import_response_local_var->csv_import_batch_status = csv_import_batch_status;
    csv_import_response_local_var->error_message = error_message;
    csv_import_response_local_var->object_type = object_type;
    csv_import_response_local_var->returning = returning;

    csv_import_response_local_var->_library_owned = 1;
    return csv_import_response_local_var;
}

__attribute__((deprecated)) csv_import_response_t *csv_import_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long batch_id,
    sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_batch_status,
    char *error_message,
    sirqul_iot_platform_csv_import_response_OBJECTTYPE_e object_type,
    char *returning
    ) {
    return csv_import_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        batch_id,
        csv_import_batch_status,
        error_message,
        object_type,
        returning
        );
}

void csv_import_response_free(csv_import_response_t *csv_import_response) {
    if(NULL == csv_import_response){
        return ;
    }
    if(csv_import_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "csv_import_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (csv_import_response->message) {
        free(csv_import_response->message);
        csv_import_response->message = NULL;
    }
    if (csv_import_response->error_code) {
        free(csv_import_response->error_code);
        csv_import_response->error_code = NULL;
    }
    if (csv_import_response->request) {
        list_ForEach(listEntry, csv_import_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(csv_import_response->request);
        csv_import_response->request = NULL;
    }
    if (csv_import_response->error_message) {
        free(csv_import_response->error_message);
        csv_import_response->error_message = NULL;
    }
    if (csv_import_response->returning) {
        free(csv_import_response->returning);
        csv_import_response->returning = NULL;
    }
    free(csv_import_response);
}

cJSON *csv_import_response_convertToJSON(csv_import_response_t *csv_import_response) {
    cJSON *item = cJSON_CreateObject();

    // csv_import_response->valid
    if(csv_import_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", csv_import_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // csv_import_response->message
    if(csv_import_response->message) {
    if(cJSON_AddStringToObject(item, "message", csv_import_response->message) == NULL) {
    goto fail; //String
    }
    }


    // csv_import_response->version
    if(csv_import_response->version) {
    if(cJSON_AddNumberToObject(item, "version", csv_import_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // csv_import_response->serialize_nulls
    if(csv_import_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", csv_import_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // csv_import_response->start_time_log
    if(csv_import_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", csv_import_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // csv_import_response->error_code
    if(csv_import_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", csv_import_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // csv_import_response->request
    if(csv_import_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (csv_import_response->request) {
    list_ForEach(requestListEntry, csv_import_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // csv_import_response->batch_id
    if(csv_import_response->batch_id) {
    if(cJSON_AddNumberToObject(item, "batchId", csv_import_response->batch_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // csv_import_response->csv_import_batch_status
    if(csv_import_response->csv_import_batch_status != sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "csvImportBatchStatus", csv_import_response_csv_import_batch_status_ToString(csv_import_response->csv_import_batch_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // csv_import_response->error_message
    if(csv_import_response->error_message) {
    if(cJSON_AddStringToObject(item, "errorMessage", csv_import_response->error_message) == NULL) {
    goto fail; //String
    }
    }


    // csv_import_response->object_type
    if(csv_import_response->object_type != sirqul_iot_platform_csv_import_response_OBJECTTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "objectType", csv_import_response_object_type_ToString(csv_import_response->object_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // csv_import_response->returning
    if(csv_import_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", csv_import_response->returning) == NULL) {
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

csv_import_response_t *csv_import_response_parseFromJSON(cJSON *csv_import_responseJSON){

    csv_import_response_t *csv_import_response_local_var = NULL;

    // define the local list for csv_import_response->request
    list_t *requestList = NULL;

    // csv_import_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // csv_import_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // csv_import_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // csv_import_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // csv_import_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // csv_import_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // csv_import_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "request");
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

    // csv_import_response->batch_id
    cJSON *batch_id = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "batchId");
    if (cJSON_IsNull(batch_id)) {
        batch_id = NULL;
    }
    if (batch_id) { 
    if(!cJSON_IsNumber(batch_id))
    {
    goto end; //Numeric
    }
    }

    // csv_import_response->csv_import_batch_status
    cJSON *csv_import_batch_status = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "csvImportBatchStatus");
    if (cJSON_IsNull(csv_import_batch_status)) {
        csv_import_batch_status = NULL;
    }
    sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_batch_statusVariable;
    if (csv_import_batch_status) { 
    if(!cJSON_IsString(csv_import_batch_status))
    {
    goto end; //Enum
    }
    csv_import_batch_statusVariable = csv_import_response_csv_import_batch_status_FromString(csv_import_batch_status->valuestring);
    }

    // csv_import_response->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "errorMessage");
    if (cJSON_IsNull(error_message)) {
        error_message = NULL;
    }
    if (error_message) { 
    if(!cJSON_IsString(error_message) && !cJSON_IsNull(error_message))
    {
    goto end; //String
    }
    }

    // csv_import_response->object_type
    cJSON *object_type = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "objectType");
    if (cJSON_IsNull(object_type)) {
        object_type = NULL;
    }
    sirqul_iot_platform_csv_import_response_OBJECTTYPE_e object_typeVariable;
    if (object_type) { 
    if(!cJSON_IsString(object_type))
    {
    goto end; //Enum
    }
    object_typeVariable = csv_import_response_object_type_FromString(object_type->valuestring);
    }

    // csv_import_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(csv_import_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    csv_import_response_local_var = csv_import_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        batch_id ? batch_id->valuedouble : 0,
        csv_import_batch_status ? csv_import_batch_statusVariable : sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_NULL,
        error_message && !cJSON_IsNull(error_message) ? strdup(error_message->valuestring) : NULL,
        object_type ? object_typeVariable : sirqul_iot_platform_csv_import_response_OBJECTTYPE_NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return csv_import_response_local_var;
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
