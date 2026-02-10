#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account_mini_response.h"



static account_mini_response_t *account_mini_response_create_internal(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type
    ) {
    account_mini_response_t *account_mini_response_local_var = malloc(sizeof(account_mini_response_t));
    if (!account_mini_response_local_var) {
        return NULL;
    }
    account_mini_response_local_var->account_id = account_id;
    account_mini_response_local_var->location_display = location_display;
    account_mini_response_local_var->display = display;
    account_mini_response_local_var->username = username;
    account_mini_response_local_var->account_type = account_type;

    account_mini_response_local_var->_library_owned = 1;
    return account_mini_response_local_var;
}

__attribute__((deprecated)) account_mini_response_t *account_mini_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type
    ) {
    return account_mini_response_create_internal (
        account_id,
        location_display,
        display,
        username,
        account_type
        );
}

void account_mini_response_free(account_mini_response_t *account_mini_response) {
    if(NULL == account_mini_response){
        return ;
    }
    if(account_mini_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "account_mini_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (account_mini_response->location_display) {
        free(account_mini_response->location_display);
        account_mini_response->location_display = NULL;
    }
    if (account_mini_response->display) {
        free(account_mini_response->display);
        account_mini_response->display = NULL;
    }
    if (account_mini_response->username) {
        free(account_mini_response->username);
        account_mini_response->username = NULL;
    }
    if (account_mini_response->account_type) {
        free(account_mini_response->account_type);
        account_mini_response->account_type = NULL;
    }
    free(account_mini_response);
}

cJSON *account_mini_response_convertToJSON(account_mini_response_t *account_mini_response) {
    cJSON *item = cJSON_CreateObject();

    // account_mini_response->account_id
    if(account_mini_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", account_mini_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account_mini_response->location_display
    if(account_mini_response->location_display) {
    if(cJSON_AddStringToObject(item, "locationDisplay", account_mini_response->location_display) == NULL) {
    goto fail; //String
    }
    }


    // account_mini_response->display
    if(account_mini_response->display) {
    if(cJSON_AddStringToObject(item, "display", account_mini_response->display) == NULL) {
    goto fail; //String
    }
    }


    // account_mini_response->username
    if(account_mini_response->username) {
    if(cJSON_AddStringToObject(item, "username", account_mini_response->username) == NULL) {
    goto fail; //String
    }
    }


    // account_mini_response->account_type
    if(account_mini_response->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", account_mini_response->account_type) == NULL) {
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

account_mini_response_t *account_mini_response_parseFromJSON(cJSON *account_mini_responseJSON){

    account_mini_response_t *account_mini_response_local_var = NULL;

    // account_mini_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(account_mini_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // account_mini_response->location_display
    cJSON *location_display = cJSON_GetObjectItemCaseSensitive(account_mini_responseJSON, "locationDisplay");
    if (cJSON_IsNull(location_display)) {
        location_display = NULL;
    }
    if (location_display) { 
    if(!cJSON_IsString(location_display) && !cJSON_IsNull(location_display))
    {
    goto end; //String
    }
    }

    // account_mini_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(account_mini_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // account_mini_response->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(account_mini_responseJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // account_mini_response->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(account_mini_responseJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }


    account_mini_response_local_var = account_mini_response_create_internal (
        account_id ? account_id->valuedouble : 0,
        location_display && !cJSON_IsNull(location_display) ? strdup(location_display->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL
        );

    return account_mini_response_local_var;
end:
    return NULL;

}
