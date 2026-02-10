/*
 * address_response.h
 *
 * 
 */

#ifndef _address_response_H_
#define _address_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct address_response_t address_response_t;




typedef struct address_response_t {
    char *street_address; // string
    char *street_address2; // string
    char *city; // string
    char *state_code; // string
    char *state; // string
    char *postal_code; // string
    char *country_code; // string
    char *country; // string
    char *display; // string

    int _library_owned; // Is the library responsible for freeing this object?
} address_response_t;

__attribute__((deprecated)) address_response_t *address_response_create(
    char *street_address,
    char *street_address2,
    char *city,
    char *state_code,
    char *state,
    char *postal_code,
    char *country_code,
    char *country,
    char *display
);

void address_response_free(address_response_t *address_response);

address_response_t *address_response_parseFromJSON(cJSON *address_responseJSON);

cJSON *address_response_convertToJSON(address_response_t *address_response);

#endif /* _address_response_H_ */

