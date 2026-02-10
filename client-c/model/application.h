/*
 * application.h
 *
 * 
 */

#ifndef _application_H_
#define _application_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct application_t application_t;

#include "asset.h"
#include "billable_entity.h"
#include "blob_file.h"
#include "category.h"
#include "placement.h"
#include "platform.h"
#include "retailer.h"
#include "trilat_app_settings.h"

// Enum SCORINGTYPE for application

typedef enum  { sirqul_iot_platform_application_SCORINGTYPE_NULL = 0, sirqul_iot_platform_application_SCORINGTYPE_GAME_LEVEL, sirqul_iot_platform_application_SCORINGTYPE_GAME_OBJECT } sirqul_iot_platform_application_SCORINGTYPE_e;

char* application_scoring_type_ToString(sirqul_iot_platform_application_SCORINGTYPE_e scoring_type);

sirqul_iot_platform_application_SCORINGTYPE_e application_scoring_type_FromString(char* scoring_type);



typedef struct application_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *title; // string
    char *about; // string
    char *certificate_url; // string
    char *certificate_name; // string
    struct blob_file_t *certificate; //model
    char *certificate_last_updated; //date time
    char *app_description; // string
    int show_in_activities; //boolean
    char *css_class; // string
    char *invite_welcome_text; // string
    char *bundle_id; // string
    char *app_type; // string
    sirqul_iot_platform_application_SCORINGTYPE_e scoring_type; //enum
    char *app_key; // string
    char *app_rest_key; // string
    char *app_token_key; // string
    int hint_cost; //numeric
    char *eula_date; //date time
    char *eula_version; // string
    char *landing_page_url; // string
    char *invite_page_url; // string
    char *download_urls; // string
    char *app_name; // string
    struct asset_t *app_icon; //model
    struct asset_t *app_logo; //model
    struct billable_entity_t *billable_entity; //model
    char *facebook_app_id; // string
    char *facebook_app_secret; // string
    char *twitter_app_id; // string
    char *twitter_app_secret; // string
    char *twitter_callback_url; // string
    char *default_image; // string
    char *modules; // string
    char *authorized_servers; // string
    int authorized_count; //numeric
    char *active_servers; // string
    char *license_period; //date time
    int has_game_data; //boolean
    char *current_build_version; // string
    char *current_api_version; // string
    int global_tickets; //boolean
    float tickets_per_point; //numeric
    int max_points_per_score; //numeric
    int use_app_cache; //boolean
    char *unique_user_tag; // string
    int use_matching_algorithm; //boolean
    list_t *platforms; //nonprimitive container
    list_t *categories; //nonprimitive container
    list_t *placements; //nonprimitive container
    int has_advertisements; //boolean
    char *apple_app_id; // string
    char *google_app_id; // string
    char *google_api_key; // string
    char *google_o_auth_client_id; // string
    char *google_o_auth_secret; // string
    char *google_o_auth_access_token; // string
    char *google_o_auth_refresh_token; // string
    char *baidu_api_key; // string
    char *baidu_secret_key; // string
    char *jpush_app_key; // string
    char *jpush_master_secret; // string
    char *xg_push_secret_key; // string
    int public_notifications; //boolean
    char *url_scheme; // string
    struct retailer_t *retailer; //model
    char *object_store_session; // string
    int public_content_approval; //boolean
    int production_mode; //boolean
    char *griply_base_url; // string
    int minimum_session_length; //numeric
    int session_gap_length; //numeric
    int process_session_data; //boolean
    int local_ads_enabled; //boolean
    int include_in_report; //boolean
    char *sqoot_api_key; // string
    int amqp_enabled; //boolean
    struct trilat_app_settings_t *trilat_settings; //model

    int _library_owned; // Is the library responsible for freeing this object?
} application_t;

__attribute__((deprecated)) application_t *application_create(
    long id,
    int active,
    int valid,
    char *title,
    char *about,
    char *certificate_url,
    char *certificate_name,
    blob_file_t *certificate,
    char *certificate_last_updated,
    char *app_description,
    int show_in_activities,
    char *css_class,
    char *invite_welcome_text,
    char *bundle_id,
    char *app_type,
    sirqul_iot_platform_application_SCORINGTYPE_e scoring_type,
    char *app_key,
    char *app_rest_key,
    char *app_token_key,
    int hint_cost,
    char *eula_date,
    char *eula_version,
    char *landing_page_url,
    char *invite_page_url,
    char *download_urls,
    char *app_name,
    asset_t *app_icon,
    asset_t *app_logo,
    billable_entity_t *billable_entity,
    char *facebook_app_id,
    char *facebook_app_secret,
    char *twitter_app_id,
    char *twitter_app_secret,
    char *twitter_callback_url,
    char *default_image,
    char *modules,
    char *authorized_servers,
    int authorized_count,
    char *active_servers,
    char *license_period,
    int has_game_data,
    char *current_build_version,
    char *current_api_version,
    int global_tickets,
    float tickets_per_point,
    int max_points_per_score,
    int use_app_cache,
    char *unique_user_tag,
    int use_matching_algorithm,
    list_t *platforms,
    list_t *categories,
    list_t *placements,
    int has_advertisements,
    char *apple_app_id,
    char *google_app_id,
    char *google_api_key,
    char *google_o_auth_client_id,
    char *google_o_auth_secret,
    char *google_o_auth_access_token,
    char *google_o_auth_refresh_token,
    char *baidu_api_key,
    char *baidu_secret_key,
    char *jpush_app_key,
    char *jpush_master_secret,
    char *xg_push_secret_key,
    int public_notifications,
    char *url_scheme,
    retailer_t *retailer,
    char *object_store_session,
    int public_content_approval,
    int production_mode,
    char *griply_base_url,
    int minimum_session_length,
    int session_gap_length,
    int process_session_data,
    int local_ads_enabled,
    int include_in_report,
    char *sqoot_api_key,
    int amqp_enabled,
    trilat_app_settings_t *trilat_settings
);

void application_free(application_t *application);

application_t *application_parseFromJSON(cJSON *applicationJSON);

cJSON *application_convertToJSON(application_t *application);

#endif /* _application_H_ */

