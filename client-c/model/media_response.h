/*
 * media_response.h
 *
 * 
 */

#ifndef _media_response_H_
#define _media_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct media_response_t media_response_t;




typedef struct media_response_t {
    char *media_type; // string
    int duration; //numeric
    char *author; // string
    long release_date; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} media_response_t;

__attribute__((deprecated)) media_response_t *media_response_create(
    char *media_type,
    int duration,
    char *author,
    long release_date
);

void media_response_free(media_response_t *media_response);

media_response_t *media_response_parseFromJSON(cJSON *media_responseJSON);

cJSON *media_response_convertToJSON(media_response_t *media_response);

#endif /* _media_response_H_ */

