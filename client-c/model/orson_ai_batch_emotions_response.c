#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_ai_batch_emotions_response.h"



static orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response_create_internal(
    char *request_id,
    int response_code,
    char *response_raw,
    char *status,
    char *error,
    orson_ai_emotions_response_t *result
    ) {
    orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response_local_var = malloc(sizeof(orson_ai_batch_emotions_response_t));
    if (!orson_ai_batch_emotions_response_local_var) {
        return NULL;
    }
    orson_ai_batch_emotions_response_local_var->request_id = request_id;
    orson_ai_batch_emotions_response_local_var->response_code = response_code;
    orson_ai_batch_emotions_response_local_var->response_raw = response_raw;
    orson_ai_batch_emotions_response_local_var->status = status;
    orson_ai_batch_emotions_response_local_var->error = error;
    orson_ai_batch_emotions_response_local_var->result = result;

    orson_ai_batch_emotions_response_local_var->_library_owned = 1;
    return orson_ai_batch_emotions_response_local_var;
}

__attribute__((deprecated)) orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response_create(
    char *request_id,
    int response_code,
    char *response_raw,
    char *status,
    char *error,
    orson_ai_emotions_response_t *result
    ) {
    return orson_ai_batch_emotions_response_create_internal (
        request_id,
        response_code,
        response_raw,
        status,
        error,
        result
        );
}

void orson_ai_batch_emotions_response_free(orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response) {
    if(NULL == orson_ai_batch_emotions_response){
        return ;
    }
    if(orson_ai_batch_emotions_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_ai_batch_emotions_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_ai_batch_emotions_response->request_id) {
        free(orson_ai_batch_emotions_response->request_id);
        orson_ai_batch_emotions_response->request_id = NULL;
    }
    if (orson_ai_batch_emotions_response->response_raw) {
        free(orson_ai_batch_emotions_response->response_raw);
        orson_ai_batch_emotions_response->response_raw = NULL;
    }
    if (orson_ai_batch_emotions_response->status) {
        free(orson_ai_batch_emotions_response->status);
        orson_ai_batch_emotions_response->status = NULL;
    }
    if (orson_ai_batch_emotions_response->error) {
        free(orson_ai_batch_emotions_response->error);
        orson_ai_batch_emotions_response->error = NULL;
    }
    if (orson_ai_batch_emotions_response->result) {
        orson_ai_emotions_response_free(orson_ai_batch_emotions_response->result);
        orson_ai_batch_emotions_response->result = NULL;
    }
    free(orson_ai_batch_emotions_response);
}

cJSON *orson_ai_batch_emotions_response_convertToJSON(orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_ai_batch_emotions_response->request_id
    if(orson_ai_batch_emotions_response->request_id) {
    if(cJSON_AddStringToObject(item, "requestId", orson_ai_batch_emotions_response->request_id) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_batch_emotions_response->response_code
    if(orson_ai_batch_emotions_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", orson_ai_batch_emotions_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_batch_emotions_response->response_raw
    if(orson_ai_batch_emotions_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", orson_ai_batch_emotions_response->response_raw) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_batch_emotions_response->status
    if(orson_ai_batch_emotions_response->status) {
    if(cJSON_AddStringToObject(item, "status", orson_ai_batch_emotions_response->status) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_batch_emotions_response->error
    if(orson_ai_batch_emotions_response->error) {
    if(cJSON_AddStringToObject(item, "error", orson_ai_batch_emotions_response->error) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_batch_emotions_response->result
    if(orson_ai_batch_emotions_response->result) {
    cJSON *result_local_JSON = orson_ai_emotions_response_convertToJSON(orson_ai_batch_emotions_response->result);
    if(result_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "result", result_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response_parseFromJSON(cJSON *orson_ai_batch_emotions_responseJSON){

    orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response_local_var = NULL;

    // define the local variable for orson_ai_batch_emotions_response->result
    orson_ai_emotions_response_t *result_local_nonprim = NULL;

    // orson_ai_batch_emotions_response->request_id
    cJSON *request_id = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_emotions_responseJSON, "requestId");
    if (cJSON_IsNull(request_id)) {
        request_id = NULL;
    }
    if (request_id) { 
    if(!cJSON_IsString(request_id) && !cJSON_IsNull(request_id))
    {
    goto end; //String
    }
    }

    // orson_ai_batch_emotions_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_emotions_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_batch_emotions_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_emotions_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }

    // orson_ai_batch_emotions_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_emotions_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsString(status) && !cJSON_IsNull(status))
    {
    goto end; //String
    }
    }

    // orson_ai_batch_emotions_response->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_emotions_responseJSON, "error");
    if (cJSON_IsNull(error)) {
        error = NULL;
    }
    if (error) { 
    if(!cJSON_IsString(error) && !cJSON_IsNull(error))
    {
    goto end; //String
    }
    }

    // orson_ai_batch_emotions_response->result
    cJSON *result = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_emotions_responseJSON, "result");
    if (cJSON_IsNull(result)) {
        result = NULL;
    }
    if (result) { 
    result_local_nonprim = orson_ai_emotions_response_parseFromJSON(result); //nonprimitive
    }


    orson_ai_batch_emotions_response_local_var = orson_ai_batch_emotions_response_create_internal (
        request_id && !cJSON_IsNull(request_id) ? strdup(request_id->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL,
        status && !cJSON_IsNull(status) ? strdup(status->valuestring) : NULL,
        error && !cJSON_IsNull(error) ? strdup(error->valuestring) : NULL,
        result ? result_local_nonprim : NULL
        );

    return orson_ai_batch_emotions_response_local_var;
end:
    if (result_local_nonprim) {
        orson_ai_emotions_response_free(result_local_nonprim);
        result_local_nonprim = NULL;
    }
    return NULL;

}
