/*
 * node_request.h
 *
 * 
 */

#ifndef _node_request_H_
#define _node_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct node_request_t node_request_t;

#include "node.h"



typedef struct node_request_t {
    int x; //numeric
    int y; //numeric
    int z; //numeric
    double latitude; //numeric
    double longitude; //numeric
    double altitude; //numeric
    long date; //numeric
    int is_waypoint; //boolean
    long account_id; //numeric
    struct node_t *node; //model

    int _library_owned; // Is the library responsible for freeing this object?
} node_request_t;

__attribute__((deprecated)) node_request_t *node_request_create(
    int x,
    int y,
    int z,
    double latitude,
    double longitude,
    double altitude,
    long date,
    int is_waypoint,
    long account_id,
    node_t *node
);

void node_request_free(node_request_t *node_request);

node_request_t *node_request_parseFromJSON(cJSON *node_requestJSON);

cJSON *node_request_convertToJSON(node_request_t *node_request);

#endif /* _node_request_H_ */

