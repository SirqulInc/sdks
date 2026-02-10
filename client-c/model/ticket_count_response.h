/*
 * ticket_count_response.h
 *
 * 
 */

#ifndef _ticket_count_response_H_
#define _ticket_count_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ticket_count_response_t ticket_count_response_t;




typedef struct ticket_count_response_t {
    long count; //numeric
    char *type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ticket_count_response_t;

__attribute__((deprecated)) ticket_count_response_t *ticket_count_response_create(
    long count,
    char *type
);

void ticket_count_response_free(ticket_count_response_t *ticket_count_response);

ticket_count_response_t *ticket_count_response_parseFromJSON(cJSON *ticket_count_responseJSON);

cJSON *ticket_count_response_convertToJSON(ticket_count_response_t *ticket_count_response);

#endif /* _ticket_count_response_H_ */

