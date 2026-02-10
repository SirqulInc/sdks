#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "application_usage_response.h"



static application_usage_response_t *application_usage_response_create_internal(
    billable_entity_response_t *billable_entity,
    long application_id,
    char *invoice_date,
    double balance,
    long total_requests,
    long total_data_storage,
    long total_media_storage,
    long total_notifications,
    long max_missions,
    long max_vouchers,
    long max_coupons,
    long max_products,
    long max_events,
    long max_media,
    long max_locations
    ) {
    application_usage_response_t *application_usage_response_local_var = malloc(sizeof(application_usage_response_t));
    if (!application_usage_response_local_var) {
        return NULL;
    }
    application_usage_response_local_var->billable_entity = billable_entity;
    application_usage_response_local_var->application_id = application_id;
    application_usage_response_local_var->invoice_date = invoice_date;
    application_usage_response_local_var->balance = balance;
    application_usage_response_local_var->total_requests = total_requests;
    application_usage_response_local_var->total_data_storage = total_data_storage;
    application_usage_response_local_var->total_media_storage = total_media_storage;
    application_usage_response_local_var->total_notifications = total_notifications;
    application_usage_response_local_var->max_missions = max_missions;
    application_usage_response_local_var->max_vouchers = max_vouchers;
    application_usage_response_local_var->max_coupons = max_coupons;
    application_usage_response_local_var->max_products = max_products;
    application_usage_response_local_var->max_events = max_events;
    application_usage_response_local_var->max_media = max_media;
    application_usage_response_local_var->max_locations = max_locations;

    application_usage_response_local_var->_library_owned = 1;
    return application_usage_response_local_var;
}

__attribute__((deprecated)) application_usage_response_t *application_usage_response_create(
    billable_entity_response_t *billable_entity,
    long application_id,
    char *invoice_date,
    double balance,
    long total_requests,
    long total_data_storage,
    long total_media_storage,
    long total_notifications,
    long max_missions,
    long max_vouchers,
    long max_coupons,
    long max_products,
    long max_events,
    long max_media,
    long max_locations
    ) {
    return application_usage_response_create_internal (
        billable_entity,
        application_id,
        invoice_date,
        balance,
        total_requests,
        total_data_storage,
        total_media_storage,
        total_notifications,
        max_missions,
        max_vouchers,
        max_coupons,
        max_products,
        max_events,
        max_media,
        max_locations
        );
}

void application_usage_response_free(application_usage_response_t *application_usage_response) {
    if(NULL == application_usage_response){
        return ;
    }
    if(application_usage_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "application_usage_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (application_usage_response->billable_entity) {
        billable_entity_response_free(application_usage_response->billable_entity);
        application_usage_response->billable_entity = NULL;
    }
    if (application_usage_response->invoice_date) {
        free(application_usage_response->invoice_date);
        application_usage_response->invoice_date = NULL;
    }
    free(application_usage_response);
}

