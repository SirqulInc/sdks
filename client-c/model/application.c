#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "application.h"


char* application_scoring_type_ToString(sirqul_iot_platform_application_SCORINGTYPE_e scoring_type) {
    char* scoring_typeArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    return scoring_typeArray[scoring_type];
}

sirqul_iot_platform_application_SCORINGTYPE_e application_scoring_type_FromString(char* scoring_type){
    int stringToReturn = 0;
    char *scoring_typeArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    size_t sizeofArray = sizeof(scoring_typeArray) / sizeof(scoring_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(scoring_type, scoring_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static application_t *application_create_internal(
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
    ) {
    application_t *application_local_var = malloc(sizeof(application_t));
    if (!application_local_var) {
        return NULL;
    }
    application_local_var->id = id;
    application_local_var->active = active;
    application_local_var->valid = valid;
    application_local_var->title = title;
    application_local_var->about = about;
    application_local_var->certificate_url = certificate_url;
    application_local_var->certificate_name = certificate_name;
    application_local_var->certificate = certificate;
    application_local_var->certificate_last_updated = certificate_last_updated;
    application_local_var->app_description = app_description;
    application_local_var->show_in_activities = show_in_activities;
    application_local_var->css_class = css_class;
    application_local_var->invite_welcome_text = invite_welcome_text;
    application_local_var->bundle_id = bundle_id;
    application_local_var->app_type = app_type;
    application_local_var->scoring_type = scoring_type;
    application_local_var->app_key = app_key;
    application_local_var->app_rest_key = app_rest_key;
    application_local_var->app_token_key = app_token_key;
    application_local_var->hint_cost = hint_cost;
    application_local_var->eula_date = eula_date;
    application_local_var->eula_version = eula_version;
    application_local_var->landing_page_url = landing_page_url;
    application_local_var->invite_page_url = invite_page_url;
    application_local_var->download_urls = download_urls;
    application_local_var->app_name = app_name;
    application_local_var->app_icon = app_icon;
    application_local_var->app_logo = app_logo;
    application_local_var->billable_entity = billable_entity;
    application_local_var->facebook_app_id = facebook_app_id;
    application_local_var->facebook_app_secret = facebook_app_secret;
    application_local_var->twitter_app_id = twitter_app_id;
    application_local_var->twitter_app_secret = twitter_app_secret;
    application_local_var->twitter_callback_url = twitter_callback_url;
    application_local_var->default_image = default_image;
    application_local_var->modules = modules;
    application_local_var->authorized_servers = authorized_servers;
    application_local_var->authorized_count = authorized_count;
    application_local_var->active_servers = active_servers;
    application_local_var->license_period = license_period;
    application_local_var->has_game_data = has_game_data;
    application_local_var->current_build_version = current_build_version;
    application_local_var->current_api_version = current_api_version;
    application_local_var->global_tickets = global_tickets;
    application_local_var->tickets_per_point = tickets_per_point;
    application_local_var->max_points_per_score = max_points_per_score;
    application_local_var->use_app_cache = use_app_cache;
    application_local_var->unique_user_tag = unique_user_tag;
    application_local_var->use_matching_algorithm = use_matching_algorithm;
    application_local_var->platforms = platforms;
    application_local_var->categories = categories;
    application_local_var->placements = placements;
    application_local_var->has_advertisements = has_advertisements;
    application_local_var->apple_app_id = apple_app_id;
    application_local_var->google_app_id = google_app_id;
    application_local_var->google_api_key = google_api_key;
    application_local_var->google_o_auth_client_id = google_o_auth_client_id;
    application_local_var->google_o_auth_secret = google_o_auth_secret;
    application_local_var->google_o_auth_access_token = google_o_auth_access_token;
    application_local_var->google_o_auth_refresh_token = google_o_auth_refresh_token;
    application_local_var->baidu_api_key = baidu_api_key;
    application_local_var->baidu_secret_key = baidu_secret_key;
    application_local_var->jpush_app_key = jpush_app_key;
    application_local_var->jpush_master_secret = jpush_master_secret;
    application_local_var->xg_push_secret_key = xg_push_secret_key;
    application_local_var->public_notifications = public_notifications;
    application_local_var->url_scheme = url_scheme;
    application_local_var->retailer = retailer;
    application_local_var->object_store_session = object_store_session;
    application_local_var->public_content_approval = public_content_approval;
    application_local_var->production_mode = production_mode;
    application_local_var->griply_base_url = griply_base_url;
    application_local_var->minimum_session_length = minimum_session_length;
    application_local_var->session_gap_length = session_gap_length;
    application_local_var->process_session_data = process_session_data;
    application_local_var->local_ads_enabled = local_ads_enabled;
    application_local_var->include_in_report = include_in_report;
    application_local_var->sqoot_api_key = sqoot_api_key;
    application_local_var->amqp_enabled = amqp_enabled;
    application_local_var->trilat_settings = trilat_settings;

    application_local_var->_library_owned = 1;
    return application_local_var;
}

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
    ) {
    return application_create_internal (
        id,
        active,
        valid,
        title,
        about,
        certificate_url,
        certificate_name,
        certificate,
        certificate_last_updated,
        app_description,
        show_in_activities,
        css_class,
        invite_welcome_text,
        bundle_id,
        app_type,
        scoring_type,
        app_key,
        app_rest_key,
        app_token_key,
        hint_cost,
        eula_date,
        eula_version,
        landing_page_url,
        invite_page_url,
        download_urls,
        app_name,
        app_icon,
        app_logo,
        billable_entity,
        facebook_app_id,
        facebook_app_secret,
        twitter_app_id,
        twitter_app_secret,
        twitter_callback_url,
        default_image,
        modules,
        authorized_servers,
        authorized_count,
        active_servers,
        license_period,
        has_game_data,
        current_build_version,
        current_api_version,
        global_tickets,
        tickets_per_point,
        max_points_per_score,
        use_app_cache,
        unique_user_tag,
        use_matching_algorithm,
        platforms,
        categories,
        placements,
        has_advertisements,
        apple_app_id,
        google_app_id,
        google_api_key,
        google_o_auth_client_id,
        google_o_auth_secret,
        google_o_auth_access_token,
        google_o_auth_refresh_token,
        baidu_api_key,
        baidu_secret_key,
        jpush_app_key,
        jpush_master_secret,
        xg_push_secret_key,
        public_notifications,
        url_scheme,
        retailer,
        object_store_session,
        public_content_approval,
        production_mode,
        griply_base_url,
        minimum_session_length,
        session_gap_length,
        process_session_data,
        local_ads_enabled,
        include_in_report,
        sqoot_api_key,
        amqp_enabled,
        trilat_settings
        );
}

void application_free(application_t *application) {
    if(NULL == application){
        return ;
    }
    if(application->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "application_free");
        return ;
    }
    listEntry_t *listEntry;
    if (application->title) {
        free(application->title);
        application->title = NULL;
    }
    if (application->about) {
        free(application->about);
        application->about = NULL;
    }
    if (application->certificate_url) {
        free(application->certificate_url);
        application->certificate_url = NULL;
    }
    if (application->certificate_name) {
        free(application->certificate_name);
        application->certificate_name = NULL;
    }
    if (application->certificate) {
        blob_file_free(application->certificate);
        application->certificate = NULL;
    }
    if (application->certificate_last_updated) {
        free(application->certificate_last_updated);
        application->certificate_last_updated = NULL;
    }
    if (application->app_description) {
        free(application->app_description);
        application->app_description = NULL;
    }
    if (application->css_class) {
        free(application->css_class);
        application->css_class = NULL;
    }
    if (application->invite_welcome_text) {
        free(application->invite_welcome_text);
        application->invite_welcome_text = NULL;
    }
    if (application->bundle_id) {
        free(application->bundle_id);
        application->bundle_id = NULL;
    }
    if (application->app_type) {
        free(application->app_type);
        application->app_type = NULL;
    }
    if (application->app_key) {
        free(application->app_key);
        application->app_key = NULL;
    }
    if (application->app_rest_key) {
        free(application->app_rest_key);
        application->app_rest_key = NULL;
    }
    if (application->app_token_key) {
        free(application->app_token_key);
        application->app_token_key = NULL;
    }
    if (application->eula_date) {
        free(application->eula_date);
        application->eula_date = NULL;
    }
    if (application->eula_version) {
        free(application->eula_version);
        application->eula_version = NULL;
    }
    if (application->landing_page_url) {
        free(application->landing_page_url);
        application->landing_page_url = NULL;
    }
    if (application->invite_page_url) {
        free(application->invite_page_url);
        application->invite_page_url = NULL;
    }
    if (application->download_urls) {
        free(application->download_urls);
        application->download_urls = NULL;
    }
    if (application->app_name) {
        free(application->app_name);
        application->app_name = NULL;
    }
    if (application->app_icon) {
        asset_free(application->app_icon);
        application->app_icon = NULL;
    }
    if (application->app_logo) {
        asset_free(application->app_logo);
        application->app_logo = NULL;
    }
    if (application->billable_entity) {
        billable_entity_free(application->billable_entity);
        application->billable_entity = NULL;
    }
    if (application->facebook_app_id) {
        free(application->facebook_app_id);
        application->facebook_app_id = NULL;
    }
    if (application->facebook_app_secret) {
        free(application->facebook_app_secret);
        application->facebook_app_secret = NULL;
    }
    if (application->twitter_app_id) {
        free(application->twitter_app_id);
        application->twitter_app_id = NULL;
    }
    if (application->twitter_app_secret) {
        free(application->twitter_app_secret);
        application->twitter_app_secret = NULL;
    }
    if (application->twitter_callback_url) {
        free(application->twitter_callback_url);
        application->twitter_callback_url = NULL;
    }
    if (application->default_image) {
        free(application->default_image);
        application->default_image = NULL;
    }
    if (application->modules) {
        free(application->modules);
        application->modules = NULL;
    }
    if (application->authorized_servers) {
        free(application->authorized_servers);
        application->authorized_servers = NULL;
    }
    if (application->active_servers) {
        free(application->active_servers);
        application->active_servers = NULL;
    }
    if (application->license_period) {
        free(application->license_period);
        application->license_period = NULL;
    }
    if (application->current_build_version) {
        free(application->current_build_version);
        application->current_build_version = NULL;
    }
    if (application->current_api_version) {
        free(application->current_api_version);
        application->current_api_version = NULL;
    }
    if (application->unique_user_tag) {
        free(application->unique_user_tag);
        application->unique_user_tag = NULL;
    }
    if (application->platforms) {
        list_ForEach(listEntry, application->platforms) {
            platform_free(listEntry->data);
        }
        list_freeList(application->platforms);
        application->platforms = NULL;
    }
    if (application->categories) {
        list_ForEach(listEntry, application->categories) {
            category_free(listEntry->data);
        }
        list_freeList(application->categories);
        application->categories = NULL;
    }
    if (application->placements) {
        list_ForEach(listEntry, application->placements) {
            placement_free(listEntry->data);
        }
        list_freeList(application->placements);
        application->placements = NULL;
    }
    if (application->apple_app_id) {
        free(application->apple_app_id);
        application->apple_app_id = NULL;
    }
    if (application->google_app_id) {
        free(application->google_app_id);
        application->google_app_id = NULL;
    }
    if (application->google_api_key) {
        free(application->google_api_key);
        application->google_api_key = NULL;
    }
    if (application->google_o_auth_client_id) {
        free(application->google_o_auth_client_id);
        application->google_o_auth_client_id = NULL;
    }
    if (application->google_o_auth_secret) {
        free(application->google_o_auth_secret);
        application->google_o_auth_secret = NULL;
    }
    if (application->google_o_auth_access_token) {
        free(application->google_o_auth_access_token);
        application->google_o_auth_access_token = NULL;
    }
    if (application->google_o_auth_refresh_token) {
        free(application->google_o_auth_refresh_token);
        application->google_o_auth_refresh_token = NULL;
    }
    if (application->baidu_api_key) {
        free(application->baidu_api_key);
        application->baidu_api_key = NULL;
    }
    if (application->baidu_secret_key) {
        free(application->baidu_secret_key);
        application->baidu_secret_key = NULL;
    }
    if (application->jpush_app_key) {
        free(application->jpush_app_key);
        application->jpush_app_key = NULL;
    }
    if (application->jpush_master_secret) {
        free(application->jpush_master_secret);
        application->jpush_master_secret = NULL;
    }
    if (application->xg_push_secret_key) {
        free(application->xg_push_secret_key);
        application->xg_push_secret_key = NULL;
    }
    if (application->url_scheme) {
        free(application->url_scheme);
        application->url_scheme = NULL;
    }
    if (application->retailer) {
        retailer_free(application->retailer);
        application->retailer = NULL;
    }
    if (application->object_store_session) {
        free(application->object_store_session);
        application->object_store_session = NULL;
    }
    if (application->griply_base_url) {
        free(application->griply_base_url);
        application->griply_base_url = NULL;
    }
    if (application->sqoot_api_key) {
        free(application->sqoot_api_key);
        application->sqoot_api_key = NULL;
    }
    if (application->trilat_settings) {
        trilat_app_settings_free(application->trilat_settings);
        application->trilat_settings = NULL;
    }
    free(application);
}

cJSON *application_convertToJSON(application_t *application) {
    cJSON *item = cJSON_CreateObject();

    // application->id
    if(application->id) {
    if(cJSON_AddNumberToObject(item, "id", application->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // application->active
    if(application->active) {
    if(cJSON_AddBoolToObject(item, "active", application->active) == NULL) {
    goto fail; //Bool
    }
    }


    // application->valid
    if(application->valid) {
    if(cJSON_AddBoolToObject(item, "valid", application->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // application->title
    if(application->title) {
    if(cJSON_AddStringToObject(item, "title", application->title) == NULL) {
    goto fail; //String
    }
    }


    // application->about
    if(application->about) {
    if(cJSON_AddStringToObject(item, "about", application->about) == NULL) {
    goto fail; //String
    }
    }


    // application->certificate_url
    if(application->certificate_url) {
    if(cJSON_AddStringToObject(item, "certificateUrl", application->certificate_url) == NULL) {
    goto fail; //String
    }
    }


    // application->certificate_name
    if(application->certificate_name) {
    if(cJSON_AddStringToObject(item, "certificateName", application->certificate_name) == NULL) {
    goto fail; //String
    }
    }


    // application->certificate
    if(application->certificate) {
    cJSON *certificate_local_JSON = blob_file_convertToJSON(application->certificate);
    if(certificate_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "certificate", certificate_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application->certificate_last_updated
    if(application->certificate_last_updated) {
    if(cJSON_AddStringToObject(item, "certificateLastUpdated", application->certificate_last_updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // application->app_description
    if(application->app_description) {
    if(cJSON_AddStringToObject(item, "appDescription", application->app_description) == NULL) {
    goto fail; //String
    }
    }


    // application->show_in_activities
    if(application->show_in_activities) {
    if(cJSON_AddBoolToObject(item, "showInActivities", application->show_in_activities) == NULL) {
    goto fail; //Bool
    }
    }


    // application->css_class
    if(application->css_class) {
    if(cJSON_AddStringToObject(item, "cssClass", application->css_class) == NULL) {
    goto fail; //String
    }
    }


    // application->invite_welcome_text
    if(application->invite_welcome_text) {
    if(cJSON_AddStringToObject(item, "inviteWelcomeText", application->invite_welcome_text) == NULL) {
    goto fail; //String
    }
    }


    // application->bundle_id
    if(application->bundle_id) {
    if(cJSON_AddStringToObject(item, "bundleId", application->bundle_id) == NULL) {
    goto fail; //String
    }
    }


    // application->app_type
    if(application->app_type) {
    if(cJSON_AddStringToObject(item, "appType", application->app_type) == NULL) {
    goto fail; //String
    }
    }


    // application->scoring_type
    if(application->scoring_type != sirqul_iot_platform_application_SCORINGTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "scoringType", application_scoring_type_ToString(application->scoring_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // application->app_key
    if(application->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", application->app_key) == NULL) {
    goto fail; //String
    }
    }


    // application->app_rest_key
    if(application->app_rest_key) {
    if(cJSON_AddStringToObject(item, "appRestKey", application->app_rest_key) == NULL) {
    goto fail; //String
    }
    }


    // application->app_token_key
    if(application->app_token_key) {
    if(cJSON_AddStringToObject(item, "appTokenKey", application->app_token_key) == NULL) {
    goto fail; //String
    }
    }


    // application->hint_cost
    if(application->hint_cost) {
    if(cJSON_AddNumberToObject(item, "hintCost", application->hint_cost) == NULL) {
    goto fail; //Numeric
    }
    }


    // application->eula_date
    if(application->eula_date) {
    if(cJSON_AddStringToObject(item, "eulaDate", application->eula_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // application->eula_version
    if(application->eula_version) {
    if(cJSON_AddStringToObject(item, "eulaVersion", application->eula_version) == NULL) {
    goto fail; //String
    }
    }


    // application->landing_page_url
    if(application->landing_page_url) {
    if(cJSON_AddStringToObject(item, "landingPageUrl", application->landing_page_url) == NULL) {
    goto fail; //String
    }
    }


    // application->invite_page_url
    if(application->invite_page_url) {
    if(cJSON_AddStringToObject(item, "invitePageUrl", application->invite_page_url) == NULL) {
    goto fail; //String
    }
    }


    // application->download_urls
    if(application->download_urls) {
    if(cJSON_AddStringToObject(item, "downloadUrls", application->download_urls) == NULL) {
    goto fail; //String
    }
    }


    // application->app_name
    if(application->app_name) {
    if(cJSON_AddStringToObject(item, "appName", application->app_name) == NULL) {
    goto fail; //String
    }
    }


    // application->app_icon
    if(application->app_icon) {
    cJSON *app_icon_local_JSON = asset_convertToJSON(application->app_icon);
    if(app_icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appIcon", app_icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application->app_logo
    if(application->app_logo) {
    cJSON *app_logo_local_JSON = asset_convertToJSON(application->app_logo);
    if(app_logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appLogo", app_logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application->billable_entity
    if(application->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_convertToJSON(application->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application->facebook_app_id
    if(application->facebook_app_id) {
    if(cJSON_AddStringToObject(item, "facebookAppId", application->facebook_app_id) == NULL) {
    goto fail; //String
    }
    }


    // application->facebook_app_secret
    if(application->facebook_app_secret) {
    if(cJSON_AddStringToObject(item, "facebookAppSecret", application->facebook_app_secret) == NULL) {
    goto fail; //String
    }
    }


    // application->twitter_app_id
    if(application->twitter_app_id) {
    if(cJSON_AddStringToObject(item, "twitterAppId", application->twitter_app_id) == NULL) {
    goto fail; //String
    }
    }


    // application->twitter_app_secret
    if(application->twitter_app_secret) {
    if(cJSON_AddStringToObject(item, "twitterAppSecret", application->twitter_app_secret) == NULL) {
    goto fail; //String
    }
    }


    // application->twitter_callback_url
    if(application->twitter_callback_url) {
    if(cJSON_AddStringToObject(item, "twitterCallbackURL", application->twitter_callback_url) == NULL) {
    goto fail; //String
    }
    }


    // application->default_image
    if(application->default_image) {
    if(cJSON_AddStringToObject(item, "defaultImage", application->default_image) == NULL) {
    goto fail; //String
    }
    }


    // application->modules
    if(application->modules) {
    if(cJSON_AddStringToObject(item, "modules", application->modules) == NULL) {
    goto fail; //String
    }
    }


    // application->authorized_servers
    if(application->authorized_servers) {
    if(cJSON_AddStringToObject(item, "authorizedServers", application->authorized_servers) == NULL) {
    goto fail; //String
    }
    }


    // application->authorized_count
    if(application->authorized_count) {
    if(cJSON_AddNumberToObject(item, "authorizedCount", application->authorized_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // application->active_servers
    if(application->active_servers) {
    if(cJSON_AddStringToObject(item, "activeServers", application->active_servers) == NULL) {
    goto fail; //String
    }
    }


    // application->license_period
    if(application->license_period) {
    if(cJSON_AddStringToObject(item, "licensePeriod", application->license_period) == NULL) {
    goto fail; //Date-Time
    }
    }


    // application->has_game_data
    if(application->has_game_data) {
    if(cJSON_AddBoolToObject(item, "hasGameData", application->has_game_data) == NULL) {
    goto fail; //Bool
    }
    }


    // application->current_build_version
    if(application->current_build_version) {
    if(cJSON_AddStringToObject(item, "currentBuildVersion", application->current_build_version) == NULL) {
    goto fail; //String
    }
    }


    // application->current_api_version
    if(application->current_api_version) {
    if(cJSON_AddStringToObject(item, "currentApiVersion", application->current_api_version) == NULL) {
    goto fail; //String
    }
    }


    // application->global_tickets
    if(application->global_tickets) {
    if(cJSON_AddBoolToObject(item, "globalTickets", application->global_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // application->tickets_per_point
    if(application->tickets_per_point) {
    if(cJSON_AddNumberToObject(item, "ticketsPerPoint", application->tickets_per_point) == NULL) {
    goto fail; //Numeric
    }
    }


    // application->max_points_per_score
    if(application->max_points_per_score) {
    if(cJSON_AddNumberToObject(item, "maxPointsPerScore", application->max_points_per_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // application->use_app_cache
    if(application->use_app_cache) {
    if(cJSON_AddBoolToObject(item, "useAppCache", application->use_app_cache) == NULL) {
    goto fail; //Bool
    }
    }


    // application->unique_user_tag
    if(application->unique_user_tag) {
    if(cJSON_AddStringToObject(item, "uniqueUserTag", application->unique_user_tag) == NULL) {
    goto fail; //String
    }
    }


    // application->use_matching_algorithm
    if(application->use_matching_algorithm) {
    if(cJSON_AddBoolToObject(item, "useMatchingAlgorithm", application->use_matching_algorithm) == NULL) {
    goto fail; //Bool
    }
    }


    // application->platforms
    if(application->platforms) {
    cJSON *platforms = cJSON_AddArrayToObject(item, "platforms");
    if(platforms == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *platformsListEntry;
    if (application->platforms) {
    list_ForEach(platformsListEntry, application->platforms) {
    cJSON *itemLocal = platform_convertToJSON(platformsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(platforms, itemLocal);
    }
    }
    }


    // application->categories
    if(application->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (application->categories) {
    list_ForEach(categoriesListEntry, application->categories) {
    cJSON *itemLocal = category_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // application->placements
    if(application->placements) {
    cJSON *placements = cJSON_AddArrayToObject(item, "placements");
    if(placements == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *placementsListEntry;
    if (application->placements) {
    list_ForEach(placementsListEntry, application->placements) {
    cJSON *itemLocal = placement_convertToJSON(placementsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(placements, itemLocal);
    }
    }
    }


    // application->has_advertisements
    if(application->has_advertisements) {
    if(cJSON_AddBoolToObject(item, "hasAdvertisements", application->has_advertisements) == NULL) {
    goto fail; //Bool
    }
    }


    // application->apple_app_id
    if(application->apple_app_id) {
    if(cJSON_AddStringToObject(item, "appleAppId", application->apple_app_id) == NULL) {
    goto fail; //String
    }
    }


    // application->google_app_id
    if(application->google_app_id) {
    if(cJSON_AddStringToObject(item, "googleAppId", application->google_app_id) == NULL) {
    goto fail; //String
    }
    }


    // application->google_api_key
    if(application->google_api_key) {
    if(cJSON_AddStringToObject(item, "googleApiKey", application->google_api_key) == NULL) {
    goto fail; //String
    }
    }


    // application->google_o_auth_client_id
    if(application->google_o_auth_client_id) {
    if(cJSON_AddStringToObject(item, "googleOAuthClientId", application->google_o_auth_client_id) == NULL) {
    goto fail; //String
    }
    }


    // application->google_o_auth_secret
    if(application->google_o_auth_secret) {
    if(cJSON_AddStringToObject(item, "googleOAuthSecret", application->google_o_auth_secret) == NULL) {
    goto fail; //String
    }
    }


    // application->google_o_auth_access_token
    if(application->google_o_auth_access_token) {
    if(cJSON_AddStringToObject(item, "googleOAuthAccessToken", application->google_o_auth_access_token) == NULL) {
    goto fail; //String
    }
    }


    // application->google_o_auth_refresh_token
    if(application->google_o_auth_refresh_token) {
    if(cJSON_AddStringToObject(item, "googleOAuthRefreshToken", application->google_o_auth_refresh_token) == NULL) {
    goto fail; //String
    }
    }


    // application->baidu_api_key
    if(application->baidu_api_key) {
    if(cJSON_AddStringToObject(item, "baiduApiKey", application->baidu_api_key) == NULL) {
    goto fail; //String
    }
    }


    // application->baidu_secret_key
    if(application->baidu_secret_key) {
    if(cJSON_AddStringToObject(item, "baiduSecretKey", application->baidu_secret_key) == NULL) {
    goto fail; //String
    }
    }


    // application->jpush_app_key
    if(application->jpush_app_key) {
    if(cJSON_AddStringToObject(item, "jpushAppKey", application->jpush_app_key) == NULL) {
    goto fail; //String
    }
    }


    // application->jpush_master_secret
    if(application->jpush_master_secret) {
    if(cJSON_AddStringToObject(item, "jpushMasterSecret", application->jpush_master_secret) == NULL) {
    goto fail; //String
    }
    }


    // application->xg_push_secret_key
    if(application->xg_push_secret_key) {
    if(cJSON_AddStringToObject(item, "xgPushSecretKey", application->xg_push_secret_key) == NULL) {
    goto fail; //String
    }
    }


    // application->public_notifications
    if(application->public_notifications) {
    if(cJSON_AddBoolToObject(item, "publicNotifications", application->public_notifications) == NULL) {
    goto fail; //Bool
    }
    }


    // application->url_scheme
    if(application->url_scheme) {
    if(cJSON_AddStringToObject(item, "urlScheme", application->url_scheme) == NULL) {
    goto fail; //String
    }
    }


    // application->retailer
    if(application->retailer) {
    cJSON *retailer_local_JSON = retailer_convertToJSON(application->retailer);
    if(retailer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retailer", retailer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application->object_store_session
    if(application->object_store_session) {
    if(cJSON_AddStringToObject(item, "objectStoreSession", application->object_store_session) == NULL) {
    goto fail; //String
    }
    }


    // application->public_content_approval
    if(application->public_content_approval) {
    if(cJSON_AddBoolToObject(item, "publicContentApproval", application->public_content_approval) == NULL) {
    goto fail; //Bool
    }
    }


    // application->production_mode
    if(application->production_mode) {
    if(cJSON_AddBoolToObject(item, "productionMode", application->production_mode) == NULL) {
    goto fail; //Bool
    }
    }


    // application->griply_base_url
    if(application->griply_base_url) {
    if(cJSON_AddStringToObject(item, "griplyBaseUrl", application->griply_base_url) == NULL) {
    goto fail; //String
    }
    }


    // application->minimum_session_length
    if(application->minimum_session_length) {
    if(cJSON_AddNumberToObject(item, "minimumSessionLength", application->minimum_session_length) == NULL) {
    goto fail; //Numeric
    }
    }


    // application->session_gap_length
    if(application->session_gap_length) {
    if(cJSON_AddNumberToObject(item, "sessionGapLength", application->session_gap_length) == NULL) {
    goto fail; //Numeric
    }
    }


    // application->process_session_data
    if(application->process_session_data) {
    if(cJSON_AddBoolToObject(item, "processSessionData", application->process_session_data) == NULL) {
    goto fail; //Bool
    }
    }


    // application->local_ads_enabled
    if(application->local_ads_enabled) {
    if(cJSON_AddBoolToObject(item, "localAdsEnabled", application->local_ads_enabled) == NULL) {
    goto fail; //Bool
    }
    }


    // application->include_in_report
    if(application->include_in_report) {
    if(cJSON_AddBoolToObject(item, "includeInReport", application->include_in_report) == NULL) {
    goto fail; //Bool
    }
    }


    // application->sqoot_api_key
    if(application->sqoot_api_key) {
    if(cJSON_AddStringToObject(item, "sqootApiKey", application->sqoot_api_key) == NULL) {
    goto fail; //String
    }
    }


    // application->amqp_enabled
    if(application->amqp_enabled) {
    if(cJSON_AddBoolToObject(item, "amqpEnabled", application->amqp_enabled) == NULL) {
    goto fail; //Bool
    }
    }


    // application->trilat_settings
    if(application->trilat_settings) {
    cJSON *trilat_settings_local_JSON = trilat_app_settings_convertToJSON(application->trilat_settings);
    if(trilat_settings_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "trilatSettings", trilat_settings_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

application_t *application_parseFromJSON(cJSON *applicationJSON){

    application_t *application_local_var = NULL;

    // define the local variable for application->certificate
    blob_file_t *certificate_local_nonprim = NULL;

    // define the local variable for application->app_icon
    asset_t *app_icon_local_nonprim = NULL;

    // define the local variable for application->app_logo
    asset_t *app_logo_local_nonprim = NULL;

    // define the local variable for application->billable_entity
    billable_entity_t *billable_entity_local_nonprim = NULL;

    // define the local list for application->platforms
    list_t *platformsList = NULL;

    // define the local list for application->categories
    list_t *categoriesList = NULL;

    // define the local list for application->placements
    list_t *placementsList = NULL;

    // define the local variable for application->retailer
    retailer_t *retailer_local_nonprim = NULL;

    // define the local variable for application->trilat_settings
    trilat_app_settings_t *trilat_settings_local_nonprim = NULL;

    // application->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(applicationJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // application->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(applicationJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // application->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(applicationJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // application->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(applicationJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // application->about
    cJSON *about = cJSON_GetObjectItemCaseSensitive(applicationJSON, "about");
    if (cJSON_IsNull(about)) {
        about = NULL;
    }
    if (about) { 
    if(!cJSON_IsString(about) && !cJSON_IsNull(about))
    {
    goto end; //String
    }
    }

    // application->certificate_url
    cJSON *certificate_url = cJSON_GetObjectItemCaseSensitive(applicationJSON, "certificateUrl");
    if (cJSON_IsNull(certificate_url)) {
        certificate_url = NULL;
    }
    if (certificate_url) { 
    if(!cJSON_IsString(certificate_url) && !cJSON_IsNull(certificate_url))
    {
    goto end; //String
    }
    }

    // application->certificate_name
    cJSON *certificate_name = cJSON_GetObjectItemCaseSensitive(applicationJSON, "certificateName");
    if (cJSON_IsNull(certificate_name)) {
        certificate_name = NULL;
    }
    if (certificate_name) { 
    if(!cJSON_IsString(certificate_name) && !cJSON_IsNull(certificate_name))
    {
    goto end; //String
    }
    }

    // application->certificate
    cJSON *certificate = cJSON_GetObjectItemCaseSensitive(applicationJSON, "certificate");
    if (cJSON_IsNull(certificate)) {
        certificate = NULL;
    }
    if (certificate) { 
    certificate_local_nonprim = blob_file_parseFromJSON(certificate); //nonprimitive
    }

    // application->certificate_last_updated
    cJSON *certificate_last_updated = cJSON_GetObjectItemCaseSensitive(applicationJSON, "certificateLastUpdated");
    if (cJSON_IsNull(certificate_last_updated)) {
        certificate_last_updated = NULL;
    }
    if (certificate_last_updated) { 
    if(!cJSON_IsString(certificate_last_updated) && !cJSON_IsNull(certificate_last_updated))
    {
    goto end; //DateTime
    }
    }

    // application->app_description
    cJSON *app_description = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appDescription");
    if (cJSON_IsNull(app_description)) {
        app_description = NULL;
    }
    if (app_description) { 
    if(!cJSON_IsString(app_description) && !cJSON_IsNull(app_description))
    {
    goto end; //String
    }
    }

    // application->show_in_activities
    cJSON *show_in_activities = cJSON_GetObjectItemCaseSensitive(applicationJSON, "showInActivities");
    if (cJSON_IsNull(show_in_activities)) {
        show_in_activities = NULL;
    }
    if (show_in_activities) { 
    if(!cJSON_IsBool(show_in_activities))
    {
    goto end; //Bool
    }
    }

    // application->css_class
    cJSON *css_class = cJSON_GetObjectItemCaseSensitive(applicationJSON, "cssClass");
    if (cJSON_IsNull(css_class)) {
        css_class = NULL;
    }
    if (css_class) { 
    if(!cJSON_IsString(css_class) && !cJSON_IsNull(css_class))
    {
    goto end; //String
    }
    }

    // application->invite_welcome_text
    cJSON *invite_welcome_text = cJSON_GetObjectItemCaseSensitive(applicationJSON, "inviteWelcomeText");
    if (cJSON_IsNull(invite_welcome_text)) {
        invite_welcome_text = NULL;
    }
    if (invite_welcome_text) { 
    if(!cJSON_IsString(invite_welcome_text) && !cJSON_IsNull(invite_welcome_text))
    {
    goto end; //String
    }
    }

    // application->bundle_id
    cJSON *bundle_id = cJSON_GetObjectItemCaseSensitive(applicationJSON, "bundleId");
    if (cJSON_IsNull(bundle_id)) {
        bundle_id = NULL;
    }
    if (bundle_id) { 
    if(!cJSON_IsString(bundle_id) && !cJSON_IsNull(bundle_id))
    {
    goto end; //String
    }
    }

    // application->app_type
    cJSON *app_type = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appType");
    if (cJSON_IsNull(app_type)) {
        app_type = NULL;
    }
    if (app_type) { 
    if(!cJSON_IsString(app_type) && !cJSON_IsNull(app_type))
    {
    goto end; //String
    }
    }

    // application->scoring_type
    cJSON *scoring_type = cJSON_GetObjectItemCaseSensitive(applicationJSON, "scoringType");
    if (cJSON_IsNull(scoring_type)) {
        scoring_type = NULL;
    }
    sirqul_iot_platform_application_SCORINGTYPE_e scoring_typeVariable;
    if (scoring_type) { 
    if(!cJSON_IsString(scoring_type))
    {
    goto end; //Enum
    }
    scoring_typeVariable = application_scoring_type_FromString(scoring_type->valuestring);
    }

    // application->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // application->app_rest_key
    cJSON *app_rest_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appRestKey");
    if (cJSON_IsNull(app_rest_key)) {
        app_rest_key = NULL;
    }
    if (app_rest_key) { 
    if(!cJSON_IsString(app_rest_key) && !cJSON_IsNull(app_rest_key))
    {
    goto end; //String
    }
    }

    // application->app_token_key
    cJSON *app_token_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appTokenKey");
    if (cJSON_IsNull(app_token_key)) {
        app_token_key = NULL;
    }
    if (app_token_key) { 
    if(!cJSON_IsString(app_token_key) && !cJSON_IsNull(app_token_key))
    {
    goto end; //String
    }
    }

    // application->hint_cost
    cJSON *hint_cost = cJSON_GetObjectItemCaseSensitive(applicationJSON, "hintCost");
    if (cJSON_IsNull(hint_cost)) {
        hint_cost = NULL;
    }
    if (hint_cost) { 
    if(!cJSON_IsNumber(hint_cost))
    {
    goto end; //Numeric
    }
    }

    // application->eula_date
    cJSON *eula_date = cJSON_GetObjectItemCaseSensitive(applicationJSON, "eulaDate");
    if (cJSON_IsNull(eula_date)) {
        eula_date = NULL;
    }
    if (eula_date) { 
    if(!cJSON_IsString(eula_date) && !cJSON_IsNull(eula_date))
    {
    goto end; //DateTime
    }
    }

    // application->eula_version
    cJSON *eula_version = cJSON_GetObjectItemCaseSensitive(applicationJSON, "eulaVersion");
    if (cJSON_IsNull(eula_version)) {
        eula_version = NULL;
    }
    if (eula_version) { 
    if(!cJSON_IsString(eula_version) && !cJSON_IsNull(eula_version))
    {
    goto end; //String
    }
    }

    // application->landing_page_url
    cJSON *landing_page_url = cJSON_GetObjectItemCaseSensitive(applicationJSON, "landingPageUrl");
    if (cJSON_IsNull(landing_page_url)) {
        landing_page_url = NULL;
    }
    if (landing_page_url) { 
    if(!cJSON_IsString(landing_page_url) && !cJSON_IsNull(landing_page_url))
    {
    goto end; //String
    }
    }

    // application->invite_page_url
    cJSON *invite_page_url = cJSON_GetObjectItemCaseSensitive(applicationJSON, "invitePageUrl");
    if (cJSON_IsNull(invite_page_url)) {
        invite_page_url = NULL;
    }
    if (invite_page_url) { 
    if(!cJSON_IsString(invite_page_url) && !cJSON_IsNull(invite_page_url))
    {
    goto end; //String
    }
    }

    // application->download_urls
    cJSON *download_urls = cJSON_GetObjectItemCaseSensitive(applicationJSON, "downloadUrls");
    if (cJSON_IsNull(download_urls)) {
        download_urls = NULL;
    }
    if (download_urls) { 
    if(!cJSON_IsString(download_urls) && !cJSON_IsNull(download_urls))
    {
    goto end; //String
    }
    }

    // application->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }

    // application->app_icon
    cJSON *app_icon = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appIcon");
    if (cJSON_IsNull(app_icon)) {
        app_icon = NULL;
    }
    if (app_icon) { 
    app_icon_local_nonprim = asset_parseFromJSON(app_icon); //nonprimitive
    }

    // application->app_logo
    cJSON *app_logo = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appLogo");
    if (cJSON_IsNull(app_logo)) {
        app_logo = NULL;
    }
    if (app_logo) { 
    app_logo_local_nonprim = asset_parseFromJSON(app_logo); //nonprimitive
    }

    // application->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(applicationJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_parseFromJSON(billable_entity); //nonprimitive
    }

    // application->facebook_app_id
    cJSON *facebook_app_id = cJSON_GetObjectItemCaseSensitive(applicationJSON, "facebookAppId");
    if (cJSON_IsNull(facebook_app_id)) {
        facebook_app_id = NULL;
    }
    if (facebook_app_id) { 
    if(!cJSON_IsString(facebook_app_id) && !cJSON_IsNull(facebook_app_id))
    {
    goto end; //String
    }
    }

    // application->facebook_app_secret
    cJSON *facebook_app_secret = cJSON_GetObjectItemCaseSensitive(applicationJSON, "facebookAppSecret");
    if (cJSON_IsNull(facebook_app_secret)) {
        facebook_app_secret = NULL;
    }
    if (facebook_app_secret) { 
    if(!cJSON_IsString(facebook_app_secret) && !cJSON_IsNull(facebook_app_secret))
    {
    goto end; //String
    }
    }

    // application->twitter_app_id
    cJSON *twitter_app_id = cJSON_GetObjectItemCaseSensitive(applicationJSON, "twitterAppId");
    if (cJSON_IsNull(twitter_app_id)) {
        twitter_app_id = NULL;
    }
    if (twitter_app_id) { 
    if(!cJSON_IsString(twitter_app_id) && !cJSON_IsNull(twitter_app_id))
    {
    goto end; //String
    }
    }

    // application->twitter_app_secret
    cJSON *twitter_app_secret = cJSON_GetObjectItemCaseSensitive(applicationJSON, "twitterAppSecret");
    if (cJSON_IsNull(twitter_app_secret)) {
        twitter_app_secret = NULL;
    }
    if (twitter_app_secret) { 
    if(!cJSON_IsString(twitter_app_secret) && !cJSON_IsNull(twitter_app_secret))
    {
    goto end; //String
    }
    }

    // application->twitter_callback_url
    cJSON *twitter_callback_url = cJSON_GetObjectItemCaseSensitive(applicationJSON, "twitterCallbackURL");
    if (cJSON_IsNull(twitter_callback_url)) {
        twitter_callback_url = NULL;
    }
    if (twitter_callback_url) { 
    if(!cJSON_IsString(twitter_callback_url) && !cJSON_IsNull(twitter_callback_url))
    {
    goto end; //String
    }
    }

    // application->default_image
    cJSON *default_image = cJSON_GetObjectItemCaseSensitive(applicationJSON, "defaultImage");
    if (cJSON_IsNull(default_image)) {
        default_image = NULL;
    }
    if (default_image) { 
    if(!cJSON_IsString(default_image) && !cJSON_IsNull(default_image))
    {
    goto end; //String
    }
    }

    // application->modules
    cJSON *modules = cJSON_GetObjectItemCaseSensitive(applicationJSON, "modules");
    if (cJSON_IsNull(modules)) {
        modules = NULL;
    }
    if (modules) { 
    if(!cJSON_IsString(modules) && !cJSON_IsNull(modules))
    {
    goto end; //String
    }
    }

    // application->authorized_servers
    cJSON *authorized_servers = cJSON_GetObjectItemCaseSensitive(applicationJSON, "authorizedServers");
    if (cJSON_IsNull(authorized_servers)) {
        authorized_servers = NULL;
    }
    if (authorized_servers) { 
    if(!cJSON_IsString(authorized_servers) && !cJSON_IsNull(authorized_servers))
    {
    goto end; //String
    }
    }

    // application->authorized_count
    cJSON *authorized_count = cJSON_GetObjectItemCaseSensitive(applicationJSON, "authorizedCount");
    if (cJSON_IsNull(authorized_count)) {
        authorized_count = NULL;
    }
    if (authorized_count) { 
    if(!cJSON_IsNumber(authorized_count))
    {
    goto end; //Numeric
    }
    }

    // application->active_servers
    cJSON *active_servers = cJSON_GetObjectItemCaseSensitive(applicationJSON, "activeServers");
    if (cJSON_IsNull(active_servers)) {
        active_servers = NULL;
    }
    if (active_servers) { 
    if(!cJSON_IsString(active_servers) && !cJSON_IsNull(active_servers))
    {
    goto end; //String
    }
    }

    // application->license_period
    cJSON *license_period = cJSON_GetObjectItemCaseSensitive(applicationJSON, "licensePeriod");
    if (cJSON_IsNull(license_period)) {
        license_period = NULL;
    }
    if (license_period) { 
    if(!cJSON_IsString(license_period) && !cJSON_IsNull(license_period))
    {
    goto end; //DateTime
    }
    }

    // application->has_game_data
    cJSON *has_game_data = cJSON_GetObjectItemCaseSensitive(applicationJSON, "hasGameData");
    if (cJSON_IsNull(has_game_data)) {
        has_game_data = NULL;
    }
    if (has_game_data) { 
    if(!cJSON_IsBool(has_game_data))
    {
    goto end; //Bool
    }
    }

    // application->current_build_version
    cJSON *current_build_version = cJSON_GetObjectItemCaseSensitive(applicationJSON, "currentBuildVersion");
    if (cJSON_IsNull(current_build_version)) {
        current_build_version = NULL;
    }
    if (current_build_version) { 
    if(!cJSON_IsString(current_build_version) && !cJSON_IsNull(current_build_version))
    {
    goto end; //String
    }
    }

    // application->current_api_version
    cJSON *current_api_version = cJSON_GetObjectItemCaseSensitive(applicationJSON, "currentApiVersion");
    if (cJSON_IsNull(current_api_version)) {
        current_api_version = NULL;
    }
    if (current_api_version) { 
    if(!cJSON_IsString(current_api_version) && !cJSON_IsNull(current_api_version))
    {
    goto end; //String
    }
    }

    // application->global_tickets
    cJSON *global_tickets = cJSON_GetObjectItemCaseSensitive(applicationJSON, "globalTickets");
    if (cJSON_IsNull(global_tickets)) {
        global_tickets = NULL;
    }
    if (global_tickets) { 
    if(!cJSON_IsBool(global_tickets))
    {
    goto end; //Bool
    }
    }

    // application->tickets_per_point
    cJSON *tickets_per_point = cJSON_GetObjectItemCaseSensitive(applicationJSON, "ticketsPerPoint");
    if (cJSON_IsNull(tickets_per_point)) {
        tickets_per_point = NULL;
    }
    if (tickets_per_point) { 
    if(!cJSON_IsNumber(tickets_per_point))
    {
    goto end; //Numeric
    }
    }

    // application->max_points_per_score
    cJSON *max_points_per_score = cJSON_GetObjectItemCaseSensitive(applicationJSON, "maxPointsPerScore");
    if (cJSON_IsNull(max_points_per_score)) {
        max_points_per_score = NULL;
    }
    if (max_points_per_score) { 
    if(!cJSON_IsNumber(max_points_per_score))
    {
    goto end; //Numeric
    }
    }

    // application->use_app_cache
    cJSON *use_app_cache = cJSON_GetObjectItemCaseSensitive(applicationJSON, "useAppCache");
    if (cJSON_IsNull(use_app_cache)) {
        use_app_cache = NULL;
    }
    if (use_app_cache) { 
    if(!cJSON_IsBool(use_app_cache))
    {
    goto end; //Bool
    }
    }

    // application->unique_user_tag
    cJSON *unique_user_tag = cJSON_GetObjectItemCaseSensitive(applicationJSON, "uniqueUserTag");
    if (cJSON_IsNull(unique_user_tag)) {
        unique_user_tag = NULL;
    }
    if (unique_user_tag) { 
    if(!cJSON_IsString(unique_user_tag) && !cJSON_IsNull(unique_user_tag))
    {
    goto end; //String
    }
    }

    // application->use_matching_algorithm
    cJSON *use_matching_algorithm = cJSON_GetObjectItemCaseSensitive(applicationJSON, "useMatchingAlgorithm");
    if (cJSON_IsNull(use_matching_algorithm)) {
        use_matching_algorithm = NULL;
    }
    if (use_matching_algorithm) { 
    if(!cJSON_IsBool(use_matching_algorithm))
    {
    goto end; //Bool
    }
    }

    // application->platforms
    cJSON *platforms = cJSON_GetObjectItemCaseSensitive(applicationJSON, "platforms");
    if (cJSON_IsNull(platforms)) {
        platforms = NULL;
    }
    if (platforms) { 
    cJSON *platforms_local_nonprimitive = NULL;
    if(!cJSON_IsArray(platforms)){
        goto end; //nonprimitive container
    }

    platformsList = list_createList();

    cJSON_ArrayForEach(platforms_local_nonprimitive,platforms )
    {
        if(!cJSON_IsObject(platforms_local_nonprimitive)){
            goto end;
        }
        platform_t *platformsItem = platform_parseFromJSON(platforms_local_nonprimitive);

        list_addElement(platformsList, platformsItem);
    }
    }

    // application->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(applicationJSON, "categories");
    if (cJSON_IsNull(categories)) {
        categories = NULL;
    }
    if (categories) { 
    cJSON *categories_local_nonprimitive = NULL;
    if(!cJSON_IsArray(categories)){
        goto end; //nonprimitive container
    }

    categoriesList = list_createList();

    cJSON_ArrayForEach(categories_local_nonprimitive,categories )
    {
        if(!cJSON_IsObject(categories_local_nonprimitive)){
            goto end;
        }
        category_t *categoriesItem = category_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // application->placements
    cJSON *placements = cJSON_GetObjectItemCaseSensitive(applicationJSON, "placements");
    if (cJSON_IsNull(placements)) {
        placements = NULL;
    }
    if (placements) { 
    cJSON *placements_local_nonprimitive = NULL;
    if(!cJSON_IsArray(placements)){
        goto end; //nonprimitive container
    }

    placementsList = list_createList();

    cJSON_ArrayForEach(placements_local_nonprimitive,placements )
    {
        if(!cJSON_IsObject(placements_local_nonprimitive)){
            goto end;
        }
        placement_t *placementsItem = placement_parseFromJSON(placements_local_nonprimitive);

        list_addElement(placementsList, placementsItem);
    }
    }

    // application->has_advertisements
    cJSON *has_advertisements = cJSON_GetObjectItemCaseSensitive(applicationJSON, "hasAdvertisements");
    if (cJSON_IsNull(has_advertisements)) {
        has_advertisements = NULL;
    }
    if (has_advertisements) { 
    if(!cJSON_IsBool(has_advertisements))
    {
    goto end; //Bool
    }
    }

    // application->apple_app_id
    cJSON *apple_app_id = cJSON_GetObjectItemCaseSensitive(applicationJSON, "appleAppId");
    if (cJSON_IsNull(apple_app_id)) {
        apple_app_id = NULL;
    }
    if (apple_app_id) { 
    if(!cJSON_IsString(apple_app_id) && !cJSON_IsNull(apple_app_id))
    {
    goto end; //String
    }
    }

    // application->google_app_id
    cJSON *google_app_id = cJSON_GetObjectItemCaseSensitive(applicationJSON, "googleAppId");
    if (cJSON_IsNull(google_app_id)) {
        google_app_id = NULL;
    }
    if (google_app_id) { 
    if(!cJSON_IsString(google_app_id) && !cJSON_IsNull(google_app_id))
    {
    goto end; //String
    }
    }

    // application->google_api_key
    cJSON *google_api_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "googleApiKey");
    if (cJSON_IsNull(google_api_key)) {
        google_api_key = NULL;
    }
    if (google_api_key) { 
    if(!cJSON_IsString(google_api_key) && !cJSON_IsNull(google_api_key))
    {
    goto end; //String
    }
    }

    // application->google_o_auth_client_id
    cJSON *google_o_auth_client_id = cJSON_GetObjectItemCaseSensitive(applicationJSON, "googleOAuthClientId");
    if (cJSON_IsNull(google_o_auth_client_id)) {
        google_o_auth_client_id = NULL;
    }
    if (google_o_auth_client_id) { 
    if(!cJSON_IsString(google_o_auth_client_id) && !cJSON_IsNull(google_o_auth_client_id))
    {
    goto end; //String
    }
    }

    // application->google_o_auth_secret
    cJSON *google_o_auth_secret = cJSON_GetObjectItemCaseSensitive(applicationJSON, "googleOAuthSecret");
    if (cJSON_IsNull(google_o_auth_secret)) {
        google_o_auth_secret = NULL;
    }
    if (google_o_auth_secret) { 
    if(!cJSON_IsString(google_o_auth_secret) && !cJSON_IsNull(google_o_auth_secret))
    {
    goto end; //String
    }
    }

    // application->google_o_auth_access_token
    cJSON *google_o_auth_access_token = cJSON_GetObjectItemCaseSensitive(applicationJSON, "googleOAuthAccessToken");
    if (cJSON_IsNull(google_o_auth_access_token)) {
        google_o_auth_access_token = NULL;
    }
    if (google_o_auth_access_token) { 
    if(!cJSON_IsString(google_o_auth_access_token) && !cJSON_IsNull(google_o_auth_access_token))
    {
    goto end; //String
    }
    }

    // application->google_o_auth_refresh_token
    cJSON *google_o_auth_refresh_token = cJSON_GetObjectItemCaseSensitive(applicationJSON, "googleOAuthRefreshToken");
    if (cJSON_IsNull(google_o_auth_refresh_token)) {
        google_o_auth_refresh_token = NULL;
    }
    if (google_o_auth_refresh_token) { 
    if(!cJSON_IsString(google_o_auth_refresh_token) && !cJSON_IsNull(google_o_auth_refresh_token))
    {
    goto end; //String
    }
    }

    // application->baidu_api_key
    cJSON *baidu_api_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "baiduApiKey");
    if (cJSON_IsNull(baidu_api_key)) {
        baidu_api_key = NULL;
    }
    if (baidu_api_key) { 
    if(!cJSON_IsString(baidu_api_key) && !cJSON_IsNull(baidu_api_key))
    {
    goto end; //String
    }
    }

    // application->baidu_secret_key
    cJSON *baidu_secret_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "baiduSecretKey");
    if (cJSON_IsNull(baidu_secret_key)) {
        baidu_secret_key = NULL;
    }
    if (baidu_secret_key) { 
    if(!cJSON_IsString(baidu_secret_key) && !cJSON_IsNull(baidu_secret_key))
    {
    goto end; //String
    }
    }

    // application->jpush_app_key
    cJSON *jpush_app_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "jpushAppKey");
    if (cJSON_IsNull(jpush_app_key)) {
        jpush_app_key = NULL;
    }
    if (jpush_app_key) { 
    if(!cJSON_IsString(jpush_app_key) && !cJSON_IsNull(jpush_app_key))
    {
    goto end; //String
    }
    }

    // application->jpush_master_secret
    cJSON *jpush_master_secret = cJSON_GetObjectItemCaseSensitive(applicationJSON, "jpushMasterSecret");
    if (cJSON_IsNull(jpush_master_secret)) {
        jpush_master_secret = NULL;
    }
    if (jpush_master_secret) { 
    if(!cJSON_IsString(jpush_master_secret) && !cJSON_IsNull(jpush_master_secret))
    {
    goto end; //String
    }
    }

    // application->xg_push_secret_key
    cJSON *xg_push_secret_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "xgPushSecretKey");
    if (cJSON_IsNull(xg_push_secret_key)) {
        xg_push_secret_key = NULL;
    }
    if (xg_push_secret_key) { 
    if(!cJSON_IsString(xg_push_secret_key) && !cJSON_IsNull(xg_push_secret_key))
    {
    goto end; //String
    }
    }

    // application->public_notifications
    cJSON *public_notifications = cJSON_GetObjectItemCaseSensitive(applicationJSON, "publicNotifications");
    if (cJSON_IsNull(public_notifications)) {
        public_notifications = NULL;
    }
    if (public_notifications) { 
    if(!cJSON_IsBool(public_notifications))
    {
    goto end; //Bool
    }
    }

    // application->url_scheme
    cJSON *url_scheme = cJSON_GetObjectItemCaseSensitive(applicationJSON, "urlScheme");
    if (cJSON_IsNull(url_scheme)) {
        url_scheme = NULL;
    }
    if (url_scheme) { 
    if(!cJSON_IsString(url_scheme) && !cJSON_IsNull(url_scheme))
    {
    goto end; //String
    }
    }

    // application->retailer
    cJSON *retailer = cJSON_GetObjectItemCaseSensitive(applicationJSON, "retailer");
    if (cJSON_IsNull(retailer)) {
        retailer = NULL;
    }
    if (retailer) { 
    retailer_local_nonprim = retailer_parseFromJSON(retailer); //nonprimitive
    }

    // application->object_store_session
    cJSON *object_store_session = cJSON_GetObjectItemCaseSensitive(applicationJSON, "objectStoreSession");
    if (cJSON_IsNull(object_store_session)) {
        object_store_session = NULL;
    }
    if (object_store_session) { 
    if(!cJSON_IsString(object_store_session) && !cJSON_IsNull(object_store_session))
    {
    goto end; //String
    }
    }

    // application->public_content_approval
    cJSON *public_content_approval = cJSON_GetObjectItemCaseSensitive(applicationJSON, "publicContentApproval");
    if (cJSON_IsNull(public_content_approval)) {
        public_content_approval = NULL;
    }
    if (public_content_approval) { 
    if(!cJSON_IsBool(public_content_approval))
    {
    goto end; //Bool
    }
    }

    // application->production_mode
    cJSON *production_mode = cJSON_GetObjectItemCaseSensitive(applicationJSON, "productionMode");
    if (cJSON_IsNull(production_mode)) {
        production_mode = NULL;
    }
    if (production_mode) { 
    if(!cJSON_IsBool(production_mode))
    {
    goto end; //Bool
    }
    }

    // application->griply_base_url
    cJSON *griply_base_url = cJSON_GetObjectItemCaseSensitive(applicationJSON, "griplyBaseUrl");
    if (cJSON_IsNull(griply_base_url)) {
        griply_base_url = NULL;
    }
    if (griply_base_url) { 
    if(!cJSON_IsString(griply_base_url) && !cJSON_IsNull(griply_base_url))
    {
    goto end; //String
    }
    }

    // application->minimum_session_length
    cJSON *minimum_session_length = cJSON_GetObjectItemCaseSensitive(applicationJSON, "minimumSessionLength");
    if (cJSON_IsNull(minimum_session_length)) {
        minimum_session_length = NULL;
    }
    if (minimum_session_length) { 
    if(!cJSON_IsNumber(minimum_session_length))
    {
    goto end; //Numeric
    }
    }

    // application->session_gap_length
    cJSON *session_gap_length = cJSON_GetObjectItemCaseSensitive(applicationJSON, "sessionGapLength");
    if (cJSON_IsNull(session_gap_length)) {
        session_gap_length = NULL;
    }
    if (session_gap_length) { 
    if(!cJSON_IsNumber(session_gap_length))
    {
    goto end; //Numeric
    }
    }

    // application->process_session_data
    cJSON *process_session_data = cJSON_GetObjectItemCaseSensitive(applicationJSON, "processSessionData");
    if (cJSON_IsNull(process_session_data)) {
        process_session_data = NULL;
    }
    if (process_session_data) { 
    if(!cJSON_IsBool(process_session_data))
    {
    goto end; //Bool
    }
    }

    // application->local_ads_enabled
    cJSON *local_ads_enabled = cJSON_GetObjectItemCaseSensitive(applicationJSON, "localAdsEnabled");
    if (cJSON_IsNull(local_ads_enabled)) {
        local_ads_enabled = NULL;
    }
    if (local_ads_enabled) { 
    if(!cJSON_IsBool(local_ads_enabled))
    {
    goto end; //Bool
    }
    }

    // application->include_in_report
    cJSON *include_in_report = cJSON_GetObjectItemCaseSensitive(applicationJSON, "includeInReport");
    if (cJSON_IsNull(include_in_report)) {
        include_in_report = NULL;
    }
    if (include_in_report) { 
    if(!cJSON_IsBool(include_in_report))
    {
    goto end; //Bool
    }
    }

    // application->sqoot_api_key
    cJSON *sqoot_api_key = cJSON_GetObjectItemCaseSensitive(applicationJSON, "sqootApiKey");
    if (cJSON_IsNull(sqoot_api_key)) {
        sqoot_api_key = NULL;
    }
    if (sqoot_api_key) { 
    if(!cJSON_IsString(sqoot_api_key) && !cJSON_IsNull(sqoot_api_key))
    {
    goto end; //String
    }
    }

    // application->amqp_enabled
    cJSON *amqp_enabled = cJSON_GetObjectItemCaseSensitive(applicationJSON, "amqpEnabled");
    if (cJSON_IsNull(amqp_enabled)) {
        amqp_enabled = NULL;
    }
    if (amqp_enabled) { 
    if(!cJSON_IsBool(amqp_enabled))
    {
    goto end; //Bool
    }
    }

    // application->trilat_settings
    cJSON *trilat_settings = cJSON_GetObjectItemCaseSensitive(applicationJSON, "trilatSettings");
    if (cJSON_IsNull(trilat_settings)) {
        trilat_settings = NULL;
    }
    if (trilat_settings) { 
    trilat_settings_local_nonprim = trilat_app_settings_parseFromJSON(trilat_settings); //nonprimitive
    }


    application_local_var = application_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        about && !cJSON_IsNull(about) ? strdup(about->valuestring) : NULL,
        certificate_url && !cJSON_IsNull(certificate_url) ? strdup(certificate_url->valuestring) : NULL,
        certificate_name && !cJSON_IsNull(certificate_name) ? strdup(certificate_name->valuestring) : NULL,
        certificate ? certificate_local_nonprim : NULL,
        certificate_last_updated && !cJSON_IsNull(certificate_last_updated) ? strdup(certificate_last_updated->valuestring) : NULL,
        app_description && !cJSON_IsNull(app_description) ? strdup(app_description->valuestring) : NULL,
        show_in_activities ? show_in_activities->valueint : 0,
        css_class && !cJSON_IsNull(css_class) ? strdup(css_class->valuestring) : NULL,
        invite_welcome_text && !cJSON_IsNull(invite_welcome_text) ? strdup(invite_welcome_text->valuestring) : NULL,
        bundle_id && !cJSON_IsNull(bundle_id) ? strdup(bundle_id->valuestring) : NULL,
        app_type && !cJSON_IsNull(app_type) ? strdup(app_type->valuestring) : NULL,
        scoring_type ? scoring_typeVariable : sirqul_iot_platform_application_SCORINGTYPE_NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        app_rest_key && !cJSON_IsNull(app_rest_key) ? strdup(app_rest_key->valuestring) : NULL,
        app_token_key && !cJSON_IsNull(app_token_key) ? strdup(app_token_key->valuestring) : NULL,
        hint_cost ? hint_cost->valuedouble : 0,
        eula_date && !cJSON_IsNull(eula_date) ? strdup(eula_date->valuestring) : NULL,
        eula_version && !cJSON_IsNull(eula_version) ? strdup(eula_version->valuestring) : NULL,
        landing_page_url && !cJSON_IsNull(landing_page_url) ? strdup(landing_page_url->valuestring) : NULL,
        invite_page_url && !cJSON_IsNull(invite_page_url) ? strdup(invite_page_url->valuestring) : NULL,
        download_urls && !cJSON_IsNull(download_urls) ? strdup(download_urls->valuestring) : NULL,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL,
        app_icon ? app_icon_local_nonprim : NULL,
        app_logo ? app_logo_local_nonprim : NULL,
        billable_entity ? billable_entity_local_nonprim : NULL,
        facebook_app_id && !cJSON_IsNull(facebook_app_id) ? strdup(facebook_app_id->valuestring) : NULL,
        facebook_app_secret && !cJSON_IsNull(facebook_app_secret) ? strdup(facebook_app_secret->valuestring) : NULL,
        twitter_app_id && !cJSON_IsNull(twitter_app_id) ? strdup(twitter_app_id->valuestring) : NULL,
        twitter_app_secret && !cJSON_IsNull(twitter_app_secret) ? strdup(twitter_app_secret->valuestring) : NULL,
        twitter_callback_url && !cJSON_IsNull(twitter_callback_url) ? strdup(twitter_callback_url->valuestring) : NULL,
        default_image && !cJSON_IsNull(default_image) ? strdup(default_image->valuestring) : NULL,
        modules && !cJSON_IsNull(modules) ? strdup(modules->valuestring) : NULL,
        authorized_servers && !cJSON_IsNull(authorized_servers) ? strdup(authorized_servers->valuestring) : NULL,
        authorized_count ? authorized_count->valuedouble : 0,
        active_servers && !cJSON_IsNull(active_servers) ? strdup(active_servers->valuestring) : NULL,
        license_period && !cJSON_IsNull(license_period) ? strdup(license_period->valuestring) : NULL,
        has_game_data ? has_game_data->valueint : 0,
        current_build_version && !cJSON_IsNull(current_build_version) ? strdup(current_build_version->valuestring) : NULL,
        current_api_version && !cJSON_IsNull(current_api_version) ? strdup(current_api_version->valuestring) : NULL,
        global_tickets ? global_tickets->valueint : 0,
        tickets_per_point ? tickets_per_point->valuedouble : 0,
        max_points_per_score ? max_points_per_score->valuedouble : 0,
        use_app_cache ? use_app_cache->valueint : 0,
        unique_user_tag && !cJSON_IsNull(unique_user_tag) ? strdup(unique_user_tag->valuestring) : NULL,
        use_matching_algorithm ? use_matching_algorithm->valueint : 0,
        platforms ? platformsList : NULL,
        categories ? categoriesList : NULL,
        placements ? placementsList : NULL,
        has_advertisements ? has_advertisements->valueint : 0,
        apple_app_id && !cJSON_IsNull(apple_app_id) ? strdup(apple_app_id->valuestring) : NULL,
        google_app_id && !cJSON_IsNull(google_app_id) ? strdup(google_app_id->valuestring) : NULL,
        google_api_key && !cJSON_IsNull(google_api_key) ? strdup(google_api_key->valuestring) : NULL,
        google_o_auth_client_id && !cJSON_IsNull(google_o_auth_client_id) ? strdup(google_o_auth_client_id->valuestring) : NULL,
        google_o_auth_secret && !cJSON_IsNull(google_o_auth_secret) ? strdup(google_o_auth_secret->valuestring) : NULL,
        google_o_auth_access_token && !cJSON_IsNull(google_o_auth_access_token) ? strdup(google_o_auth_access_token->valuestring) : NULL,
        google_o_auth_refresh_token && !cJSON_IsNull(google_o_auth_refresh_token) ? strdup(google_o_auth_refresh_token->valuestring) : NULL,
        baidu_api_key && !cJSON_IsNull(baidu_api_key) ? strdup(baidu_api_key->valuestring) : NULL,
        baidu_secret_key && !cJSON_IsNull(baidu_secret_key) ? strdup(baidu_secret_key->valuestring) : NULL,
        jpush_app_key && !cJSON_IsNull(jpush_app_key) ? strdup(jpush_app_key->valuestring) : NULL,
        jpush_master_secret && !cJSON_IsNull(jpush_master_secret) ? strdup(jpush_master_secret->valuestring) : NULL,
        xg_push_secret_key && !cJSON_IsNull(xg_push_secret_key) ? strdup(xg_push_secret_key->valuestring) : NULL,
        public_notifications ? public_notifications->valueint : 0,
        url_scheme && !cJSON_IsNull(url_scheme) ? strdup(url_scheme->valuestring) : NULL,
        retailer ? retailer_local_nonprim : NULL,
        object_store_session && !cJSON_IsNull(object_store_session) ? strdup(object_store_session->valuestring) : NULL,
        public_content_approval ? public_content_approval->valueint : 0,
        production_mode ? production_mode->valueint : 0,
        griply_base_url && !cJSON_IsNull(griply_base_url) ? strdup(griply_base_url->valuestring) : NULL,
        minimum_session_length ? minimum_session_length->valuedouble : 0,
        session_gap_length ? session_gap_length->valuedouble : 0,
        process_session_data ? process_session_data->valueint : 0,
        local_ads_enabled ? local_ads_enabled->valueint : 0,
        include_in_report ? include_in_report->valueint : 0,
        sqoot_api_key && !cJSON_IsNull(sqoot_api_key) ? strdup(sqoot_api_key->valuestring) : NULL,
        amqp_enabled ? amqp_enabled->valueint : 0,
        trilat_settings ? trilat_settings_local_nonprim : NULL
        );

    return application_local_var;
end:
    if (certificate_local_nonprim) {
        blob_file_free(certificate_local_nonprim);
        certificate_local_nonprim = NULL;
    }
    if (app_icon_local_nonprim) {
        asset_free(app_icon_local_nonprim);
        app_icon_local_nonprim = NULL;
    }
    if (app_logo_local_nonprim) {
        asset_free(app_logo_local_nonprim);
        app_logo_local_nonprim = NULL;
    }
    if (billable_entity_local_nonprim) {
        billable_entity_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    if (platformsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, platformsList) {
            platform_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(platformsList);
        platformsList = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (placementsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, placementsList) {
            placement_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(placementsList);
        placementsList = NULL;
    }
    if (retailer_local_nonprim) {
        retailer_free(retailer_local_nonprim);
        retailer_local_nonprim = NULL;
    }
    if (trilat_settings_local_nonprim) {
        trilat_app_settings_free(trilat_settings_local_nonprim);
        trilat_settings_local_nonprim = NULL;
    }
    return NULL;

}
