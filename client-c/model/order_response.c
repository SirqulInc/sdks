#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_response.h"



static order_response_t *order_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long order_id,
    application_mini_response_t *application,
    account_short_response_t *customer,
    double amount,
    double purchases,
    double credits,
    list_t *payments,
    char *external_order_id,
    long created,
    long updated,
    long external_date,
    char *description,
    char *returning
    ) {
    order_response_t *order_response_local_var = malloc(sizeof(order_response_t));
    if (!order_response_local_var) {
        return NULL;
    }
    order_response_local_var->valid = valid;
    order_response_local_var->message = message;
    order_response_local_var->version = version;
    order_response_local_var->serialize_nulls = serialize_nulls;
    order_response_local_var->start_time_log = start_time_log;
    order_response_local_var->error_code = error_code;
    order_response_local_var->request = request;
    order_response_local_var->order_id = order_id;
    order_response_local_var->application = application;
    order_response_local_var->customer = customer;
    order_response_local_var->amount = amount;
    order_response_local_var->purchases = purchases;
    order_response_local_var->credits = credits;
    order_response_local_var->payments = payments;
    order_response_local_var->external_order_id = external_order_id;
    order_response_local_var->created = created;
    order_response_local_var->updated = updated;
    order_response_local_var->external_date = external_date;
    order_response_local_var->description = description;
    order_response_local_var->returning = returning;

    order_response_local_var->_library_owned = 1;
    return order_response_local_var;
}

__attribute__((deprecated)) order_response_t *order_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long order_id,
    application_mini_response_t *application,
    account_short_response_t *customer,
    double amount,
    double purchases,
    double credits,
    list_t *payments,
    char *external_order_id,
    long created,
    long updated,
    long external_date,
    char *description,
    char *returning
    ) {
    return order_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        order_id,
        application,
        customer,
        amount,
        purchases,
        credits,
        payments,
        external_order_id,
        created,
        updated,
        external_date,
        description,
        returning
        );
}

