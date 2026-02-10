/*
 * message_response.h
 *
 * 
 */

#ifndef _message_response_H_
#define _message_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct message_response_t message_response_t;




typedef struct message_response_t {
    char *message; // string
    int code; //numeric
    char *ids; // string
    char *update_value; // string

    int _library_owned; // Is the library responsible for freeing this object?
} message_response_t;

__attribute__((deprecated)) message_response_t *message_response_create(
    char *message,
    int code,
    char *ids,
    char *update_value
);

void message_response_free(message_response_t *message_response);

message_response_t *message_response_parseFromJSON(cJSON *message_responseJSON);

cJSON *message_response_convertToJSON(message_response_t *message_response);

#endif /* _message_response_H_ */

