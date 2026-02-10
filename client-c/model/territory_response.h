/*
 * territory_response.h
 *
 * 
 */

#ifndef _territory_response_H_
#define _territory_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct territory_response_t territory_response_t;




typedef struct territory_response_t {
    long id; //numeric
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} territory_response_t;

__attribute__((deprecated)) territory_response_t *territory_response_create(
    long id,
    char *name
);

void territory_response_free(territory_response_t *territory_response);

territory_response_t *territory_response_parseFromJSON(cJSON *territory_responseJSON);

cJSON *territory_response_convertToJSON(territory_response_t *territory_response);

#endif /* _territory_response_H_ */

