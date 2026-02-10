/*
 * load_short_response.h
 *
 * 
 */

#ifndef _load_short_response_H_
#define _load_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct load_short_response_t load_short_response_t;

#include "stop_response.h"



typedef struct load_short_response_t {
    char *id; // string
    char *name; // string
    long size; //numeric
    long loading_time; //numeric
    int separate_payloads; //boolean
    struct stop_response_t *pickup; //model
    struct stop_response_t *dropoff; //model

    int _library_owned; // Is the library responsible for freeing this object?
} load_short_response_t;

__attribute__((deprecated)) load_short_response_t *load_short_response_create(
    char *id,
    char *name,
    long size,
    long loading_time,
    int separate_payloads,
    stop_response_t *pickup,
    stop_response_t *dropoff
);

void load_short_response_free(load_short_response_t *load_short_response);

load_short_response_t *load_short_response_parseFromJSON(cJSON *load_short_responseJSON);

cJSON *load_short_response_convertToJSON(load_short_response_t *load_short_response);

#endif /* _load_short_response_H_ */

