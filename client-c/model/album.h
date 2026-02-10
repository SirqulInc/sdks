/*
 * album.h
 *
 * 
 */

#ifndef _album_H_
#define _album_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct album_t album_t;

#include "account.h"
#include "application.h"
#include "asset.h"
#include "contact_info.h"
#include "flag.h"
#include "flag_threshold.h"
#include "note.h"
#include "permissions.h"
#include "user_permissions.h"
#include "yay_or_nay.h"

// Enum APPROVALSTATUS for album

typedef enum  { sirqul_iot_platform_album_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_album_APPROVALSTATUS_PENDING, sirqul_iot_platform_album_APPROVALSTATUS_REJECTED, sirqul_iot_platform_album_APPROVALSTATUS_APPROVED, sirqul_iot_platform_album_APPROVALSTATUS_FEATURED } sirqul_iot_platform_album_APPROVALSTATUS_e;

char* album_approval_status_ToString(sirqul_iot_platform_album_APPROVALSTATUS_e approval_status);

sirqul_iot_platform_album_APPROVALSTATUS_e album_approval_status_FromString(char* approval_status);

// Enum VISIBILITY for album

typedef enum  { sirqul_iot_platform_album_VISIBILITY_NULL = 0, sirqul_iot_platform_album_VISIBILITY__PUBLIC, sirqul_iot_platform_album_VISIBILITY__PRIVATE, sirqul_iot_platform_album_VISIBILITY_FRIENDS } sirqul_iot_platform_album_VISIBILITY_e;

char* album_visibility_ToString(sirqul_iot_platform_album_VISIBILITY_e visibility);

sirqul_iot_platform_album_VISIBILITY_e album_visibility_FromString(char* visibility);



typedef struct album_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    struct account_t *owner; //model
    char *title; // string
    struct application_t *application; //model
    sirqul_iot_platform_album_APPROVALSTATUS_e approval_status; //enum
    struct permissions_t *public_permissions; //model
    list_t *user_permissions; //nonprimitive container
    sirqul_iot_platform_album_VISIBILITY_e visibility; //enum
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    list_t *likes; //nonprimitive container
    long like_count; //numeric
    long dislike_count; //numeric
    list_t *flags; //nonprimitive container
    long flag_count; //numeric
    struct flag_threshold_t *flag_threshold; //model
    char *description; // string
    char *album_type; // string
    list_t *assets; //nonprimitive container
    struct asset_t *cover_asset; //model
    char *tags; // string
    char *start_date; //date time
    char *end_date; //date time
    struct contact_info_t *contact_info; //model
    long asset_count; //numeric
    long favorite_count; //numeric
    long viewed_count; //numeric
    long clicked_count; //numeric
    long shared_count; //numeric
    int anonymous; //boolean
    char *owner_username; // string
    char *display; // string
    char *app_key; // string
    long billable_id; //numeric
    char *sub_type; // string
    struct asset_t *content_asset; //model
    char *secondary_type; // string
    char *content_name; // string
    char *application_title; // string
    char *short_title; // string
    long default_threshold; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} album_t;

__attribute__((deprecated)) album_t *album_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *title,
    application_t *application,
    sirqul_iot_platform_album_APPROVALSTATUS_e approval_status,
    permissions_t *public_permissions,
    list_t *user_permissions,
    sirqul_iot_platform_album_VISIBILITY_e visibility,
    list_t *notes,
    long note_count,
    list_t *likes,
    long like_count,
    long dislike_count,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    char *description,
    char *album_type,
    list_t *assets,
    asset_t *cover_asset,
    char *tags,
    char *start_date,
    char *end_date,
    contact_info_t *contact_info,
    long asset_count,
    long favorite_count,
    long viewed_count,
    long clicked_count,
    long shared_count,
    int anonymous,
    char *owner_username,
    char *display,
    char *app_key,
    long billable_id,
    char *sub_type,
    asset_t *content_asset,
    char *secondary_type,
    char *content_name,
    char *application_title,
    char *short_title,
    long default_threshold
);

void album_free(album_t *album);

album_t *album_parseFromJSON(cJSON *albumJSON);

cJSON *album_convertToJSON(album_t *album);

#endif /* _album_H_ */

