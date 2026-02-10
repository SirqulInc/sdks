#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "date_time_field.h"



static date_time_field_t *date_time_field_create_internal(
    char *name,
    date_time_field_type_t *type,
    int supported,
    int minimum_value,
    int maximum_value,
    duration_field_t *duration_field,
    duration_field_t *leap_duration_field,
    duration_field_t *range_duration_field,
    int lenient
    ) {
    date_time_field_t *date_time_field_local_var = malloc(sizeof(date_time_field_t));
    if (!date_time_field_local_var) {
        return NULL;
    }
    date_time_field_local_var->name = name;
    date_time_field_local_var->type = type;
    date_time_field_local_var->supported = supported;
    date_time_field_local_var->minimum_value = minimum_value;
    date_time_field_local_var->maximum_value = maximum_value;
    date_time_field_local_var->duration_field = duration_field;
    date_time_field_local_var->leap_duration_field = leap_duration_field;
    date_time_field_local_var->range_duration_field = range_duration_field;
    date_time_field_local_var->lenient = lenient;

    date_time_field_local_var->_library_owned = 1;
    return date_time_field_local_var;
}

__attribute__((deprecated)) date_time_field_t *date_time_field_create(
    char *name,
    date_time_field_type_t *type,
    int supported,
    int minimum_value,
    int maximum_value,
    duration_field_t *duration_field,
    duration_field_t *leap_duration_field,
    duration_field_t *range_duration_field,
    int lenient
    ) {
    return date_time_field_create_internal (
        name,
        type,
        supported,
        minimum_value,
        maximum_value,
        duration_field,
        leap_duration_field,
        range_duration_field,
        lenient
        );
}

void date_time_field_free(date_time_field_t *date_time_field) {
    if(NULL == date_time_field){
        return ;
    }
    if(date_time_field->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "date_time_field_free");
        return ;
    }
    listEntry_t *listEntry;
    if (date_time_field->name) {
        free(date_time_field->name);
        date_time_field->name = NULL;
    }
    if (date_time_field->type) {
        date_time_field_type_free(date_time_field->type);
        date_time_field->type = NULL;
    }
    if (date_time_field->duration_field) {
        duration_field_free(date_time_field->duration_field);
        date_time_field->duration_field = NULL;
    }
    if (date_time_field->leap_duration_field) {
        duration_field_free(date_time_field->leap_duration_field);
        date_time_field->leap_duration_field = NULL;
    }
    if (date_time_field->range_duration_field) {
        duration_field_free(date_time_field->range_duration_field);
        date_time_field->range_duration_field = NULL;
    }
    free(date_time_field);
}

