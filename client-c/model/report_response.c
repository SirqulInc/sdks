#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "report_response.h"



static report_response_t *report_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *columns,
    list_t *rows,
    list_t* summations,
    long count,
    char *query_name,
    int has_more,
    char *returning
    ) {
    report_response_t *report_response_local_var = malloc(sizeof(report_response_t));
    if (!report_response_local_var) {
        return NULL;
    }
    report_response_local_var->valid = valid;
    report_response_local_var->message = message;
    report_response_local_var->version = version;
    report_response_local_var->serialize_nulls = serialize_nulls;
    report_response_local_var->start_time_log = start_time_log;
    report_response_local_var->error_code = error_code;
    report_response_local_var->request = request;
    report_response_local_var->columns = columns;
    report_response_local_var->rows = rows;
    report_response_local_var->summations = summations;
    report_response_local_var->count = count;
    report_response_local_var->query_name = query_name;
    report_response_local_var->has_more = has_more;
    report_response_local_var->returning = returning;

    report_response_local_var->_library_owned = 1;
    return report_response_local_var;
}

__attribute__((deprecated)) report_response_t *report_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *columns,
    list_t *rows,
    list_t* summations,
    long count,
    char *query_name,
    int has_more,
    char *returning
    ) {
    return report_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        columns,
        rows,
        summations,
        count,
        query_name,
        has_more,
        returning
        );
}

void report_response_free(report_response_t *report_response) {
    if(NULL == report_response){
        return ;
    }
    if(report_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "report_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (report_response->message) {
        free(report_response->message);
        report_response->message = NULL;
    }
    if (report_response->error_code) {
        free(report_response->error_code);
        report_response->error_code = NULL;
    }
    if (report_response->request) {
        list_ForEach(listEntry, report_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(report_response->request);
        report_response->request = NULL;
    }
    if (report_response->columns) {
        list_ForEach(listEntry, report_response->columns) {
            report_type_response_free(listEntry->data);
        }
        list_freeList(report_response->columns);
        report_response->columns = NULL;
    }
    if (report_response->rows) {
        list_ForEach(listEntry, report_response->rows) {
            free(listEntry->data);
        }
        list_freeList(report_response->rows);
        report_response->rows = NULL;
    }
    if (report_response->summations) {
        list_ForEach(listEntry, report_response->summations) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free (localKeyValue->key);
            free (localKeyValue->value);
            keyValuePair_free(localKeyValue);
        }
        list_freeList(report_response->summations);
        report_response->summations = NULL;
    }
    if (report_response->query_name) {
        free(report_response->query_name);
        report_response->query_name = NULL;
    }
    if (report_response->returning) {
        free(report_response->returning);
        report_response->returning = NULL;
    }
    free(report_response);
}

