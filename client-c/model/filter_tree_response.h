/*
 * filter_tree_response.h
 *
 * 
 */

#ifndef _filter_tree_response_H_
#define _filter_tree_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct filter_tree_response_t filter_tree_response_t;




typedef struct filter_tree_response_t {
    long filter_id; //numeric
    char *name; // string
    char *display; // string
    int sub_filter_count; //numeric
    long parent_id; //numeric
    char *description; // string
    int active; //boolean
    char *external_id; // string
    char *external_type; // string
    list_t *children; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} filter_tree_response_t;

__attribute__((deprecated)) filter_tree_response_t *filter_tree_response_create(
    long filter_id,
    char *name,
    char *display,
    int sub_filter_count,
    long parent_id,
    char *description,
    int active,
    char *external_id,
    char *external_type,
    list_t *children
);

void filter_tree_response_free(filter_tree_response_t *filter_tree_response);

filter_tree_response_t *filter_tree_response_parseFromJSON(cJSON *filter_tree_responseJSON);

cJSON *filter_tree_response_convertToJSON(filter_tree_response_t *filter_tree_response);

#endif /* _filter_tree_response_H_ */

