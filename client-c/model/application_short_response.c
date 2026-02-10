#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "application_short_response.h"



static application_short_response_t *application_short_response_create_internal(
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
    ) {
    application_short_response_t *application_short_response_local_var = malloc(sizeof(application_short_response_t));
    if (!application_short_response_local_var) {
        return NULL;
    }
    application_short_response_local_var->valid = valid;
    application_short_response_local_var->message = message;
    application_short_response_local_var->version = version;
    application_short_response_local_var->serialize_nulls = serialize_nulls;
    application_short_response_local_var->start_time_log = start_time_log;
    application_short_response_local_var->error_code = error_code;
    application_short_response_local_var->request = request;
    application_short_response_local_var->application_id = application_id;
    application_short_response_local_var->app_key = app_key;
    application_short_response_local_var->title = title;
    application_short_response_local_var->current_build_version = current_build_version;
    application_short_response_local_var->current_api_version = current_api_version;
    application_short_response_local_var->app_icon = app_icon;
    application_short_response_local_var->app_logo = app_logo;
    application_short_response_local_var->active = active;
    application_short_response_local_var->about = about;
    application_short_response_local_var->landing_page_url = landing_page_url;
    application_short_response_local_var->landing_page_full_url = landing_page_full_url;
    application_short_response_local_var->default_image_full_url = default_image_full_url;
    application_short_response_local_var->activity_description = activity_description;
    application_short_response_local_var->platforms = platforms;
    application_short_response_local_var->categories = categories;
    application_short_response_local_var->placement_count = placement_count;
    application_short_response_local_var->billable = billable;
    application_short_response_local_var->has_ads = has_ads;
    application_short_response_local_var->public_notifications = public_notifications;
    application_short_response_local_var->url_scheme = url_scheme;
    application_short_response_local_var->global = global;
    application_short_response_local_var->download_urls = download_urls;
    application_short_response_local_var->local_ads_enabled = local_ads_enabled;
    application_short_response_local_var->trilat_settings = trilat_settings;
    application_short_response_local_var->returning = returning;

    application_short_response_local_var->_library_owned = 1;
    return application_short_response_local_var;
}

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
    ) {
    return application_short_response_create_internal (
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
        returning
        );
}

