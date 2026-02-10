/*
 * orson_video_response.h
 *
 * 
 */

#ifndef _orson_video_response_H_
#define _orson_video_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_video_response_t orson_video_response_t;




typedef struct orson_video_response_t {
    char *uri; // string
    char *expires; // string

    int _library_owned; // Is the library responsible for freeing this object?
} orson_video_response_t;

__attribute__((deprecated)) orson_video_response_t *orson_video_response_create(
    char *uri,
    char *expires
);

void orson_video_response_free(orson_video_response_t *orson_video_response);

orson_video_response_t *orson_video_response_parseFromJSON(cJSON *orson_video_responseJSON);

cJSON *orson_video_response_convertToJSON(orson_video_response_t *orson_video_response);

#endif /* _orson_video_response_H_ */

