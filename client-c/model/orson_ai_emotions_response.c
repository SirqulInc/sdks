#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_ai_emotions_response.h"



static orson_ai_emotions_response_t *orson_ai_emotions_response_create_internal(
    char *request_id,
    int response_code,
    char *response_raw,
    char *status,
    char *error,
    list_t *audio_emotions,
    list_t *visual_emotions
    ) {
    orson_ai_emotions_response_t *orson_ai_emotions_response_local_var = malloc(sizeof(orson_ai_emotions_response_t));
    if (!orson_ai_emotions_response_local_var) {
        return NULL;
    }
    orson_ai_emotions_response_local_var->request_id = request_id;
    orson_ai_emotions_response_local_var->response_code = response_code;
    orson_ai_emotions_response_local_var->response_raw = response_raw;
    orson_ai_emotions_response_local_var->status = status;
    orson_ai_emotions_response_local_var->error = error;
    orson_ai_emotions_response_local_var->audio_emotions = audio_emotions;
    orson_ai_emotions_response_local_var->visual_emotions = visual_emotions;

    orson_ai_emotions_response_local_var->_library_owned = 1;
    return orson_ai_emotions_response_local_var;
}

__attribute__((deprecated)) orson_ai_emotions_response_t *orson_ai_emotions_response_create(
    char *request_id,
    int response_code,
    char *response_raw,
    char *status,
    char *error,
    list_t *audio_emotions,
    list_t *visual_emotions
    ) {
    return orson_ai_emotions_response_create_internal (
        request_id,
        response_code,
        response_raw,
        status,
        error,
        audio_emotions,
        visual_emotions
        );
}

void orson_ai_emotions_response_free(orson_ai_emotions_response_t *orson_ai_emotions_response) {
    if(NULL == orson_ai_emotions_response){
        return ;
    }
    if(orson_ai_emotions_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_ai_emotions_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_ai_emotions_response->request_id) {
        free(orson_ai_emotions_response->request_id);
        orson_ai_emotions_response->request_id = NULL;
    }
    if (orson_ai_emotions_response->response_raw) {
        free(orson_ai_emotions_response->response_raw);
        orson_ai_emotions_response->response_raw = NULL;
    }
    if (orson_ai_emotions_response->status) {
        free(orson_ai_emotions_response->status);
        orson_ai_emotions_response->status = NULL;
    }
    if (orson_ai_emotions_response->error) {
        free(orson_ai_emotions_response->error);
        orson_ai_emotions_response->error = NULL;
    }
    if (orson_ai_emotions_response->audio_emotions) {
        list_ForEach(listEntry, orson_ai_emotions_response->audio_emotions) {
            free(listEntry->data);
        }
        list_freeList(orson_ai_emotions_response->audio_emotions);
        orson_ai_emotions_response->audio_emotions = NULL;
    }
    if (orson_ai_emotions_response->visual_emotions) {
        list_ForEach(listEntry, orson_ai_emotions_response->visual_emotions) {
            orson_ai_visual_emotion_response_free(listEntry->data);
        }
        list_freeList(orson_ai_emotions_response->visual_emotions);
        orson_ai_emotions_response->visual_emotions = NULL;
    }
    free(orson_ai_emotions_response);
}

