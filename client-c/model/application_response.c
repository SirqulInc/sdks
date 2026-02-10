#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "application_response.h"


char* application_response_scoring_type_ToString(sirqul_iot_platform_application_response_SCORINGTYPE_e scoring_type) {
    char* scoring_typeArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    return scoring_typeArray[scoring_type];
}

sirqul_iot_platform_application_response_SCORINGTYPE_e application_response_scoring_type_FromString(char* scoring_type){
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

static application_response_t *application_response_create_internal(
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
    ) {
    application_response_t *application_response_local_var = malloc(sizeof(application_response_t));
    if (!application_response_local_var) {
        return NULL;
    }
    application_response_local_var->valid = valid;
    application_response_local_var->message = message;
    application_response_local_var->version = version;
    application_response_local_var->serialize_nulls = serialize_nulls;
    application_response_local_var->start_time_log = start_time_log;
    application_response_local_var->error_code = error_code;
    application_response_local_var->request = request;
    application_response_local_var->application_id = application_id;
    application_response_local_var->app_key = app_key;
    application_response_local_var->title = title;
    application_response_local_var->current_build_version = current_build_version;
    application_response_local_var->current_api_version = current_api_version;
    application_response_local_var->app_icon = app_icon;
    application_response_local_var->app_logo = app_logo;
    application_response_local_var->active = active;
    application_response_local_var->about = about;
    application_response_local_var->landing_page_url = landing_page_url;
    application_response_local_var->landing_page_full_url = landing_page_full_url;
    application_response_local_var->default_image_full_url = default_image_full_url;
    application_response_local_var->activity_description = activity_description;
    application_response_local_var->platforms = platforms;
    application_response_local_var->categories = categories;
    application_response_local_var->placement_count = placement_count;
    application_response_local_var->billable = billable;
    application_response_local_var->has_ads = has_ads;
    application_response_local_var->public_notifications = public_notifications;
    application_response_local_var->url_scheme = url_scheme;
    application_response_local_var->global = global;
    application_response_local_var->download_urls = download_urls;
    application_response_local_var->local_ads_enabled = local_ads_enabled;
    application_response_local_var->trilat_settings = trilat_settings;
    application_response_local_var->app_type = app_type;
    application_response_local_var->app_name = app_name;
    application_response_local_var->bundle_id = bundle_id;
    application_response_local_var->scoring_type = scoring_type;
    application_response_local_var->hint_cost = hint_cost;
    application_response_local_var->max_score = max_score;
    application_response_local_var->tickets_per_point = tickets_per_point;
    application_response_local_var->has_game_data = has_game_data;
    application_response_local_var->global_tickets = global_tickets;
    application_response_local_var->eula_version = eula_version;
    application_response_local_var->eula_date_updated = eula_date_updated;
    application_response_local_var->modules = modules;
    application_response_local_var->billable_entity_name = billable_entity_name;
    application_response_local_var->show_in_activities = show_in_activities;
    application_response_local_var->css_class = css_class;
    application_response_local_var->invite_welcome_text = invite_welcome_text;
    application_response_local_var->invite_page_url = invite_page_url;
    application_response_local_var->apns_certificate_file_name = apns_certificate_file_name;
    application_response_local_var->facebook_app_id = facebook_app_id;
    application_response_local_var->facebook_app_secret = facebook_app_secret;
    application_response_local_var->app_token = app_token;
    application_response_local_var->google_api_key = google_api_key;
    application_response_local_var->app_rest_key = app_rest_key;
    application_response_local_var->public_content_approval = public_content_approval;
    application_response_local_var->production_mode = production_mode;
    application_response_local_var->minimum_session_length = minimum_session_length;
    application_response_local_var->session_gap_length = session_gap_length;
    application_response_local_var->sqoot_api_key = sqoot_api_key;
    application_response_local_var->amqp_enabled = amqp_enabled;
    application_response_local_var->authorized_count = authorized_count;
    application_response_local_var->authorized_servers = authorized_servers;
    application_response_local_var->returning = returning;

    application_response_local_var->_library_owned = 1;
    return application_response_local_var;
}

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
    ) {
    return application_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        application_id,
        app_key,
        title,
        current_build_version,
        current_api_version,
        app_icon,
        app_logo,
        active,
        about,
        landing_page_url,
        landing_page_full_url,
        default_image_full_url,
        activity_description,
        platforms,
        categories,
        placement_count,
        billable,
        has_ads,
        public_notifications,
        url_scheme,
        global,
        download_urls,
        local_ads_enabled,
        trilat_settings,
        app_type,
        app_name,
        bundle_id,
        scoring_type,
        hint_cost,
        max_score,
        tickets_per_point,
        has_game_data,
        global_tickets,
        eula_version,
        eula_date_updated,
        modules,
        billable_entity_name,
        show_in_activities,
        css_class,
        invite_welcome_text,
        invite_page_url,
        apns_certificate_file_name,
        facebook_app_id,
        facebook_app_secret,
        app_token,
        google_api_key,
        app_rest_key,
        public_content_approval,
        production_mode,
        minimum_session_length,
        session_gap_length,
        sqoot_api_key,
        amqp_enabled,
        authorized_count,
        authorized_servers,
        returning
        );
}

