#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rule_response.h"



static rule_response_t *rule_response_create_internal(
    long rule_id,
    char *title,
    char *description,
    long rule_type_id,
    char *rule_type_title,
    char *rule_type_description,
    char *rule_value_type,
    char *rule_value
    ) {
    rule_response_t *rule_response_local_var = malloc(sizeof(rule_response_t));
    if (!rule_response_local_var) {
        return NULL;
    }
    rule_response_local_var->rule_id = rule_id;
    rule_response_local_var->title = title;
    rule_response_local_var->description = description;
    rule_response_local_var->rule_type_id = rule_type_id;
    rule_response_local_var->rule_type_title = rule_type_title;
    rule_response_local_var->rule_type_description = rule_type_description;
    rule_response_local_var->rule_value_type = rule_value_type;
    rule_response_local_var->rule_value = rule_value;

    rule_response_local_var->_library_owned = 1;
    return rule_response_local_var;
}

__attribute__((deprecated)) rule_response_t *rule_response_create(
    long rule_id,
    char *title,
    char *description,
    long rule_type_id,
    char *rule_type_title,
    char *rule_type_description,
    char *rule_value_type,
    char *rule_value
    ) {
    return rule_response_create_internal (
        rule_id,
        title,
        description,
        rule_type_id,
        rule_type_title,
        rule_type_description,
        rule_value_type,
        rule_value
        );
}

void rule_response_free(rule_response_t *rule_response) {
    if(NULL == rule_response){
        return ;
    }
    if(rule_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "rule_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (rule_response->title) {
        free(rule_response->title);
        rule_response->title = NULL;
    }
    if (rule_response->description) {
        free(rule_response->description);
        rule_response->description = NULL;
    }
    if (rule_response->rule_type_title) {
        free(rule_response->rule_type_title);
        rule_response->rule_type_title = NULL;
    }
    if (rule_response->rule_type_description) {
        free(rule_response->rule_type_description);
        rule_response->rule_type_description = NULL;
    }
    if (rule_response->rule_value_type) {
        free(rule_response->rule_value_type);
        rule_response->rule_value_type = NULL;
    }
    if (rule_response->rule_value) {
        free(rule_response->rule_value);
        rule_response->rule_value = NULL;
    }
    free(rule_response);
}

cJSON *rule_response_convertToJSON(rule_response_t *rule_response) {
    cJSON *item = cJSON_CreateObject();

    // rule_response->rule_id
    if(rule_response->rule_id) {
    if(cJSON_AddNumberToObject(item, "ruleId", rule_response->rule_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // rule_response->title
    if(rule_response->title) {
    if(cJSON_AddStringToObject(item, "title", rule_response->title) == NULL) {
    goto fail; //String
    }
    }


    // rule_response->description
    if(rule_response->description) {
    if(cJSON_AddStringToObject(item, "description", rule_response->description) == NULL) {
    goto fail; //String
    }
    }


    // rule_response->rule_type_id
    if(rule_response->rule_type_id) {
    if(cJSON_AddNumberToObject(item, "ruleTypeId", rule_response->rule_type_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // rule_response->rule_type_title
    if(rule_response->rule_type_title) {
    if(cJSON_AddStringToObject(item, "ruleTypeTitle", rule_response->rule_type_title) == NULL) {
    goto fail; //String
    }
    }


    // rule_response->rule_type_description
    if(rule_response->rule_type_description) {
    if(cJSON_AddStringToObject(item, "ruleTypeDescription", rule_response->rule_type_description) == NULL) {
    goto fail; //String
    }
    }


    // rule_response->rule_value_type
    if(rule_response->rule_value_type) {
    if(cJSON_AddStringToObject(item, "ruleValueType", rule_response->rule_value_type) == NULL) {
    goto fail; //String
    }
    }


    // rule_response->rule_value
    if(rule_response->rule_value) {
    if(cJSON_AddStringToObject(item, "ruleValue", rule_response->rule_value) == NULL) {
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

rule_response_t *rule_response_parseFromJSON(cJSON *rule_responseJSON){

    rule_response_t *rule_response_local_var = NULL;

    // rule_response->rule_id
    cJSON *rule_id = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "ruleId");
    if (cJSON_IsNull(rule_id)) {
        rule_id = NULL;
    }
    if (rule_id) { 
    if(!cJSON_IsNumber(rule_id))
    {
    goto end; //Numeric
    }
    }

    // rule_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // rule_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // rule_response->rule_type_id
    cJSON *rule_type_id = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "ruleTypeId");
    if (cJSON_IsNull(rule_type_id)) {
        rule_type_id = NULL;
    }
    if (rule_type_id) { 
    if(!cJSON_IsNumber(rule_type_id))
    {
    goto end; //Numeric
    }
    }

    // rule_response->rule_type_title
    cJSON *rule_type_title = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "ruleTypeTitle");
    if (cJSON_IsNull(rule_type_title)) {
        rule_type_title = NULL;
    }
    if (rule_type_title) { 
    if(!cJSON_IsString(rule_type_title) && !cJSON_IsNull(rule_type_title))
    {
    goto end; //String
    }
    }

    // rule_response->rule_type_description
    cJSON *rule_type_description = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "ruleTypeDescription");
    if (cJSON_IsNull(rule_type_description)) {
        rule_type_description = NULL;
    }
    if (rule_type_description) { 
    if(!cJSON_IsString(rule_type_description) && !cJSON_IsNull(rule_type_description))
    {
    goto end; //String
    }
    }

    // rule_response->rule_value_type
    cJSON *rule_value_type = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "ruleValueType");
    if (cJSON_IsNull(rule_value_type)) {
        rule_value_type = NULL;
    }
    if (rule_value_type) { 
    if(!cJSON_IsString(rule_value_type) && !cJSON_IsNull(rule_value_type))
    {
    goto end; //String
    }
    }

    // rule_response->rule_value
    cJSON *rule_value = cJSON_GetObjectItemCaseSensitive(rule_responseJSON, "ruleValue");
    if (cJSON_IsNull(rule_value)) {
        rule_value = NULL;
    }
    if (rule_value) { 
    if(!cJSON_IsString(rule_value) && !cJSON_IsNull(rule_value))
    {
    goto end; //String
    }
    }


    rule_response_local_var = rule_response_create_internal (
        rule_id ? rule_id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        rule_type_id ? rule_type_id->valuedouble : 0,
        rule_type_title && !cJSON_IsNull(rule_type_title) ? strdup(rule_type_title->valuestring) : NULL,
        rule_type_description && !cJSON_IsNull(rule_type_description) ? strdup(rule_type_description->valuestring) : NULL,
        rule_value_type && !cJSON_IsNull(rule_value_type) ? strdup(rule_value_type->valuestring) : NULL,
        rule_value && !cJSON_IsNull(rule_value) ? strdup(rule_value->valuestring) : NULL
        );

    return rule_response_local_var;
end:
    return NULL;

}
