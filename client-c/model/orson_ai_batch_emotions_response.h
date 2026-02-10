/*
 * orson_ai_batch_emotions_response.h
 *
 * 
 */

#ifndef _orson_ai_batch_emotions_response_H_
#define _orson_ai_batch_emotions_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_ai_batch_emotions_response_t orson_ai_batch_emotions_response_t;

#include "orson_ai_emotions_response.h"



typedef struct orson_ai_batch_emotions_response_t {
    char *request_id; // string
    int response_code; //numeric
    char *response_raw; // string
    char *status; // string
    char *error; // string
    struct orson_ai_emotions_response_t *result; //model

    int _library_owned; // Is the library responsible for freeing this object?
} orson_ai_batch_emotions_response_t;

__attribute__((deprecated)) orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response_create(
    char *request_id,
    int response_code,
    char *response_raw,
    char *status,
    char *error,
    orson_ai_emotions_response_t *result
);

void orson_ai_batch_emotions_response_free(orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response);

orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response_parseFromJSON(cJSON *orson_ai_batch_emotions_responseJSON);

cJSON *orson_ai_batch_emotions_response_convertToJSON(orson_ai_batch_emotions_response_t *orson_ai_batch_emotions_response);

#endif /* _orson_ai_batch_emotions_response_H_ */

