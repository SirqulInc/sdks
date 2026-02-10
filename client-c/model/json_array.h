/*
 * json_array.h
 *
 * 
 */

#ifndef _json_array_H_
#define _json_array_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct json_array_t json_array_t;

#include "json_null.h"
#include "json_object.h"
#include "json_primitive.h"
#include "object.h"



typedef struct json_array_t {
    int as_int; //numeric
    char *as_string; // string
    int as_boolean; //boolean
    object_t *as_number; //object
    double as_double; //numeric
    float as_float; //numeric
    long as_long; //numeric
    char *as_byte; //ByteArray
    char *as_character; // string
    double as_big_decimal; //numeric
    int as_big_integer; //numeric
    int as_short; //numeric
    struct json_object_t *as_json_object; //model
    int json_null; //boolean
    int json_array; //boolean
    int json_object; //boolean
    int json_primitive; //boolean
    struct json_array_t *as_json_array; //model
    struct json_primitive_t *as_json_primitive; //model
    struct json_null_t *as_json_null; //model

    int _library_owned; // Is the library responsible for freeing this object?
} json_array_t;

__attribute__((deprecated)) json_array_t *json_array_create(
    int as_int,
    char *as_string,
    int as_boolean,
    object_t *as_number,
    double as_double,
    float as_float,
    long as_long,
    char *as_byte,
    char *as_character,
    double as_big_decimal,
    int as_big_integer,
    int as_short,
    json_object_t *as_json_object,
    int json_null,
    int json_array,
    int json_object,
    int json_primitive,
    json_array_t *as_json_array,
    json_primitive_t *as_json_primitive,
    json_null_t *as_json_null
);

void json_array_free(json_array_t *json_array);

json_array_t *json_array_parseFromJSON(cJSON *json_arrayJSON);

cJSON *json_array_convertToJSON(json_array_t *json_array);

#endif /* _json_array_H_ */

