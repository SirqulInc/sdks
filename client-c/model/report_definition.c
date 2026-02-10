#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "report_definition.h"


char* report_definition_data_source_ToString(sirqul_iot_platform_report_definition_DATASOURCE_e data_source) {
    char* data_sourceArray[] =  { "NULL", "WRITE", "ANALYTIC", "READ1" };
    return data_sourceArray[data_source];
}

sirqul_iot_platform_report_definition_DATASOURCE_e report_definition_data_source_FromString(char* data_source){
    int stringToReturn = 0;
    char *data_sourceArray[] =  { "NULL", "WRITE", "ANALYTIC", "READ1" };
    size_t sizeofArray = sizeof(data_sourceArray) / sizeof(data_sourceArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(data_source, data_sourceArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static report_definition_t *report_definition_create_internal(
    long id,
    int active,
    int valid,
    char *query,
    char *query_name,
    char *display_name,
    list_t *column_names,
    int native_sql,
    int display,
    sirqul_iot_platform_report_definition_DATASOURCE_e data_source,
    long max_limit,
    int max_date_range,
    char *display_params,
    char *meta_data,
    char *column_names_raw
    ) {
    report_definition_t *report_definition_local_var = malloc(sizeof(report_definition_t));
    if (!report_definition_local_var) {
        return NULL;
    }
    report_definition_local_var->id = id;
    report_definition_local_var->active = active;
    report_definition_local_var->valid = valid;
    report_definition_local_var->query = query;
    report_definition_local_var->query_name = query_name;
    report_definition_local_var->display_name = display_name;
    report_definition_local_var->column_names = column_names;
    report_definition_local_var->native_sql = native_sql;
    report_definition_local_var->display = display;
    report_definition_local_var->data_source = data_source;
    report_definition_local_var->max_limit = max_limit;
    report_definition_local_var->max_date_range = max_date_range;
    report_definition_local_var->display_params = display_params;
    report_definition_local_var->meta_data = meta_data;
    report_definition_local_var->column_names_raw = column_names_raw;

    report_definition_local_var->_library_owned = 1;
    return report_definition_local_var;
}

__attribute__((deprecated)) report_definition_t *report_definition_create(
    long id,
    int active,
    int valid,
    char *query,
    char *query_name,
    char *display_name,
    list_t *column_names,
    int native_sql,
    int display,
    sirqul_iot_platform_report_definition_DATASOURCE_e data_source,
    long max_limit,
    int max_date_range,
    char *display_params,
    char *meta_data,
    char *column_names_raw
    ) {
    return report_definition_create_internal (
        id,
        active,
        valid,
        query,
        query_name,
        display_name,
        column_names,
        native_sql,
        display,
        data_source,
        max_limit,
        max_date_range,
        display_params,
        meta_data,
        column_names_raw
        );
}

void report_definition_free(report_definition_t *report_definition) {
    if(NULL == report_definition){
        return ;
    }
    if(report_definition->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "report_definition_free");
        return ;
    }
    listEntry_t *listEntry;
    if (report_definition->query) {
        free(report_definition->query);
        report_definition->query = NULL;
    }
    if (report_definition->query_name) {
        free(report_definition->query_name);
        report_definition->query_name = NULL;
    }
    if (report_definition->display_name) {
        free(report_definition->display_name);
        report_definition->display_name = NULL;
    }
    if (report_definition->column_names) {
        list_ForEach(listEntry, report_definition->column_names) {
            free(listEntry->data);
        }
        list_freeList(report_definition->column_names);
        report_definition->column_names = NULL;
    }
    if (report_definition->display_params) {
        free(report_definition->display_params);
        report_definition->display_params = NULL;
    }
    if (report_definition->meta_data) {
        free(report_definition->meta_data);
        report_definition->meta_data = NULL;
    }
    if (report_definition->column_names_raw) {
        free(report_definition->column_names_raw);
        report_definition->column_names_raw = NULL;
    }
    free(report_definition);
}

cJSON *report_definition_convertToJSON(report_definition_t *report_definition) {
    cJSON *item = cJSON_CreateObject();

    // report_definition->id
    if(report_definition->id) {
    if(cJSON_AddNumberToObject(item, "id", report_definition->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_definition->active
    if(report_definition->active) {
    if(cJSON_AddBoolToObject(item, "active", report_definition->active) == NULL) {
    goto fail; //Bool
    }
    }


    // report_definition->valid
    if(report_definition->valid) {
    if(cJSON_AddBoolToObject(item, "valid", report_definition->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // report_definition->query
    if(report_definition->query) {
    if(cJSON_AddStringToObject(item, "query", report_definition->query) == NULL) {
    goto fail; //String
    }
    }


    // report_definition->query_name
    if(report_definition->query_name) {
    if(cJSON_AddStringToObject(item, "queryName", report_definition->query_name) == NULL) {
    goto fail; //String
    }
    }


    // report_definition->display_name
    if(report_definition->display_name) {
    if(cJSON_AddStringToObject(item, "displayName", report_definition->display_name) == NULL) {
    goto fail; //String
    }
    }


    // report_definition->column_names
    if(report_definition->column_names) {
    cJSON *column_names = cJSON_AddArrayToObject(item, "columnNames");
    if(column_names == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *column_namesListEntry;
    list_ForEach(column_namesListEntry, report_definition->column_names) {
    if(cJSON_AddStringToObject(column_names, "", column_namesListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // report_definition->native_sql
    if(report_definition->native_sql) {
    if(cJSON_AddBoolToObject(item, "nativeSql", report_definition->native_sql) == NULL) {
    goto fail; //Bool
    }
    }


    // report_definition->display
    if(report_definition->display) {
    if(cJSON_AddBoolToObject(item, "display", report_definition->display) == NULL) {
    goto fail; //Bool
    }
    }


    // report_definition->data_source
    if(report_definition->data_source != sirqul_iot_platform_report_definition_DATASOURCE_NULL) {
    if(cJSON_AddStringToObject(item, "dataSource", report_definition_data_source_ToString(report_definition->data_source)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // report_definition->max_limit
    if(report_definition->max_limit) {
    if(cJSON_AddNumberToObject(item, "maxLimit", report_definition->max_limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_definition->max_date_range
    if(report_definition->max_date_range) {
    if(cJSON_AddNumberToObject(item, "maxDateRange", report_definition->max_date_range) == NULL) {
    goto fail; //Numeric
    }
    }


    // report_definition->display_params
    if(report_definition->display_params) {
    if(cJSON_AddStringToObject(item, "displayParams", report_definition->display_params) == NULL) {
    goto fail; //String
    }
    }


    // report_definition->meta_data
    if(report_definition->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", report_definition->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // report_definition->column_names_raw
    if(report_definition->column_names_raw) {
    if(cJSON_AddStringToObject(item, "columnNamesRaw", report_definition->column_names_raw) == NULL) {
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

report_definition_t *report_definition_parseFromJSON(cJSON *report_definitionJSON){

    report_definition_t *report_definition_local_var = NULL;

    // define the local list for report_definition->column_names
    list_t *column_namesList = NULL;

    // report_definition->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // report_definition->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // report_definition->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // report_definition->query
    cJSON *query = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "query");
    if (cJSON_IsNull(query)) {
        query = NULL;
    }
    if (query) { 
    if(!cJSON_IsString(query) && !cJSON_IsNull(query))
    {
    goto end; //String
    }
    }

    // report_definition->query_name
    cJSON *query_name = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "queryName");
    if (cJSON_IsNull(query_name)) {
        query_name = NULL;
    }
    if (query_name) { 
    if(!cJSON_IsString(query_name) && !cJSON_IsNull(query_name))
    {
    goto end; //String
    }
    }

    // report_definition->display_name
    cJSON *display_name = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "displayName");
    if (cJSON_IsNull(display_name)) {
        display_name = NULL;
    }
    if (display_name) { 
    if(!cJSON_IsString(display_name) && !cJSON_IsNull(display_name))
    {
    goto end; //String
    }
    }

    // report_definition->column_names
    cJSON *column_names = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "columnNames");
    if (cJSON_IsNull(column_names)) {
        column_names = NULL;
    }
    if (column_names) { 
    cJSON *column_names_local = NULL;
    if(!cJSON_IsArray(column_names)) {
        goto end;//primitive container
    }
    column_namesList = list_createList();

    cJSON_ArrayForEach(column_names_local, column_names)
    {
        if(!cJSON_IsString(column_names_local))
        {
            goto end;
        }
        list_addElement(column_namesList , strdup(column_names_local->valuestring));
    }
    }

    // report_definition->native_sql
    cJSON *native_sql = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "nativeSql");
    if (cJSON_IsNull(native_sql)) {
        native_sql = NULL;
    }
    if (native_sql) { 
    if(!cJSON_IsBool(native_sql))
    {
    goto end; //Bool
    }
    }

    // report_definition->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsBool(display))
    {
    goto end; //Bool
    }
    }

    // report_definition->data_source
    cJSON *data_source = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "dataSource");
    if (cJSON_IsNull(data_source)) {
        data_source = NULL;
    }
    sirqul_iot_platform_report_definition_DATASOURCE_e data_sourceVariable;
    if (data_source) { 
    if(!cJSON_IsString(data_source))
    {
    goto end; //Enum
    }
    data_sourceVariable = report_definition_data_source_FromString(data_source->valuestring);
    }

    // report_definition->max_limit
    cJSON *max_limit = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "maxLimit");
    if (cJSON_IsNull(max_limit)) {
        max_limit = NULL;
    }
    if (max_limit) { 
    if(!cJSON_IsNumber(max_limit))
    {
    goto end; //Numeric
    }
    }

    // report_definition->max_date_range
    cJSON *max_date_range = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "maxDateRange");
    if (cJSON_IsNull(max_date_range)) {
        max_date_range = NULL;
    }
    if (max_date_range) { 
    if(!cJSON_IsNumber(max_date_range))
    {
    goto end; //Numeric
    }
    }

    // report_definition->display_params
    cJSON *display_params = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "displayParams");
    if (cJSON_IsNull(display_params)) {
        display_params = NULL;
    }
    if (display_params) { 
    if(!cJSON_IsString(display_params) && !cJSON_IsNull(display_params))
    {
    goto end; //String
    }
    }

    // report_definition->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // report_definition->column_names_raw
    cJSON *column_names_raw = cJSON_GetObjectItemCaseSensitive(report_definitionJSON, "columnNamesRaw");
    if (cJSON_IsNull(column_names_raw)) {
        column_names_raw = NULL;
    }
    if (column_names_raw) { 
    if(!cJSON_IsString(column_names_raw) && !cJSON_IsNull(column_names_raw))
    {
    goto end; //String
    }
    }


    report_definition_local_var = report_definition_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        query && !cJSON_IsNull(query) ? strdup(query->valuestring) : NULL,
        query_name && !cJSON_IsNull(query_name) ? strdup(query_name->valuestring) : NULL,
        display_name && !cJSON_IsNull(display_name) ? strdup(display_name->valuestring) : NULL,
        column_names ? column_namesList : NULL,
        native_sql ? native_sql->valueint : 0,
        display ? display->valueint : 0,
        data_source ? data_sourceVariable : sirqul_iot_platform_report_definition_DATASOURCE_NULL,
        max_limit ? max_limit->valuedouble : 0,
        max_date_range ? max_date_range->valuedouble : 0,
        display_params && !cJSON_IsNull(display_params) ? strdup(display_params->valuestring) : NULL,
        meta_data && !cJSON_IsNull(meta_data) ? strdup(meta_data->valuestring) : NULL,
        column_names_raw && !cJSON_IsNull(column_names_raw) ? strdup(column_names_raw->valuestring) : NULL
        );

    return report_definition_local_var;
end:
    if (column_namesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, column_namesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(column_namesList);
        column_namesList = NULL;
    }
    return NULL;

}
