/*
 * size_group.h
 *
 * 
 */

#ifndef _size_group_H_
#define _size_group_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct size_group_t size_group_t;




typedef struct size_group_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    long grouping_id; //numeric
    char *name; // string
    char *description; // string

    int _library_owned; // Is the library responsible for freeing this object?
} size_group_t;

__attribute__((deprecated)) size_group_t *size_group_create(
    long id,
    int active,
    int valid,
    long grouping_id,
    char *name,
    char *description
);

void size_group_free(size_group_t *size_group);

size_group_t *size_group_parseFromJSON(cJSON *size_groupJSON);

cJSON *size_group_convertToJSON(size_group_t *size_group);

#endif /* _size_group_H_ */

