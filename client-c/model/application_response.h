/*
 * application_response.h
 *
 * 
 */

#ifndef _application_response_H_
#define _application_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct application_response_t application_response_t;

#include "asset_short_response.h"
#include "billable_entity_short_response.h"
#include "category_response.h"
#include "name_string_value_response.h"
#include "platform_response.h"
#include "trilat_app_settings.h"

// Enum SCORINGTYPE for application_response

typedef enum  { sirqul_iot_platform_application_response_SCORINGTYPE_NULL = 0, sirqul_iot_platform_application_response_SCORINGTYPE_GAME_LEVEL, sirqul_iot_platform_application_response_SCORINGTYPE_GAME_OBJECT } sirqul_iot_platform_application_response_SCORINGTYPE_e;

char* application_response_scoring_type_ToString(sirqul_iot_platform_application_response_SCORINGTYPE_e scoring_type);

sirqul_iot_platform_application_response_SCORINGTYPE_e application_response_scoring_type_FromString(char* scoring_type);



typedef struct application_response_t {
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
    char *app_type; // string
    char *app_name; // string
    char *bundle_id; // string
    sirqul_iot_platform_application_response_SCORINGTYPE_e scoring_type; //enum
    int hint_cost; //numeric
    int max_score; //numeric
    float tickets_per_point; //numeric
    int has_game_data; //boolean
    int global_tickets; //boolean
    char *eula_version; // string
    long eula_date_updated; //numeric
    char *modules; // string
    char *billable_entity_name; // string
    int show_in_activities; //boolean
    char *css_class; // string
    char *invite_welcome_text; // string
    char *invite_page_url; // string
    char *apns_certificate_file_name; // string
    char *facebook_app_id; // string
    char *facebook_app_secret; // string
    char *app_token; // string
    char *google_api_key; // string
    char *app_rest_key; // string
    int public_content_approval; //boolean
    int production_mode; //boolean
    int minimum_session_length; //numeric
    int session_gap_length; //numeric
    char *sqoot_api_key; // string
    int amqp_enabled; //boolean
    int authorized_count; //numeric
    char *authorized_servers; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} application_response_t;

__attribute__((deprecated)) application_response_t *application_response_create(
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
    char *app_type,
    char *app_name,
    char *bundle_id,
    sirqul_iot_platform_application_response_SCORINGTYPE_e scoring_type,
    int hint_cost,
    int max_score,
    float tickets_per_point,
    int has_game_data,
    int global_tickets,
    char *eula_version,
    long eula_date_updated,
    char *modules,
    char *billable_entity_name,
    int show_in_activities,
    char *css_class,
    char *invite_welcome_text,
    char *invite_page_url,
    char *apns_certificate_file_name,
    char *facebook_app_id,
    char *facebook_app_secret,
    char *app_token,
    char *google_api_key,
    char *app_rest_key,
    int public_content_approval,
    int production_mode,
    int minimum_session_length,
    int session_gap_length,
    char *sqoot_api_key,
    int amqp_enabled,
    int authorized_count,
    char *authorized_servers,
    char *returning
);

void application_response_free(application_response_t *application_response);

application_response_t *application_response_parseFromJSON(cJSON *application_responseJSON);

cJSON *application_response_convertToJSON(application_response_t *application_response);

#endif /* _application_response_H_ */

