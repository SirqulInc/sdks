/*
 * event_response.h
 *
 * 
 */

#ifndef _event_response_H_
#define _event_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct event_response_t event_response_t;

#include "listing_response.h"



typedef struct event_response_t {
    struct listing_response_t *listing; //model

    int _library_owned; // Is the library responsible for freeing this object?
} event_response_t;

__attribute__((deprecated)) event_response_t *event_response_create(
    listing_response_t *listing
);

void event_response_free(event_response_t *event_response);

event_response_t *event_response_parseFromJSON(cJSON *event_responseJSON);

cJSON *event_response_convertToJSON(event_response_t *event_response);

#endif /* _event_response_H_ */

