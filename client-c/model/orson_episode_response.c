#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_episode_response.h"



static orson_episode_response_t *orson_episode_response_create_internal(
    char *id,
    char *status,
    char *status_description,
    int response_code,
    char *response_raw,
    list_t *renders
    ) {
    orson_episode_response_t *orson_episode_response_local_var = malloc(sizeof(orson_episode_response_t));
    if (!orson_episode_response_local_var) {
        return NULL;
    }
    orson_episode_response_local_var->id = id;
    orson_episode_response_local_var->status = status;
    orson_episode_response_local_var->status_description = status_description;
    orson_episode_response_local_var->response_code = response_code;
    orson_episode_response_local_var->response_raw = response_raw;
    orson_episode_response_local_var->renders = renders;

    orson_episode_response_local_var->_library_owned = 1;
    return orson_episode_response_local_var;
}

__attribute__((deprecated)) orson_episode_response_t *orson_episode_response_create(
    char *id,
    char *status,
    char *status_description,
    int response_code,
    char *response_raw,
    list_t *renders
    ) {
    return orson_episode_response_create_internal (
        id,
        status,
        status_description,
        response_code,
        response_raw,
        renders
        );
}

void orson_episode_response_free(orson_episode_response_t *orson_episode_response) {
    if(NULL == orson_episode_response){
        return ;
    }
    if(orson_episode_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_episode_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_episode_response->id) {
        free(orson_episode_response->id);
        orson_episode_response->id = NULL;
    }
    if (orson_episode_response->status) {
        free(orson_episode_response->status);
        orson_episode_response->status = NULL;
    }
    if (orson_episode_response->status_description) {
        free(orson_episode_response->status_description);
        orson_episode_response->status_description = NULL;
    }
    if (orson_episode_response->response_raw) {
        free(orson_episode_response->response_raw);
        orson_episode_response->response_raw = NULL;
    }
    if (orson_episode_response->renders) {
        list_ForEach(listEntry, orson_episode_response->renders) {
            orson_render_response_free(listEntry->data);
        }
        list_freeList(orson_episode_response->renders);
        orson_episode_response->renders = NULL;
    }
    free(orson_episode_response);
}

cJSON *orson_episode_response_convertToJSON(orson_episode_response_t *orson_episode_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_episode_response->id
    if(orson_episode_response->id) {
    if(cJSON_AddStringToObject(item, "id", orson_episode_response->id) == NULL) {
    goto fail; //String
    }
    }


    // orson_episode_response->status
    if(orson_episode_response->status) {
    if(cJSON_AddStringToObject(item, "status", orson_episode_response->status) == NULL) {
    goto fail; //String
    }
    }


    // orson_episode_response->status_description
    if(orson_episode_response->status_description) {
    if(cJSON_AddStringToObject(item, "statusDescription", orson_episode_response->status_description) == NULL) {
    goto fail; //String
    }
    }


    // orson_episode_response->response_code
    if(orson_episode_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", orson_episode_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_episode_response->response_raw
    if(orson_episode_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", orson_episode_response->response_raw) == NULL) {
    goto fail; //String
    }
    }


    // orson_episode_response->renders
    if(orson_episode_response->renders) {
    cJSON *renders = cJSON_AddArrayToObject(item, "renders");
    if(renders == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *rendersListEntry;
    if (orson_episode_response->renders) {
    list_ForEach(rendersListEntry, orson_episode_response->renders) {
    cJSON *itemLocal = orson_render_response_convertToJSON(rendersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(renders, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

orson_episode_response_t *orson_episode_response_parseFromJSON(cJSON *orson_episode_responseJSON){

    orson_episode_response_t *orson_episode_response_local_var = NULL;

    // define the local list for orson_episode_response->renders
    list_t *rendersList = NULL;

    // orson_episode_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(orson_episode_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // orson_episode_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(orson_episode_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsString(status) && !cJSON_IsNull(status))
    {
    goto end; //String
    }
    }

    // orson_episode_response->status_description
    cJSON *status_description = cJSON_GetObjectItemCaseSensitive(orson_episode_responseJSON, "statusDescription");
    if (cJSON_IsNull(status_description)) {
        status_description = NULL;
    }
    if (status_description) { 
    if(!cJSON_IsString(status_description) && !cJSON_IsNull(status_description))
    {
    goto end; //String
    }
    }

    // orson_episode_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(orson_episode_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // orson_episode_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(orson_episode_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }

    // orson_episode_response->renders
    cJSON *renders = cJSON_GetObjectItemCaseSensitive(orson_episode_responseJSON, "renders");
    if (cJSON_IsNull(renders)) {
        renders = NULL;
    }
    if (renders) { 
    cJSON *renders_local_nonprimitive = NULL;
    if(!cJSON_IsArray(renders)){
        goto end; //nonprimitive container
    }

    rendersList = list_createList();

    cJSON_ArrayForEach(renders_local_nonprimitive,renders )
    {
        if(!cJSON_IsObject(renders_local_nonprimitive)){
            goto end;
        }
        orson_render_response_t *rendersItem = orson_render_response_parseFromJSON(renders_local_nonprimitive);

        list_addElement(rendersList, rendersItem);
    }
    }


    orson_episode_response_local_var = orson_episode_response_create_internal (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        status && !cJSON_IsNull(status) ? strdup(status->valuestring) : NULL,
        status_description && !cJSON_IsNull(status_description) ? strdup(status_description->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL,
        renders ? rendersList : NULL
        );

    return orson_episode_response_local_var;
end:
    if (rendersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, rendersList) {
            orson_render_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(rendersList);
        rendersList = NULL;
    }
    return NULL;

}
