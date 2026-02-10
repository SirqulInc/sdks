/*
 * mission_format_response.h
 *
 * 
 */

#ifndef _mission_format_response_H_
#define _mission_format_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mission_format_response_t mission_format_response_t;




typedef struct mission_format_response_t {
    long mission_format_id; //numeric
    char *format_type; // string
    int active; //boolean
    char *name; // string
    char *description; // string
    char *format; // string
    char *suffix; // string

    int _library_owned; // Is the library responsible for freeing this object?
} mission_format_response_t;

__attribute__((deprecated)) mission_format_response_t *mission_format_response_create(
    long mission_format_id,
    char *format_type,
    int active,
    char *name,
    char *description,
    char *format,
    char *suffix
);

void mission_format_response_free(mission_format_response_t *mission_format_response);

mission_format_response_t *mission_format_response_parseFromJSON(cJSON *mission_format_responseJSON);

cJSON *mission_format_response_convertToJSON(mission_format_response_t *mission_format_response);

#endif /* _mission_format_response_H_ */

