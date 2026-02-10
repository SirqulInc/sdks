/*
 * duration_field_type.h
 *
 * 
 */

#ifndef _duration_field_type_H_
#define _duration_field_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct duration_field_type_t duration_field_type_t;




typedef struct duration_field_type_t {
    char *name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} duration_field_type_t;

__attribute__((deprecated)) duration_field_type_t *duration_field_type_create(
    char *name
);

void duration_field_type_free(duration_field_type_t *duration_field_type);

duration_field_type_t *duration_field_type_parseFromJSON(cJSON *duration_field_typeJSON);

cJSON *duration_field_type_convertToJSON(duration_field_type_t *duration_field_type);

#endif /* _duration_field_type_H_ */

