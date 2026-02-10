/*
 * connection_list_response.h
 *
 * 
 */

#ifndef _connection_list_response_H_
#define _connection_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct connection_list_response_t connection_list_response_t;

#include "connection_response.h"
#include "name_string_value_response.h"



typedef struct connection_list_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *connections; //nonprimitive container
    int friend_count; //numeric
    int following_count; //numeric
    int item_count; //numeric
    int has_more_results; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} connection_list_response_t;

__attribute__((deprecated)) connection_list_response_t *connection_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *connections,
    int friend_count,
    int following_count,
    int item_count,
    int has_more_results,
    char *returning
);

void connection_list_response_free(connection_list_response_t *connection_list_response);

connection_list_response_t *connection_list_response_parseFromJSON(cJSON *connection_list_responseJSON);

cJSON *connection_list_response_convertToJSON(connection_list_response_t *connection_list_response);

#endif /* _connection_list_response_H_ */

