/*
 * connection_group_short_response.h
 *
 * 
 */

#ifndef _connection_group_short_response_H_
#define _connection_group_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct connection_group_short_response_t connection_group_short_response_t;

#include "name_string_value_response.h"

// Enum GROUPTYPE for connection_group_short_response

typedef enum  { sirqul_iot_platform_connection_group_short_response_GROUPTYPE_NULL = 0, sirqul_iot_platform_connection_group_short_response_GROUPTYPE__PRIVATE, sirqul_iot_platform_connection_group_short_response_GROUPTYPE_FRIENDS, sirqul_iot_platform_connection_group_short_response_GROUPTYPE_TRUSTED, sirqul_iot_platform_connection_group_short_response_GROUPTYPE_BLOCKED, sirqul_iot_platform_connection_group_short_response_GROUPTYPE_FOLLOWERS, sirqul_iot_platform_connection_group_short_response_GROUPTYPE_FOLLOWING, sirqul_iot_platform_connection_group_short_response_GROUPTYPE_PENDING, sirqul_iot_platform_connection_group_short_response_GROUPTYPE_REQUEST } sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e;

char* connection_group_short_response_group_type_ToString(sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e group_type);

sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e connection_group_short_response_group_type_FromString(char* group_type);



typedef struct connection_group_short_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long connection_group_id; //numeric
    char *name; // string
    sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e group_type; //enum
    char *thumbnail_url; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} connection_group_short_response_t;

__attribute__((deprecated)) connection_group_short_response_t *connection_group_short_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long connection_group_id,
    char *name,
    sirqul_iot_platform_connection_group_short_response_GROUPTYPE_e group_type,
    char *thumbnail_url,
    char *returning
);

void connection_group_short_response_free(connection_group_short_response_t *connection_group_short_response);

connection_group_short_response_t *connection_group_short_response_parseFromJSON(cJSON *connection_group_short_responseJSON);

cJSON *connection_group_short_response_convertToJSON(connection_group_short_response_t *connection_group_short_response);

#endif /* _connection_group_short_response_H_ */

