#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "age_group_response.h"



static age_group_response_t *age_group_response_create_internal(
    char *key,
    char *to_string
    ) {
    age_group_response_t *age_group_response_local_var = malloc(sizeof(age_group_response_t));
    if (!age_group_response_local_var) {
        return NULL;
    }
    age_group_response_local_var->key = key;
    age_group_response_local_var->to_string = to_string;

    age_group_response_local_var->_library_owned = 1;
    return age_group_response_local_var;
}

__attribute__((deprecated)) age_group_response_t *age_group_response_create(
    char *key,
    char *to_string
    ) {
    return age_group_response_create_internal (
        key,
        to_string
        );
}

void age_group_response_free(age_group_response_t *age_group_response) {
    if(NULL == age_group_response){
        return ;
    }
    if(age_group_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "age_group_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (age_group_response->key) {
        free(age_group_response->key);
        age_group_response->key = NULL;
    }
    if (age_group_response->to_string) {
        free(age_group_response->to_string);
        age_group_response->to_string = NULL;
    }
    free(age_group_response);
}

cJSON *age_group_response_convertToJSON(age_group_response_t *age_group_response) {
    cJSON *item = cJSON_CreateObject();

    // age_group_response->key
    if(age_group_response->key) {
    if(cJSON_AddStringToObject(item, "key", age_group_response->key) == NULL) {
    goto fail; //String
    }
    }


    // age_group_response->to_string
    if(age_group_response->to_string) {
    if(cJSON_AddStringToObject(item, "toString", age_group_response->to_string) == NULL) {
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

age_group_response_t *age_group_response_parseFromJSON(cJSON *age_group_responseJSON){

    age_group_response_t *age_group_response_local_var = NULL;

    // age_group_response->key
    cJSON *key = cJSON_GetObjectItemCaseSensitive(age_group_responseJSON, "key");
    if (cJSON_IsNull(key)) {
        key = NULL;
    }
    if (key) { 
    if(!cJSON_IsString(key) && !cJSON_IsNull(key))
    {
    goto end; //String
    }
    }

    // age_group_response->to_string
    cJSON *to_string = cJSON_GetObjectItemCaseSensitive(age_group_responseJSON, "toString");
    if (cJSON_IsNull(to_string)) {
        to_string = NULL;
    }
    if (to_string) { 
    if(!cJSON_IsString(to_string) && !cJSON_IsNull(to_string))
    {
    goto end; //String
    }
    }


    age_group_response_local_var = age_group_response_create_internal (
        key && !cJSON_IsNull(key) ? strdup(key->valuestring) : NULL,
        to_string && !cJSON_IsNull(to_string) ? strdup(to_string->valuestring) : NULL
        );

    return age_group_response_local_var;
end:
    return NULL;

}
