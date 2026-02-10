#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "local_time.h"



static local_time_t *local_time_create_internal(
    chronology_t *chronology,
    int hour_of_day,
    int minute_of_hour,
    int second_of_minute,
    int millis_of_second,
    int millis_of_day,
    list_t *fields,
    list_t *values,
    list_t *field_types
    ) {
    local_time_t *local_time_local_var = malloc(sizeof(local_time_t));
    if (!local_time_local_var) {
        return NULL;
    }
    local_time_local_var->chronology = chronology;
    local_time_local_var->hour_of_day = hour_of_day;
    local_time_local_var->minute_of_hour = minute_of_hour;
    local_time_local_var->second_of_minute = second_of_minute;
    local_time_local_var->millis_of_second = millis_of_second;
    local_time_local_var->millis_of_day = millis_of_day;
    local_time_local_var->fields = fields;
    local_time_local_var->values = values;
    local_time_local_var->field_types = field_types;

    local_time_local_var->_library_owned = 1;
    return local_time_local_var;
}

__attribute__((deprecated)) local_time_t *local_time_create(
    chronology_t *chronology,
    int hour_of_day,
    int minute_of_hour,
    int second_of_minute,
    int millis_of_second,
    int millis_of_day,
    list_t *fields,
    list_t *values,
    list_t *field_types
    ) {
    return local_time_create_internal (
        chronology,
        hour_of_day,
        minute_of_hour,
        second_of_minute,
        millis_of_second,
        millis_of_day,
        fields,
        values,
        field_types
        );
}

void local_time_free(local_time_t *local_time) {
    if(NULL == local_time){
        return ;
    }
    if(local_time->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "local_time_free");
        return ;
    }
    listEntry_t *listEntry;
    if (local_time->chronology) {
        chronology_free(local_time->chronology);
        local_time->chronology = NULL;
    }
    if (local_time->fields) {
        list_ForEach(listEntry, local_time->fields) {
            date_time_field_free(listEntry->data);
        }
        list_freeList(local_time->fields);
        local_time->fields = NULL;
    }
    if (local_time->values) {
        list_ForEach(listEntry, local_time->values) {
            free(listEntry->data);
        }
        list_freeList(local_time->values);
        local_time->values = NULL;
    }
    if (local_time->field_types) {
        list_ForEach(listEntry, local_time->field_types) {
            date_time_field_type_free(listEntry->data);
        }
        list_freeList(local_time->field_types);
        local_time->field_types = NULL;
    }
    free(local_time);
}

