/*
 * user_permissions_response.h
 *
 * 
 */

#ifndef _user_permissions_response_H_
#define _user_permissions_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_permissions_response_t user_permissions_response_t;

#include "connection_group_response.h"
#include "connection_response.h"
#include "name_string_value_response.h"
#include "permission_response.h"



typedef struct user_permissions_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    struct permission_response_t *permissions; //model
    struct connection_response_t *connection; //model
    struct connection_group_response_t *connection_group; //model
    int exclude; //boolean
    int blocked; //boolean
    int friend_group; //boolean
    long permissionable_id; //numeric
    char *permissionable_type; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} user_permissions_response_t;

__attribute__((deprecated)) user_permissions_response_t *user_permissions_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    permission_response_t *permissions,
    connection_response_t *connection,
    connection_group_response_t *connection_group,
    int exclude,
    int blocked,
    int friend_group,
    long permissionable_id,
    char *permissionable_type,
    char *returning
);

void user_permissions_response_free(user_permissions_response_t *user_permissions_response);

user_permissions_response_t *user_permissions_response_parseFromJSON(cJSON *user_permissions_responseJSON);

cJSON *user_permissions_response_convertToJSON(user_permissions_response_t *user_permissions_response);

#endif /* _user_permissions_response_H_ */

