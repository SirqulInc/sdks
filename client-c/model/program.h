/*
 * program.h
 *
 * 
 */

#ifndef _program_H_
#define _program_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct program_t program_t;




typedef struct program_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *description; // string
    int cost_per_ride; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} program_t;

__attribute__((deprecated)) program_t *program_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    int cost_per_ride
);

void program_free(program_t *program);

program_t *program_parseFromJSON(cJSON *programJSON);

cJSON *program_convertToJSON(program_t *program);

#endif /* _program_H_ */

