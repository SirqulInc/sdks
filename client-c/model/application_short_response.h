/*
 * application_short_response.h
 *
 * 
 */

#ifndef _application_short_response_H_
#define _application_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct application_short_response_t application_short_response_t;

#include "asset_short_response.h"
#include "billable_entity_short_response.h"
#include "category_response.h"
#include "name_string_value_response.h"
#include "platform_response.h"
#include "trilat_app_settings.h"



typedef struct application_short_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long application_id; //numeric
    char *app_key; // string
    char *title; // string
    char *current_build_version; // string
    char *current_api_version; // string
    struct asset_short_response_t *app_icon; //model
    struct asset_short_response_t *app_logo; //model
    int active; //boolean
    char *about; // string
    char *landing_page_url; // string
    char *landing_page_full_url; // string
    char *default_image_full_url; // string
    char *activity_description; // string
    list_t *platforms; //nonprimitive container
    list_t *categories; //nonprimitive container
    int placement_count; //numeric
    struct billable_entity_short_response_t *billable; //model
    int has_ads; //boolean
    int public_notifications; //boolean
    char *url_scheme; // string
    int global; //boolean
    char *download_urls; // string
    int local_ads_enabled; //boolean
    struct trilat_app_settings_t *trilat_settings; //model
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} application_short_response_t;

__attribute__((deprecated)) application_short_response_t *application_short_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long application_id,
    char *app_key,
    char *title,
    char *current_build_version,
    char *current_api_version,
    asset_short_response_t *app_icon,
    asset_short_response_t *app_logo,
    int active,
    char *about,
    char *landing_page_url,
    char *landing_page_full_url,
    char *default_image_full_url,
    char *activity_description,
    list_t *platforms,
    list_t *categories,
    int placement_count,
    billable_entity_short_response_t *billable,
    int has_ads,
    int public_notifications,
    char *url_scheme,
    int global,
    char *download_urls,
    int local_ads_enabled,
    trilat_app_settings_t *trilat_settings,
    char *returning
);

void application_short_response_free(application_short_response_t *application_short_response);

application_short_response_t *application_short_response_parseFromJSON(cJSON *application_short_responseJSON);

cJSON *application_short_response_convertToJSON(application_short_response_t *application_short_response);

#endif /* _application_short_response_H_ */

