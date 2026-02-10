#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_ai_batch_response.h"



static orson_ai_batch_response_t *orson_ai_batch_response_create_internal(
    char *request_id,
    int response_code,
    char *response_raw,
    orson_ai_batch_transcript_response_t *transcript,
    orson_ai_batch_topics_response_t *topics,
    orson_ai_batch_emotions_response_t *emotions
    ) {
    orson_ai_batch_response_t *orson_ai_batch_response_local_var = malloc(sizeof(orson_ai_batch_response_t));
    if (!orson_ai_batch_response_local_var) {
        return NULL;
    }
    orson_ai_batch_response_local_var->request_id = request_id;
    orson_ai_batch_response_local_var->response_code = response_code;
    orson_ai_batch_response_local_var->response_raw = response_raw;
    orson_ai_batch_response_local_var->transcript = transcript;
    orson_ai_batch_response_local_var->topics = topics;
    orson_ai_batch_response_local_var->emotions = emotions;

    orson_ai_batch_response_local_var->_library_owned = 1;
    return orson_ai_batch_response_local_var;
}

__attribute__((deprecated)) orson_ai_batch_response_t *orson_ai_batch_response_create(
    char *request_id,
    int response_code,
    char *response_raw,
    orson_ai_batch_transcript_response_t *transcript,
    orson_ai_batch_topics_response_t *topics,
    orson_ai_batch_emotions_response_t *emotions
    ) {
    return orson_ai_batch_response_create_internal (
        request_id,
        response_code,
        response_raw,
        transcript,
        topics,
        emotions
        );
}

void orson_ai_batch_response_free(orson_ai_batch_response_t *orson_ai_batch_response) {
    if(NULL == orson_ai_batch_response){
        return ;
    }
    if(orson_ai_batch_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_ai_batch_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_ai_batch_response->request_id) {
        free(orson_ai_batch_response->request_id);
        orson_ai_batch_response->request_id = NULL;
    }
    if (orson_ai_batch_response->response_raw) {
        free(orson_ai_batch_response->response_raw);
        orson_ai_batch_response->response_raw = NULL;
    }
    if (orson_ai_batch_response->transcript) {
        orson_ai_batch_transcript_response_free(orson_ai_batch_response->transcript);
        orson_ai_batch_response->transcript = NULL;
    }
    if (orson_ai_batch_response->topics) {
        orson_ai_batch_topics_response_free(orson_ai_batch_response->topics);
        orson_ai_batch_response->topics = NULL;
    }
    if (orson_ai_batch_response->emotions) {
        orson_ai_batch_emotions_response_free(orson_ai_batch_response->emotions);
        orson_ai_batch_response->emotions = NULL;
    }
    free(orson_ai_batch_response);
}

cJSON *orson_ai_batch_response_convertToJSON(orson_ai_batch_response_t *orson_ai_batch_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_ai_batch_response->request_id
    if(orson_ai_batch_response->request_id) {
    if(cJSON_AddStringToObject(item, "requestId", orson_ai_batch_response->request_id) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_batch_response->response_code
    if(orson_ai_batch_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", orson_ai_batch_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_batch_response->response_raw
    if(orson_ai_batch_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", orson_ai_batch_response->response_raw) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_batch_response->transcript
    if(orson_ai_batch_response->transcript) {
    cJSON *transcript_local_JSON = orson_ai_batch_transcript_response_convertToJSON(orson_ai_batch_response->transcript);
    if(transcript_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "transcript", transcript_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // orson_ai_batch_response->topics
    if(orson_ai_batch_response->topics) {
    cJSON *topics_local_JSON = orson_ai_batch_topics_response_convertToJSON(orson_ai_batch_response->topics);
    if(topics_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "topics", topics_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // orson_ai_batch_response->emotions
    if(orson_ai_batch_response->emotions) {
    cJSON *emotions_local_JSON = orson_ai_batch_emotions_response_convertToJSON(orson_ai_batch_response->emotions);
    if(emotions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "emotions", emotions_local_JSON);
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

orson_ai_batch_response_t *orson_ai_batch_response_parseFromJSON(cJSON *orson_ai_batch_responseJSON){

    orson_ai_batch_response_t *orson_ai_batch_response_local_var = NULL;

    // define the local variable for orson_ai_batch_response->transcript
    orson_ai_batch_transcript_response_t *transcript_local_nonprim = NULL;

    // define the local variable for orson_ai_batch_response->topics
    orson_ai_batch_topics_response_t *topics_local_nonprim = NULL;

    // define the local variable for orson_ai_batch_response->emotions
    orson_ai_batch_emotions_response_t *emotions_local_nonprim = NULL;

    // orson_ai_batch_response->request_id
    cJSON *request_id = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_responseJSON, "requestId");
    if (cJSON_IsNull(request_id)) {
        request_id = NULL;
    }
    if (request_id) { 
    if(!cJSON_IsString(request_id) && !cJSON_IsNull(request_id))
    {
    goto end; //String
    }
    }

    // orson_ai_batch_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_batch_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }

    // orson_ai_batch_response->transcript
    cJSON *transcript = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_responseJSON, "transcript");
    if (cJSON_IsNull(transcript)) {
        transcript = NULL;
    }
    if (transcript) { 
    transcript_local_nonprim = orson_ai_batch_transcript_response_parseFromJSON(transcript); //nonprimitive
    }

    // orson_ai_batch_response->topics
    cJSON *topics = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_responseJSON, "topics");
    if (cJSON_IsNull(topics)) {
        topics = NULL;
    }
    if (topics) { 
    topics_local_nonprim = orson_ai_batch_topics_response_parseFromJSON(topics); //nonprimitive
    }

    // orson_ai_batch_response->emotions
    cJSON *emotions = cJSON_GetObjectItemCaseSensitive(orson_ai_batch_responseJSON, "emotions");
    if (cJSON_IsNull(emotions)) {
        emotions = NULL;
    }
    if (emotions) { 
    emotions_local_nonprim = orson_ai_batch_emotions_response_parseFromJSON(emotions); //nonprimitive
    }


    orson_ai_batch_response_local_var = orson_ai_batch_response_create_internal (
        request_id && !cJSON_IsNull(request_id) ? strdup(request_id->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL,
        transcript ? transcript_local_nonprim : NULL,
        topics ? topics_local_nonprim : NULL,
        emotions ? emotions_local_nonprim : NULL
        );

    return orson_ai_batch_response_local_var;
end:
    if (transcript_local_nonprim) {
        orson_ai_batch_transcript_response_free(transcript_local_nonprim);
        transcript_local_nonprim = NULL;
    }
    if (topics_local_nonprim) {
        orson_ai_batch_topics_response_free(topics_local_nonprim);
        topics_local_nonprim = NULL;
    }
    if (emotions_local_nonprim) {
        orson_ai_batch_emotions_response_free(emotions_local_nonprim);
        emotions_local_nonprim = NULL;
    }
    return NULL;

}
