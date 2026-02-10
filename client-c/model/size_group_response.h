/*
 * size_group_response.h
 *
 * 
 */

#ifndef _size_group_response_H_
#define _size_group_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct size_group_response_t size_group_response_t;




typedef struct size_group_response_t {
    long id; //numeric
    char *name; // string
    char *description; // string

    int _library_owned; // Is the library responsible for freeing this object?
} size_group_response_t;

__attribute__((deprecated)) size_group_response_t *size_group_response_create(
    long id,
    char *name,
    char *description
);

void size_group_response_free(size_group_response_t *size_group_response);

size_group_response_t *size_group_response_parseFromJSON(cJSON *size_group_responseJSON);

cJSON *size_group_response_convertToJSON(size_group_response_t *size_group_response);

#endif /* _size_group_response_H_ */

