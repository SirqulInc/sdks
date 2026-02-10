/*
 * name_string_value_response.h
 *
 * 
 */

#ifndef _name_string_value_response_H_
#define _name_string_value_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct name_string_value_response_t name_string_value_response_t;




typedef struct name_string_value_response_t {
    char *name; // string
    char *value_string; // string

    int _library_owned; // Is the library responsible for freeing this object?
} name_string_value_response_t;

__attribute__((deprecated)) name_string_value_response_t *name_string_value_response_create(
    char *name,
    char *value_string
);

void name_string_value_response_free(name_string_value_response_t *name_string_value_response);

name_string_value_response_t *name_string_value_response_parseFromJSON(cJSON *name_string_value_responseJSON);

cJSON *name_string_value_response_convertToJSON(name_string_value_response_t *name_string_value_response);

#endif /* _name_string_value_response_H_ */

