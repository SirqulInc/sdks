/*
 * age_group_response.h
 *
 * 
 */

#ifndef _age_group_response_H_
#define _age_group_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct age_group_response_t age_group_response_t;




typedef struct age_group_response_t {
    char *key; // string
    char *to_string; // string

    int _library_owned; // Is the library responsible for freeing this object?
} age_group_response_t;

__attribute__((deprecated)) age_group_response_t *age_group_response_create(
    char *key,
    char *to_string
);

void age_group_response_free(age_group_response_t *age_group_response);

age_group_response_t *age_group_response_parseFromJSON(cJSON *age_group_responseJSON);

cJSON *age_group_response_convertToJSON(age_group_response_t *age_group_response);

#endif /* _age_group_response_H_ */

