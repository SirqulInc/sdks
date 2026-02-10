/*
 * asset_response.h
 *
 * 
 */

#ifndef _asset_response_H_
#define _asset_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct asset_response_t asset_response_t;

#include "account_short_response.h"
#include "name_string_value_response.h"



typedef struct asset_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long asset_id; //numeric
    char *file_name; // string
    char *caption; // string
    char *media_type; // string
    char *thumbnail_url; // string
    char *cover_url; // string
    char *full_url; // string
    char *asset_version; // string
    char *version_name; // string
    int version_code; //numeric
    char *display; // string
    char *location_description; // string
    struct account_short_response_t *uploader; //model
    long likes_count; //numeric
    int comments_count; //numeric
    double latitude; //numeric
    double longitude; //numeric
    char *attached_media_type; // string
    char *attached_asset_url; // string
    long created; //numeric
    long updated; //numeric
    char *search_tags; // string
    char *meta_data; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} asset_response_t;

__attribute__((deprecated)) asset_response_t *asset_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long asset_id,
    char *file_name,
    char *caption,
    char *media_type,
    char *thumbnail_url,
    char *cover_url,
    char *full_url,
    char *asset_version,
    char *version_name,
    int version_code,
    char *display,
    char *location_description,
    account_short_response_t *uploader,
    long likes_count,
    int comments_count,
    double latitude,
    double longitude,
    char *attached_media_type,
    char *attached_asset_url,
    long created,
    long updated,
    char *search_tags,
    char *meta_data,
    char *returning
);

void asset_response_free(asset_response_t *asset_response);

asset_response_t *asset_response_parseFromJSON(cJSON *asset_responseJSON);

cJSON *asset_response_convertToJSON(asset_response_t *asset_response);

#endif /* _asset_response_H_ */

