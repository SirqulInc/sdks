/*
 * territory.h
 *
 * 
 */

#ifndef _territory_H_
#define _territory_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct territory_t territory_t;




typedef struct territory_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} territory_t;

__attribute__((deprecated)) territory_t *territory_create(
    long id,
    int active,
    int valid,
    char *name
);

void territory_free(territory_t *territory);

territory_t *territory_parseFromJSON(cJSON *territoryJSON);

cJSON *territory_convertToJSON(territory_t *territory);

#endif /* _territory_H_ */

