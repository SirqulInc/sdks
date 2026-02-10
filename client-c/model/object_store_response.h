/*
 * object_store_response.h
 *
 * 
 */

#ifndef _object_store_response_H_
#define _object_store_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct object_store_response_t object_store_response_t;

#include "json_object.h"
#include "name_string_value_response.h"



typedef struct object_store_response_t {
    struct json_object_t *json_object; //model
    list_t *request; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} object_store_response_t;

__attribute__((deprecated)) object_store_response_t *object_store_response_create(
    json_object_t *json_object,
    list_t *request
);

void object_store_response_free(object_store_response_t *object_store_response);

object_store_response_t *object_store_response_parseFromJSON(cJSON *object_store_responseJSON);

cJSON *object_store_response_convertToJSON(object_store_response_t *object_store_response);

#endif /* _object_store_response_H_ */

