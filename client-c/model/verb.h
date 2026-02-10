/*
 * verb.h
 *
 * 
 */

#ifndef _verb_H_
#define _verb_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct verb_t verb_t;




typedef struct verb_t {
    char *tag; // string
    char *body; // string
    list_t* attributes; //map
    list_t *children; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} verb_t;

__attribute__((deprecated)) verb_t *verb_create(
    char *tag,
    char *body,
    list_t* attributes,
    list_t *children
);

void verb_free(verb_t *verb);

verb_t *verb_parseFromJSON(cJSON *verbJSON);

cJSON *verb_convertToJSON(verb_t *verb);

#endif /* _verb_H_ */

