#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "promo_code.h"



static promo_code_t *promo_code_create_internal(
    long id,
    int active,
    int valid,
    char *code,
    char *name,
    int days
    ) {
    promo_code_t *promo_code_local_var = malloc(sizeof(promo_code_t));
    if (!promo_code_local_var) {
        return NULL;
    }
    promo_code_local_var->id = id;
    promo_code_local_var->active = active;
    promo_code_local_var->valid = valid;
    promo_code_local_var->code = code;
    promo_code_local_var->name = name;
    promo_code_local_var->days = days;

    promo_code_local_var->_library_owned = 1;
    return promo_code_local_var;
}

__attribute__((deprecated)) promo_code_t *promo_code_create(
    long id,
    int active,
    int valid,
    char *code,
    char *name,
    int days
    ) {
    return promo_code_create_internal (
        id,
        active,
        valid,
        code,
        name,
        days
        );
}

void promo_code_free(promo_code_t *promo_code) {
    if(NULL == promo_code){
        return ;
    }
    if(promo_code->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "promo_code_free");
        return ;
    }
    listEntry_t *listEntry;
    if (promo_code->code) {
        free(promo_code->code);
        promo_code->code = NULL;
    }
    if (promo_code->name) {
        free(promo_code->name);
        promo_code->name = NULL;
    }
    free(promo_code);
}

cJSON *promo_code_convertToJSON(promo_code_t *promo_code) {
    cJSON *item = cJSON_CreateObject();

    // promo_code->id
    if(promo_code->id) {
    if(cJSON_AddNumberToObject(item, "id", promo_code->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // promo_code->active
    if(promo_code->active) {
    if(cJSON_AddBoolToObject(item, "active", promo_code->active) == NULL) {
    goto fail; //Bool
    }
    }


    // promo_code->valid
    if(promo_code->valid) {
    if(cJSON_AddBoolToObject(item, "valid", promo_code->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // promo_code->code
    if(promo_code->code) {
    if(cJSON_AddStringToObject(item, "code", promo_code->code) == NULL) {
    goto fail; //String
    }
    }


    // promo_code->name
    if(promo_code->name) {
    if(cJSON_AddStringToObject(item, "name", promo_code->name) == NULL) {
    goto fail; //String
    }
    }


    // promo_code->days
    if(promo_code->days) {
    if(cJSON_AddNumberToObject(item, "days", promo_code->days) == NULL) {
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

promo_code_t *promo_code_parseFromJSON(cJSON *promo_codeJSON){

    promo_code_t *promo_code_local_var = NULL;

    // promo_code->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(promo_codeJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // promo_code->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(promo_codeJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // promo_code->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(promo_codeJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // promo_code->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(promo_codeJSON, "code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    if(!cJSON_IsString(code) && !cJSON_IsNull(code))
    {
    goto end; //String
    }
    }

    // promo_code->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(promo_codeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // promo_code->days
    cJSON *days = cJSON_GetObjectItemCaseSensitive(promo_codeJSON, "days");
    if (cJSON_IsNull(days)) {
        days = NULL;
    }
    if (days) { 
    if(!cJSON_IsNumber(days))
    {
    goto end; //Numeric
    }
    }


    promo_code_local_var = promo_code_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        code && !cJSON_IsNull(code) ? strdup(code->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        days ? days->valuedouble : 0
        );

    return promo_code_local_var;
end:
    return NULL;

}
