/*
 * duration_field.h
 *
 * 
 */

#ifndef _duration_field_H_
#define _duration_field_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct duration_field_t duration_field_t;

#include "duration_field_type.h"



typedef struct duration_field_t {
    char *name; // string
    struct duration_field_type_t *type; //model
    int supported; //boolean
    int precise; //boolean
    long unit_millis; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} duration_field_t;

__attribute__((deprecated)) duration_field_t *duration_field_create(
    char *name,
    duration_field_type_t *type,
    int supported,
    int precise,
    long unit_millis
);

void duration_field_free(duration_field_t *duration_field);

duration_field_t *duration_field_parseFromJSON(cJSON *duration_fieldJSON);

cJSON *duration_field_convertToJSON(duration_field_t *duration_field);

#endif /* _duration_field_H_ */