cJSON *local_time_convertToJSON(local_time_t *local_time) {
    cJSON *item = cJSON_CreateObject();

    // local_time->chronology
    if(local_time->chronology) {
    cJSON *chronology_local_JSON = chronology_convertToJSON(local_time->chronology);
    if(chronology_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "chronology", chronology_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // local_time->hour_of_day
    if(local_time->hour_of_day) {
    if(cJSON_AddNumberToObject(item, "hourOfDay", local_time->hour_of_day) == NULL) {
    goto fail; //Numeric
    }
    }


    // local_time->minute_of_hour
    if(local_time->minute_of_hour) {
    if(cJSON_AddNumberToObject(item, "minuteOfHour", local_time->minute_of_hour) == NULL) {
    goto fail; //Numeric
    }
    }


    // local_time->second_of_minute
    if(local_time->second_of_minute) {
    if(cJSON_AddNumberToObject(item, "secondOfMinute", local_time->second_of_minute) == NULL) {
    goto fail; //Numeric
    }
    }


    // local_time->millis_of_second
    if(local_time->millis_of_second) {
    if(cJSON_AddNumberToObject(item, "millisOfSecond", local_time->millis_of_second) == NULL) {
    goto fail; //Numeric
    }
    }


    // local_time->millis_of_day
    if(local_time->millis_of_day) {
    if(cJSON_AddNumberToObject(item, "millisOfDay", local_time->millis_of_day) == NULL) {
    goto fail; //Numeric
    }
    }


    // local_time->fields
    if(local_time->fields) {
    cJSON *fields = cJSON_AddArrayToObject(item, "fields");
    if(fields == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fieldsListEntry;
    if (local_time->fields) {
    list_ForEach(fieldsListEntry, local_time->fields) {
    cJSON *itemLocal = date_time_field_convertToJSON(fieldsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(fields, itemLocal);
    }
    }
    }


    // local_time->values
    if(local_time->values) {
    cJSON *values = cJSON_AddArrayToObject(item, "values");
    if(values == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *valuesListEntry;
    list_ForEach(valuesListEntry, local_time->values) {
    if(cJSON_AddNumberToObject(values, "", *(double *)valuesListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // local_time->field_types
    if(local_time->field_types) {
    cJSON *field_types = cJSON_AddArrayToObject(item, "fieldTypes");
    if(field_types == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *field_typesListEntry;
    if (local_time->field_types) {
    list_ForEach(field_typesListEntry, local_time->field_types) {
    cJSON *itemLocal = date_time_field_type_convertToJSON(field_typesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(field_types, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

local_time_t *local_time_parseFromJSON(cJSON *local_timeJSON){

    local_time_t *local_time_local_var = NULL;

    // define the local variable for local_time->chronology
    chronology_t *chronology_local_nonprim = NULL;

    // define the local list for local_time->fields
    list_t *fieldsList = NULL;

    // define the local list for local_time->values
    list_t *valuesList = NULL;

    // define the local list for local_time->field_types
    list_t *field_typesList = NULL;

    // local_time->chronology
    cJSON *chronology = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "chronology");
    if (cJSON_IsNull(chronology)) {
        chronology = NULL;
    }
    if (chronology) { 
    chronology_local_nonprim = chronology_parseFromJSON(chronology); //nonprimitive
    }

    // local_time->hour_of_day
    cJSON *hour_of_day = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "hourOfDay");
    if (cJSON_IsNull(hour_of_day)) {
        hour_of_day = NULL;
    }
    if (hour_of_day) { 
    if(!cJSON_IsNumber(hour_of_day))
    {
    goto end; //Numeric
    }
    }

    // local_time->minute_of_hour
    cJSON *minute_of_hour = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "minuteOfHour");
    if (cJSON_IsNull(minute_of_hour)) {
        minute_of_hour = NULL;
    }
    if (minute_of_hour) { 
    if(!cJSON_IsNumber(minute_of_hour))
    {
    goto end; //Numeric
    }
    }

    // local_time->second_of_minute
    cJSON *second_of_minute = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "secondOfMinute");
    if (cJSON_IsNull(second_of_minute)) {
        second_of_minute = NULL;
    }
    if (second_of_minute) { 
    if(!cJSON_IsNumber(second_of_minute))
    {
    goto end; //Numeric
    }
    }

    // local_time->millis_of_second
    cJSON *millis_of_second = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "millisOfSecond");
    if (cJSON_IsNull(millis_of_second)) {
        millis_of_second = NULL;
    }
    if (millis_of_second) { 
    if(!cJSON_IsNumber(millis_of_second))
    {
    goto end; //Numeric
    }
    }

    // local_time->millis_of_day
    cJSON *millis_of_day = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "millisOfDay");
    if (cJSON_IsNull(millis_of_day)) {
        millis_of_day = NULL;
    }
    if (millis_of_day) { 
    if(!cJSON_IsNumber(millis_of_day))
    {
    goto end; //Numeric
    }
    }

    // local_time->fields
    cJSON *fields = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "fields");
    if (cJSON_IsNull(fields)) {
        fields = NULL;
    }
    if (fields) { 
    cJSON *fields_local_nonprimitive = NULL;
    if(!cJSON_IsArray(fields)){
        goto end; //nonprimitive container
    }

    fieldsList = list_createList();

    cJSON_ArrayForEach(fields_local_nonprimitive,fields )
    {
        if(!cJSON_IsObject(fields_local_nonprimitive)){
            goto end;
        }
        date_time_field_t *fieldsItem = date_time_field_parseFromJSON(fields_local_nonprimitive);

        list_addElement(fieldsList, fieldsItem);
    }
    }

    // local_time->values
    cJSON *values = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "values");
    if (cJSON_IsNull(values)) {
        values = NULL;
    }
    if (values) { 
    cJSON *values_local = NULL;
    if(!cJSON_IsArray(values)) {
        goto end;//primitive container
    }
    valuesList = list_createList();

    cJSON_ArrayForEach(values_local, values)
    {
        if(!cJSON_IsNumber(values_local))
        {
            goto end;
        }
        double *values_local_value = calloc(1, sizeof(double));
        if(!values_local_value)
        {
            goto end;
        }
        *values_local_value = values_local->valuedouble;
        list_addElement(valuesList , values_local_value);
    }
    }

    // local_time->field_types
    cJSON *field_types = cJSON_GetObjectItemCaseSensitive(local_timeJSON, "fieldTypes");
    if (cJSON_IsNull(field_types)) {
        field_types = NULL;
    }
    if (field_types) { 
    cJSON *field_types_local_nonprimitive = NULL;
    if(!cJSON_IsArray(field_types)){
        goto end; //nonprimitive container
    }

    field_typesList = list_createList();

    cJSON_ArrayForEach(field_types_local_nonprimitive,field_types )
    {
        if(!cJSON_IsObject(field_types_local_nonprimitive)){
            goto end;
        }
        date_time_field_type_t *field_typesItem = date_time_field_type_parseFromJSON(field_types_local_nonprimitive);

        list_addElement(field_typesList, field_typesItem);
    }
    }


    local_time_local_var = local_time_create_internal (
        chronology ? chronology_local_nonprim : NULL,
        hour_of_day ? hour_of_day->valuedouble : 0,
        minute_of_hour ? minute_of_hour->valuedouble : 0,
        second_of_minute ? second_of_minute->valuedouble : 0,
        millis_of_second ? millis_of_second->valuedouble : 0,
        millis_of_day ? millis_of_day->valuedouble : 0,
        fields ? fieldsList : NULL,
        values ? valuesList : NULL,
        field_types ? field_typesList : NULL
        );

    return local_time_local_var;
end:
    if (chronology_local_nonprim) {
        chronology_free(chronology_local_nonprim);
        chronology_local_nonprim = NULL;
    }
    if (fieldsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fieldsList) {
            date_time_field_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fieldsList);
        fieldsList = NULL;
    }
    if (valuesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, valuesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(valuesList);
        valuesList = NULL;
    }
    if (field_typesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, field_typesList) {
            date_time_field_type_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(field_typesList);
        field_typesList = NULL;
    }
    return NULL;

}
