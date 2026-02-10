/*
 * category_tree_response.h
 *
 * 
 */

#ifndef _category_tree_response_H_
#define _category_tree_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct category_tree_response_t category_tree_response_t;

#include "asset_short_response.h"



typedef struct category_tree_response_t {
    long category_id; //numeric
    char *name; // string
    char *display; // string
    long sub_category_count; //numeric
    long parent_id; //numeric
    char *parent_name; // string
    char *description; // string
    int active; //boolean
    struct asset_short_response_t *asset; //model
    long favorite_id; //numeric
    int favorite; //boolean
    long application_id; //numeric
    char *type; // string
    char *external_id; // string
    char *external_type; // string
    list_t *children; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} category_tree_response_t;

__attribute__((deprecated)) category_tree_response_t *category_tree_response_create(
    long category_id,
    char *name,
    char *display,
    long sub_category_count,
    long parent_id,
    char *parent_name,
    char *description,
    int active,
    asset_short_response_t *asset,
    long favorite_id,
    int favorite,
    long application_id,
    char *type,
    char *external_id,
    char *external_type,
    list_t *children
);

void category_tree_response_free(category_tree_response_t *category_tree_response);

category_tree_response_t *category_tree_response_parseFromJSON(cJSON *category_tree_responseJSON);

cJSON *category_tree_response_convertToJSON(category_tree_response_t *category_tree_response);

#endif /* _category_tree_response_H_ */

