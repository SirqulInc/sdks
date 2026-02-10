#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "report_type_response.h"



static report_type_response_t *report_type_response_create_internal(
    char *type,
    char *java_type,
    char *label,
    int number,
    int major_axis
    ) {
    report_type_response_t *report_type_response_local_var = malloc(sizeof(report_type_response_t));
    if (!report_type_response_local_var) {
        return NULL;
    }
    report_type_response_local_var->type = type;
    report_type_response_local_var->java_type = java_type;
    report_type_response_local_var->label = label;
    report_type_response_local_var->number = number;
    report_type_response_local_var->major_axis = major_axis;

    report_type_response_local_var->_library_owned = 1;
    return report_type_response_local_var;
}

__attribute__((deprecated)) report_type_response_t *report_type_response_create(
    char *type,
    char *java_type,
    char *label,
    int number,
    int major_axis
    ) {
    return report_type_response_create_internal (
        type,
        java_type,
        label,
        number,
        major_axis
        );
}

void report_type_response_free(report_type_response_t *report_type_response) {
    if(NULL == report_type_response){
        return ;
    }
    if(report_type_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "report_type_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (report_type_response->type) {
        free(report_type_response->type);
        report_type_response->type = NULL;
    }
    if (report_type_response->java_type) {
        free(report_type_response->java_type);
        report_type_response->java_type = NULL;
    }
    if (report_type_response->label) {
        free(report_type_response->label);
        report_type_response->label = NULL;
    }
    free(report_type_response);
}

cJSON *report_type_response_convertToJSON(report_type_response_t *report_type_response) {
    cJSON *item = cJSON_CreateObject();

    // report_type_response->type
    if(report_type_response->type) {
    if(cJSON_AddStringToObject(item, "type", report_type_response->type) == NULL) {
    goto fail; //String
    }
    }


    // report_type_response->java_type
    if(report_type_response->java_type) {
    if(cJSON_AddStringToObject(item, "javaType", report_type_response->java_type) == NULL) {
    goto fail; //String
    }
    }


    // report_type_response->label
    if(report_type_response->label) {
    if(cJSON_AddStringToObject(item, "label", report_type_response->label) == NULL) {
    goto fail; //String
    }
    }


    // report_type_response->number
    if(report_type_response->number) {
    if(cJSON_AddBoolToObject(item, "number", report_type_response->number) == NULL) {
    goto fail; //Bool
    }
    }


    // report_type_response->major_axis
    if(report_type_response->major_axis) {
    if(cJSON_AddBoolToObject(item, "majorAxis", report_type_response->major_axis) == NULL) {
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

report_type_response_t *report_type_response_parseFromJSON(cJSON *report_type_responseJSON){

    report_type_response_t *report_type_response_local_var = NULL;

    // report_type_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(report_type_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // report_type_response->java_type
    cJSON *java_type = cJSON_GetObjectItemCaseSensitive(report_type_responseJSON, "javaType");
    if (cJSON_IsNull(java_type)) {
        java_type = NULL;
    }
    if (java_type) { 
    if(!cJSON_IsString(java_type) && !cJSON_IsNull(java_type))
    {
    goto end; //String
    }
    }

    // report_type_response->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(report_type_responseJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // report_type_response->number
    cJSON *number = cJSON_GetObjectItemCaseSensitive(report_type_responseJSON, "number");
    if (cJSON_IsNull(number)) {
        number = NULL;
    }
    if (number) { 
    if(!cJSON_IsBool(number))
    {
    goto end; //Bool
    }
    }

    // report_type_response->major_axis
    cJSON *major_axis = cJSON_GetObjectItemCaseSensitive(report_type_responseJSON, "majorAxis");
    if (cJSON_IsNull(major_axis)) {
        major_axis = NULL;
    }
    if (major_axis) { 
    if(!cJSON_IsBool(major_axis))
    {
    goto end; //Bool
    }
    }


    report_type_response_local_var = report_type_response_create_internal (
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        java_type && !cJSON_IsNull(java_type) ? strdup(java_type->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        number ? number->valueint : 0,
        major_axis ? major_axis->valueint : 0
        );

    return report_type_response_local_var;
end:
    return NULL;

}
