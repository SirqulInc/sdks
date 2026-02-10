#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "answer_response.h"



static answer_response_t *answer_response_create_internal(
    long answer_id,
    char *answer,
    int correct,
    asset_short_response_t *image,
    char *video_url
    ) {
    answer_response_t *answer_response_local_var = malloc(sizeof(answer_response_t));
    if (!answer_response_local_var) {
        return NULL;
    }
    answer_response_local_var->answer_id = answer_id;
    answer_response_local_var->answer = answer;
    answer_response_local_var->correct = correct;
    answer_response_local_var->image = image;
    answer_response_local_var->video_url = video_url;

    answer_response_local_var->_library_owned = 1;
    return answer_response_local_var;
}

__attribute__((deprecated)) answer_response_t *answer_response_create(
    long answer_id,
    char *answer,
    int correct,
    asset_short_response_t *image,
    char *video_url
    ) {
    return answer_response_create_internal (
        answer_id,
        answer,
        correct,
        image,
        video_url
        );
}

void answer_response_free(answer_response_t *answer_response) {
    if(NULL == answer_response){
        return ;
    }
    if(answer_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "answer_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (answer_response->answer) {
        free(answer_response->answer);
        answer_response->answer = NULL;
    }
    if (answer_response->image) {
        asset_short_response_free(answer_response->image);
        answer_response->image = NULL;
    }
    if (answer_response->video_url) {
        free(answer_response->video_url);
        answer_response->video_url = NULL;
    }
    free(answer_response);
}

cJSON *answer_response_convertToJSON(answer_response_t *answer_response) {
    cJSON *item = cJSON_CreateObject();

    // answer_response->answer_id
    if(answer_response->answer_id) {
    if(cJSON_AddNumberToObject(item, "answerId", answer_response->answer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // answer_response->answer
    if(answer_response->answer) {
    if(cJSON_AddStringToObject(item, "answer", answer_response->answer) == NULL) {
    goto fail; //String
    }
    }


    // answer_response->correct
    if(answer_response->correct) {
    if(cJSON_AddBoolToObject(item, "correct", answer_response->correct) == NULL) {
    goto fail; //Bool
    }
    }


    // answer_response->image
    if(answer_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(answer_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // answer_response->video_url
    if(answer_response->video_url) {
    if(cJSON_AddStringToObject(item, "videoURL", answer_response->video_url) == NULL) {
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

answer_response_t *answer_response_parseFromJSON(cJSON *answer_responseJSON){

    answer_response_t *answer_response_local_var = NULL;

    // define the local variable for answer_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // answer_response->answer_id
    cJSON *answer_id = cJSON_GetObjectItemCaseSensitive(answer_responseJSON, "answerId");
    if (cJSON_IsNull(answer_id)) {
        answer_id = NULL;
    }
    if (answer_id) { 
    if(!cJSON_IsNumber(answer_id))
    {
    goto end; //Numeric
    }
    }

    // answer_response->answer
    cJSON *answer = cJSON_GetObjectItemCaseSensitive(answer_responseJSON, "answer");
    if (cJSON_IsNull(answer)) {
        answer = NULL;
    }
    if (answer) { 
    if(!cJSON_IsString(answer) && !cJSON_IsNull(answer))
    {
    goto end; //String
    }
    }

    // answer_response->correct
    cJSON *correct = cJSON_GetObjectItemCaseSensitive(answer_responseJSON, "correct");
    if (cJSON_IsNull(correct)) {
        correct = NULL;
    }
    if (correct) { 
    if(!cJSON_IsBool(correct))
    {
    goto end; //Bool
    }
    }

    // answer_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(answer_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // answer_response->video_url
    cJSON *video_url = cJSON_GetObjectItemCaseSensitive(answer_responseJSON, "videoURL");
    if (cJSON_IsNull(video_url)) {
        video_url = NULL;
    }
    if (video_url) { 
    if(!cJSON_IsString(video_url) && !cJSON_IsNull(video_url))
    {
    goto end; //String
    }
    }


    answer_response_local_var = answer_response_create_internal (
        answer_id ? answer_id->valuedouble : 0,
        answer && !cJSON_IsNull(answer) ? strdup(answer->valuestring) : NULL,
        correct ? correct->valueint : 0,
        image ? image_local_nonprim : NULL,
        video_url && !cJSON_IsNull(video_url) ? strdup(video_url->valuestring) : NULL
        );

    return answer_response_local_var;
end:
    if (image_local_nonprim) {
        asset_short_response_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    return NULL;

}
