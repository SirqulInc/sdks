/*
 * album_response.h
 *
 * 
 */

#ifndef _album_response_H_
#define _album_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct album_response_t album_response_t;

#include "account_short_response.h"
#include "asset_response.h"
#include "name_string_value_response.h"

// Enum VISIBILITY for album_response

typedef enum  { sirqul_iot_platform_album_response_VISIBILITY_NULL = 0, sirqul_iot_platform_album_response_VISIBILITY__PUBLIC, sirqul_iot_platform_album_response_VISIBILITY__PRIVATE, sirqul_iot_platform_album_response_VISIBILITY_FRIENDS } sirqul_iot_platform_album_response_VISIBILITY_e;

char* album_response_visibility_ToString(sirqul_iot_platform_album_response_VISIBILITY_e visibility);

sirqul_iot_platform_album_response_VISIBILITY_e album_response_visibility_FromString(char* visibility);

// Enum APPROVALSTATUS for album_response

typedef enum  { sirqul_iot_platform_album_response_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_album_response_APPROVALSTATUS_PENDING, sirqul_iot_platform_album_response_APPROVALSTATUS_REJECTED, sirqul_iot_platform_album_response_APPROVALSTATUS_APPROVED, sirqul_iot_platform_album_response_APPROVALSTATUS_FEATURED } sirqul_iot_platform_album_response_APPROVALSTATUS_e;

char* album_response_approval_status_ToString(sirqul_iot_platform_album_response_APPROVALSTATUS_e approval_status);

sirqul_iot_platform_album_response_APPROVALSTATUS_e album_response_approval_status_FromString(char* approval_status);



typedef struct album_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long album_id; //numeric
    char *album_type; // string
    long owner_id; //numeric
    struct account_short_response_t *owner; //model
    char *title; // string
    char *description; // string
    struct asset_response_t *cover_asset; //model
    char *tags; // string
    sirqul_iot_platform_album_response_VISIBILITY_e visibility; //enum
    long start_date; //numeric
    long end_date; //numeric
    int asset_count; //numeric
    long like_count; //numeric
    long dislike_count; //numeric
    long comments_count; //numeric
    int user_count; //numeric
    int notifications; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    double distance; //numeric
    long date_created; //numeric
    long date_updated; //numeric
    char *cell_phone; // string
    char *full_address; // string
    sirqul_iot_platform_album_response_APPROVALSTATUS_e approval_status; //enum
    long favorite_count; //numeric
    int liked; //boolean
    int favorite; //boolean
    long favorite_id; //numeric
    int anonymous; //boolean
    long flag_count; //numeric
    long viewed_count; //numeric
    long clicked_count; //numeric
    long shared_count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} album_response_t;

__attribute__((deprecated)) album_response_t *album_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long album_id,
    char *album_type,
    long owner_id,
    account_short_response_t *owner,
    char *title,
    char *description,
    asset_response_t *cover_asset,
    char *tags,
    sirqul_iot_platform_album_response_VISIBILITY_e visibility,
    long start_date,
    long end_date,
    int asset_count,
    long like_count,
    long dislike_count,
    long comments_count,
    int user_count,
    int notifications,
    double latitude,
    double longitude,
    char *location_description,
    double distance,
    long date_created,
    long date_updated,
    char *cell_phone,
    char *full_address,
    sirqul_iot_platform_album_response_APPROVALSTATUS_e approval_status,
    long favorite_count,
    int liked,
    int favorite,
    long favorite_id,
    int anonymous,
    long flag_count,
    long viewed_count,
    long clicked_count,
    long shared_count,
    char *returning
);

void album_response_free(album_response_t *album_response);

album_response_t *album_response_parseFromJSON(cJSON *album_responseJSON);

cJSON *album_response_convertToJSON(album_response_t *album_response);

#endif /* _album_response_H_ */

