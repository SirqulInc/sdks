/*
 * profile_response.h
 *
 * 
 */

#ifndef _profile_response_H_
#define _profile_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct profile_response_t profile_response_t;

#include "app_info_response.h"
#include "connection_info_response.h"
#include "name_string_value_response.h"
#include "profile_info_response.h"



typedef struct profile_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long login_account_id; //numeric
    int validated; //boolean
    struct app_info_response_t *app_info; //model
    int can_view_app_info; //boolean
    int can_view_friend_info; //boolean
    int can_view_profile_info; //boolean
    long flag_count; //numeric
    struct connection_info_response_t *friend_info; //model
    int is_blocked; //boolean
    int is_profile_owner; //boolean
    int met_flag_threshold; //boolean
    struct profile_info_response_t *profile_info; //model
    int trusted; //boolean
    int following; //boolean
    int friend_requested; //boolean
    int friend_request_pending; //boolean
    int blocked; //boolean
    int flagged; //boolean
    int profile_owner; //boolean
    int _friend; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} profile_response_t;

__attribute__((deprecated)) profile_response_t *profile_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long login_account_id,
    int validated,
    app_info_response_t *app_info,
    int can_view_app_info,
    int can_view_friend_info,
    int can_view_profile_info,
    long flag_count,
    connection_info_response_t *friend_info,
    int is_blocked,
    int is_profile_owner,
    int met_flag_threshold,
    profile_info_response_t *profile_info,
    int trusted,
    int following,
    int friend_requested,
    int friend_request_pending,
    int blocked,
    int flagged,
    int profile_owner,
    int _friend,
    char *returning
);

void profile_response_free(profile_response_t *profile_response);

profile_response_t *profile_response_parseFromJSON(cJSON *profile_responseJSON);

cJSON *profile_response_convertToJSON(profile_response_t *profile_response);

#endif /* _profile_response_H_ */

