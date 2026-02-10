#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_render_response.h"



static orson_render_response_t *orson_render_response_create_internal(
    char *id,
    char *third_party_account_id,
    char *status,
    char *status_description,
    char *completed_on,
    int response_code,
    char *response_raw,
    orson_video_response_t *video
    ) {
    orson_render_response_t *orson_render_response_local_var = malloc(sizeof(orson_render_response_t));
    if (!orson_render_response_local_var) {
        return NULL;
    }
    orson_render_response_local_var->id = id;
    orson_render_response_local_var->third_party_account_id = third_party_account_id;
    orson_render_response_local_var->status = status;
    orson_render_response_local_var->status_description = status_description;
    orson_render_response_local_var->completed_on = completed_on;
    orson_render_response_local_var->response_code = response_code;
    orson_render_response_local_var->response_raw = response_raw;
    orson_render_response_local_var->video = video;

    orson_render_response_local_var->_library_owned = 1;
    return orson_render_response_local_var;
}

__attribute__((deprecated)) orson_render_response_t *orson_render_response_create(
    char *id,
    char *third_party_account_id,
    char *status,
    char *status_description,
    char *completed_on,
    int response_code,
    char *response_raw,
    orson_video_response_t *video
    ) {
    return orson_render_response_create_internal (
        id,
        third_party_account_id,
        status,
        status_description,
        completed_on,
        response_code,
        response_raw,
        video
        );
}

void orson_render_response_free(orson_render_response_t *orson_render_response) {
    if(NULL == orson_render_response){
        return ;
    }
    if(orson_render_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_render_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_render_response->id) {
        free(orson_render_response->id);
        orson_render_response->id = NULL;
    }
    if (orson_render_response->third_party_account_id) {
        free(orson_render_response->third_party_account_id);
        orson_render_response->third_party_account_id = NULL;
    }
    if (orson_render_response->status) {
        free(orson_render_response->status);
        orson_render_response->status = NULL;
    }
    if (orson_render_response->status_description) {
        free(orson_render_response->status_description);
        orson_render_response->status_description = NULL;
    }
    if (orson_render_response->completed_on) {
        free(orson_render_response->completed_on);
        orson_render_response->completed_on = NULL;
    }
    if (orson_render_response->response_raw) {
        free(orson_render_response->response_raw);
        orson_render_response->response_raw = NULL;
    }
    if (orson_render_response->video) {
        orson_video_response_free(orson_render_response->video);
        orson_render_response->video = NULL;
    }
    free(orson_render_response);
}

cJSON *orson_render_response_convertToJSON(orson_render_response_t *orson_render_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_render_response->id
    if(orson_render_response->id) {
    if(cJSON_AddStringToObject(item, "id", orson_render_response->id) == NULL) {
    goto fail; //String
    }
    }


    // orson_render_response->third_party_account_id
    if(orson_render_response->third_party_account_id) {
    if(cJSON_AddStringToObject(item, "thirdPartyAccountId", orson_render_response->third_party_account_id) == NULL) {
    goto fail; //String
    }
    }


    // orson_render_response->status
    if(orson_render_response->status) {
    if(cJSON_AddStringToObject(item, "status", orson_render_response->status) == NULL) {
    goto fail; //String
    }
    }


    // orson_render_response->status_description
    if(orson_render_response->status_description) {
    if(cJSON_AddStringToObject(item, "statusDescription", orson_render_response->status_description) == NULL) {
    goto fail; //String
    }
    }


    // orson_render_response->completed_on
    if(orson_render_response->completed_on) {
    if(cJSON_AddStringToObject(item, "completedOn", orson_render_response->completed_on) == NULL) {
    goto fail; //String
    }
    }


    // orson_render_response->response_code
    if(orson_render_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", orson_render_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_render_response->response_raw
    if(orson_render_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", orson_render_response->response_raw) == NULL) {
    goto fail; //String
    }
    }


    // orson_render_response->video
    if(orson_render_response->video) {
    cJSON *video_local_JSON = orson_video_response_convertToJSON(orson_render_response->video);
    if(video_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "video", video_local_JSON);
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

orson_render_response_t *orson_render_response_parseFromJSON(cJSON *orson_render_responseJSON){

    orson_render_response_t *orson_render_response_local_var = NULL;

    // define the local variable for orson_render_response->video
    orson_video_response_t *video_local_nonprim = NULL;

    // orson_render_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // orson_render_response->third_party_account_id
    cJSON *third_party_account_id = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "thirdPartyAccountId");
    if (cJSON_IsNull(third_party_account_id)) {
        third_party_account_id = NULL;
    }
    if (third_party_account_id) { 
    if(!cJSON_IsString(third_party_account_id) && !cJSON_IsNull(third_party_account_id))
    {
    goto end; //String
    }
    }

    // orson_render_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsString(status) && !cJSON_IsNull(status))
    {
    goto end; //String
    }
    }

    // orson_render_response->status_description
    cJSON *status_description = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "statusDescription");
    if (cJSON_IsNull(status_description)) {
        status_description = NULL;
    }
    if (status_description) { 
    if(!cJSON_IsString(status_description) && !cJSON_IsNull(status_description))
    {
    goto end; //String
    }
    }

    // orson_render_response->completed_on
    cJSON *completed_on = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "completedOn");
    if (cJSON_IsNull(completed_on)) {
        completed_on = NULL;
    }
    if (completed_on) { 
    if(!cJSON_IsString(completed_on) && !cJSON_IsNull(completed_on))
    {
    goto end; //String
    }
    }

    // orson_render_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // orson_render_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }

    // orson_render_response->video
    cJSON *video = cJSON_GetObjectItemCaseSensitive(orson_render_responseJSON, "video");
    if (cJSON_IsNull(video)) {
        video = NULL;
    }
    if (video) { 
    video_local_nonprim = orson_video_response_parseFromJSON(video); //nonprimitive
    }


    orson_render_response_local_var = orson_render_response_create_internal (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        third_party_account_id && !cJSON_IsNull(third_party_account_id) ? strdup(third_party_account_id->valuestring) : NULL,
        status && !cJSON_IsNull(status) ? strdup(status->valuestring) : NULL,
        status_description && !cJSON_IsNull(status_description) ? strdup(status_description->valuestring) : NULL,
        completed_on && !cJSON_IsNull(completed_on) ? strdup(completed_on->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL,
        video ? video_local_nonprim : NULL
        );

    return orson_render_response_local_var;
end:
    if (video_local_nonprim) {
        orson_video_response_free(video_local_nonprim);
        video_local_nonprim = NULL;
    }
    return NULL;

}
