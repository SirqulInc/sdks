#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_ai_prod_response.h"



static orson_ai_prod_response_t *orson_ai_prod_response_create_internal(
    char *request_id,
    int response_code,
    char *response_raw
    ) {
    orson_ai_prod_response_t *orson_ai_prod_response_local_var = malloc(sizeof(orson_ai_prod_response_t));
    if (!orson_ai_prod_response_local_var) {
        return NULL;
    }
    orson_ai_prod_response_local_var->request_id = request_id;
    orson_ai_prod_response_local_var->response_code = response_code;
    orson_ai_prod_response_local_var->response_raw = response_raw;

    orson_ai_prod_response_local_var->_library_owned = 1;
    return orson_ai_prod_response_local_var;
}

__attribute__((deprecated)) orson_ai_prod_response_t *orson_ai_prod_response_create(
    char *request_id,
    int response_code,
    char *response_raw
    ) {
    return orson_ai_prod_response_create_internal (
        request_id,
        response_code,
        response_raw
        );
}

void orson_ai_prod_response_free(orson_ai_prod_response_t *orson_ai_prod_response) {
    if(NULL == orson_ai_prod_response){
        return ;
    }
    if(orson_ai_prod_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_ai_prod_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_ai_prod_response->request_id) {
        free(orson_ai_prod_response->request_id);
        orson_ai_prod_response->request_id = NULL;
    }
    if (orson_ai_prod_response->response_raw) {
        free(orson_ai_prod_response->response_raw);
        orson_ai_prod_response->response_raw = NULL;
    }
    free(orson_ai_prod_response);
}

cJSON *orson_ai_prod_response_convertToJSON(orson_ai_prod_response_t *orson_ai_prod_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_ai_prod_response->request_id
    if(orson_ai_prod_response->request_id) {
    if(cJSON_AddStringToObject(item, "requestId", orson_ai_prod_response->request_id) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_prod_response->response_code
    if(orson_ai_prod_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", orson_ai_prod_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_prod_response->response_raw
    if(orson_ai_prod_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", orson_ai_prod_response->response_raw) == NULL) {
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

orson_ai_prod_response_t *orson_ai_prod_response_parseFromJSON(cJSON *orson_ai_prod_responseJSON){

    orson_ai_prod_response_t *orson_ai_prod_response_local_var = NULL;

    // orson_ai_prod_response->request_id
    cJSON *request_id = cJSON_GetObjectItemCaseSensitive(orson_ai_prod_responseJSON, "requestId");
    if (cJSON_IsNull(request_id)) {
        request_id = NULL;
    }
    if (request_id) { 
    if(!cJSON_IsString(request_id) && !cJSON_IsNull(request_id))
    {
    goto end; //String
    }
    }

    // orson_ai_prod_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(orson_ai_prod_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_prod_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(orson_ai_prod_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }


    orson_ai_prod_response_local_var = orson_ai_prod_response_create_internal (
        request_id && !cJSON_IsNull(request_id) ? strdup(request_id->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL
        );

    return orson_ai_prod_response_local_var;
end:
    return NULL;

}
