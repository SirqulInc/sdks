/*
 * answer_response.h
 *
 * 
 */

#ifndef _answer_response_H_
#define _answer_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct answer_response_t answer_response_t;

#include "asset_short_response.h"



typedef struct answer_response_t {
    long answer_id; //numeric
    char *answer; // string
    int correct; //boolean
    struct asset_short_response_t *image; //model
    char *video_url; // string

    int _library_owned; // Is the library responsible for freeing this object?
} answer_response_t;

__attribute__((deprecated)) answer_response_t *answer_response_create(
    long answer_id,
    char *answer,
    int correct,
    asset_short_response_t *image,
    char *video_url
);

void answer_response_free(answer_response_t *answer_response);

answer_response_t *answer_response_parseFromJSON(cJSON *answer_responseJSON);

cJSON *answer_response_convertToJSON(answer_response_t *answer_response);

#endif /* _answer_response_H_ */

