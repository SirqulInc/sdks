/*
 * twi_ml_response.h
 *
 * 
 */

#ifndef _twi_ml_response_H_
#define _twi_ml_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct twi_ml_response_t twi_ml_response_t;

#include "verb.h"



typedef struct twi_ml_response_t {
    char *tag; // string
    char *body; // string
    list_t* attributes; //map
    list_t *children; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} twi_ml_response_t;

__attribute__((deprecated)) twi_ml_response_t *twi_ml_response_create(
    char *tag,
    char *body,
    list_t* attributes,
    list_t *children
);

void twi_ml_response_free(twi_ml_response_t *twi_ml_response);

twi_ml_response_t *twi_ml_response_parseFromJSON(cJSON *twi_ml_responseJSON);

cJSON *twi_ml_response_convertToJSON(twi_ml_response_t *twi_ml_response);

#endif /* _twi_ml_response_H_ */

