/*
 * image_generation_response.h
 *
 * 
 */

#ifndef _image_generation_response_H_
#define _image_generation_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct image_generation_response_t image_generation_response_t;

#include "url_response.h"



typedef struct image_generation_response_t {
    long created; //numeric
    list_t *data; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} image_generation_response_t;

__attribute__((deprecated)) image_generation_response_t *image_generation_response_create(
    long created,
    list_t *data
);

void image_generation_response_free(image_generation_response_t *image_generation_response);

image_generation_response_t *image_generation_response_parseFromJSON(cJSON *image_generation_responseJSON);

cJSON *image_generation_response_convertToJSON(image_generation_response_t *image_generation_response);

#endif /* _image_generation_response_H_ */