cJSON *date_time_field_convertToJSON(date_time_field_t *date_time_field) {
    cJSON *item = cJSON_CreateObject();

    // date_time_field->name
    if(date_time_field->name) {
    if(cJSON_AddStringToObject(item, "name", date_time_field->name) == NULL) {
    goto fail; //String
    }
    }


    // date_time_field->type
    if(date_time_field->type) {
    cJSON *type_local_JSON = date_time_field_type_convertToJSON(date_time_field->type);
    if(type_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "type", type_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // date_time_field->supported
    if(date_time_field->supported) {
    if(cJSON_AddBoolToObject(item, "supported", date_time_field->supported) == NULL) {
    goto fail; //Bool
    }
    }


    // date_time_field->minimum_value
    if(date_time_field->minimum_value) {
    if(cJSON_AddNumberToObject(item, "minimumValue", date_time_field->minimum_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // date_time_field->maximum_value
    if(date_time_field->maximum_value) {
    if(cJSON_AddNumberToObject(item, "maximumValue", date_time_field->maximum_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // date_time_field->duration_field
    if(date_time_field->duration_field) {
    cJSON *duration_field_local_JSON = duration_field_convertToJSON(date_time_field->duration_field);
    if(duration_field_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "durationField", duration_field_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // date_time_field->leap_duration_field
    if(date_time_field->leap_duration_field) {
    cJSON *leap_duration_field_local_JSON = duration_field_convertToJSON(date_time_field->leap_duration_field);
    if(leap_duration_field_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "leapDurationField", leap_duration_field_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // date_time_field->range_duration_field
    if(date_time_field->range_duration_field) {
    cJSON *range_duration_field_local_JSON = duration_field_convertToJSON(date_time_field->range_duration_field);
    if(range_duration_field_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "rangeDurationField", range_duration_field_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // date_time_field->lenient
    if(date_time_field->lenient) {
    if(cJSON_AddBoolToObject(item, "lenient", date_time_field->lenient) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

date_time_field_t *date_time_field_parseFromJSON(cJSON *date_time_fieldJSON){

    date_time_field_t *date_time_field_local_var = NULL;

    // define the local variable for date_time_field->type
    date_time_field_type_t *type_local_nonprim = NULL;

    // define the local variable for date_time_field->duration_field
    duration_field_t *duration_field_local_nonprim = NULL;

    // define the local variable for date_time_field->leap_duration_field
    duration_field_t *leap_duration_field_local_nonprim = NULL;

    // define the local variable for date_time_field->range_duration_field
    duration_field_t *range_duration_field_local_nonprim = NULL;

    // date_time_field->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // date_time_field->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    type_local_nonprim = date_time_field_type_parseFromJSON(type); //nonprimitive
    }

    // date_time_field->supported
    cJSON *supported = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "supported");
    if (cJSON_IsNull(supported)) {
        supported = NULL;
    }
    if (supported) { 
    if(!cJSON_IsBool(supported))
    {
    goto end; //Bool
    }
    }

    // date_time_field->minimum_value
    cJSON *minimum_value = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "minimumValue");
    if (cJSON_IsNull(minimum_value)) {
        minimum_value = NULL;
    }
    if (minimum_value) { 
    if(!cJSON_IsNumber(minimum_value))
    {
    goto end; //Numeric
    }
    }

    // date_time_field->maximum_value
    cJSON *maximum_value = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "maximumValue");
    if (cJSON_IsNull(maximum_value)) {
        maximum_value = NULL;
    }
    if (maximum_value) { 
    if(!cJSON_IsNumber(maximum_value))
    {
    goto end; //Numeric
    }
    }

    // date_time_field->duration_field
    cJSON *duration_field = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "durationField");
    if (cJSON_IsNull(duration_field)) {
        duration_field = NULL;
    }
    if (duration_field) { 
    duration_field_local_nonprim = duration_field_parseFromJSON(duration_field); //nonprimitive
    }

    // date_time_field->leap_duration_field
    cJSON *leap_duration_field = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "leapDurationField");
    if (cJSON_IsNull(leap_duration_field)) {
        leap_duration_field = NULL;
    }
    if (leap_duration_field) { 
    leap_duration_field_local_nonprim = duration_field_parseFromJSON(leap_duration_field); //nonprimitive
    }

    // date_time_field->range_duration_field
    cJSON *range_duration_field = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "rangeDurationField");
    if (cJSON_IsNull(range_duration_field)) {
        range_duration_field = NULL;
    }
    if (range_duration_field) { 
    range_duration_field_local_nonprim = duration_field_parseFromJSON(range_duration_field); //nonprimitive
    }

    // date_time_field->lenient
    cJSON *lenient = cJSON_GetObjectItemCaseSensitive(date_time_fieldJSON, "lenient");
    if (cJSON_IsNull(lenient)) {
        lenient = NULL;
    }
    if (lenient) { 
    if(!cJSON_IsBool(lenient))
    {
    goto end; //Bool
    }
    }


    date_time_field_local_var = date_time_field_create_internal (
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        type ? type_local_nonprim : NULL,
        supported ? supported->valueint : 0,
        minimum_value ? minimum_value->valuedouble : 0,
        maximum_value ? maximum_value->valuedouble : 0,
        duration_field ? duration_field_local_nonprim : NULL,
        leap_duration_field ? leap_duration_field_local_nonprim : NULL,
        range_duration_field ? range_duration_field_local_nonprim : NULL,
        lenient ? lenient->valueint : 0
        );

    return date_time_field_local_var;
end:
    if (type_local_nonprim) {
        date_time_field_type_free(type_local_nonprim);
        type_local_nonprim = NULL;
    }
    if (duration_field_local_nonprim) {
        duration_field_free(duration_field_local_nonprim);
        duration_field_local_nonprim = NULL;
    }
    if (leap_duration_field_local_nonprim) {
        duration_field_free(leap_duration_field_local_nonprim);
        leap_duration_field_local_nonprim = NULL;
    }
    if (range_duration_field_local_nonprim) {
        duration_field_free(range_duration_field_local_nonprim);
        range_duration_field_local_nonprim = NULL;
    }
    return NULL;

}
