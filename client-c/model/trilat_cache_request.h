/*
 * trilat_cache_request.h
 *
 * 
 */

#ifndef _trilat_cache_request_H_
#define _trilat_cache_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct trilat_cache_request_t trilat_cache_request_t;

#include "trilat_cache_sample.h"



typedef struct trilat_cache_request_t {
    char *udid; // string
    long source_time; //numeric
    int minimum_sample_size; //numeric
    list_t *samples; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} trilat_cache_request_t;

__attribute__((deprecated)) trilat_cache_request_t *trilat_cache_request_create(
    char *udid,
    long source_time,
    int minimum_sample_size,
    list_t *samples
);

void trilat_cache_request_free(trilat_cache_request_t *trilat_cache_request);

trilat_cache_request_t *trilat_cache_request_parseFromJSON(cJSON *trilat_cache_requestJSON);

cJSON *trilat_cache_request_convertToJSON(trilat_cache_request_t *trilat_cache_request);

#endif /* _trilat_cache_request_H_ */

