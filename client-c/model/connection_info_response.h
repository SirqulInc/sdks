/*
 * connection_info_response.h
 *
 * 
 */

#ifndef _connection_info_response_H_
#define _connection_info_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct connection_info_response_t connection_info_response_t;

#include "connection_group_response.h"
#include "name_string_value_response.h"



typedef struct connection_info_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *groups; //nonprimitive container
    int follower_count; //numeric
    int following_count; //numeric
    int friend_count; //numeric
    int private_group_count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} connection_info_response_t;

__attribute__((deprecated)) connection_info_response_t *connection_info_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *groups,
    int follower_count,
    int following_count,
    int friend_count,
    int private_group_count,
    char *returning
);

void connection_info_response_free(connection_info_response_t *connection_info_response);

connection_info_response_t *connection_info_response_parseFromJSON(cJSON *connection_info_responseJSON);

cJSON *connection_info_response_convertToJSON(connection_info_response_t *connection_info_response);

#endif /* _connection_info_response_H_ */