cJSON *application_usage_response_convertToJSON(application_usage_response_t *application_usage_response) {
    cJSON *item = cJSON_CreateObject();

    // application_usage_response->billable_entity
    if(application_usage_response->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_response_convertToJSON(application_usage_response->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_usage_response->application_id
    if(application_usage_response->application_id) {
    if(cJSON_AddNumberToObject(item, "applicationId", application_usage_response->application_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->invoice_date
    if(application_usage_response->invoice_date) {
    if(cJSON_AddStringToObject(item, "invoiceDate", application_usage_response->invoice_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // application_usage_response->balance
    if(application_usage_response->balance) {
    if(cJSON_AddNumberToObject(item, "balance", application_usage_response->balance) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->total_requests
    if(application_usage_response->total_requests) {
    if(cJSON_AddNumberToObject(item, "totalRequests", application_usage_response->total_requests) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->total_data_storage
    if(application_usage_response->total_data_storage) {
    if(cJSON_AddNumberToObject(item, "totalDataStorage", application_usage_response->total_data_storage) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->total_media_storage
    if(application_usage_response->total_media_storage) {
    if(cJSON_AddNumberToObject(item, "totalMediaStorage", application_usage_response->total_media_storage) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->total_notifications
    if(application_usage_response->total_notifications) {
    if(cJSON_AddNumberToObject(item, "totalNotifications", application_usage_response->total_notifications) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->max_missions
    if(application_usage_response->max_missions) {
    if(cJSON_AddNumberToObject(item, "maxMissions", application_usage_response->max_missions) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->max_vouchers
    if(application_usage_response->max_vouchers) {
    if(cJSON_AddNumberToObject(item, "maxVouchers", application_usage_response->max_vouchers) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->max_coupons
    if(application_usage_response->max_coupons) {
    if(cJSON_AddNumberToObject(item, "maxCoupons", application_usage_response->max_coupons) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->max_products
    if(application_usage_response->max_products) {
    if(cJSON_AddNumberToObject(item, "maxProducts", application_usage_response->max_products) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->max_events
    if(application_usage_response->max_events) {
    if(cJSON_AddNumberToObject(item, "maxEvents", application_usage_response->max_events) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->max_media
    if(application_usage_response->max_media) {
    if(cJSON_AddNumberToObject(item, "maxMedia", application_usage_response->max_media) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_usage_response->max_locations
    if(application_usage_response->max_locations) {
    if(cJSON_AddNumberToObject(item, "maxLocations", application_usage_response->max_locations) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

application_usage_response_t *application_usage_response_parseFromJSON(cJSON *application_usage_responseJSON){

    application_usage_response_t *application_usage_response_local_var = NULL;

    // define the local variable for application_usage_response->billable_entity
    billable_entity_response_t *billable_entity_local_nonprim = NULL;

    // application_usage_response->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_response_parseFromJSON(billable_entity); //nonprimitive
    }

    // application_usage_response->application_id
    cJSON *application_id = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "applicationId");
    if (cJSON_IsNull(application_id)) {
        application_id = NULL;
    }
    if (application_id) { 
    if(!cJSON_IsNumber(application_id))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->invoice_date
    cJSON *invoice_date = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "invoiceDate");
    if (cJSON_IsNull(invoice_date)) {
        invoice_date = NULL;
    }
    if (invoice_date) { 
    if(!cJSON_IsString(invoice_date) && !cJSON_IsNull(invoice_date))
    {
    goto end; //DateTime
    }
    }

    // application_usage_response->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "balance");
    if (cJSON_IsNull(balance)) {
        balance = NULL;
    }
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->total_requests
    cJSON *total_requests = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "totalRequests");
    if (cJSON_IsNull(total_requests)) {
        total_requests = NULL;
    }
    if (total_requests) { 
    if(!cJSON_IsNumber(total_requests))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->total_data_storage
    cJSON *total_data_storage = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "totalDataStorage");
    if (cJSON_IsNull(total_data_storage)) {
        total_data_storage = NULL;
    }
    if (total_data_storage) { 
    if(!cJSON_IsNumber(total_data_storage))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->total_media_storage
    cJSON *total_media_storage = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "totalMediaStorage");
    if (cJSON_IsNull(total_media_storage)) {
        total_media_storage = NULL;
    }
    if (total_media_storage) { 
    if(!cJSON_IsNumber(total_media_storage))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->total_notifications
    cJSON *total_notifications = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "totalNotifications");
    if (cJSON_IsNull(total_notifications)) {
        total_notifications = NULL;
    }
    if (total_notifications) { 
    if(!cJSON_IsNumber(total_notifications))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->max_missions
    cJSON *max_missions = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "maxMissions");
    if (cJSON_IsNull(max_missions)) {
        max_missions = NULL;
    }
    if (max_missions) { 
    if(!cJSON_IsNumber(max_missions))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->max_vouchers
    cJSON *max_vouchers = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "maxVouchers");
    if (cJSON_IsNull(max_vouchers)) {
        max_vouchers = NULL;
    }
    if (max_vouchers) { 
    if(!cJSON_IsNumber(max_vouchers))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->max_coupons
    cJSON *max_coupons = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "maxCoupons");
    if (cJSON_IsNull(max_coupons)) {
        max_coupons = NULL;
    }
    if (max_coupons) { 
    if(!cJSON_IsNumber(max_coupons))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->max_products
    cJSON *max_products = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "maxProducts");
    if (cJSON_IsNull(max_products)) {
        max_products = NULL;
    }
    if (max_products) { 
    if(!cJSON_IsNumber(max_products))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->max_events
    cJSON *max_events = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "maxEvents");
    if (cJSON_IsNull(max_events)) {
        max_events = NULL;
    }
    if (max_events) { 
    if(!cJSON_IsNumber(max_events))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->max_media
    cJSON *max_media = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "maxMedia");
    if (cJSON_IsNull(max_media)) {
        max_media = NULL;
    }
    if (max_media) { 
    if(!cJSON_IsNumber(max_media))
    {
    goto end; //Numeric
    }
    }

    // application_usage_response->max_locations
    cJSON *max_locations = cJSON_GetObjectItemCaseSensitive(application_usage_responseJSON, "maxLocations");
    if (cJSON_IsNull(max_locations)) {
        max_locations = NULL;
    }
    if (max_locations) { 
    if(!cJSON_IsNumber(max_locations))
    {
    goto end; //Numeric
    }
    }


    application_usage_response_local_var = application_usage_response_create_internal (
        billable_entity ? billable_entity_local_nonprim : NULL,
        application_id ? application_id->valuedouble : 0,
        invoice_date && !cJSON_IsNull(invoice_date) ? strdup(invoice_date->valuestring) : NULL,
        balance ? balance->valuedouble : 0,
        total_requests ? total_requests->valuedouble : 0,
        total_data_storage ? total_data_storage->valuedouble : 0,
        total_media_storage ? total_media_storage->valuedouble : 0,
        total_notifications ? total_notifications->valuedouble : 0,
        max_missions ? max_missions->valuedouble : 0,
        max_vouchers ? max_vouchers->valuedouble : 0,
        max_coupons ? max_coupons->valuedouble : 0,
        max_products ? max_products->valuedouble : 0,
        max_events ? max_events->valuedouble : 0,
        max_media ? max_media->valuedouble : 0,
        max_locations ? max_locations->valuedouble : 0
        );

    return application_usage_response_local_var;
end:
    if (billable_entity_local_nonprim) {
        billable_entity_response_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    return NULL;

}
