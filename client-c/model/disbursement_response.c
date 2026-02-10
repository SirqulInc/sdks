#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "disbursement_response.h"


char* disbursement_response_status_ToString(sirqul_iot_platform_disbursement_response_STATUS_e status) {
    char* statusArray[] =  { "NULL", "NEW", "APPROVED", "VALIDATING", "ERROR", "AUTHORIZED", "CAPTURED", "SETTLED" };
    return statusArray[status];
}

sirqul_iot_platform_disbursement_response_STATUS_e disbursement_response_status_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "NEW", "APPROVED", "VALIDATING", "ERROR", "AUTHORIZED", "CAPTURED", "SETTLED" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* disbursement_response_provider_ToString(sirqul_iot_platform_disbursement_response_PROVIDER_e provider) {
    char* providerArray[] =  { "NULL", "AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM" };
    return providerArray[provider];
}

sirqul_iot_platform_disbursement_response_PROVIDER_e disbursement_response_provider_FromString(char* provider){
    int stringToReturn = 0;
    char *providerArray[] =  { "NULL", "AUTHORIZE_NET", "AMAZON_FPS", "BILL_COM" };
    size_t sizeofArray = sizeof(providerArray) / sizeof(providerArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(provider, providerArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static disbursement_response_t *disbursement_response_create_internal(
    long disbursement_id,
    char *title,
    char *comment,
    char *external_id,
    char *introspection_params,
    double amount,
    long scheduled_date,
    long capture_date,
    long estimated_date,
    long settled_date,
    sirqul_iot_platform_disbursement_response_STATUS_e status,
    sirqul_iot_platform_disbursement_response_PROVIDER_e provider,
    billable_entity_short_response_t *sender_billable,
    billable_entity_short_response_t *receiver_billable,
    char *error_code,
    char *error_message
    ) {
    disbursement_response_t *disbursement_response_local_var = malloc(sizeof(disbursement_response_t));
    if (!disbursement_response_local_var) {
        return NULL;
    }
    disbursement_response_local_var->disbursement_id = disbursement_id;
    disbursement_response_local_var->title = title;
    disbursement_response_local_var->comment = comment;
    disbursement_response_local_var->external_id = external_id;
    disbursement_response_local_var->introspection_params = introspection_params;
    disbursement_response_local_var->amount = amount;
    disbursement_response_local_var->scheduled_date = scheduled_date;
    disbursement_response_local_var->capture_date = capture_date;
    disbursement_response_local_var->estimated_date = estimated_date;
    disbursement_response_local_var->settled_date = settled_date;
    disbursement_response_local_var->status = status;
    disbursement_response_local_var->provider = provider;
    disbursement_response_local_var->sender_billable = sender_billable;
    disbursement_response_local_var->receiver_billable = receiver_billable;
    disbursement_response_local_var->error_code = error_code;
    disbursement_response_local_var->error_message = error_message;

    disbursement_response_local_var->_library_owned = 1;
    return disbursement_response_local_var;
}

__attribute__((deprecated)) disbursement_response_t *disbursement_response_create(
    long disbursement_id,
    char *title,
    char *comment,
    char *external_id,
    char *introspection_params,
    double amount,
    long scheduled_date,
    long capture_date,
    long estimated_date,
    long settled_date,
    sirqul_iot_platform_disbursement_response_STATUS_e status,
    sirqul_iot_platform_disbursement_response_PROVIDER_e provider,
    billable_entity_short_response_t *sender_billable,
    billable_entity_short_response_t *receiver_billable,
    char *error_code,
    char *error_message
    ) {
    return disbursement_response_create_internal (
        disbursement_id,
        title,
        comment,
        external_id,
        introspection_params,
        amount,
        scheduled_date,
        capture_date,
        estimated_date,
        settled_date,
        status,
        provider,
        sender_billable,
        receiver_billable,
        error_code,
        error_message
        );
}

void disbursement_response_free(disbursement_response_t *disbursement_response) {
    if(NULL == disbursement_response){
        return ;
    }
    if(disbursement_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "disbursement_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (disbursement_response->title) {
        free(disbursement_response->title);
        disbursement_response->title = NULL;
    }
    if (disbursement_response->comment) {
        free(disbursement_response->comment);
        disbursement_response->comment = NULL;
    }
    if (disbursement_response->external_id) {
        free(disbursement_response->external_id);
        disbursement_response->external_id = NULL;
    }
    if (disbursement_response->introspection_params) {
        free(disbursement_response->introspection_params);
        disbursement_response->introspection_params = NULL;
    }
    if (disbursement_response->sender_billable) {
        billable_entity_short_response_free(disbursement_response->sender_billable);
        disbursement_response->sender_billable = NULL;
    }
    if (disbursement_response->receiver_billable) {
        billable_entity_short_response_free(disbursement_response->receiver_billable);
        disbursement_response->receiver_billable = NULL;
    }
    if (disbursement_response->error_code) {
        free(disbursement_response->error_code);
        disbursement_response->error_code = NULL;
    }
    if (disbursement_response->error_message) {
        free(disbursement_response->error_message);
        disbursement_response->error_message = NULL;
    }
    free(disbursement_response);
}

cJSON *disbursement_response_convertToJSON(disbursement_response_t *disbursement_response) {
    cJSON *item = cJSON_CreateObject();

    // disbursement_response->disbursement_id
    if(disbursement_response->disbursement_id) {
    if(cJSON_AddNumberToObject(item, "disbursementId", disbursement_response->disbursement_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // disbursement_response->title
    if(disbursement_response->title) {
    if(cJSON_AddStringToObject(item, "title", disbursement_response->title) == NULL) {
    goto fail; //String
    }
    }


    // disbursement_response->comment
    if(disbursement_response->comment) {
    if(cJSON_AddStringToObject(item, "comment", disbursement_response->comment) == NULL) {
    goto fail; //String
    }
    }


    // disbursement_response->external_id
    if(disbursement_response->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", disbursement_response->external_id) == NULL) {
    goto fail; //String
    }
    }


    // disbursement_response->introspection_params
    if(disbursement_response->introspection_params) {
    if(cJSON_AddStringToObject(item, "introspectionParams", disbursement_response->introspection_params) == NULL) {
    goto fail; //String
    }
    }


    // disbursement_response->amount
    if(disbursement_response->amount) {
    if(cJSON_AddNumberToObject(item, "amount", disbursement_response->amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // disbursement_response->scheduled_date
    if(disbursement_response->scheduled_date) {
    if(cJSON_AddNumberToObject(item, "scheduledDate", disbursement_response->scheduled_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // disbursement_response->capture_date
    if(disbursement_response->capture_date) {
    if(cJSON_AddNumberToObject(item, "captureDate", disbursement_response->capture_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // disbursement_response->estimated_date
    if(disbursement_response->estimated_date) {
    if(cJSON_AddNumberToObject(item, "estimatedDate", disbursement_response->estimated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // disbursement_response->settled_date
    if(disbursement_response->settled_date) {
    if(cJSON_AddNumberToObject(item, "settledDate", disbursement_response->settled_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // disbursement_response->status
    if(disbursement_response->status != sirqul_iot_platform_disbursement_response_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", disbursement_response_status_ToString(disbursement_response->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // disbursement_response->provider
    if(disbursement_response->provider != sirqul_iot_platform_disbursement_response_PROVIDER_NULL) {
    if(cJSON_AddStringToObject(item, "provider", disbursement_response_provider_ToString(disbursement_response->provider)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // disbursement_response->sender_billable
    if(disbursement_response->sender_billable) {
    cJSON *sender_billable_local_JSON = billable_entity_short_response_convertToJSON(disbursement_response->sender_billable);
    if(sender_billable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "senderBillable", sender_billable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // disbursement_response->receiver_billable
    if(disbursement_response->receiver_billable) {
    cJSON *receiver_billable_local_JSON = billable_entity_short_response_convertToJSON(disbursement_response->receiver_billable);
    if(receiver_billable_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "receiverBillable", receiver_billable_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // disbursement_response->error_code
    if(disbursement_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", disbursement_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // disbursement_response->error_message
    if(disbursement_response->error_message) {
    if(cJSON_AddStringToObject(item, "errorMessage", disbursement_response->error_message) == NULL) {
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

disbursement_response_t *disbursement_response_parseFromJSON(cJSON *disbursement_responseJSON){

    disbursement_response_t *disbursement_response_local_var = NULL;

    // define the local variable for disbursement_response->sender_billable
    billable_entity_short_response_t *sender_billable_local_nonprim = NULL;

    // define the local variable for disbursement_response->receiver_billable
    billable_entity_short_response_t *receiver_billable_local_nonprim = NULL;

    // disbursement_response->disbursement_id
    cJSON *disbursement_id = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "disbursementId");
    if (cJSON_IsNull(disbursement_id)) {
        disbursement_id = NULL;
    }
    if (disbursement_id) { 
    if(!cJSON_IsNumber(disbursement_id))
    {
    goto end; //Numeric
    }
    }

    // disbursement_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // disbursement_response->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }

    // disbursement_response->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // disbursement_response->introspection_params
    cJSON *introspection_params = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "introspectionParams");
    if (cJSON_IsNull(introspection_params)) {
        introspection_params = NULL;
    }
    if (introspection_params) { 
    if(!cJSON_IsString(introspection_params) && !cJSON_IsNull(introspection_params))
    {
    goto end; //String
    }
    }

    // disbursement_response->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "amount");
    if (cJSON_IsNull(amount)) {
        amount = NULL;
    }
    if (amount) { 
    if(!cJSON_IsNumber(amount))
    {
    goto end; //Numeric
    }
    }

    // disbursement_response->scheduled_date
    cJSON *scheduled_date = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "scheduledDate");
    if (cJSON_IsNull(scheduled_date)) {
        scheduled_date = NULL;
    }
    if (scheduled_date) { 
    if(!cJSON_IsNumber(scheduled_date))
    {
    goto end; //Numeric
    }
    }

    // disbursement_response->capture_date
    cJSON *capture_date = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "captureDate");
    if (cJSON_IsNull(capture_date)) {
        capture_date = NULL;
    }
    if (capture_date) { 
    if(!cJSON_IsNumber(capture_date))
    {
    goto end; //Numeric
    }
    }

    // disbursement_response->estimated_date
    cJSON *estimated_date = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "estimatedDate");
    if (cJSON_IsNull(estimated_date)) {
        estimated_date = NULL;
    }
    if (estimated_date) { 
    if(!cJSON_IsNumber(estimated_date))
    {
    goto end; //Numeric
    }
    }

    // disbursement_response->settled_date
    cJSON *settled_date = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "settledDate");
    if (cJSON_IsNull(settled_date)) {
        settled_date = NULL;
    }
    if (settled_date) { 
    if(!cJSON_IsNumber(settled_date))
    {
    goto end; //Numeric
    }
    }

    // disbursement_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_disbursement_response_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = disbursement_response_status_FromString(status->valuestring);
    }

    // disbursement_response->provider
    cJSON *provider = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "provider");
    if (cJSON_IsNull(provider)) {
        provider = NULL;
    }
    sirqul_iot_platform_disbursement_response_PROVIDER_e providerVariable;
    if (provider) { 
    if(!cJSON_IsString(provider))
    {
    goto end; //Enum
    }
    providerVariable = disbursement_response_provider_FromString(provider->valuestring);
    }

    // disbursement_response->sender_billable
    cJSON *sender_billable = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "senderBillable");
    if (cJSON_IsNull(sender_billable)) {
        sender_billable = NULL;
    }
    if (sender_billable) { 
    sender_billable_local_nonprim = billable_entity_short_response_parseFromJSON(sender_billable); //nonprimitive
    }

    // disbursement_response->receiver_billable
    cJSON *receiver_billable = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "receiverBillable");
    if (cJSON_IsNull(receiver_billable)) {
        receiver_billable = NULL;
    }
    if (receiver_billable) { 
    receiver_billable_local_nonprim = billable_entity_short_response_parseFromJSON(receiver_billable); //nonprimitive
    }

    // disbursement_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // disbursement_response->error_message
    cJSON *error_message = cJSON_GetObjectItemCaseSensitive(disbursement_responseJSON, "errorMessage");
    if (cJSON_IsNull(error_message)) {
        error_message = NULL;
    }
    if (error_message) { 
    if(!cJSON_IsString(error_message) && !cJSON_IsNull(error_message))
    {
    goto end; //String
    }
    }


    disbursement_response_local_var = disbursement_response_create_internal (
        disbursement_id ? disbursement_id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        comment && !cJSON_IsNull(comment) ? strdup(comment->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        introspection_params && !cJSON_IsNull(introspection_params) ? strdup(introspection_params->valuestring) : NULL,
        amount ? amount->valuedouble : 0,
        scheduled_date ? scheduled_date->valuedouble : 0,
        capture_date ? capture_date->valuedouble : 0,
        estimated_date ? estimated_date->valuedouble : 0,
        settled_date ? settled_date->valuedouble : 0,
        status ? statusVariable : sirqul_iot_platform_disbursement_response_STATUS_NULL,
        provider ? providerVariable : sirqul_iot_platform_disbursement_response_PROVIDER_NULL,
        sender_billable ? sender_billable_local_nonprim : NULL,
        receiver_billable ? receiver_billable_local_nonprim : NULL,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        error_message && !cJSON_IsNull(error_message) ? strdup(error_message->valuestring) : NULL
        );

    return disbursement_response_local_var;
end:
    if (sender_billable_local_nonprim) {
        billable_entity_short_response_free(sender_billable_local_nonprim);
        sender_billable_local_nonprim = NULL;
    }
    if (receiver_billable_local_nonprim) {
        billable_entity_short_response_free(receiver_billable_local_nonprim);
        receiver_billable_local_nonprim = NULL;
    }
    return NULL;

}
