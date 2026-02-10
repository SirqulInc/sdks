/*
 * node.h
 *
 * 
 */

#ifndef _node_H_
#define _node_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct node_t node_t;




typedef struct node_t {
    int x; //numeric
    int y; //numeric
    int z; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} node_t;

__attribute__((deprecated)) node_t *node_create(
    int x,
    int y,
    int z
);

void node_free(node_t *node);

node_t *node_parseFromJSON(cJSON *nodeJSON);

cJSON *node_convertToJSON(node_t *node);

#endif /* _node_H_ */

