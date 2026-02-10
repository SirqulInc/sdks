/*
 * orson_episode_response.h
 *
 * 
 */

#ifndef _orson_episode_response_H_
#define _orson_episode_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_episode_response_t orson_episode_response_t;

#include "orson_render_response.h"



typedef struct orson_episode_response_t {
    char *id; // string
    char *status; // string
    char *status_description; // string
    int response_code; //numeric
    char *response_raw; // string
    list_t *renders; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} orson_episode_response_t;

__attribute__((deprecated)) orson_episode_response_t *orson_episode_response_create(
    char *id,
    char *status,
    char *status_description,
    int response_code,
    char *response_raw,
    list_t *renders
);

void orson_episode_response_free(orson_episode_response_t *orson_episode_response);

orson_episode_response_t *orson_episode_response_parseFromJSON(cJSON *orson_episode_responseJSON);

cJSON *orson_episode_response_convertToJSON(orson_episode_response_t *orson_episode_response);

#endif /* _orson_episode_response_H_ */

