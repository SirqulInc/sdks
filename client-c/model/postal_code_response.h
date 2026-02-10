/*
 * postal_code_response.h
 *
 * 
 */

#ifndef _postal_code_response_H_
#define _postal_code_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct postal_code_response_t postal_code_response_t;




typedef struct postal_code_response_t {
    char *city; // string
    char *state_code; // string
    char *code; // string
    double latitude; //numeric
    double longitude; //numeric
    char *timezone; // string
    int utc_offset; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} postal_code_response_t;

__attribute__((deprecated)) postal_code_response_t *postal_code_response_create(
    char *city,
    char *state_code,
    char *code,
    double latitude,
    double longitude,
    char *timezone,
    int utc_offset
);

void postal_code_response_free(postal_code_response_t *postal_code_response);

postal_code_response_t *postal_code_response_parseFromJSON(cJSON *postal_code_responseJSON);

cJSON *postal_code_response_convertToJSON(postal_code_response_t *postal_code_response);

#endif /* _postal_code_response_H_ */

