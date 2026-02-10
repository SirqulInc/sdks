/*
 * category.h
 *
 * 
 */

#ifndef _category_H_
#define _category_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct category_t category_t;

#include "application.h"
#include "asset.h"



typedef struct category_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *short_name; // string
    char *description; // string
    char *type; // string
    struct application_t *application; //model
    struct category_t *parent; //model
    list_t *children; //nonprimitive container
    long children_count; //numeric
    char *display; // string
    char *sqoot_slug; // string
    struct asset_t *asset; //model
    char *external_id; // string
    char *external_type; // string
    long favorite_count; //numeric
    struct category_t *root; //model
    char *tree; // string
    char *parent_name; // string
    long parent_id; //numeric
    long application_id; //numeric
    char *secondary_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} category_t;

__attribute__((deprecated)) category_t *category_create(
    long id,
    int active,
    int valid,
    char *name,
    char *short_name,
    char *description,
    char *type,
    application_t *application,
    category_t *parent,
    list_t *children,
    long children_count,
    char *display,
    char *sqoot_slug,
    asset_t *asset,
    char *external_id,
    char *external_type,
    long favorite_count,
    category_t *root,
    char *tree,
    char *parent_name,
    long parent_id,
    long application_id,
    char *secondary_type
);

void category_free(category_t *category);

category_t *category_parseFromJSON(cJSON *categoryJSON);

cJSON *category_convertToJSON(category_t *category);

#endif /* _category_H_ */

