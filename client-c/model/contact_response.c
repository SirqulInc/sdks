#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "contact_response.h"



static contact_response_t *contact_response_create_internal(
    char *first_name,
    char *middle_name,
    char *last_name,
    char *prefix,
    char *suffix,
    char *title,
    contact_info_response_t *contact_info
    ) {
    contact_response_t *contact_response_local_var = malloc(sizeof(contact_response_t));
    if (!contact_response_local_var) {
        return NULL;
    }
    contact_response_local_var->first_name = first_name;
    contact_response_local_var->middle_name = middle_name;
    contact_response_local_var->last_name = last_name;
    contact_response_local_var->prefix = prefix;
    contact_response_local_var->suffix = suffix;
    contact_response_local_var->title = title;
    contact_response_local_var->contact_info = contact_info;

    contact_response_local_var->_library_owned = 1;
    return contact_response_local_var;
}

__attribute__((deprecated)) contact_response_t *contact_response_create(
    char *first_name,
    char *middle_name,
    char *last_name,
    char *prefix,
    char *suffix,
    char *title,
    contact_info_response_t *contact_info
    ) {
    return contact_response_create_internal (
        first_name,
        middle_name,
        last_name,
        prefix,
        suffix,
        title,
        contact_info
        );
}

void contact_response_free(contact_response_t *contact_response) {
    if(NULL == contact_response){
        return ;
    }
    if(contact_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "contact_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (contact_response->first_name) {
        free(contact_response->first_name);
        contact_response->first_name = NULL;
    }
    if (contact_response->middle_name) {
        free(contact_response->middle_name);
        contact_response->middle_name = NULL;
    }
    if (contact_response->last_name) {
        free(contact_response->last_name);
        contact_response->last_name = NULL;
    }
    if (contact_response->prefix) {
        free(contact_response->prefix);
        contact_response->prefix = NULL;
    }
    if (contact_response->suffix) {
        free(contact_response->suffix);
        contact_response->suffix = NULL;
    }
    if (contact_response->title) {
        free(contact_response->title);
        contact_response->title = NULL;
    }
    if (contact_response->contact_info) {
        contact_info_response_free(contact_response->contact_info);
        contact_response->contact_info = NULL;
    }
    free(contact_response);
}

cJSON *contact_response_convertToJSON(contact_response_t *contact_response) {
    cJSON *item = cJSON_CreateObject();

    // contact_response->first_name
    if(contact_response->first_name) {
    if(cJSON_AddStringToObject(item, "firstName", contact_response->first_name) == NULL) {
    goto fail; //String
    }
    }


    // contact_response->middle_name
    if(contact_response->middle_name) {
    if(cJSON_AddStringToObject(item, "middleName", contact_response->middle_name) == NULL) {
    goto fail; //String
    }
    }


    // contact_response->last_name
    if(contact_response->last_name) {
    if(cJSON_AddStringToObject(item, "lastName", contact_response->last_name) == NULL) {
    goto fail; //String
    }
    }


    // contact_response->prefix
    if(contact_response->prefix) {
    if(cJSON_AddStringToObject(item, "prefix", contact_response->prefix) == NULL) {
    goto fail; //String
    }
    }


    // contact_response->suffix
    if(contact_response->suffix) {
    if(cJSON_AddStringToObject(item, "suffix", contact_response->suffix) == NULL) {
    goto fail; //String
    }
    }


    // contact_response->title
    if(contact_response->title) {
    if(cJSON_AddStringToObject(item, "title", contact_response->title) == NULL) {
    goto fail; //String
    }
    }


    // contact_response->contact_info
    if(contact_response->contact_info) {
    cJSON *contact_info_local_JSON = contact_info_response_convertToJSON(contact_response->contact_info);
    if(contact_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contactInfo", contact_info_local_JSON);
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

contact_response_t *contact_response_parseFromJSON(cJSON *contact_responseJSON){

    contact_response_t *contact_response_local_var = NULL;

    // define the local variable for contact_response->contact_info
    contact_info_response_t *contact_info_local_nonprim = NULL;

    // contact_response->first_name
    cJSON *first_name = cJSON_GetObjectItemCaseSensitive(contact_responseJSON, "firstName");
    if (cJSON_IsNull(first_name)) {
        first_name = NULL;
    }
    if (first_name) { 
    if(!cJSON_IsString(first_name) && !cJSON_IsNull(first_name))
    {
    goto end; //String
    }
    }

    // contact_response->middle_name
    cJSON *middle_name = cJSON_GetObjectItemCaseSensitive(contact_responseJSON, "middleName");
    if (cJSON_IsNull(middle_name)) {
        middle_name = NULL;
    }
    if (middle_name) { 
    if(!cJSON_IsString(middle_name) && !cJSON_IsNull(middle_name))
    {
    goto end; //String
    }
    }

    // contact_response->last_name
    cJSON *last_name = cJSON_GetObjectItemCaseSensitive(contact_responseJSON, "lastName");
    if (cJSON_IsNull(last_name)) {
        last_name = NULL;
    }
    if (last_name) { 
    if(!cJSON_IsString(last_name) && !cJSON_IsNull(last_name))
    {
    goto end; //String
    }
    }

    // contact_response->prefix
    cJSON *prefix = cJSON_GetObjectItemCaseSensitive(contact_responseJSON, "prefix");
    if (cJSON_IsNull(prefix)) {
        prefix = NULL;
    }
    if (prefix) { 
    if(!cJSON_IsString(prefix) && !cJSON_IsNull(prefix))
    {
    goto end; //String
    }
    }

    // contact_response->suffix
    cJSON *suffix = cJSON_GetObjectItemCaseSensitive(contact_responseJSON, "suffix");
    if (cJSON_IsNull(suffix)) {
        suffix = NULL;
    }
    if (suffix) { 
    if(!cJSON_IsString(suffix) && !cJSON_IsNull(suffix))
    {
    goto end; //String
    }
    }

    // contact_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(contact_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // contact_response->contact_info
    cJSON *contact_info = cJSON_GetObjectItemCaseSensitive(contact_responseJSON, "contactInfo");
    if (cJSON_IsNull(contact_info)) {
        contact_info = NULL;
    }
    if (contact_info) { 
    contact_info_local_nonprim = contact_info_response_parseFromJSON(contact_info); //nonprimitive
    }


    contact_response_local_var = contact_response_create_internal (
        first_name && !cJSON_IsNull(first_name) ? strdup(first_name->valuestring) : NULL,
        middle_name && !cJSON_IsNull(middle_name) ? strdup(middle_name->valuestring) : NULL,
        last_name && !cJSON_IsNull(last_name) ? strdup(last_name->valuestring) : NULL,
        prefix && !cJSON_IsNull(prefix) ? strdup(prefix->valuestring) : NULL,
        suffix && !cJSON_IsNull(suffix) ? strdup(suffix->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        contact_info ? contact_info_local_nonprim : NULL
        );

    return contact_response_local_var;
end:
    if (contact_info_local_nonprim) {
        contact_info_response_free(contact_info_local_nonprim);
        contact_info_local_nonprim = NULL;
    }
    return NULL;

}
