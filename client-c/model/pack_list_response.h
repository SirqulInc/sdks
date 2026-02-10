/*
 * pack_list_response.h
 *
 * 
 */

#ifndef _pack_list_response_H_
#define _pack_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pack_list_response_t pack_list_response_t;

#include "pack_response.h"



typedef struct pack_list_response_t {
    int start; //numeric
    int limit; //numeric
    long count_total; //numeric
    list_t *items; //nonprimitive container
    int count; //numeric
    int has_more_results; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} pack_list_response_t;

__attribute__((deprecated)) pack_list_response_t *pack_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int count,
    int has_more_results
);

void pack_list_response_free(pack_list_response_t *pack_list_response);

pack_list_response_t *pack_list_response_parseFromJSON(cJSON *pack_list_responseJSON);

cJSON *pack_list_response_convertToJSON(pack_list_response_t *pack_list_response);

#endif /* _pack_list_response_H_ */

