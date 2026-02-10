/*
 * region_response.h
 *
 * 
 */

#ifndef _region_response_H_
#define _region_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct region_response_t region_response_t;

#include "postal_code_response.h"



typedef struct region_response_t {
    long id; //numeric
    char *short_name; // string
    char *full_name; // string
    struct region_response_t *parent; //model
    list_t *children; //nonprimitive container
    list_t *postal_codes; //nonprimitive container
    double latitude; //numeric
    double longitude; //numeric
    int active; //boolean
    int root; //boolean
    char *region_class; // string
    long start; //numeric
    long end; //numeric
    char *polygon; // string
    char *meta_data; // string
    double distance; //numeric
    int version_code; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} region_response_t;

__attribute__((deprecated)) region_response_t *region_response_create(
    long id,
    char *short_name,
    char *full_name,
    region_response_t *parent,
    list_t *children,
    list_t *postal_codes,
    double latitude,
    double longitude,
    int active,
    int root,
    char *region_class,
    long start,
    long end,
    char *polygon,
    char *meta_data,
    double distance,
    int version_code
);

void region_response_free(region_response_t *region_response);

region_response_t *region_response_parseFromJSON(cJSON *region_responseJSON);

cJSON *region_response_convertToJSON(region_response_t *region_response);

#endif /* _region_response_H_ */

