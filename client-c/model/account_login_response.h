/*
 * account_login_response.h
 *
 * 
 */

#ifndef _account_login_response_H_
#define _account_login_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_login_response_t account_login_response_t;

#include "name_string_value_response.h"



typedef struct account_login_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long account_id; //numeric
    char *location_display; // string
    char *display; // string
    char *username; // string
    char *account_type; // string
    int validated; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} account_login_response_t;

__attribute__((deprecated)) account_login_response_t *account_login_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    int validated,
    char *returning
);

void account_login_response_free(account_login_response_t *account_login_response);

account_login_response_t *account_login_response_parseFromJSON(cJSON *account_login_responseJSON);

cJSON *account_login_response_convertToJSON(account_login_response_t *account_login_response);

#endif /* _account_login_response_H_ */

