/*
 * filter.h
 *
 * 
 */

#ifndef _filter_H_
#define _filter_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct filter_t filter_t;

#include "application.h"



typedef struct filter_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct application_t *application; //model
    char *name; // string
    char *description; // string
    struct filter_t *parent; //model
    list_t *children; //nonprimitive container
    char *display; // string
    char *external_id; // string
    char *external_type; // string
    char *tree; // string

    int _library_owned; // Is the library responsible for freeing this object?
} filter_t;

__attribute__((deprecated)) filter_t *filter_create(
    long id,
    int active,
    int valid,
    application_t *application,
    char *name,
    char *description,
    filter_t *parent,
    list_t *children,
    char *display,
    char *external_id,
    char *external_type,
    char *tree
);

void filter_free(filter_t *filter);

filter_t *filter_parseFromJSON(cJSON *filterJSON);

cJSON *filter_convertToJSON(filter_t *filter);

#endif /* _filter_H_ */

