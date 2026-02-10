/*
 * notification_message_list_response.h
 *
 * 
 */

#ifndef _notification_message_list_response_H_
#define _notification_message_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct notification_message_list_response_t notification_message_list_response_t;

#include "name_string_value_response.h"
#include "notification_message_response.h"



typedef struct notification_message_list_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    int count; //numeric
    int has_more_results; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} notification_message_list_response_t;

__attribute__((deprecated)) notification_message_list_response_t *notification_message_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    int has_more_results,
    char *returning
);

void notification_message_list_response_free(notification_message_list_response_t *notification_message_list_response);

notification_message_list_response_t *notification_message_list_response_parseFromJSON(cJSON *notification_message_list_responseJSON);

cJSON *notification_message_list_response_convertToJSON(notification_message_list_response_t *notification_message_list_response);

#endif /* _notification_message_list_response_H_ */

