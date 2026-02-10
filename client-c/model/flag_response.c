#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "flag_response.h"



static flag_response_t *flag_response_create_internal(
    long flag_id,
    long flagable_id,
    char *flagable_type,
    char *flag_description,
    long created_date,
    long updated_date
    ) {
    flag_response_t *flag_response_local_var = malloc(sizeof(flag_response_t));
    if (!flag_response_local_var) {
        return NULL;
    }
    flag_response_local_var->flag_id = flag_id;
    flag_response_local_var->flagable_id = flagable_id;
    flag_response_local_var->flagable_type = flagable_type;
    flag_response_local_var->flag_description = flag_description;
    flag_response_local_var->created_date = created_date;
    flag_response_local_var->updated_date = updated_date;

    flag_response_local_var->_library_owned = 1;
    return flag_response_local_var;
}

__attribute__((deprecated)) flag_response_t *flag_response_create(
    long flag_id,
    long flagable_id,
    char *flagable_type,
    char *flag_description,
    long created_date,
    long updated_date
    ) {
    return flag_response_create_internal (
        flag_id,
        flagable_id,
        flagable_type,
        flag_description,
        created_date,
        updated_date
        );
}

void flag_response_free(flag_response_t *flag_response) {
    if(NULL == flag_response){
        return ;
    }
    if(flag_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "flag_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (flag_response->flagable_type) {
        free(flag_response->flagable_type);
        flag_response->flagable_type = NULL;
    }
    if (flag_response->flag_description) {
        free(flag_response->flag_description);
        flag_response->flag_description = NULL;
    }
    free(flag_response);
}

cJSON *flag_response_convertToJSON(flag_response_t *flag_response) {
    cJSON *item = cJSON_CreateObject();

    // flag_response->flag_id
    if(flag_response->flag_id) {
    if(cJSON_AddNumberToObject(item, "flagId", flag_response->flag_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // flag_response->flagable_id
    if(flag_response->flagable_id) {
    if(cJSON_AddNumberToObject(item, "flagableId", flag_response->flagable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // flag_response->flagable_type
    if(flag_response->flagable_type) {
    if(cJSON_AddStringToObject(item, "flagableType", flag_response->flagable_type) == NULL) {
    goto fail; //String
    }
    }


    // flag_response->flag_description
    if(flag_response->flag_description) {
    if(cJSON_AddStringToObject(item, "flagDescription", flag_response->flag_description) == NULL) {
    goto fail; //String
    }
    }


    // flag_response->created_date
    if(flag_response->created_date) {
    if(cJSON_AddNumberToObject(item, "createdDate", flag_response->created_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // flag_response->updated_date
    if(flag_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", flag_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

flag_response_t *flag_response_parseFromJSON(cJSON *flag_responseJSON){

    flag_response_t *flag_response_local_var = NULL;

    // flag_response->flag_id
    cJSON *flag_id = cJSON_GetObjectItemCaseSensitive(flag_responseJSON, "flagId");
    if (cJSON_IsNull(flag_id)) {
        flag_id = NULL;
    }
    if (flag_id) { 
    if(!cJSON_IsNumber(flag_id))
    {
    goto end; //Numeric
    }
    }

    // flag_response->flagable_id
    cJSON *flagable_id = cJSON_GetObjectItemCaseSensitive(flag_responseJSON, "flagableId");
    if (cJSON_IsNull(flagable_id)) {
        flagable_id = NULL;
    }
    if (flagable_id) { 
    if(!cJSON_IsNumber(flagable_id))
    {
    goto end; //Numeric
    }
    }

    // flag_response->flagable_type
    cJSON *flagable_type = cJSON_GetObjectItemCaseSensitive(flag_responseJSON, "flagableType");
    if (cJSON_IsNull(flagable_type)) {
        flagable_type = NULL;
    }
    if (flagable_type) { 
    if(!cJSON_IsString(flagable_type) && !cJSON_IsNull(flagable_type))
    {
    goto end; //String
    }
    }

    // flag_response->flag_description
    cJSON *flag_description = cJSON_GetObjectItemCaseSensitive(flag_responseJSON, "flagDescription");
    if (cJSON_IsNull(flag_description)) {
        flag_description = NULL;
    }
    if (flag_description) { 
    if(!cJSON_IsString(flag_description) && !cJSON_IsNull(flag_description))
    {
    goto end; //String
    }
    }

    // flag_response->created_date
    cJSON *created_date = cJSON_GetObjectItemCaseSensitive(flag_responseJSON, "createdDate");
    if (cJSON_IsNull(created_date)) {
        created_date = NULL;
    }
    if (created_date) { 
    if(!cJSON_IsNumber(created_date))
    {
    goto end; //Numeric
    }
    }

    // flag_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(flag_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }


    flag_response_local_var = flag_response_create_internal (
        flag_id ? flag_id->valuedouble : 0,
        flagable_id ? flagable_id->valuedouble : 0,
        flagable_type && !cJSON_IsNull(flagable_type) ? strdup(flagable_type->valuestring) : NULL,
        flag_description && !cJSON_IsNull(flag_description) ? strdup(flag_description->valuestring) : NULL,
        created_date ? created_date->valuedouble : 0,
        updated_date ? updated_date->valuedouble : 0
        );

    return flag_response_local_var;
end:
    return NULL;

}