cJSON *report_response_convertToJSON(report_response_t *report_response) {
    cJSON *item = cJSON_CreateObject();

    // report_response->valid
    if(report_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", report_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // report_response->message
    if(report_response->message) {
    if(cJSON_AddStringToObject(item, "message", report_response->message) == NULL) {
    goto fail; //String
    }
    }


    // report_response->version
    if(report_response->version) {
    if(cJSON_AddNumberToObject(item, "version", report_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_response->serialize_nulls
    if(report_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", report_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // report_response->start_time_log
    if(report_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", report_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_response->error_code
    if(report_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", report_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // report_response->request
    if(report_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (report_response->request) {
    list_ForEach(requestListEntry, report_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // report_response->columns
    if(report_response->columns) {
    cJSON *columns = cJSON_AddArrayToObject(item, "columns");
    if(columns == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *columnsListEntry;
    if (report_response->columns) {
    list_ForEach(columnsListEntry, report_response->columns) {
    cJSON *itemLocal = report_type_response_convertToJSON(columnsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(columns, itemLocal);
    }
    }
    }


    // report_response->rows
    if(report_response->rows) {
    cJSON *rows = cJSON_AddArrayToObject(item, "rows");
    if(rows == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *rowsListEntry;
    list_ForEach(rowsListEntry, report_response->rows) {
    }
    }


    // report_response->summations
    if(report_response->summations) {
    cJSON *summations = cJSON_AddObjectToObject(item, "summations");
    if(summations == NULL) {
        goto fail; //primitive map container
    }
    cJSON *localMapObject = summations;
    listEntry_t *summationsListEntry;
    if (report_response->summations) {
    list_ForEach(summationsListEntry, report_response->summations) {
        keyValuePair_t *localKeyValue = summationsListEntry->data;
        if(cJSON_AddNumberToObject(localMapObject, localKeyValue->key, *(double *)localKeyValue->value) == NULL)
        {
            goto fail;
        }
    }
    }
    }


    // report_response->count
    if(report_response->count) {
    if(cJSON_AddNumberToObject(item, "count", report_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_response->query_name
    if(report_response->query_name) {
    if(cJSON_AddStringToObject(item, "queryName", report_response->query_name) == NULL) {
    goto fail; //String
    }
    }


    // report_response->has_more
    if(report_response->has_more) {
    if(cJSON_AddBoolToObject(item, "hasMore", report_response->has_more) == NULL) {
    goto fail; //Bool
    }
    }


    // report_response->returning
    if(report_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", report_response->returning) == NULL) {
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

report_response_t *report_response_parseFromJSON(cJSON *report_responseJSON){

    report_response_t *report_response_local_var = NULL;

    // define the local list for report_response->request
    list_t *requestList = NULL;

    // define the local list for report_response->columns
    list_t *columnsList = NULL;

    // define the local list for report_response->rows
    list_t *rowsList = NULL;

    // define the local map for report_response->summations
    list_t *summationsList = NULL;

    // report_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // report_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // report_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // report_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // report_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // report_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // report_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "request");
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

    // report_response->columns
    cJSON *columns = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "columns");
    if (cJSON_IsNull(columns)) {
        columns = NULL;
    }
    if (columns) { 
    cJSON *columns_local_nonprimitive = NULL;
    if(!cJSON_IsArray(columns)){
        goto end; //nonprimitive container
    }

    columnsList = list_createList();

    cJSON_ArrayForEach(columns_local_nonprimitive,columns )
    {
        if(!cJSON_IsObject(columns_local_nonprimitive)){
            goto end;
        }
        report_type_response_t *columnsItem = report_type_response_parseFromJSON(columns_local_nonprimitive);

        list_addElement(columnsList, columnsItem);
    }
    }

    // report_response->rows
    cJSON *rows = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "rows");
    if (cJSON_IsNull(rows)) {
        rows = NULL;
    }
    if (rows) { 
    cJSON *rows_local = NULL;
    if(!cJSON_IsArray(rows)) {
        goto end;//primitive container
    }
    rowsList = list_createList();

    cJSON_ArrayForEach(rows_local, rows)
    {
    }
    }

    // report_response->summations
    cJSON *summations = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "summations");
    if (cJSON_IsNull(summations)) {
        summations = NULL;
    }
    if (summations) { 
    cJSON *summations_local_map = NULL;
    if(!cJSON_IsObject(summations) && !cJSON_IsNull(summations))
    {
        goto end;//primitive map container
    }
    if(cJSON_IsObject(summations))
    {
        summationsList = list_createList();
        keyValuePair_t *localMapKeyPair;
        cJSON_ArrayForEach(summations_local_map, summations)
        {
            cJSON *localMapObject = summations_local_map;
            if(!cJSON_IsNumber(localMapObject))
            {
                goto end;
            }
            localMapKeyPair = keyValuePair_create(strdup(localMapObject->string),&localMapObject->valuedouble );
            list_addElement(summationsList , localMapKeyPair);
        }
    }
    }

    // report_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // report_response->query_name
    cJSON *query_name = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "queryName");
    if (cJSON_IsNull(query_name)) {
        query_name = NULL;
    }
    if (query_name) { 
    if(!cJSON_IsString(query_name) && !cJSON_IsNull(query_name))
    {
    goto end; //String
    }
    }

    // report_response->has_more
    cJSON *has_more = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "hasMore");
    if (cJSON_IsNull(has_more)) {
        has_more = NULL;
    }
    if (has_more) { 
    if(!cJSON_IsBool(has_more))
    {
    goto end; //Bool
    }
    }

    // report_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(report_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    report_response_local_var = report_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        columns ? columnsList : NULL,
        rows ? rowsList : NULL,
        summations ? summationsList : NULL,
        count ? count->valuedouble : 0,
        query_name && !cJSON_IsNull(query_name) ? strdup(query_name->valuestring) : NULL,
        has_more ? has_more->valueint : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return report_response_local_var;
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
    if (columnsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, columnsList) {
            report_type_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(columnsList);
        columnsList = NULL;
    }
    if (rowsList) {
        list_freeList(rowsList);
        rowsList = NULL;
    }
    if (summationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, summationsList) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free(localKeyValue->key);
            localKeyValue->key = NULL;
            keyValuePair_free(localKeyValue);
            localKeyValue = NULL;
        }
        list_freeList(summationsList);
        summationsList = NULL;
    }
    return NULL;

}
