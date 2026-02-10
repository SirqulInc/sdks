/*
 * user_location_list_response.h
 *
 * 
 */

#ifndef _user_location_list_response_H_
#define _user_location_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_location_list_response_t user_location_list_response_t;

#include "name_string_value_response.h"
#include "user_location_response.h"

// Enum USERLOCATIONTYPE for user_location_list_response

typedef enum  { sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_NULL = 0, sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_POSTALCODE, sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_EXACT } sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e;

char* user_location_list_response_user_location_type_ToString(sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_type);

sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_list_response_user_location_type_FromString(char* user_location_type);



typedef struct user_location_list_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_type; //enum
    double latitude; //numeric
    double longitude; //numeric
    char *postal_code; // string
    int count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} user_location_list_response_t;

__attribute__((deprecated)) user_location_list_response_t *user_location_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    sirqul_iot_platform_user_location_list_response_USERLOCATIONTYPE_e user_location_type,
    double latitude,
    double longitude,
    char *postal_code,
    int count,
    char *returning
);

void user_location_list_response_free(user_location_list_response_t *user_location_list_response);

user_location_list_response_t *user_location_list_response_parseFromJSON(cJSON *user_location_list_responseJSON);

cJSON *user_location_list_response_convertToJSON(user_location_list_response_t *user_location_list_response);

#endif /* _user_location_list_response_H_ */

