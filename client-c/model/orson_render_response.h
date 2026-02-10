/*
 * orson_render_response.h
 *
 * 
 */

#ifndef _orson_render_response_H_
#define _orson_render_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_render_response_t orson_render_response_t;

#include "orson_video_response.h"



typedef struct orson_render_response_t {
    char *id; // string
    char *third_party_account_id; // string
    char *status; // string
    char *status_description; // string
    char *completed_on; // string
    int response_code; //numeric
    char *response_raw; // string
    struct orson_video_response_t *video; //model

    int _library_owned; // Is the library responsible for freeing this object?
} orson_render_response_t;

__attribute__((deprecated)) orson_render_response_t *orson_render_response_create(
    char *id,
    char *third_party_account_id,
    char *status,
    char *status_description,
    char *completed_on,
    int response_code,
    char *response_raw,
    orson_video_response_t *video
);

void orson_render_response_free(orson_render_response_t *orson_render_response);

orson_render_response_t *orson_render_response_parseFromJSON(cJSON *orson_render_responseJSON);

cJSON *orson_render_response_convertToJSON(orson_render_response_t *orson_render_response);

#endif /* _orson_render_response_H_ */

