/*
 * user_activity_response.h
 *
 * 
 */

#ifndef _user_activity_response_H_
#define _user_activity_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_activity_response_t user_activity_response_t;

#include "name_string_value_response.h"



typedef struct user_activity_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *created; //date time
    double latitude; //numeric
    double longitude; //numeric
    char *tag; // string
    long custom_id; //numeric
    char *custom_type; // string
    long user_id; //numeric
    char *username; // string
    char *app_title; // string
    long app_id; //numeric
    char *app_url; // string
    char *app_description; // string
    char *image_url; // string
    char *profile_image; // string
    char *fields; // string
    long id; //numeric
    char *custom_text; // string
    double custom_value; //numeric
    char *custom_message; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} user_activity_response_t;

__attribute__((deprecated)) user_activity_response_t *user_activity_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *created,
    double latitude,
    double longitude,
    char *tag,
    long custom_id,
    char *custom_type,
    long user_id,
    char *username,
    char *app_title,
    long app_id,
    char *app_url,
    char *app_description,
    char *image_url,
    char *profile_image,
    char *fields,
    long id,
    char *custom_text,
    double custom_value,
    char *custom_message,
    char *returning
);

void user_activity_response_free(user_activity_response_t *user_activity_response);

user_activity_response_t *user_activity_response_parseFromJSON(cJSON *user_activity_responseJSON);

cJSON *user_activity_response_convertToJSON(user_activity_response_t *user_activity_response);

#endif /* _user_activity_response_H_ */

