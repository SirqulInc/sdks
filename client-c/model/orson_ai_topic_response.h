/*
 * orson_ai_topic_response.h
 *
 * 
 */

#ifndef _orson_ai_topic_response_H_
#define _orson_ai_topic_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_ai_topic_response_t orson_ai_topic_response_t;




typedef struct orson_ai_topic_response_t {
    char *word; // string
    double score; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} orson_ai_topic_response_t;

__attribute__((deprecated)) orson_ai_topic_response_t *orson_ai_topic_response_create(
    char *word,
    double score
);

void orson_ai_topic_response_free(orson_ai_topic_response_t *orson_ai_topic_response);

orson_ai_topic_response_t *orson_ai_topic_response_parseFromJSON(cJSON *orson_ai_topic_responseJSON);

cJSON *orson_ai_topic_response_convertToJSON(orson_ai_topic_response_t *orson_ai_topic_response);

#endif /* _orson_ai_topic_response_H_ */

