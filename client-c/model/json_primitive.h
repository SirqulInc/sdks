/*
 * json_primitive.h
 *
 * 
 */

#ifndef _json_primitive_H_
#define _json_primitive_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct json_primitive_t json_primitive_t;

#include "json_array.h"
#include "json_null.h"
#include "json_object.h"
#include "object.h"



typedef struct json_primitive_t {
    int as_int; //numeric
    int number; //boolean
    int boolean; //boolean
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
    int string; //boolean
    struct json_object_t *as_json_object; //model
    int json_null; //boolean
    int json_array; //boolean
    int json_object; //boolean
    int json_primitive; //boolean
    struct json_array_t *as_json_array; //model
    struct json_primitive_t *as_json_primitive; //model
    struct json_null_t *as_json_null; //model

    int _library_owned; // Is the library responsible for freeing this object?
} json_primitive_t;

__attribute__((deprecated)) json_primitive_t *json_primitive_create(
    int as_int,
    int number,
    int boolean,
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
    int string,
    json_object_t *as_json_object,
    int json_null,
    int json_array,
    int json_object,
    int json_primitive,
    json_array_t *as_json_array,
    json_primitive_t *as_json_primitive,
    json_null_t *as_json_null
);

void json_primitive_free(json_primitive_t *json_primitive);

json_primitive_t *json_primitive_parseFromJSON(cJSON *json_primitiveJSON);

cJSON *json_primitive_convertToJSON(json_primitive_t *json_primitive);

#endif /* _json_primitive_H_ */

