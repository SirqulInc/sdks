/*
 * building.h
 *
 * 
 */

#ifndef _building_H_
#define _building_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct building_t building_t;




typedef struct building_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *building_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} building_t;

__attribute__((deprecated)) building_t *building_create(
    long id,
    int active,
    int valid,
    char *name,
    char *building_type
);

void building_free(building_t *building);

building_t *building_parseFromJSON(cJSON *buildingJSON);

cJSON *building_convertToJSON(building_t *building);

#endif /* _building_H_ */

