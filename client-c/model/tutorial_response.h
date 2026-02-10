/*
 * tutorial_response.h
 *
 * 
 */

#ifndef _tutorial_response_H_
#define _tutorial_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct tutorial_response_t tutorial_response_t;

#include "asset_short_response.h"
#include "name_string_value_response.h"



typedef struct tutorial_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long id; //numeric
    char *name; // string
    char *description; // string
    char *alignment; // string
    struct asset_short_response_t *image; //model
    long order_index; //numeric
    char *object_type; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} tutorial_response_t;

__attribute__((deprecated)) tutorial_response_t *tutorial_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long id,
    char *name,
    char *description,
    char *alignment,
    asset_short_response_t *image,
    long order_index,
    char *object_type,
    char *returning
);

void tutorial_response_free(tutorial_response_t *tutorial_response);

tutorial_response_t *tutorial_response_parseFromJSON(cJSON *tutorial_responseJSON);

cJSON *tutorial_response_convertToJSON(tutorial_response_t *tutorial_response);

#endif /* _tutorial_response_H_ */