cJSON *orson_ai_emotions_response_convertToJSON(orson_ai_emotions_response_t *orson_ai_emotions_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_ai_emotions_response->request_id
    if(orson_ai_emotions_response->request_id) {
    if(cJSON_AddStringToObject(item, "requestId", orson_ai_emotions_response->request_id) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_emotions_response->response_code
    if(orson_ai_emotions_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", orson_ai_emotions_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_emotions_response->response_raw
    if(orson_ai_emotions_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", orson_ai_emotions_response->response_raw) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_emotions_response->status
    if(orson_ai_emotions_response->status) {
    if(cJSON_AddStringToObject(item, "status", orson_ai_emotions_response->status) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_emotions_response->error
    if(orson_ai_emotions_response->error) {
    if(cJSON_AddStringToObject(item, "error", orson_ai_emotions_response->error) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_emotions_response->audio_emotions
    if(orson_ai_emotions_response->audio_emotions) {
    cJSON *audio_emotions = cJSON_AddArrayToObject(item, "audioEmotions");
    if(audio_emotions == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *audio_emotionsListEntry;
    list_ForEach(audio_emotionsListEntry, orson_ai_emotions_response->audio_emotions) {
    if(cJSON_AddStringToObject(audio_emotions, "", audio_emotionsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // orson_ai_emotions_response->visual_emotions
    if(orson_ai_emotions_response->visual_emotions) {
    cJSON *visual_emotions = cJSON_AddArrayToObject(item, "visualEmotions");
    if(visual_emotions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *visual_emotionsListEntry;
    if (orson_ai_emotions_response->visual_emotions) {
    list_ForEach(visual_emotionsListEntry, orson_ai_emotions_response->visual_emotions) {
    cJSON *itemLocal = orson_ai_visual_emotion_response_convertToJSON(visual_emotionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(visual_emotions, itemLocal);
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

orson_ai_emotions_response_t *orson_ai_emotions_response_parseFromJSON(cJSON *orson_ai_emotions_responseJSON){

    orson_ai_emotions_response_t *orson_ai_emotions_response_local_var = NULL;

    // define the local list for orson_ai_emotions_response->audio_emotions
    list_t *audio_emotionsList = NULL;

    // define the local list for orson_ai_emotions_response->visual_emotions
    list_t *visual_emotionsList = NULL;

    // orson_ai_emotions_response->request_id
    cJSON *request_id = cJSON_GetObjectItemCaseSensitive(orson_ai_emotions_responseJSON, "requestId");
    if (cJSON_IsNull(request_id)) {
        request_id = NULL;
    }
    if (request_id) { 
    if(!cJSON_IsString(request_id) && !cJSON_IsNull(request_id))
    {
    goto end; //String
    }
    }

    // orson_ai_emotions_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(orson_ai_emotions_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_emotions_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(orson_ai_emotions_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }

    // orson_ai_emotions_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(orson_ai_emotions_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    if (status) { 
    if(!cJSON_IsString(status) && !cJSON_IsNull(status))
    {
    goto end; //String
    }
    }

    // orson_ai_emotions_response->error
    cJSON *error = cJSON_GetObjectItemCaseSensitive(orson_ai_emotions_responseJSON, "error");
    if (cJSON_IsNull(error)) {
        error = NULL;
    }
    if (error) { 
    if(!cJSON_IsString(error) && !cJSON_IsNull(error))
    {
    goto end; //String
    }
    }

    // orson_ai_emotions_response->audio_emotions
    cJSON *audio_emotions = cJSON_GetObjectItemCaseSensitive(orson_ai_emotions_responseJSON, "audioEmotions");
    if (cJSON_IsNull(audio_emotions)) {
        audio_emotions = NULL;
    }
    if (audio_emotions) { 
    cJSON *audio_emotions_local = NULL;
    if(!cJSON_IsArray(audio_emotions)) {
        goto end;//primitive container
    }
    audio_emotionsList = list_createList();

    cJSON_ArrayForEach(audio_emotions_local, audio_emotions)
    {
        if(!cJSON_IsString(audio_emotions_local))
        {
            goto end;
        }
        list_addElement(audio_emotionsList , strdup(audio_emotions_local->valuestring));
    }
    }

    // orson_ai_emotions_response->visual_emotions
    cJSON *visual_emotions = cJSON_GetObjectItemCaseSensitive(orson_ai_emotions_responseJSON, "visualEmotions");
    if (cJSON_IsNull(visual_emotions)) {
        visual_emotions = NULL;
    }
    if (visual_emotions) { 
    cJSON *visual_emotions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(visual_emotions)){
        goto end; //nonprimitive container
    }

    visual_emotionsList = list_createList();

    cJSON_ArrayForEach(visual_emotions_local_nonprimitive,visual_emotions )
    {
        if(!cJSON_IsObject(visual_emotions_local_nonprimitive)){
            goto end;
        }
        orson_ai_visual_emotion_response_t *visual_emotionsItem = orson_ai_visual_emotion_response_parseFromJSON(visual_emotions_local_nonprimitive);

        list_addElement(visual_emotionsList, visual_emotionsItem);
    }
    }


    orson_ai_emotions_response_local_var = orson_ai_emotions_response_create_internal (
        request_id && !cJSON_IsNull(request_id) ? strdup(request_id->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL,
        status && !cJSON_IsNull(status) ? strdup(status->valuestring) : NULL,
        error && !cJSON_IsNull(error) ? strdup(error->valuestring) : NULL,
        audio_emotions ? audio_emotionsList : NULL,
        visual_emotions ? visual_emotionsList : NULL
        );

    return orson_ai_emotions_response_local_var;
end:
    if (audio_emotionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, audio_emotionsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(audio_emotionsList);
        audio_emotionsList = NULL;
    }
    if (visual_emotionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, visual_emotionsList) {
            orson_ai_visual_emotion_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(visual_emotionsList);
        visual_emotionsList = NULL;
    }
    return NULL;

}
