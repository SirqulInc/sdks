/*
 * asset.h
 *
 * 
 */

#ifndef _asset_H_
#define _asset_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct asset_t asset_t;

#include "account.h"
#include "album.h"
#include "application.h"
#include "assignment.h"
#include "flag.h"
#include "flag_threshold.h"
#include "note.h"
#include "yay_or_nay.h"

// Enum DEFAULTALBUMTYPE for asset

typedef enum  { sirqul_iot_platform_asset_DEFAULTALBUMTYPE_NULL = 0, sirqul_iot_platform_asset_DEFAULTALBUMTYPE_PROFILE, sirqul_iot_platform_asset_DEFAULTALBUMTYPE_DEFAULT_PROFILE_AVATAR, sirqul_iot_platform_asset_DEFAULTALBUMTYPE_DEFAULT_APP_ICON, sirqul_iot_platform_asset_DEFAULTALBUMTYPE_DEFAULT_APP_LOGO } sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e;

char* asset_default_album_type_ToString(sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e default_album_type);

sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e asset_default_album_type_FromString(char* default_album_type);



typedef struct asset_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    long premigration_id; //numeric
    long new_owner_id; //numeric
    char *folder_uri; // string
    char *file_name; // string
    char *media_type; // string
    char *mime_type; // string
    char *meta_data; // string
    char *caption; // string
    int version_code; //numeric
    char *version_name; // string
    long like_count; //numeric
    long dislike_count; //numeric
    long note_count; //numeric
    struct account_t *owner; //model
    list_t *notes; //nonprimitive container
    list_t *likes; //nonprimitive container
    long attached_asset_id; //numeric
    list_t *flags; //nonprimitive container
    long flag_count; //numeric
    struct flag_threshold_t *flag_threshold; //model
    sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e default_album_type; //enum
    struct album_t *album; //model
    struct assignment_t *assignment; //model
    struct application_t *application; //model
    char *display; // string
    char *app_key; // string
    long billable_id; //numeric
    char *sub_type; // string
    char *content_name; // string
    char *urifolder; // string
    long default_threshold; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} asset_t;

__attribute__((deprecated)) asset_t *asset_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    long premigration_id,
    long new_owner_id,
    char *folder_uri,
    char *file_name,
    char *media_type,
    char *mime_type,
    char *meta_data,
    char *caption,
    int version_code,
    char *version_name,
    long like_count,
    long dislike_count,
    long note_count,
    account_t *owner,
    list_t *notes,
    list_t *likes,
    long attached_asset_id,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    sirqul_iot_platform_asset_DEFAULTALBUMTYPE_e default_album_type,
    album_t *album,
    assignment_t *assignment,
    application_t *application,
    char *display,
    char *app_key,
    long billable_id,
    char *sub_type,
    char *content_name,
    char *urifolder,
    long default_threshold
);

void asset_free(asset_t *asset);

asset_t *asset_parseFromJSON(cJSON *assetJSON);

cJSON *asset_convertToJSON(asset_t *asset);

#endif /* _asset_H_ */

