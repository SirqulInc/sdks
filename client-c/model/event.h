/*
 * event.h
 *
 * 
 */

#ifndef _event_H_
#define _event_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct event_t event_t;

#include "listing.h"



typedef struct event_t {
    int sponsered; //boolean
    struct listing_t *listing; //model

    int _library_owned; // Is the library responsible for freeing this object?
} event_t;

__attribute__((deprecated)) event_t *event_create(
    int sponsered,
    listing_t *listing
);

void event_free(event_t *event);

event_t *event_parseFromJSON(cJSON *eventJSON);

cJSON *event_convertToJSON(event_t *event);

#endif /* _event_H_ */