void application_response_free(application_response_t *application_response) {
    if(NULL == application_response){
        return ;
    }
    if(application_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "application_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (application_response->message) {
        free(application_response->message);
        application_response->message = NULL;
    }
    if (application_response->error_code) {
        free(application_response->error_code);
        application_response->error_code = NULL;
    }
    if (application_response->request) {
        list_ForEach(listEntry, application_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(application_response->request);
        application_response->request = NULL;
    }
    if (application_response->app_key) {
        free(application_response->app_key);
        application_response->app_key = NULL;
    }
    if (application_response->title) {
        free(application_response->title);
        application_response->title = NULL;
    }
    if (application_response->current_build_version) {
        free(application_response->current_build_version);
        application_response->current_build_version = NULL;
    }
    if (application_response->current_api_version) {
        free(application_response->current_api_version);
        application_response->current_api_version = NULL;
    }
    if (application_response->app_icon) {
        asset_short_response_free(application_response->app_icon);
        application_response->app_icon = NULL;
    }
    if (application_response->app_logo) {
        asset_short_response_free(application_response->app_logo);
        application_response->app_logo = NULL;
    }
    if (application_response->about) {
        free(application_response->about);
        application_response->about = NULL;
    }
    if (application_response->landing_page_url) {
        free(application_response->landing_page_url);
        application_response->landing_page_url = NULL;
    }
    if (application_response->landing_page_full_url) {
        free(application_response->landing_page_full_url);
        application_response->landing_page_full_url = NULL;
    }
    if (application_response->default_image_full_url) {
        free(application_response->default_image_full_url);
        application_response->default_image_full_url = NULL;
    }
    if (application_response->activity_description) {
        free(application_response->activity_description);
        application_response->activity_description = NULL;
    }
    if (application_response->platforms) {
        list_ForEach(listEntry, application_response->platforms) {
            platform_response_free(listEntry->data);
        }
        list_freeList(application_response->platforms);
        application_response->platforms = NULL;
    }
    if (application_response->categories) {
        list_ForEach(listEntry, application_response->categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(application_response->categories);
        application_response->categories = NULL;
    }
    if (application_response->billable) {
        billable_entity_short_response_free(application_response->billable);
        application_response->billable = NULL;
    }
    if (application_response->url_scheme) {
        free(application_response->url_scheme);
        application_response->url_scheme = NULL;
    }
    if (application_response->download_urls) {
        free(application_response->download_urls);
        application_response->download_urls = NULL;
    }
    if (application_response->trilat_settings) {
        trilat_app_settings_free(application_response->trilat_settings);
        application_response->trilat_settings = NULL;
    }
    if (application_response->app_type) {
        free(application_response->app_type);
        application_response->app_type = NULL;
    }
    if (application_response->app_name) {
        free(application_response->app_name);
        application_response->app_name = NULL;
    }
    if (application_response->bundle_id) {
        free(application_response->bundle_id);
        application_response->bundle_id = NULL;
    }
    if (application_response->eula_version) {
        free(application_response->eula_version);
        application_response->eula_version = NULL;
    }
    if (application_response->modules) {
        free(application_response->modules);
        application_response->modules = NULL;
    }
    if (application_response->billable_entity_name) {
        free(application_response->billable_entity_name);
        application_response->billable_entity_name = NULL;
    }
    if (application_response->css_class) {
        free(application_response->css_class);
        application_response->css_class = NULL;
    }
    if (application_response->invite_welcome_text) {
        free(application_response->invite_welcome_text);
        application_response->invite_welcome_text = NULL;
    }
    if (application_response->invite_page_url) {
        free(application_response->invite_page_url);
        application_response->invite_page_url = NULL;
    }
    if (application_response->apns_certificate_file_name) {
        free(application_response->apns_certificate_file_name);
        application_response->apns_certificate_file_name = NULL;
    }
    if (application_response->facebook_app_id) {
        free(application_response->facebook_app_id);
        application_response->facebook_app_id = NULL;
    }
    if (application_response->facebook_app_secret) {
        free(application_response->facebook_app_secret);
        application_response->facebook_app_secret = NULL;
    }
    if (application_response->app_token) {
        free(application_response->app_token);
        application_response->app_token = NULL;
    }
    if (application_response->google_api_key) {
        free(application_response->google_api_key);
        application_response->google_api_key = NULL;
    }
    if (application_response->app_rest_key) {
        free(application_response->app_rest_key);
        application_response->app_rest_key = NULL;
    }
    if (application_response->sqoot_api_key) {
        free(application_response->sqoot_api_key);
        application_response->sqoot_api_key = NULL;
    }
    if (application_response->authorized_servers) {
        free(application_response->authorized_servers);
        application_response->authorized_servers = NULL;
    }
    if (application_response->returning) {
        free(application_response->returning);
        application_response->returning = NULL;
    }
    free(application_response);
}

cJSON *application_response_convertToJSON(application_response_t *application_response) {
    cJSON *item = cJSON_CreateObject();

    // application_response->valid
    if(application_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", application_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->message
    if(application_response->message) {
    if(cJSON_AddStringToObject(item, "message", application_response->message) == NULL) {
    goto fail; //String
    }
    }


    // application_response->version
    if(application_response->version) {
    if(cJSON_AddNumberToObject(item, "version", application_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->serialize_nulls
    if(application_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", application_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->start_time_log
    if(application_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", application_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->error_code
    if(application_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", application_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // application_response->request
    if(application_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (application_response->request) {
    list_ForEach(requestListEntry, application_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // application_response->application_id
    if(application_response->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", application_response->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->app_key
    if(application_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", application_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // application_response->title
    if(application_response->title) {
    if(cJSON_AddStringToObject(item, "title", application_response->title) == NULL) {
    goto fail; //String
    }
    }


    // application_response->current_build_version
    if(application_response->current_build_version) {
    if(cJSON_AddStringToObject(item, "currentBuildVersion", application_response->current_build_version) == NULL) {
    goto fail; //String
    }
    }


    // application_response->current_api_version
    if(application_response->current_api_version) {
    if(cJSON_AddStringToObject(item, "currentApiVersion", application_response->current_api_version) == NULL) {
    goto fail; //String
    }
    }


    // application_response->app_icon
    if(application_response->app_icon) {
    cJSON *app_icon_local_JSON = asset_short_response_convertToJSON(application_response->app_icon);
    if(app_icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appIcon", app_icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_response->app_logo
    if(application_response->app_logo) {
    cJSON *app_logo_local_JSON = asset_short_response_convertToJSON(application_response->app_logo);
    if(app_logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appLogo", app_logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_response->active
    if(application_response->active) {
    if(cJSON_AddBoolToObject(item, "active", application_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->about
    if(application_response->about) {
    if(cJSON_AddStringToObject(item, "about", application_response->about) == NULL) {
    goto fail; //String
    }
    }


    // application_response->landing_page_url
    if(application_response->landing_page_url) {
    if(cJSON_AddStringToObject(item, "landingPageUrl", application_response->landing_page_url) == NULL) {
    goto fail; //String
    }
    }


    // application_response->landing_page_full_url
    if(application_response->landing_page_full_url) {
    if(cJSON_AddStringToObject(item, "landingPageFullUrl", application_response->landing_page_full_url) == NULL) {
    goto fail; //String
    }
    }


    // application_response->default_image_full_url
    if(application_response->default_image_full_url) {
    if(cJSON_AddStringToObject(item, "defaultImageFullUrl", application_response->default_image_full_url) == NULL) {
    goto fail; //String
    }
    }


    // application_response->activity_description
    if(application_response->activity_description) {
    if(cJSON_AddStringToObject(item, "activityDescription", application_response->activity_description) == NULL) {
    goto fail; //String
    }
    }


    // application_response->platforms
    if(application_response->platforms) {
    cJSON *platforms = cJSON_AddArrayToObject(item, "platforms");
    if(platforms == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *platformsListEntry;
    if (application_response->platforms) {
    list_ForEach(platformsListEntry, application_response->platforms) {
    cJSON *itemLocal = platform_response_convertToJSON(platformsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(platforms, itemLocal);
    }
    }
    }


    // application_response->categories
    if(application_response->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (application_response->categories) {
    list_ForEach(categoriesListEntry, application_response->categories) {
    cJSON *itemLocal = category_response_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // application_response->placement_count
    if(application_response->placement_count) {
    if(cJSON_AddNumberToObject(item, "placementCount", application_response->placement_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->billable
    if(application_response->billable) {
    cJSON *billable_local_JSON = billable_entity_short_response_convertToJSON(application_response->billable);
    if(billable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billable", billable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_response->has_ads
    if(application_response->has_ads) {
    if(cJSON_AddBoolToObject(item, "hasAds", application_response->has_ads) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->public_notifications
    if(application_response->public_notifications) {
    if(cJSON_AddBoolToObject(item, "publicNotifications", application_response->public_notifications) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->url_scheme
    if(application_response->url_scheme) {
    if(cJSON_AddStringToObject(item, "urlScheme", application_response->url_scheme) == NULL) {
    goto fail; //String
    }
    }


    // application_response->global
    if(application_response->global) {
    if(cJSON_AddBoolToObject(item, "global", application_response->global) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->download_urls
    if(application_response->download_urls) {
    if(cJSON_AddStringToObject(item, "downloadUrls", application_response->download_urls) == NULL) {
    goto fail; //String
    }
    }


    // application_response->local_ads_enabled
    if(application_response->local_ads_enabled) {
    if(cJSON_AddBoolToObject(item, "localAdsEnabled", application_response->local_ads_enabled) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->trilat_settings
    if(application_response->trilat_settings) {
    cJSON *trilat_settings_local_JSON = trilat_app_settings_convertToJSON(application_response->trilat_settings);
    if(trilat_settings_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "trilatSettings", trilat_settings_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_response->app_type
    if(application_response->app_type) {
    if(cJSON_AddStringToObject(item, "appType", application_response->app_type) == NULL) {
    goto fail; //String
    }
    }


    // application_response->app_name
    if(application_response->app_name) {
    if(cJSON_AddStringToObject(item, "appName", application_response->app_name) == NULL) {
    goto fail; //String
    }
    }


    // application_response->bundle_id
    if(application_response->bundle_id) {
    if(cJSON_AddStringToObject(item, "bundleId", application_response->bundle_id) == NULL) {
    goto fail; //String
    }
    }


    // application_response->scoring_type
    if(application_response->scoring_type != sirqul_iot_platform_application_response_SCORINGTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "scoringType", application_response_scoring_type_ToString(application_response->scoring_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // application_response->hint_cost
    if(application_response->hint_cost) {
    if(cJSON_AddNumberToObject(item, "hintCost", application_response->hint_cost) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->max_score
    if(application_response->max_score) {
    if(cJSON_AddNumberToObject(item, "maxScore", application_response->max_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->tickets_per_point
    if(application_response->tickets_per_point) {
    if(cJSON_AddNumberToObject(item, "ticketsPerPoint", application_response->tickets_per_point) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->has_game_data
    if(application_response->has_game_data) {
    if(cJSON_AddBoolToObject(item, "hasGameData", application_response->has_game_data) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->global_tickets
    if(application_response->global_tickets) {
    if(cJSON_AddBoolToObject(item, "globalTickets", application_response->global_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->eula_version
    if(application_response->eula_version) {
    if(cJSON_AddStringToObject(item, "eulaVersion", application_response->eula_version) == NULL) {
    goto fail; //String
    }
    }


    // application_response->eula_date_updated
    if(application_response->eula_date_updated) {
    if(cJSON_AddNumberToObject(item, "eulaDateUpdated", application_response->eula_date_updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->modules
    if(application_response->modules) {
    if(cJSON_AddStringToObject(item, "modules", application_response->modules) == NULL) {
    goto fail; //String
    }
    }


    // application_response->billable_entity_name
    if(application_response->billable_entity_name) {
    if(cJSON_AddStringToObject(item, "billableEntityName", application_response->billable_entity_name) == NULL) {
    goto fail; //String
    }
    }


    // application_response->show_in_activities
    if(application_response->show_in_activities) {
    if(cJSON_AddBoolToObject(item, "showInActivities", application_response->show_in_activities) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->css_class
    if(application_response->css_class) {
    if(cJSON_AddStringToObject(item, "cssClass", application_response->css_class) == NULL) {
    goto fail; //String
    }
    }


    // application_response->invite_welcome_text
    if(application_response->invite_welcome_text) {
    if(cJSON_AddStringToObject(item, "inviteWelcomeText", application_response->invite_welcome_text) == NULL) {
    goto fail; //String
    }
    }


    // application_response->invite_page_url
    if(application_response->invite_page_url) {
    if(cJSON_AddStringToObject(item, "invitePageUrl", application_response->invite_page_url) == NULL) {
    goto fail; //String
    }
    }


    // application_response->apns_certificate_file_name
    if(application_response->apns_certificate_file_name) {
    if(cJSON_AddStringToObject(item, "apnsCertificateFileName", application_response->apns_certificate_file_name) == NULL) {
    goto fail; //String
    }
    }


    // application_response->facebook_app_id
    if(application_response->facebook_app_id) {
    if(cJSON_AddStringToObject(item, "facebookAppId", application_response->facebook_app_id) == NULL) {
    goto fail; //String
    }
    }


    // application_response->facebook_app_secret
    if(application_response->facebook_app_secret) {
    if(cJSON_AddStringToObject(item, "facebookAppSecret", application_response->facebook_app_secret) == NULL) {
    goto fail; //String
    }
    }


    // application_response->app_token
    if(application_response->app_token) {
    if(cJSON_AddStringToObject(item, "appToken", application_response->app_token) == NULL) {
    goto fail; //String
    }
    }


    // application_response->google_api_key
    if(application_response->google_api_key) {
    if(cJSON_AddStringToObject(item, "googleApiKey", application_response->google_api_key) == NULL) {
    goto fail; //String
    }
    }


    // application_response->app_rest_key
    if(application_response->app_rest_key) {
    if(cJSON_AddStringToObject(item, "appRestKey", application_response->app_rest_key) == NULL) {
    goto fail; //String
    }
    }


    // application_response->public_content_approval
    if(application_response->public_content_approval) {
    if(cJSON_AddBoolToObject(item, "publicContentApproval", application_response->public_content_approval) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->production_mode
    if(application_response->production_mode) {
    if(cJSON_AddBoolToObject(item, "productionMode", application_response->production_mode) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->minimum_session_length
    if(application_response->minimum_session_length) {
    if(cJSON_AddNumberToObject(item, "minimumSessionLength", application_response->minimum_session_length) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->session_gap_length
    if(application_response->session_gap_length) {
    if(cJSON_AddNumberToObject(item, "sessionGapLength", application_response->session_gap_length) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->sqoot_api_key
    if(application_response->sqoot_api_key) {
    if(cJSON_AddStringToObject(item, "sqootApiKey", application_response->sqoot_api_key) == NULL) {
    goto fail; //String
    }
    }


    // application_response->amqp_enabled
    if(application_response->amqp_enabled) {
    if(cJSON_AddBoolToObject(item, "amqpEnabled", application_response->amqp_enabled) == NULL) {
    goto fail; //Bool
    }
    }


    // application_response->authorized_count
    if(application_response->authorized_count) {
    if(cJSON_AddNumberToObject(item, "authorizedCount", application_response->authorized_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_response->authorized_servers
    if(application_response->authorized_servers) {
    if(cJSON_AddStringToObject(item, "authorizedServers", application_response->authorized_servers) == NULL) {
    goto fail; //String
    }
    }


    // application_response->returning
    if(application_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", application_response->returning) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

application_response_t *application_response_parseFromJSON(cJSON *application_responseJSON){

    application_response_t *application_response_local_var = NULL;

    // define the local list for application_response->request
    list_t *requestList = NULL;

    // define the local variable for application_response->app_icon
    asset_short_response_t *app_icon_local_nonprim = NULL;

    // define the local variable for application_response->app_logo
    asset_short_response_t *app_logo_local_nonprim = NULL;

    // define the local list for application_response->platforms
    list_t *platformsList = NULL;

    // define the local list for application_response->categories
    list_t *categoriesList = NULL;

    // define the local variable for application_response->billable
    billable_entity_short_response_t *billable_local_nonprim = NULL;

    // define the local variable for application_response->trilat_settings
    trilat_app_settings_t *trilat_settings_local_nonprim = NULL;

    // application_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // application_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // application_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // application_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // application_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // application_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // application_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }

    // application_response->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // application_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // application_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // application_response->current_build_version
    cJSON *current_build_version = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "currentBuildVersion");
    if (cJSON_IsNull(current_build_version)) {
        current_build_version = NULL;
    }
    if (current_build_version) { 
    if(!cJSON_IsString(current_build_version) && !cJSON_IsNull(current_build_version))
    {
    goto end; //String
    }
    }

    // application_response->current_api_version
    cJSON *current_api_version = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "currentApiVersion");
    if (cJSON_IsNull(current_api_version)) {
        current_api_version = NULL;
    }
    if (current_api_version) { 
    if(!cJSON_IsString(current_api_version) && !cJSON_IsNull(current_api_version))
    {
    goto end; //String
    }
    }

    // application_response->app_icon
    cJSON *app_icon = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "appIcon");
    if (cJSON_IsNull(app_icon)) {
        app_icon = NULL;
    }
    if (app_icon) { 
    app_icon_local_nonprim = asset_short_response_parseFromJSON(app_icon); //nonprimitive
    }

    // application_response->app_logo
    cJSON *app_logo = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "appLogo");
    if (cJSON_IsNull(app_logo)) {
        app_logo = NULL;
    }
    if (app_logo) { 
    app_logo_local_nonprim = asset_short_response_parseFromJSON(app_logo); //nonprimitive
    }

    // application_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // application_response->about
    cJSON *about = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "about");
    if (cJSON_IsNull(about)) {
        about = NULL;
    }
    if (about) { 
    if(!cJSON_IsString(about) && !cJSON_IsNull(about))
    {
    goto end; //String
    }
    }

    // application_response->landing_page_url
    cJSON *landing_page_url = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "landingPageUrl");
    if (cJSON_IsNull(landing_page_url)) {
        landing_page_url = NULL;
    }
    if (landing_page_url) { 
    if(!cJSON_IsString(landing_page_url) && !cJSON_IsNull(landing_page_url))
    {
    goto end; //String
    }
    }

    // application_response->landing_page_full_url
    cJSON *landing_page_full_url = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "landingPageFullUrl");
    if (cJSON_IsNull(landing_page_full_url)) {
        landing_page_full_url = NULL;
    }
    if (landing_page_full_url) { 
    if(!cJSON_IsString(landing_page_full_url) && !cJSON_IsNull(landing_page_full_url))
    {
    goto end; //String
    }
    }

    // application_response->default_image_full_url
    cJSON *default_image_full_url = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "defaultImageFullUrl");
    if (cJSON_IsNull(default_image_full_url)) {
        default_image_full_url = NULL;
    }
    if (default_image_full_url) { 
    if(!cJSON_IsString(default_image_full_url) && !cJSON_IsNull(default_image_full_url))
    {
    goto end; //String
    }
    }

    // application_response->activity_description
    cJSON *activity_description = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "activityDescription");
    if (cJSON_IsNull(activity_description)) {
        activity_description = NULL;
    }
    if (activity_description) { 
    if(!cJSON_IsString(activity_description) && !cJSON_IsNull(activity_description))
    {
    goto end; //String
    }
    }

    // application_response->platforms
    cJSON *platforms = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "platforms");
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
        platform_response_t *platformsItem = platform_response_parseFromJSON(platforms_local_nonprimitive);

        list_addElement(platformsList, platformsItem);
    }
    }

    // application_response->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "categories");
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
        category_response_t *categoriesItem = category_response_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // application_response->placement_count
    cJSON *placement_count = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "placementCount");
    if (cJSON_IsNull(placement_count)) {
        placement_count = NULL;
    }
    if (placement_count) { 
    if(!cJSON_IsNumber(placement_count))
    {
    goto end; //Numeric
    }
    }

    // application_response->billable
    cJSON *billable = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "billable");
    if (cJSON_IsNull(billable)) {
        billable = NULL;
    }
    if (billable) { 
    billable_local_nonprim = billable_entity_short_response_parseFromJSON(billable); //nonprimitive
    }

    // application_response->has_ads
    cJSON *has_ads = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "hasAds");
    if (cJSON_IsNull(has_ads)) {
        has_ads = NULL;
    }
    if (has_ads) { 
    if(!cJSON_IsBool(has_ads))
    {
    goto end; //Bool
    }
    }

    // application_response->public_notifications
    cJSON *public_notifications = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "publicNotifications");
    if (cJSON_IsNull(public_notifications)) {
        public_notifications = NULL;
    }
    if (public_notifications) { 
    if(!cJSON_IsBool(public_notifications))
    {
    goto end; //Bool
    }
    }

    // application_response->url_scheme
    cJSON *url_scheme = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "urlScheme");
    if (cJSON_IsNull(url_scheme)) {
        url_scheme = NULL;
    }
    if (url_scheme) { 
    if(!cJSON_IsString(url_scheme) && !cJSON_IsNull(url_scheme))
    {
    goto end; //String
    }
    }

    // application_response->global
    cJSON *global = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "global");
    if (cJSON_IsNull(global)) {
        global = NULL;
    }
    if (global) { 
    if(!cJSON_IsBool(global))
    {
    goto end; //Bool
    }
    }

    // application_response->download_urls
    cJSON *download_urls = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "downloadUrls");
    if (cJSON_IsNull(download_urls)) {
        download_urls = NULL;
    }
    if (download_urls) { 
    if(!cJSON_IsString(download_urls) && !cJSON_IsNull(download_urls))
    {
    goto end; //String
    }
    }

    // application_response->local_ads_enabled
    cJSON *local_ads_enabled = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "localAdsEnabled");
    if (cJSON_IsNull(local_ads_enabled)) {
        local_ads_enabled = NULL;
    }
    if (local_ads_enabled) { 
    if(!cJSON_IsBool(local_ads_enabled))
    {
    goto end; //Bool
    }
    }

    // application_response->trilat_settings
    cJSON *trilat_settings = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "trilatSettings");
    if (cJSON_IsNull(trilat_settings)) {
        trilat_settings = NULL;
    }
    if (trilat_settings) { 
    trilat_settings_local_nonprim = trilat_app_settings_parseFromJSON(trilat_settings); //nonprimitive
    }

    // application_response->app_type
    cJSON *app_type = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "appType");
    if (cJSON_IsNull(app_type)) {
        app_type = NULL;
    }
    if (app_type) { 
    if(!cJSON_IsString(app_type) && !cJSON_IsNull(app_type))
    {
    goto end; //String
    }
    }

    // application_response->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }

    // application_response->bundle_id
    cJSON *bundle_id = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "bundleId");
    if (cJSON_IsNull(bundle_id)) {
        bundle_id = NULL;
    }
    if (bundle_id) { 
    if(!cJSON_IsString(bundle_id) && !cJSON_IsNull(bundle_id))
    {
    goto end; //String
    }
    }

    // application_response->scoring_type
    cJSON *scoring_type = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "scoringType");
    if (cJSON_IsNull(scoring_type)) {
        scoring_type = NULL;
    }
    sirqul_iot_platform_application_response_SCORINGTYPE_e scoring_typeVariable;
    if (scoring_type) { 
    if(!cJSON_IsString(scoring_type))
    {
    goto end; //Enum
    }
    scoring_typeVariable = application_response_scoring_type_FromString(scoring_type->valuestring);
    }

    // application_response->hint_cost
    cJSON *hint_cost = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "hintCost");
    if (cJSON_IsNull(hint_cost)) {
        hint_cost = NULL;
    }
    if (hint_cost) { 
    if(!cJSON_IsNumber(hint_cost))
    {
    goto end; //Numeric
    }
    }

    // application_response->max_score
    cJSON *max_score = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "maxScore");
    if (cJSON_IsNull(max_score)) {
        max_score = NULL;
    }
    if (max_score) { 
    if(!cJSON_IsNumber(max_score))
    {
    goto end; //Numeric
    }
    }

    // application_response->tickets_per_point
    cJSON *tickets_per_point = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "ticketsPerPoint");
    if (cJSON_IsNull(tickets_per_point)) {
        tickets_per_point = NULL;
    }
    if (tickets_per_point) { 
    if(!cJSON_IsNumber(tickets_per_point))
    {
    goto end; //Numeric
    }
    }

    // application_response->has_game_data
    cJSON *has_game_data = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "hasGameData");
    if (cJSON_IsNull(has_game_data)) {
        has_game_data = NULL;
    }
    if (has_game_data) { 
    if(!cJSON_IsBool(has_game_data))
    {
    goto end; //Bool
    }
    }

    // application_response->global_tickets
    cJSON *global_tickets = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "globalTickets");
    if (cJSON_IsNull(global_tickets)) {
        global_tickets = NULL;
    }
    if (global_tickets) { 
    if(!cJSON_IsBool(global_tickets))
    {
    goto end; //Bool
    }
    }

    // application_response->eula_version
    cJSON *eula_version = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "eulaVersion");
    if (cJSON_IsNull(eula_version)) {
        eula_version = NULL;
    }
    if (eula_version) { 
    if(!cJSON_IsString(eula_version) && !cJSON_IsNull(eula_version))
    {
    goto end; //String
    }
    }

    // application_response->eula_date_updated
    cJSON *eula_date_updated = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "eulaDateUpdated");
    if (cJSON_IsNull(eula_date_updated)) {
        eula_date_updated = NULL;
    }
    if (eula_date_updated) { 
    if(!cJSON_IsNumber(eula_date_updated))
    {
    goto end; //Numeric
    }
    }

    // application_response->modules
    cJSON *modules = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "modules");
    if (cJSON_IsNull(modules)) {
        modules = NULL;
    }
    if (modules) { 
    if(!cJSON_IsString(modules) && !cJSON_IsNull(modules))
    {
    goto end; //String
    }
    }

    // application_response->billable_entity_name
    cJSON *billable_entity_name = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "billableEntityName");
    if (cJSON_IsNull(billable_entity_name)) {
        billable_entity_name = NULL;
    }
    if (billable_entity_name) { 
    if(!cJSON_IsString(billable_entity_name) && !cJSON_IsNull(billable_entity_name))
    {
    goto end; //String
    }
    }

    // application_response->show_in_activities
    cJSON *show_in_activities = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "showInActivities");
    if (cJSON_IsNull(show_in_activities)) {
        show_in_activities = NULL;
    }
    if (show_in_activities) { 
    if(!cJSON_IsBool(show_in_activities))
    {
    goto end; //Bool
    }
    }

    // application_response->css_class
    cJSON *css_class = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "cssClass");
    if (cJSON_IsNull(css_class)) {
        css_class = NULL;
    }
    if (css_class) { 
    if(!cJSON_IsString(css_class) && !cJSON_IsNull(css_class))
    {
    goto end; //String
    }
    }

    // application_response->invite_welcome_text
    cJSON *invite_welcome_text = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "inviteWelcomeText");
    if (cJSON_IsNull(invite_welcome_text)) {
        invite_welcome_text = NULL;
    }
    if (invite_welcome_text) { 
    if(!cJSON_IsString(invite_welcome_text) && !cJSON_IsNull(invite_welcome_text))
    {
    goto end; //String
    }
    }

    // application_response->invite_page_url
    cJSON *invite_page_url = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "invitePageUrl");
    if (cJSON_IsNull(invite_page_url)) {
        invite_page_url = NULL;
    }
    if (invite_page_url) { 
    if(!cJSON_IsString(invite_page_url) && !cJSON_IsNull(invite_page_url))
    {
    goto end; //String
    }
    }

    // application_response->apns_certificate_file_name
    cJSON *apns_certificate_file_name = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "apnsCertificateFileName");
    if (cJSON_IsNull(apns_certificate_file_name)) {
        apns_certificate_file_name = NULL;
    }
    if (apns_certificate_file_name) { 
    if(!cJSON_IsString(apns_certificate_file_name) && !cJSON_IsNull(apns_certificate_file_name))
    {
    goto end; //String
    }
    }

    // application_response->facebook_app_id
    cJSON *facebook_app_id = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "facebookAppId");
    if (cJSON_IsNull(facebook_app_id)) {
        facebook_app_id = NULL;
    }
    if (facebook_app_id) { 
    if(!cJSON_IsString(facebook_app_id) && !cJSON_IsNull(facebook_app_id))
    {
    goto end; //String
    }
    }

    // application_response->facebook_app_secret
    cJSON *facebook_app_secret = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "facebookAppSecret");
    if (cJSON_IsNull(facebook_app_secret)) {
        facebook_app_secret = NULL;
    }
    if (facebook_app_secret) { 
    if(!cJSON_IsString(facebook_app_secret) && !cJSON_IsNull(facebook_app_secret))
    {
    goto end; //String
    }
    }

    // application_response->app_token
    cJSON *app_token = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "appToken");
    if (cJSON_IsNull(app_token)) {
        app_token = NULL;
    }
    if (app_token) { 
    if(!cJSON_IsString(app_token) && !cJSON_IsNull(app_token))
    {
    goto end; //String
    }
    }

    // application_response->google_api_key
    cJSON *google_api_key = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "googleApiKey");
    if (cJSON_IsNull(google_api_key)) {
        google_api_key = NULL;
    }
    if (google_api_key) { 
    if(!cJSON_IsString(google_api_key) && !cJSON_IsNull(google_api_key))
    {
    goto end; //String
    }
    }

    // application_response->app_rest_key
    cJSON *app_rest_key = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "appRestKey");
    if (cJSON_IsNull(app_rest_key)) {
        app_rest_key = NULL;
    }
    if (app_rest_key) { 
    if(!cJSON_IsString(app_rest_key) && !cJSON_IsNull(app_rest_key))
    {
    goto end; //String
    }
    }

    // application_response->public_content_approval
    cJSON *public_content_approval = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "publicContentApproval");
    if (cJSON_IsNull(public_content_approval)) {
        public_content_approval = NULL;
    }
    if (public_content_approval) { 
    if(!cJSON_IsBool(public_content_approval))
    {
    goto end; //Bool
    }
    }

    // application_response->production_mode
    cJSON *production_mode = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "productionMode");
    if (cJSON_IsNull(production_mode)) {
        production_mode = NULL;
    }
    if (production_mode) { 
    if(!cJSON_IsBool(production_mode))
    {
    goto end; //Bool
    }
    }

    // application_response->minimum_session_length
    cJSON *minimum_session_length = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "minimumSessionLength");
    if (cJSON_IsNull(minimum_session_length)) {
        minimum_session_length = NULL;
    }
    if (minimum_session_length) { 
    if(!cJSON_IsNumber(minimum_session_length))
    {
    goto end; //Numeric
    }
    }

    // application_response->session_gap_length
    cJSON *session_gap_length = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "sessionGapLength");
    if (cJSON_IsNull(session_gap_length)) {
        session_gap_length = NULL;
    }
    if (session_gap_length) { 
    if(!cJSON_IsNumber(session_gap_length))
    {
    goto end; //Numeric
    }
    }

    // application_response->sqoot_api_key
    cJSON *sqoot_api_key = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "sqootApiKey");
    if (cJSON_IsNull(sqoot_api_key)) {
        sqoot_api_key = NULL;
    }
    if (sqoot_api_key) { 
    if(!cJSON_IsString(sqoot_api_key) && !cJSON_IsNull(sqoot_api_key))
    {
    goto end; //String
    }
    }

    // application_response->amqp_enabled
    cJSON *amqp_enabled = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "amqpEnabled");
    if (cJSON_IsNull(amqp_enabled)) {
        amqp_enabled = NULL;
    }
    if (amqp_enabled) { 
    if(!cJSON_IsBool(amqp_enabled))
    {
    goto end; //Bool
    }
    }

    // application_response->authorized_count
    cJSON *authorized_count = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "authorizedCount");
    if (cJSON_IsNull(authorized_count)) {
        authorized_count = NULL;
    }
    if (authorized_count) { 
    if(!cJSON_IsNumber(authorized_count))
    {
    goto end; //Numeric
    }
    }

    // application_response->authorized_servers
    cJSON *authorized_servers = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "authorizedServers");
    if (cJSON_IsNull(authorized_servers)) {
        authorized_servers = NULL;
    }
    if (authorized_servers) { 
    if(!cJSON_IsString(authorized_servers) && !cJSON_IsNull(authorized_servers))
    {
    goto end; //String
    }
    }

    // application_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(application_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    application_response_local_var = application_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        application_id ? application_id->valuedouble : 0,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        current_build_version && !cJSON_IsNull(current_build_version) ? strdup(current_build_version->valuestring) : NULL,
        current_api_version && !cJSON_IsNull(current_api_version) ? strdup(current_api_version->valuestring) : NULL,
        app_icon ? app_icon_local_nonprim : NULL,
        app_logo ? app_logo_local_nonprim : NULL,
        active ? active->valueint : 0,
        about && !cJSON_IsNull(about) ? strdup(about->valuestring) : NULL,
        landing_page_url && !cJSON_IsNull(landing_page_url) ? strdup(landing_page_url->valuestring) : NULL,
        landing_page_full_url && !cJSON_IsNull(landing_page_full_url) ? strdup(landing_page_full_url->valuestring) : NULL,
        default_image_full_url && !cJSON_IsNull(default_image_full_url) ? strdup(default_image_full_url->valuestring) : NULL,
        activity_description && !cJSON_IsNull(activity_description) ? strdup(activity_description->valuestring) : NULL,
        platforms ? platformsList : NULL,
        categories ? categoriesList : NULL,
        placement_count ? placement_count->valuedouble : 0,
        billable ? billable_local_nonprim : NULL,
        has_ads ? has_ads->valueint : 0,
        public_notifications ? public_notifications->valueint : 0,
        url_scheme && !cJSON_IsNull(url_scheme) ? strdup(url_scheme->valuestring) : NULL,
        global ? global->valueint : 0,
        download_urls && !cJSON_IsNull(download_urls) ? strdup(download_urls->valuestring) : NULL,
        local_ads_enabled ? local_ads_enabled->valueint : 0,
        trilat_settings ? trilat_settings_local_nonprim : NULL,
        app_type && !cJSON_IsNull(app_type) ? strdup(app_type->valuestring) : NULL,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL,
        bundle_id && !cJSON_IsNull(bundle_id) ? strdup(bundle_id->valuestring) : NULL,
        scoring_type ? scoring_typeVariable : sirqul_iot_platform_application_response_SCORINGTYPE_NULL,
        hint_cost ? hint_cost->valuedouble : 0,
        max_score ? max_score->valuedouble : 0,
        tickets_per_point ? tickets_per_point->valuedouble : 0,
        has_game_data ? has_game_data->valueint : 0,
        global_tickets ? global_tickets->valueint : 0,
        eula_version && !cJSON_IsNull(eula_version) ? strdup(eula_version->valuestring) : NULL,
        eula_date_updated ? eula_date_updated->valuedouble : 0,
        modules && !cJSON_IsNull(modules) ? strdup(modules->valuestring) : NULL,
        billable_entity_name && !cJSON_IsNull(billable_entity_name) ? strdup(billable_entity_name->valuestring) : NULL,
        show_in_activities ? show_in_activities->valueint : 0,
        css_class && !cJSON_IsNull(css_class) ? strdup(css_class->valuestring) : NULL,
        invite_welcome_text && !cJSON_IsNull(invite_welcome_text) ? strdup(invite_welcome_text->valuestring) : NULL,
        invite_page_url && !cJSON_IsNull(invite_page_url) ? strdup(invite_page_url->valuestring) : NULL,
        apns_certificate_file_name && !cJSON_IsNull(apns_certificate_file_name) ? strdup(apns_certificate_file_name->valuestring) : NULL,
        facebook_app_id && !cJSON_IsNull(facebook_app_id) ? strdup(facebook_app_id->valuestring) : NULL,
        facebook_app_secret && !cJSON_IsNull(facebook_app_secret) ? strdup(facebook_app_secret->valuestring) : NULL,
        app_token && !cJSON_IsNull(app_token) ? strdup(app_token->valuestring) : NULL,
        google_api_key && !cJSON_IsNull(google_api_key) ? strdup(google_api_key->valuestring) : NULL,
        app_rest_key && !cJSON_IsNull(app_rest_key) ? strdup(app_rest_key->valuestring) : NULL,
        public_content_approval ? public_content_approval->valueint : 0,
        production_mode ? production_mode->valueint : 0,
        minimum_session_length ? minimum_session_length->valuedouble : 0,
        session_gap_length ? session_gap_length->valuedouble : 0,
        sqoot_api_key && !cJSON_IsNull(sqoot_api_key) ? strdup(sqoot_api_key->valuestring) : NULL,
        amqp_enabled ? amqp_enabled->valueint : 0,
        authorized_count ? authorized_count->valuedouble : 0,
        authorized_servers && !cJSON_IsNull(authorized_servers) ? strdup(authorized_servers->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return application_response_local_var;
end:
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    if (app_icon_local_nonprim) {
        asset_short_response_free(app_icon_local_nonprim);
        app_icon_local_nonprim = NULL;
    }
    if (app_logo_local_nonprim) {
        asset_short_response_free(app_logo_local_nonprim);
        app_logo_local_nonprim = NULL;
    }
    if (platformsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, platformsList) {
            platform_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(platformsList);
        platformsList = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (billable_local_nonprim) {
        billable_entity_short_response_free(billable_local_nonprim);
        billable_local_nonprim = NULL;
    }
    if (trilat_settings_local_nonprim) {
        trilat_app_settings_free(trilat_settings_local_nonprim);
        trilat_settings_local_nonprim = NULL;
    }
    return NULL;

}
