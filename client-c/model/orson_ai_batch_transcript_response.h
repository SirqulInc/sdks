/*
 * orson_ai_batch_transcript_response.h
 *
 * 
 */

#ifndef _orson_ai_batch_transcript_response_H_
#define _orson_ai_batch_transcript_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_ai_batch_transcript_response_t orson_ai_batch_transcript_response_t;




typedef struct orson_ai_batch_transcript_response_t {
    char *request_id; // string
    int response_code; //numeric
    char *response_raw; // string
    char *status; // string
    char *error; // string
    char *result; // string

    int _library_owned; // Is the library responsible for freeing this object?
} orson_ai_batch_transcript_response_t;

__attribute__((deprecated)) orson_ai_batch_transcript_response_t *orson_ai_batch_transcript_response_create(
    char *request_id,
    int response_code,
    char *response_raw,
    char *status,
    char *error,
    char *result
);

void orson_ai_batch_transcript_response_free(orson_ai_batch_transcript_response_t *orson_ai_batch_transcript_response);

orson_ai_batch_transcript_response_t *orson_ai_batch_transcript_response_parseFromJSON(cJSON *orson_ai_batch_transcript_responseJSON);

cJSON *orson_ai_batch_transcript_response_convertToJSON(orson_ai_batch_transcript_response_t *orson_ai_batch_transcript_response);

#endif /* _orson_ai_batch_transcript_response_H_ */

