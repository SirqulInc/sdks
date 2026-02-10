/*
 * orson_ai_tech_tune_response.h
 *
 * 
 */

#ifndef _orson_ai_tech_tune_response_H_
#define _orson_ai_tech_tune_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_ai_tech_tune_response_t orson_ai_tech_tune_response_t;




typedef struct orson_ai_tech_tune_response_t {
    char *request_id; // string
    int response_code; //numeric
    char *response_raw; // string
    int people; //numeric
    int was_cutoff; //boolean
    int frames; //numeric
    int frames_without_a_face; //numeric
    int frames_with_face_offscreen; //numeric
    int frames_with_wrong_number_of_people; //numeric
    int height; //numeric
    int width; //numeric
    int fps; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} orson_ai_tech_tune_response_t;

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
);

void orson_ai_tech_tune_response_free(orson_ai_tech_tune_response_t *orson_ai_tech_tune_response);

orson_ai_tech_tune_response_t *orson_ai_tech_tune_response_parseFromJSON(cJSON *orson_ai_tech_tune_responseJSON);

cJSON *orson_ai_tech_tune_response_convertToJSON(orson_ai_tech_tune_response_t *orson_ai_tech_tune_response);

#endif /* _orson_ai_tech_tune_response_H_ */