void application_short_response_free(application_short_response_t *application_short_response) {
    if(NULL == application_short_response){
        return ;
    }
    if(application_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "application_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (application_short_response->message) {
        free(application_short_response->message);
        application_short_response->message = NULL;
    }
    if (application_short_response->error_code) {
        free(application_short_response->error_code);
        application_short_response->error_code = NULL;
    }
    if (application_short_response->request) {
        list_ForEach(listEntry, application_short_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(application_short_response->request);
        application_short_response->request = NULL;
    }
    if (application_short_response->app_key) {
        free(application_short_response->app_key);
        application_short_response->app_key = NULL;
    }
    if (application_short_response->title) {
        free(application_short_response->title);
        application_short_response->title = NULL;
    }
    if (application_short_response->current_build_version) {
        free(application_short_response->current_build_version);
        application_short_response->current_build_version = NULL;
    }
    if (application_short_response->current_api_version) {
        free(application_short_response->current_api_version);
        application_short_response->current_api_version = NULL;
    }
    if (application_short_response->app_icon) {
        asset_short_response_free(application_short_response->app_icon);
        application_short_response->app_icon = NULL;
    }
    if (application_short_response->app_logo) {
        asset_short_response_free(application_short_response->app_logo);
        application_short_response->app_logo = NULL;
    }
    if (application_short_response->about) {
        free(application_short_response->about);
        application_short_response->about = NULL;
    }
    if (application_short_response->landing_page_url) {
        free(application_short_response->landing_page_url);
        application_short_response->landing_page_url = NULL;
    }
    if (application_short_response->landing_page_full_url) {
        free(application_short_response->landing_page_full_url);
        application_short_response->landing_page_full_url = NULL;
    }
    if (application_short_response->default_image_full_url) {
        free(application_short_response->default_image_full_url);
        application_short_response->default_image_full_url = NULL;
    }
    if (application_short_response->activity_description) {
        free(application_short_response->activity_description);
        application_short_response->activity_description = NULL;
    }
    if (application_short_response->platforms) {
        list_ForEach(listEntry, application_short_response->platforms) {
            platform_response_free(listEntry->data);
        }
        list_freeList(application_short_response->platforms);
        application_short_response->platforms = NULL;
    }
    if (application_short_response->categories) {
        list_ForEach(listEntry, application_short_response->categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(application_short_response->categories);
        application_short_response->categories = NULL;
    }
    if (application_short_response->billable) {
        billable_entity_short_response_free(application_short_response->billable);
        application_short_response->billable = NULL;
    }
    if (application_short_response->url_scheme) {
        free(application_short_response->url_scheme);
        application_short_response->url_scheme = NULL;
    }
    if (application_short_response->download_urls) {
        free(application_short_response->download_urls);
        application_short_response->download_urls = NULL;
    }
    if (application_short_response->trilat_settings) {
        trilat_app_settings_free(application_short_response->trilat_settings);
        application_short_response->trilat_settings = NULL;
    }
    if (application_short_response->returning) {
        free(application_short_response->returning);
        application_short_response->returning = NULL;
    }
    free(application_short_response);
}

cJSON *application_short_response_convertToJSON(application_short_response_t *application_short_response) {
    cJSON *item = cJSON_CreateObject();

    // application_short_response->valid
    if(application_short_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", application_short_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // application_short_response->message
    if(application_short_response->message) {
    if(cJSON_AddStringToObject(item, "message", application_short_response->message) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->version
    if(application_short_response->version) {
    if(cJSON_AddNumberToObject(item, "version", application_short_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_short_response->serialize_nulls
    if(application_short_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", application_short_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // application_short_response->start_time_log
    if(application_short_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", application_short_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_short_response->error_code
    if(application_short_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", application_short_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->request
    if(application_short_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (application_short_response->request) {
    list_ForEach(requestListEntry, application_short_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // application_short_response->application_id
    if(application_short_response->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", application_short_response->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_short_response->app_key
    if(application_short_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", application_short_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->title
    if(application_short_response->title) {
    if(cJSON_AddStringToObject(item, "title", application_short_response->title) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->current_build_version
    if(application_short_response->current_build_version) {
    if(cJSON_AddStringToObject(item, "currentBuildVersion", application_short_response->current_build_version) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->current_api_version
    if(application_short_response->current_api_version) {
    if(cJSON_AddStringToObject(item, "currentApiVersion", application_short_response->current_api_version) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->app_icon
    if(application_short_response->app_icon) {
    cJSON *app_icon_local_JSON = asset_short_response_convertToJSON(application_short_response->app_icon);
    if(app_icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appIcon", app_icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_short_response->app_logo
    if(application_short_response->app_logo) {
    cJSON *app_logo_local_JSON = asset_short_response_convertToJSON(application_short_response->app_logo);
    if(app_logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "appLogo", app_logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_short_response->active
    if(application_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", application_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // application_short_response->about
    if(application_short_response->about) {
    if(cJSON_AddStringToObject(item, "about", application_short_response->about) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->landing_page_url
    if(application_short_response->landing_page_url) {
    if(cJSON_AddStringToObject(item, "landingPageUrl", application_short_response->landing_page_url) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->landing_page_full_url
    if(application_short_response->landing_page_full_url) {
    if(cJSON_AddStringToObject(item, "landingPageFullUrl", application_short_response->landing_page_full_url) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->default_image_full_url
    if(application_short_response->default_image_full_url) {
    if(cJSON_AddStringToObject(item, "defaultImageFullUrl", application_short_response->default_image_full_url) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->activity_description
    if(application_short_response->activity_description) {
    if(cJSON_AddStringToObject(item, "activityDescription", application_short_response->activity_description) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->platforms
    if(application_short_response->platforms) {
    cJSON *platforms = cJSON_AddArrayToObject(item, "platforms");
    if(platforms == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *platformsListEntry;
    if (application_short_response->platforms) {
    list_ForEach(platformsListEntry, application_short_response->platforms) {
    cJSON *itemLocal = platform_response_convertToJSON(platformsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(platforms, itemLocal);
    }
    }
    }


    // application_short_response->categories
    if(application_short_response->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (application_short_response->categories) {
    list_ForEach(categoriesListEntry, application_short_response->categories) {
    cJSON *itemLocal = category_response_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // application_short_response->placement_count
    if(application_short_response->placement_count) {
    if(cJSON_AddNumberToObject(item, "placementCount", application_short_response->placement_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_short_response->billable
    if(application_short_response->billable) {
    cJSON *billable_local_JSON = billable_entity_short_response_convertToJSON(application_short_response->billable);
    if(billable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billable", billable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_short_response->has_ads
    if(application_short_response->has_ads) {
    if(cJSON_AddBoolToObject(item, "hasAds", application_short_response->has_ads) == NULL) {
    goto fail; //Bool
    }
    }


    // application_short_response->public_notifications
    if(application_short_response->public_notifications) {
    if(cJSON_AddBoolToObject(item, "publicNotifications", application_short_response->public_notifications) == NULL) {
    goto fail; //Bool
    }
    }


    // application_short_response->url_scheme
    if(application_short_response->url_scheme) {
    if(cJSON_AddStringToObject(item, "urlScheme", application_short_response->url_scheme) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->global
    if(application_short_response->global) {
    if(cJSON_AddBoolToObject(item, "global", application_short_response->global) == NULL) {
    goto fail; //Bool
    }
    }


    // application_short_response->download_urls
    if(application_short_response->download_urls) {
    if(cJSON_AddStringToObject(item, "downloadUrls", application_short_response->download_urls) == NULL) {
    goto fail; //String
    }
    }


    // application_short_response->local_ads_enabled
    if(application_short_response->local_ads_enabled) {
    if(cJSON_AddBoolToObject(item, "localAdsEnabled", application_short_response->local_ads_enabled) == NULL) {
    goto fail; //Bool
    }
    }


    // application_short_response->trilat_settings
    if(application_short_response->trilat_settings) {
    cJSON *trilat_settings_local_JSON = trilat_app_settings_convertToJSON(application_short_response->trilat_settings);
    if(trilat_settings_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "trilatSettings", trilat_settings_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_short_response->returning
    if(application_short_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", application_short_response->returning) == NULL) {
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

application_short_response_t *application_short_response_parseFromJSON(cJSON *application_short_responseJSON){

    application_short_response_t *application_short_response_local_var = NULL;

    // define the local list for application_short_response->request
    list_t *requestList = NULL;

    // define the local variable for application_short_response->app_icon
    asset_short_response_t *app_icon_local_nonprim = NULL;

    // define the local variable for application_short_response->app_logo
    asset_short_response_t *app_logo_local_nonprim = NULL;

    // define the local list for application_short_response->platforms
    list_t *platformsList = NULL;

    // define the local list for application_short_response->categories
    list_t *categoriesList = NULL;

    // define the local variable for application_short_response->billable
    billable_entity_short_response_t *billable_local_nonprim = NULL;

    // define the local variable for application_short_response->trilat_settings
    trilat_app_settings_t *trilat_settings_local_nonprim = NULL;

    // application_short_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // application_short_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // application_short_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // application_short_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // application_short_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // application_short_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // application_short_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "request");
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

    // application_short_response->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // application_short_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // application_short_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // application_short_response->current_build_version
    cJSON *current_build_version = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "currentBuildVersion");
    if (cJSON_IsNull(current_build_version)) {
        current_build_version = NULL;
    }
    if (current_build_version) { 
    if(!cJSON_IsString(current_build_version) && !cJSON_IsNull(current_build_version))
    {
    goto end; //String
    }
    }

    // application_short_response->current_api_version
    cJSON *current_api_version = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "currentApiVersion");
    if (cJSON_IsNull(current_api_version)) {
        current_api_version = NULL;
    }
    if (current_api_version) { 
    if(!cJSON_IsString(current_api_version) && !cJSON_IsNull(current_api_version))
    {
    goto end; //String
    }
    }

    // application_short_response->app_icon
    cJSON *app_icon = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "appIcon");
    if (cJSON_IsNull(app_icon)) {
        app_icon = NULL;
    }
    if (app_icon) { 
    app_icon_local_nonprim = asset_short_response_parseFromJSON(app_icon); //nonprimitive
    }

    // application_short_response->app_logo
    cJSON *app_logo = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "appLogo");
    if (cJSON_IsNull(app_logo)) {
        app_logo = NULL;
    }
    if (app_logo) { 
    app_logo_local_nonprim = asset_short_response_parseFromJSON(app_logo); //nonprimitive
    }

    // application_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // application_short_response->about
    cJSON *about = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "about");
    if (cJSON_IsNull(about)) {
        about = NULL;
    }
    if (about) { 
    if(!cJSON_IsString(about) && !cJSON_IsNull(about))
    {
    goto end; //String
    }
    }

    // application_short_response->landing_page_url
    cJSON *landing_page_url = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "landingPageUrl");
    if (cJSON_IsNull(landing_page_url)) {
        landing_page_url = NULL;
    }
    if (landing_page_url) { 
    if(!cJSON_IsString(landing_page_url) && !cJSON_IsNull(landing_page_url))
    {
    goto end; //String
    }
    }

    // application_short_response->landing_page_full_url
    cJSON *landing_page_full_url = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "landingPageFullUrl");
    if (cJSON_IsNull(landing_page_full_url)) {
        landing_page_full_url = NULL;
    }
    if (landing_page_full_url) { 
    if(!cJSON_IsString(landing_page_full_url) && !cJSON_IsNull(landing_page_full_url))
    {
    goto end; //String
    }
    }

    // application_short_response->default_image_full_url
    cJSON *default_image_full_url = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "defaultImageFullUrl");
    if (cJSON_IsNull(default_image_full_url)) {
        default_image_full_url = NULL;
    }
    if (default_image_full_url) { 
    if(!cJSON_IsString(default_image_full_url) && !cJSON_IsNull(default_image_full_url))
    {
    goto end; //String
    }
    }

    // application_short_response->activity_description
    cJSON *activity_description = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "activityDescription");
    if (cJSON_IsNull(activity_description)) {
        activity_description = NULL;
    }
    if (activity_description) { 
    if(!cJSON_IsString(activity_description) && !cJSON_IsNull(activity_description))
    {
    goto end; //String
    }
    }

    // application_short_response->platforms
    cJSON *platforms = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "platforms");
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

    // application_short_response->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "categories");
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

    // application_short_response->placement_count
    cJSON *placement_count = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "placementCount");
    if (cJSON_IsNull(placement_count)) {
        placement_count = NULL;
    }
    if (placement_count) { 
    if(!cJSON_IsNumber(placement_count))
    {
    goto end; //Numeric
    }
    }

    // application_short_response->billable
    cJSON *billable = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "billable");
    if (cJSON_IsNull(billable)) {
        billable = NULL;
    }
    if (billable) { 
    billable_local_nonprim = billable_entity_short_response_parseFromJSON(billable); //nonprimitive
    }

    // application_short_response->has_ads
    cJSON *has_ads = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "hasAds");
    if (cJSON_IsNull(has_ads)) {
        has_ads = NULL;
    }
    if (has_ads) { 
    if(!cJSON_IsBool(has_ads))
    {
    goto end; //Bool
    }
    }

    // application_short_response->public_notifications
    cJSON *public_notifications = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "publicNotifications");
    if (cJSON_IsNull(public_notifications)) {
        public_notifications = NULL;
    }
    if (public_notifications) { 
    if(!cJSON_IsBool(public_notifications))
    {
    goto end; //Bool
    }
    }

    // application_short_response->url_scheme
    cJSON *url_scheme = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "urlScheme");
    if (cJSON_IsNull(url_scheme)) {
        url_scheme = NULL;
    }
    if (url_scheme) { 
    if(!cJSON_IsString(url_scheme) && !cJSON_IsNull(url_scheme))
    {
    goto end; //String
    }
    }

    // application_short_response->global
    cJSON *global = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "global");
    if (cJSON_IsNull(global)) {
        global = NULL;
    }
    if (global) { 
    if(!cJSON_IsBool(global))
    {
    goto end; //Bool
    }
    }

    // application_short_response->download_urls
    cJSON *download_urls = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "downloadUrls");
    if (cJSON_IsNull(download_urls)) {
        download_urls = NULL;
    }
    if (download_urls) { 
    if(!cJSON_IsString(download_urls) && !cJSON_IsNull(download_urls))
    {
    goto end; //String
    }
    }

    // application_short_response->local_ads_enabled
    cJSON *local_ads_enabled = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "localAdsEnabled");
    if (cJSON_IsNull(local_ads_enabled)) {
        local_ads_enabled = NULL;
    }
    if (local_ads_enabled) { 
    if(!cJSON_IsBool(local_ads_enabled))
    {
    goto end; //Bool
    }
    }

    // application_short_response->trilat_settings
    cJSON *trilat_settings = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "trilatSettings");
    if (cJSON_IsNull(trilat_settings)) {
        trilat_settings = NULL;
    }
    if (trilat_settings) { 
    trilat_settings_local_nonprim = trilat_app_settings_parseFromJSON(trilat_settings); //nonprimitive
    }

    // application_short_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(application_short_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    application_short_response_local_var = application_short_response_create_internal (
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
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return application_short_response_local_var;
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
