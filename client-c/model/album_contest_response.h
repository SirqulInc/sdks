/*
 * album_contest_response.h
 *
 * 
 */

#ifndef _album_contest_response_H_
#define _album_contest_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct album_contest_response_t album_contest_response_t;

#include "account_short_response.h"
#include "album_full_response.h"
#include "connection_group_short_response.h"
#include "connection_response.h"
#include "like_response.h"
#include "name_string_value_response.h"
#include "note_full_response.h"
#include "permissions.h"

// Enum VISIBILITY for album_contest_response

typedef enum  { sirqul_iot_platform_album_contest_response_VISIBILITY_NULL = 0, sirqul_iot_platform_album_contest_response_VISIBILITY__PUBLIC, sirqul_iot_platform_album_contest_response_VISIBILITY__PRIVATE, sirqul_iot_platform_album_contest_response_VISIBILITY_FRIENDS } sirqul_iot_platform_album_contest_response_VISIBILITY_e;

char* album_contest_response_visibility_ToString(sirqul_iot_platform_album_contest_response_VISIBILITY_e visibility);

sirqul_iot_platform_album_contest_response_VISIBILITY_e album_contest_response_visibility_FromString(char* visibility);

// Enum APPROVALSTATUS for album_contest_response

typedef enum  { sirqul_iot_platform_album_contest_response_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_album_contest_response_APPROVALSTATUS_PENDING, sirqul_iot_platform_album_contest_response_APPROVALSTATUS_REJECTED, sirqul_iot_platform_album_contest_response_APPROVALSTATUS_APPROVED, sirqul_iot_platform_album_contest_response_APPROVALSTATUS_FEATURED } sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e;

char* album_contest_response_approval_status_ToString(sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e approval_status);

sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e album_contest_response_approval_status_FromString(char* approval_status);



typedef struct album_contest_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long album_contest_id; //numeric
    char *contest_type; // string
    struct account_short_response_t *owner; //model
    char *title; // string
    char *description; // string
    sirqul_iot_platform_album_contest_response_VISIBILITY_e visibility; //enum
    long start_date; //numeric
    long end_date; //numeric
    long like_count; //numeric
    long dislike_count; //numeric
    int comments_count; //numeric
    int user_count; //numeric
    list_t *comments; //nonprimitive container
    list_t *likes; //nonprimitive container
    list_t *connection_groups; //nonprimitive container
    list_t *connections; //nonprimitive container
    int has_liked; //boolean
    struct permissions_t *user_permissions; //model
    struct permissions_t *public_permissions; //model
    struct album_full_response_t *album1; //model
    struct album_full_response_t *album2; //model
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    double distance; //numeric
    long date_created; //numeric
    long date_updated; //numeric
    sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e approval_status; //enum
    long vote_count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} album_contest_response_t;

__attribute__((deprecated)) album_contest_response_t *album_contest_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long album_contest_id,
    char *contest_type,
    account_short_response_t *owner,
    char *title,
    char *description,
    sirqul_iot_platform_album_contest_response_VISIBILITY_e visibility,
    long start_date,
    long end_date,
    long like_count,
    long dislike_count,
    int comments_count,
    int user_count,
    list_t *comments,
    list_t *likes,
    list_t *connection_groups,
    list_t *connections,
    int has_liked,
    permissions_t *user_permissions,
    permissions_t *public_permissions,
    album_full_response_t *album1,
    album_full_response_t *album2,
    double latitude,
    double longitude,
    char *location_description,
    double distance,
    long date_created,
    long date_updated,
    sirqul_iot_platform_album_contest_response_APPROVALSTATUS_e approval_status,
    long vote_count,
    char *returning
);

void album_contest_response_free(album_contest_response_t *album_contest_response);

album_contest_response_t *album_contest_response_parseFromJSON(cJSON *album_contest_responseJSON);

cJSON *album_contest_response_convertToJSON(album_contest_response_t *album_contest_response);

#endif /* _album_contest_response_H_ */

