/*
 * mission_list_response.h
 *
 * 
 */

#ifndef _mission_list_response_H_
#define _mission_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mission_list_response_t mission_list_response_t;

#include "mission_response.h"



typedef struct mission_list_response_t {
    int start; //numeric
    int limit; //numeric
    long count_total; //numeric
    list_t *items; //nonprimitive container
    int has_more_results; //boolean
    int count; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} mission_list_response_t;

__attribute__((deprecated)) mission_list_response_t *mission_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int has_more_results,
    int count
);

void mission_list_response_free(mission_list_response_t *mission_list_response);

mission_list_response_t *mission_list_response_parseFromJSON(cJSON *mission_list_responseJSON);

cJSON *mission_list_response_convertToJSON(mission_list_response_t *mission_list_response);

#endif /* _mission_list_response_H_ */