void order_response_free(order_response_t *order_response) {
    if(NULL == order_response){
        return ;
    }
    if(order_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "order_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (order_response->message) {
        free(order_response->message);
        order_response->message = NULL;
    }
    if (order_response->error_code) {
        free(order_response->error_code);
        order_response->error_code = NULL;
    }
    if (order_response->request) {
        list_ForEach(listEntry, order_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(order_response->request);
        order_response->request = NULL;
    }
    if (order_response->application) {
        application_mini_response_free(order_response->application);
        order_response->application = NULL;
    }
    if (order_response->customer) {
        account_short_response_free(order_response->customer);
        order_response->customer = NULL;
    }
    if (order_response->payments) {
        list_ForEach(listEntry, order_response->payments) {
            payment_transaction_response_free(listEntry->data);
        }
        list_freeList(order_response->payments);
        order_response->payments = NULL;
    }
    if (order_response->external_order_id) {
        free(order_response->external_order_id);
        order_response->external_order_id = NULL;
    }
    if (order_response->description) {
        free(order_response->description);
        order_response->description = NULL;
    }
    if (order_response->returning) {
        free(order_response->returning);
        order_response->returning = NULL;
    }
    free(order_response);
}

cJSON *order_response_convertToJSON(order_response_t *order_response) {
    cJSON *item = cJSON_CreateObject();

    // order_response->valid
    if(order_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", order_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // order_response->message
    if(order_response->message) {
    if(cJSON_AddStringToObject(item, "message", order_response->message) == NULL) {
    goto fail; //String
    }
    }


    // order_response->version
    if(order_response->version) {
    if(cJSON_AddNumberToObject(item, "version", order_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->serialize_nulls
    if(order_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", order_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // order_response->start_time_log
    if(order_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", order_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->error_code
    if(order_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", order_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // order_response->request
    if(order_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (order_response->request) {
    list_ForEach(requestListEntry, order_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // order_response->order_id
    if(order_response->order_id) {
    if(cJSON_AddNumberToObject(item, "orderId", order_response->order_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->application
    if(order_response->application) {
    cJSON *application_local_JSON = application_mini_response_convertToJSON(order_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // order_response->customer
    if(order_response->customer) {
    cJSON *customer_local_JSON = account_short_response_convertToJSON(order_response->customer);
    if(customer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "customer", customer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // order_response->amount
    if(order_response->amount) {
    if(cJSON_AddNumberToObject(item, "amount", order_response->amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->purchases
    if(order_response->purchases) {
    if(cJSON_AddNumberToObject(item, "purchases", order_response->purchases) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->credits
    if(order_response->credits) {
    if(cJSON_AddNumberToObject(item, "credits", order_response->credits) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->payments
    if(order_response->payments) {
    cJSON *payments = cJSON_AddArrayToObject(item, "payments");
    if(payments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *paymentsListEntry;
    if (order_response->payments) {
    list_ForEach(paymentsListEntry, order_response->payments) {
    cJSON *itemLocal = payment_transaction_response_convertToJSON(paymentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(payments, itemLocal);
    }
    }
    }


    // order_response->external_order_id
    if(order_response->external_order_id) {
    if(cJSON_AddStringToObject(item, "externalOrderId", order_response->external_order_id) == NULL) {
    goto fail; //String
    }
    }


    // order_response->created
    if(order_response->created) {
    if(cJSON_AddNumberToObject(item, "created", order_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->updated
    if(order_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", order_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->external_date
    if(order_response->external_date) {
    if(cJSON_AddNumberToObject(item, "externalDate", order_response->external_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_response->description
    if(order_response->description) {
    if(cJSON_AddStringToObject(item, "description", order_response->description) == NULL) {
    goto fail; //String
    }
    }


    // order_response->returning
    if(order_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", order_response->returning) == NULL) {
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

order_response_t *order_response_parseFromJSON(cJSON *order_responseJSON){

    order_response_t *order_response_local_var = NULL;

    // define the local list for order_response->request
    list_t *requestList = NULL;

    // define the local variable for order_response->application
    application_mini_response_t *application_local_nonprim = NULL;

    // define the local variable for order_response->customer
    account_short_response_t *customer_local_nonprim = NULL;

    // define the local list for order_response->payments
    list_t *paymentsList = NULL;

    // order_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // order_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // order_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // order_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // order_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // order_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // order_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "request");
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

    // order_response->order_id
    cJSON *order_id = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "orderId");
    if (cJSON_IsNull(order_id)) {
        order_id = NULL;
    }
    if (order_id) { 
    if(!cJSON_IsNumber(order_id))
    {
    goto end; //Numeric
    }
    }

    // order_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_mini_response_parseFromJSON(application); //nonprimitive
    }

    // order_response->customer
    cJSON *customer = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "customer");
    if (cJSON_IsNull(customer)) {
        customer = NULL;
    }
    if (customer) { 
    customer_local_nonprim = account_short_response_parseFromJSON(customer); //nonprimitive
    }

    // order_response->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "amount");
    if (cJSON_IsNull(amount)) {
        amount = NULL;
    }
    if (amount) { 
    if(!cJSON_IsNumber(amount))
    {
    goto end; //Numeric
    }
    }

    // order_response->purchases
    cJSON *purchases = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "purchases");
    if (cJSON_IsNull(purchases)) {
        purchases = NULL;
    }
    if (purchases) { 
    if(!cJSON_IsNumber(purchases))
    {
    goto end; //Numeric
    }
    }

    // order_response->credits
    cJSON *credits = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "credits");
    if (cJSON_IsNull(credits)) {
        credits = NULL;
    }
    if (credits) { 
    if(!cJSON_IsNumber(credits))
    {
    goto end; //Numeric
    }
    }

    // order_response->payments
    cJSON *payments = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "payments");
    if (cJSON_IsNull(payments)) {
        payments = NULL;
    }
    if (payments) { 
    cJSON *payments_local_nonprimitive = NULL;
    if(!cJSON_IsArray(payments)){
        goto end; //nonprimitive container
    }

    paymentsList = list_createList();

    cJSON_ArrayForEach(payments_local_nonprimitive,payments )
    {
        if(!cJSON_IsObject(payments_local_nonprimitive)){
            goto end;
        }
        payment_transaction_response_t *paymentsItem = payment_transaction_response_parseFromJSON(payments_local_nonprimitive);

        list_addElement(paymentsList, paymentsItem);
    }
    }

    // order_response->external_order_id
    cJSON *external_order_id = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "externalOrderId");
    if (cJSON_IsNull(external_order_id)) {
        external_order_id = NULL;
    }
    if (external_order_id) { 
    if(!cJSON_IsString(external_order_id) && !cJSON_IsNull(external_order_id))
    {
    goto end; //String
    }
    }

    // order_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // order_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // order_response->external_date
    cJSON *external_date = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "externalDate");
    if (cJSON_IsNull(external_date)) {
        external_date = NULL;
    }
    if (external_date) { 
    if(!cJSON_IsNumber(external_date))
    {
    goto end; //Numeric
    }
    }

    // order_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // order_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(order_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    order_response_local_var = order_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        order_id ? order_id->valuedouble : 0,
        application ? application_local_nonprim : NULL,
        customer ? customer_local_nonprim : NULL,
        amount ? amount->valuedouble : 0,
        purchases ? purchases->valuedouble : 0,
        credits ? credits->valuedouble : 0,
        payments ? paymentsList : NULL,
        external_order_id && !cJSON_IsNull(external_order_id) ? strdup(external_order_id->valuestring) : NULL,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        external_date ? external_date->valuedouble : 0,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return order_response_local_var;
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
    if (application_local_nonprim) {
        application_mini_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (customer_local_nonprim) {
        account_short_response_free(customer_local_nonprim);
        customer_local_nonprim = NULL;
    }
    if (paymentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, paymentsList) {
            payment_transaction_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(paymentsList);
        paymentsList = NULL;
    }
    return NULL;

}
