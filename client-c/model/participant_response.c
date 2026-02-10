#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "participant_response.h"



static participant_response_t *participant_response_create_internal(
    long id,
    account_mini_response_t *account,
    long available_start,
    long available_end,
    char *color1,
    char *color2,
    char *type
    ) {
    participant_response_t *participant_response_local_var = malloc(sizeof(participant_response_t));
    if (!participant_response_local_var) {
        return NULL;
    }
    participant_response_local_var->id = id;
    participant_response_local_var->account = account;
    participant_response_local_var->available_start = available_start;
    participant_response_local_var->available_end = available_end;
    participant_response_local_var->color1 = color1;
    participant_response_local_var->color2 = color2;
    participant_response_local_var->type = type;

    participant_response_local_var->_library_owned = 1;
    return participant_response_local_var;
}

__attribute__((deprecated)) participant_response_t *participant_response_create(
    long id,
    account_mini_response_t *account,
    long available_start,
    long available_end,
    char *color1,
    char *color2,
    char *type
    ) {
    return participant_response_create_internal (
        id,
        account,
        available_start,
        available_end,
        color1,
        color2,
        type
        );
}

void participant_response_free(participant_response_t *participant_response) {
    if(NULL == participant_response){
        return ;
    }
    if(participant_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "participant_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (participant_response->account) {
        account_mini_response_free(participant_response->account);
        participant_response->account = NULL;
    }
    if (participant_response->color1) {
        free(participant_response->color1);
        participant_response->color1 = NULL;
    }
    if (participant_response->color2) {
        free(participant_response->color2);
        participant_response->color2 = NULL;
    }
    if (participant_response->type) {
        free(participant_response->type);
        participant_response->type = NULL;
    }
    free(participant_response);
}

cJSON *participant_response_convertToJSON(participant_response_t *participant_response) {
    cJSON *item = cJSON_CreateObject();

    // participant_response->id
    if(participant_response->id) {
    if(cJSON_AddNumberToObject(item, "id", participant_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // participant_response->account
    if(participant_response->account) {
    cJSON *account_local_JSON = account_mini_response_convertToJSON(participant_response->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // participant_response->available_start
    if(participant_response->available_start) {
    if(cJSON_AddNumberToObject(item, "availableStart", participant_response->available_start) == NULL) {
    goto fail; //Numeric
    }
    }


    // participant_response->available_end
    if(participant_response->available_end) {
    if(cJSON_AddNumberToObject(item, "availableEnd", participant_response->available_end) == NULL) {
    goto fail; //Numeric
    }
    }


    // participant_response->color1
    if(participant_response->color1) {
    if(cJSON_AddStringToObject(item, "color1", participant_response->color1) == NULL) {
    goto fail; //String
    }
    }


    // participant_response->color2
    if(participant_response->color2) {
    if(cJSON_AddStringToObject(item, "color2", participant_response->color2) == NULL) {
    goto fail; //String
    }
    }


    // participant_response->type
    if(participant_response->type) {
    if(cJSON_AddStringToObject(item, "type", participant_response->type) == NULL) {
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

participant_response_t *participant_response_parseFromJSON(cJSON *participant_responseJSON){

    participant_response_t *participant_response_local_var = NULL;

    // define the local variable for participant_response->account
    account_mini_response_t *account_local_nonprim = NULL;

    // participant_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(participant_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // participant_response->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(participant_responseJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_mini_response_parseFromJSON(account); //nonprimitive
    }

    // participant_response->available_start
    cJSON *available_start = cJSON_GetObjectItemCaseSensitive(participant_responseJSON, "availableStart");
    if (cJSON_IsNull(available_start)) {
        available_start = NULL;
    }
    if (available_start) { 
    if(!cJSON_IsNumber(available_start))
    {
    goto end; //Numeric
    }
    }

    // participant_response->available_end
    cJSON *available_end = cJSON_GetObjectItemCaseSensitive(participant_responseJSON, "availableEnd");
    if (cJSON_IsNull(available_end)) {
        available_end = NULL;
    }
    if (available_end) { 
    if(!cJSON_IsNumber(available_end))
    {
    goto end; //Numeric
    }
    }

    // participant_response->color1
    cJSON *color1 = cJSON_GetObjectItemCaseSensitive(participant_responseJSON, "color1");
    if (cJSON_IsNull(color1)) {
        color1 = NULL;
    }
    if (color1) { 
    if(!cJSON_IsString(color1) && !cJSON_IsNull(color1))
    {
    goto end; //String
    }
    }

    // participant_response->color2
    cJSON *color2 = cJSON_GetObjectItemCaseSensitive(participant_responseJSON, "color2");
    if (cJSON_IsNull(color2)) {
        color2 = NULL;
    }
    if (color2) { 
    if(!cJSON_IsString(color2) && !cJSON_IsNull(color2))
    {
    goto end; //String
    }
    }

    // participant_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(participant_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    participant_response_local_var = participant_response_create_internal (
        id ? id->valuedouble : 0,
        account ? account_local_nonprim : NULL,
        available_start ? available_start->valuedouble : 0,
        available_end ? available_end->valuedouble : 0,
        color1 && !cJSON_IsNull(color1) ? strdup(color1->valuestring) : NULL,
        color2 && !cJSON_IsNull(color2) ? strdup(color2->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return participant_response_local_var;
end:
    if (account_local_nonprim) {
        account_mini_response_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    return NULL;

}
