#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "message_response.h"



static message_response_t *message_response_create_internal(
    char *message,
    int code,
    char *ids,
    char *update_value
    ) {
    message_response_t *message_response_local_var = malloc(sizeof(message_response_t));
    if (!message_response_local_var) {
        return NULL;
    }
    message_response_local_var->message = message;
    message_response_local_var->code = code;
    message_response_local_var->ids = ids;
    message_response_local_var->update_value = update_value;

    message_response_local_var->_library_owned = 1;
    return message_response_local_var;
}

__attribute__((deprecated)) message_response_t *message_response_create(
    char *message,
    int code,
    char *ids,
    char *update_value
    ) {
    return message_response_create_internal (
        message,
        code,
        ids,
        update_value
        );
}

void message_response_free(message_response_t *message_response) {
    if(NULL == message_response){
        return ;
    }
    if(message_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "message_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (message_response->message) {
        free(message_response->message);
        message_response->message = NULL;
    }
    if (message_response->ids) {
        free(message_response->ids);
        message_response->ids = NULL;
    }
    if (message_response->update_value) {
        free(message_response->update_value);
        message_response->update_value = NULL;
    }
    free(message_response);
}

cJSON *message_response_convertToJSON(message_response_t *message_response) {
    cJSON *item = cJSON_CreateObject();

    // message_response->message
    if(message_response->message) {
    if(cJSON_AddStringToObject(item, "message", message_response->message) == NULL) {
    goto fail; //String
    }
    }


    // message_response->code
    if(message_response->code) {
    if(cJSON_AddNumberToObject(item, "code", message_response->code) == NULL) {
    goto fail; //Numeric
    }
    }


    // message_response->ids
    if(message_response->ids) {
    if(cJSON_AddStringToObject(item, "ids", message_response->ids) == NULL) {
    goto fail; //String
    }
    }


    // message_response->update_value
    if(message_response->update_value) {
    if(cJSON_AddStringToObject(item, "updateValue", message_response->update_value) == NULL) {
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

message_response_t *message_response_parseFromJSON(cJSON *message_responseJSON){

    message_response_t *message_response_local_var = NULL;

    // message_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(message_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // message_response->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(message_responseJSON, "code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    if(!cJSON_IsNumber(code))
    {
    goto end; //Numeric
    }
    }

    // message_response->ids
    cJSON *ids = cJSON_GetObjectItemCaseSensitive(message_responseJSON, "ids");
    if (cJSON_IsNull(ids)) {
        ids = NULL;
    }
    if (ids) { 
    if(!cJSON_IsString(ids) && !cJSON_IsNull(ids))
    {
    goto end; //String
    }
    }

    // message_response->update_value
    cJSON *update_value = cJSON_GetObjectItemCaseSensitive(message_responseJSON, "updateValue");
    if (cJSON_IsNull(update_value)) {
        update_value = NULL;
    }
    if (update_value) { 
    if(!cJSON_IsString(update_value) && !cJSON_IsNull(update_value))
    {
    goto end; //String
    }
    }


    message_response_local_var = message_response_create_internal (
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        code ? code->valuedouble : 0,
        ids && !cJSON_IsNull(ids) ? strdup(ids->valuestring) : NULL,
        update_value && !cJSON_IsNull(update_value) ? strdup(update_value->valuestring) : NULL
        );

    return message_response_local_var;
end:
    return NULL;

}
