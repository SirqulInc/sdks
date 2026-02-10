#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_ai_tech_tune_response.h"



static orson_ai_tech_tune_response_t *orson_ai_tech_tune_response_create_internal(
    char *request_id,
    int response_code,
    char *response_raw,
    int people,
    int was_cutoff,
    int frames,
    int frames_without_a_face,
    int frames_with_face_offscreen,
    int frames_with_wrong_number_of_people,
    int height,
    int width,
    int fps
    ) {
    orson_ai_tech_tune_response_t *orson_ai_tech_tune_response_local_var = malloc(sizeof(orson_ai_tech_tune_response_t));
    if (!orson_ai_tech_tune_response_local_var) {
        return NULL;
    }
    orson_ai_tech_tune_response_local_var->request_id = request_id;
    orson_ai_tech_tune_response_local_var->response_code = response_code;
    orson_ai_tech_tune_response_local_var->response_raw = response_raw;
    orson_ai_tech_tune_response_local_var->people = people;
    orson_ai_tech_tune_response_local_var->was_cutoff = was_cutoff;
    orson_ai_tech_tune_response_local_var->frames = frames;
    orson_ai_tech_tune_response_local_var->frames_without_a_face = frames_without_a_face;
    orson_ai_tech_tune_response_local_var->frames_with_face_offscreen = frames_with_face_offscreen;
    orson_ai_tech_tune_response_local_var->frames_with_wrong_number_of_people = frames_with_wrong_number_of_people;
    orson_ai_tech_tune_response_local_var->height = height;
    orson_ai_tech_tune_response_local_var->width = width;
    orson_ai_tech_tune_response_local_var->fps = fps;

    orson_ai_tech_tune_response_local_var->_library_owned = 1;
    return orson_ai_tech_tune_response_local_var;
}

__attribute__((deprecated)) orson_ai_tech_tune_response_t *orson_ai_tech_tune_response_create(
    char *request_id,
    int response_code,
    char *response_raw,
    int people,
    int was_cutoff,
    int frames,
    int frames_without_a_face,
    int frames_with_face_offscreen,
    int frames_with_wrong_number_of_people,
    int height,
    int width,
    int fps
    ) {
    return orson_ai_tech_tune_response_create_internal (
        request_id,
        response_code,
        response_raw,
        people,
        was_cutoff,
        frames,
        frames_without_a_face,
        frames_with_face_offscreen,
        frames_with_wrong_number_of_people,
        height,
        width,
        fps
        );
}

void orson_ai_tech_tune_response_free(orson_ai_tech_tune_response_t *orson_ai_tech_tune_response) {
    if(NULL == orson_ai_tech_tune_response){
        return ;
    }
    if(orson_ai_tech_tune_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_ai_tech_tune_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_ai_tech_tune_response->request_id) {
        free(orson_ai_tech_tune_response->request_id);
        orson_ai_tech_tune_response->request_id = NULL;
    }
    if (orson_ai_tech_tune_response->response_raw) {
        free(orson_ai_tech_tune_response->response_raw);
        orson_ai_tech_tune_response->response_raw = NULL;
    }
    free(orson_ai_tech_tune_response);
}

