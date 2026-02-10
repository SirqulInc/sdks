/*
 * message_list_response.h
 *
 * 
 */

#ifndef _message_list_response_H_
#define _message_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct message_list_response_t message_list_response_t;

#include "message_response.h"



typedef struct message_list_response_t {
    int start; //numeric
    int limit; //numeric
    long count_total; //numeric
    list_t *items; //nonprimitive container
    int count; //numeric
    int has_more_results; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} message_list_response_t;

__attribute__((deprecated)) message_list_response_t *message_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int count,
    int has_more_results
);

void message_list_response_free(message_list_response_t *message_list_response);

message_list_response_t *message_list_response_parseFromJSON(cJSON *message_list_responseJSON);

cJSON *message_list_response_convertToJSON(message_list_response_t *message_list_response);

#endif /* _message_list_response_H_ */