cJSON *orson_ai_tech_tune_response_convertToJSON(orson_ai_tech_tune_response_t *orson_ai_tech_tune_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_ai_tech_tune_response->request_id
    if(orson_ai_tech_tune_response->request_id) {
    if(cJSON_AddStringToObject(item, "requestId", orson_ai_tech_tune_response->request_id) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_tech_tune_response->response_code
    if(orson_ai_tech_tune_response->response_code) {
    if(cJSON_AddNumberToObject(item, "responseCode", orson_ai_tech_tune_response->response_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->response_raw
    if(orson_ai_tech_tune_response->response_raw) {
    if(cJSON_AddStringToObject(item, "responseRaw", orson_ai_tech_tune_response->response_raw) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_tech_tune_response->people
    if(orson_ai_tech_tune_response->people) {
    if(cJSON_AddNumberToObject(item, "people", orson_ai_tech_tune_response->people) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->was_cutoff
    if(orson_ai_tech_tune_response->was_cutoff) {
    if(cJSON_AddBoolToObject(item, "wasCutoff", orson_ai_tech_tune_response->was_cutoff) == NULL) {
    goto fail; //Bool
    }
    }


    // orson_ai_tech_tune_response->frames
    if(orson_ai_tech_tune_response->frames) {
    if(cJSON_AddNumberToObject(item, "frames", orson_ai_tech_tune_response->frames) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->frames_without_a_face
    if(orson_ai_tech_tune_response->frames_without_a_face) {
    if(cJSON_AddNumberToObject(item, "framesWithoutAFace", orson_ai_tech_tune_response->frames_without_a_face) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->frames_with_face_offscreen
    if(orson_ai_tech_tune_response->frames_with_face_offscreen) {
    if(cJSON_AddNumberToObject(item, "framesWithFaceOffscreen", orson_ai_tech_tune_response->frames_with_face_offscreen) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->frames_with_wrong_number_of_people
    if(orson_ai_tech_tune_response->frames_with_wrong_number_of_people) {
    if(cJSON_AddNumberToObject(item, "framesWithWrongNumberOfPeople", orson_ai_tech_tune_response->frames_with_wrong_number_of_people) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->height
    if(orson_ai_tech_tune_response->height) {
    if(cJSON_AddNumberToObject(item, "height", orson_ai_tech_tune_response->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->width
    if(orson_ai_tech_tune_response->width) {
    if(cJSON_AddNumberToObject(item, "width", orson_ai_tech_tune_response->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // orson_ai_tech_tune_response->fps
    if(orson_ai_tech_tune_response->fps) {
    if(cJSON_AddNumberToObject(item, "fps", orson_ai_tech_tune_response->fps) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

orson_ai_tech_tune_response_t *orson_ai_tech_tune_response_parseFromJSON(cJSON *orson_ai_tech_tune_responseJSON){

    orson_ai_tech_tune_response_t *orson_ai_tech_tune_response_local_var = NULL;

    // orson_ai_tech_tune_response->request_id
    cJSON *request_id = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "requestId");
    if (cJSON_IsNull(request_id)) {
        request_id = NULL;
    }
    if (request_id) { 
    if(!cJSON_IsString(request_id) && !cJSON_IsNull(request_id))
    {
    goto end; //String
    }
    }

    // orson_ai_tech_tune_response->response_code
    cJSON *response_code = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "responseCode");
    if (cJSON_IsNull(response_code)) {
        response_code = NULL;
    }
    if (response_code) { 
    if(!cJSON_IsNumber(response_code))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->response_raw
    cJSON *response_raw = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "responseRaw");
    if (cJSON_IsNull(response_raw)) {
        response_raw = NULL;
    }
    if (response_raw) { 
    if(!cJSON_IsString(response_raw) && !cJSON_IsNull(response_raw))
    {
    goto end; //String
    }
    }

    // orson_ai_tech_tune_response->people
    cJSON *people = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "people");
    if (cJSON_IsNull(people)) {
        people = NULL;
    }
    if (people) { 
    if(!cJSON_IsNumber(people))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->was_cutoff
    cJSON *was_cutoff = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "wasCutoff");
    if (cJSON_IsNull(was_cutoff)) {
        was_cutoff = NULL;
    }
    if (was_cutoff) { 
    if(!cJSON_IsBool(was_cutoff))
    {
    goto end; //Bool
    }
    }

    // orson_ai_tech_tune_response->frames
    cJSON *frames = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "frames");
    if (cJSON_IsNull(frames)) {
        frames = NULL;
    }
    if (frames) { 
    if(!cJSON_IsNumber(frames))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->frames_without_a_face
    cJSON *frames_without_a_face = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "framesWithoutAFace");
    if (cJSON_IsNull(frames_without_a_face)) {
        frames_without_a_face = NULL;
    }
    if (frames_without_a_face) { 
    if(!cJSON_IsNumber(frames_without_a_face))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->frames_with_face_offscreen
    cJSON *frames_with_face_offscreen = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "framesWithFaceOffscreen");
    if (cJSON_IsNull(frames_with_face_offscreen)) {
        frames_with_face_offscreen = NULL;
    }
    if (frames_with_face_offscreen) { 
    if(!cJSON_IsNumber(frames_with_face_offscreen))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->frames_with_wrong_number_of_people
    cJSON *frames_with_wrong_number_of_people = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "framesWithWrongNumberOfPeople");
    if (cJSON_IsNull(frames_with_wrong_number_of_people)) {
        frames_with_wrong_number_of_people = NULL;
    }
    if (frames_with_wrong_number_of_people) { 
    if(!cJSON_IsNumber(frames_with_wrong_number_of_people))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // orson_ai_tech_tune_response->fps
    cJSON *fps = cJSON_GetObjectItemCaseSensitive(orson_ai_tech_tune_responseJSON, "fps");
    if (cJSON_IsNull(fps)) {
        fps = NULL;
    }
    if (fps) { 
    if(!cJSON_IsNumber(fps))
    {
    goto end; //Numeric
    }
    }


    orson_ai_tech_tune_response_local_var = orson_ai_tech_tune_response_create_internal (
        request_id && !cJSON_IsNull(request_id) ? strdup(request_id->valuestring) : NULL,
        response_code ? response_code->valuedouble : 0,
        response_raw && !cJSON_IsNull(response_raw) ? strdup(response_raw->valuestring) : NULL,
        people ? people->valuedouble : 0,
        was_cutoff ? was_cutoff->valueint : 0,
        frames ? frames->valuedouble : 0,
        frames_without_a_face ? frames_without_a_face->valuedouble : 0,
        frames_with_face_offscreen ? frames_with_face_offscreen->valuedouble : 0,
        frames_with_wrong_number_of_people ? frames_with_wrong_number_of_people->valuedouble : 0,
        height ? height->valuedouble : 0,
        width ? width->valuedouble : 0,
        fps ? fps->valuedouble : 0
        );

    return orson_ai_tech_tune_response_local_var;
end:
    return NULL;

}
