#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "payment_transaction_response.h"



static payment_transaction_response_t *payment_transaction_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long payment_transaction_id,
    account_short_response_t *customer,
    char *promo_code,
    char *remote_ref_id,
    char *currency_type,
    double amount,
    double tax,
    list_t *offer_transactions,
    list_t *order_items,
    char *external_payment_id,
    char *metadata,
    long created,
    long updated,
    char *returning
    ) {
    payment_transaction_response_t *payment_transaction_response_local_var = malloc(sizeof(payment_transaction_response_t));
    if (!payment_transaction_response_local_var) {
        return NULL;
    }
    payment_transaction_response_local_var->valid = valid;
    payment_transaction_response_local_var->message = message;
    payment_transaction_response_local_var->version = version;
    payment_transaction_response_local_var->serialize_nulls = serialize_nulls;
    payment_transaction_response_local_var->start_time_log = start_time_log;
    payment_transaction_response_local_var->error_code = error_code;
    payment_transaction_response_local_var->request = request;
    payment_transaction_response_local_var->payment_transaction_id = payment_transaction_id;
    payment_transaction_response_local_var->customer = customer;
    payment_transaction_response_local_var->promo_code = promo_code;
    payment_transaction_response_local_var->remote_ref_id = remote_ref_id;
    payment_transaction_response_local_var->currency_type = currency_type;
    payment_transaction_response_local_var->amount = amount;
    payment_transaction_response_local_var->tax = tax;
    payment_transaction_response_local_var->offer_transactions = offer_transactions;
    payment_transaction_response_local_var->order_items = order_items;
    payment_transaction_response_local_var->external_payment_id = external_payment_id;
    payment_transaction_response_local_var->metadata = metadata;
    payment_transaction_response_local_var->created = created;
    payment_transaction_response_local_var->updated = updated;
    payment_transaction_response_local_var->returning = returning;

    payment_transaction_response_local_var->_library_owned = 1;
    return payment_transaction_response_local_var;
}

__attribute__((deprecated)) payment_transaction_response_t *payment_transaction_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long payment_transaction_id,
    account_short_response_t *customer,
    char *promo_code,
    char *remote_ref_id,
    char *currency_type,
    double amount,
    double tax,
    list_t *offer_transactions,
    list_t *order_items,
    char *external_payment_id,
    char *metadata,
    long created,
    long updated,
    char *returning
    ) {
    return payment_transaction_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        payment_transaction_id,
        customer,
        promo_code,
        remote_ref_id,
        currency_type,
        amount,
        tax,
        offer_transactions,
        order_items,
        external_payment_id,
        metadata,
        created,
        updated,
        returning
        );
}

void payment_transaction_response_free(payment_transaction_response_t *payment_transaction_response) {
    if(NULL == payment_transaction_response){
        return ;
    }
    if(payment_transaction_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "payment_transaction_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (payment_transaction_response->message) {
        free(payment_transaction_response->message);
        payment_transaction_response->message = NULL;
    }
    if (payment_transaction_response->error_code) {
        free(payment_transaction_response->error_code);
        payment_transaction_response->error_code = NULL;
    }
    if (payment_transaction_response->request) {
        list_ForEach(listEntry, payment_transaction_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(payment_transaction_response->request);
        payment_transaction_response->request = NULL;
    }
    if (payment_transaction_response->customer) {
        account_short_response_free(payment_transaction_response->customer);
        payment_transaction_response->customer = NULL;
    }
    if (payment_transaction_response->promo_code) {
        free(payment_transaction_response->promo_code);
        payment_transaction_response->promo_code = NULL;
    }
    if (payment_transaction_response->remote_ref_id) {
        free(payment_transaction_response->remote_ref_id);
        payment_transaction_response->remote_ref_id = NULL;
    }
    if (payment_transaction_response->currency_type) {
        free(payment_transaction_response->currency_type);
        payment_transaction_response->currency_type = NULL;
    }
    if (payment_transaction_response->offer_transactions) {
        list_ForEach(listEntry, payment_transaction_response->offer_transactions) {
            offer_transaction_response_free(listEntry->data);
        }
        list_freeList(payment_transaction_response->offer_transactions);
        payment_transaction_response->offer_transactions = NULL;
    }
    if (payment_transaction_response->order_items) {
        list_ForEach(listEntry, payment_transaction_response->order_items) {
            purchase_order_item_response_free(listEntry->data);
        }
        list_freeList(payment_transaction_response->order_items);
        payment_transaction_response->order_items = NULL;
    }
    if (payment_transaction_response->external_payment_id) {
        free(payment_transaction_response->external_payment_id);
        payment_transaction_response->external_payment_id = NULL;
    }
    if (payment_transaction_response->metadata) {
        free(payment_transaction_response->metadata);
        payment_transaction_response->metadata = NULL;
    }
    if (payment_transaction_response->returning) {
        free(payment_transaction_response->returning);
        payment_transaction_response->returning = NULL;
    }
    free(payment_transaction_response);
}

cJSON *payment_transaction_response_convertToJSON(payment_transaction_response_t *payment_transaction_response) {
    cJSON *item = cJSON_CreateObject();

    // payment_transaction_response->valid
    if(payment_transaction_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", payment_transaction_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_transaction_response->message
    if(payment_transaction_response->message) {
    if(cJSON_AddStringToObject(item, "message", payment_transaction_response->message) == NULL) {
    goto fail; //String
    }
    }


    // payment_transaction_response->version
    if(payment_transaction_response->version) {
    if(cJSON_AddNumberToObject(item, "version", payment_transaction_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_transaction_response->serialize_nulls
    if(payment_transaction_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", payment_transaction_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_transaction_response->start_time_log
    if(payment_transaction_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", payment_transaction_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_transaction_response->error_code
    if(payment_transaction_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", payment_transaction_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // payment_transaction_response->request
    if(payment_transaction_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (payment_transaction_response->request) {
    list_ForEach(requestListEntry, payment_transaction_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // payment_transaction_response->payment_transaction_id
    if(payment_transaction_response->payment_transaction_id) {
    if(cJSON_AddNumberToObject(item, "paymentTransactionId", payment_transaction_response->payment_transaction_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_transaction_response->customer
    if(payment_transaction_response->customer) {
    cJSON *customer_local_JSON = account_short_response_convertToJSON(payment_transaction_response->customer);
    if(customer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "customer", customer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // payment_transaction_response->promo_code
    if(payment_transaction_response->promo_code) {
    if(cJSON_AddStringToObject(item, "promoCode", payment_transaction_response->promo_code) == NULL) {
    goto fail; //String
    }
    }


    // payment_transaction_response->remote_ref_id
    if(payment_transaction_response->remote_ref_id) {
    if(cJSON_AddStringToObject(item, "remoteRefId", payment_transaction_response->remote_ref_id) == NULL) {
    goto fail; //String
    }
    }


    // payment_transaction_response->currency_type
    if(payment_transaction_response->currency_type) {
    if(cJSON_AddStringToObject(item, "currencyType", payment_transaction_response->currency_type) == NULL) {
    goto fail; //String
    }
    }


    // payment_transaction_response->amount
    if(payment_transaction_response->amount) {
    if(cJSON_AddNumberToObject(item, "amount", payment_transaction_response->amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_transaction_response->tax
    if(payment_transaction_response->tax) {
    if(cJSON_AddNumberToObject(item, "tax", payment_transaction_response->tax) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_transaction_response->offer_transactions
    if(payment_transaction_response->offer_transactions) {
    cJSON *offer_transactions = cJSON_AddArrayToObject(item, "offerTransactions");
    if(offer_transactions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *offer_transactionsListEntry;
    if (payment_transaction_response->offer_transactions) {
    list_ForEach(offer_transactionsListEntry, payment_transaction_response->offer_transactions) {
    cJSON *itemLocal = offer_transaction_response_convertToJSON(offer_transactionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(offer_transactions, itemLocal);
    }
    }
    }


    // payment_transaction_response->order_items
    if(payment_transaction_response->order_items) {
    cJSON *order_items = cJSON_AddArrayToObject(item, "orderItems");
    if(order_items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *order_itemsListEntry;
    if (payment_transaction_response->order_items) {
    list_ForEach(order_itemsListEntry, payment_transaction_response->order_items) {
    cJSON *itemLocal = purchase_order_item_response_convertToJSON(order_itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(order_items, itemLocal);
    }
    }
    }


    // payment_transaction_response->external_payment_id
    if(payment_transaction_response->external_payment_id) {
    if(cJSON_AddStringToObject(item, "externalPaymentId", payment_transaction_response->external_payment_id) == NULL) {
    goto fail; //String
    }
    }


    // payment_transaction_response->metadata
    if(payment_transaction_response->metadata) {
    if(cJSON_AddStringToObject(item, "metadata", payment_transaction_response->metadata) == NULL) {
    goto fail; //String
    }
    }


    // payment_transaction_response->created
    if(payment_transaction_response->created) {
    if(cJSON_AddNumberToObject(item, "created", payment_transaction_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_transaction_response->updated
    if(payment_transaction_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", payment_transaction_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_transaction_response->returning
    if(payment_transaction_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", payment_transaction_response->returning) == NULL) {
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

payment_transaction_response_t *payment_transaction_response_parseFromJSON(cJSON *payment_transaction_responseJSON){

    payment_transaction_response_t *payment_transaction_response_local_var = NULL;

    // define the local list for payment_transaction_response->request
    list_t *requestList = NULL;

    // define the local variable for payment_transaction_response->customer
    account_short_response_t *customer_local_nonprim = NULL;

    // define the local list for payment_transaction_response->offer_transactions
    list_t *offer_transactionsList = NULL;

    // define the local list for payment_transaction_response->order_items
    list_t *order_itemsList = NULL;

    // payment_transaction_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // payment_transaction_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // payment_transaction_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // payment_transaction_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // payment_transaction_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // payment_transaction_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // payment_transaction_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "request");
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

    // payment_transaction_response->payment_transaction_id
    cJSON *payment_transaction_id = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "paymentTransactionId");
    if (cJSON_IsNull(payment_transaction_id)) {
        payment_transaction_id = NULL;
    }
    if (payment_transaction_id) { 
    if(!cJSON_IsNumber(payment_transaction_id))
    {
    goto end; //Numeric
    }
    }

    // payment_transaction_response->customer
    cJSON *customer = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "customer");
    if (cJSON_IsNull(customer)) {
        customer = NULL;
    }
    if (customer) { 
    customer_local_nonprim = account_short_response_parseFromJSON(customer); //nonprimitive
    }

    // payment_transaction_response->promo_code
    cJSON *promo_code = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "promoCode");
    if (cJSON_IsNull(promo_code)) {
        promo_code = NULL;
    }
    if (promo_code) { 
    if(!cJSON_IsString(promo_code) && !cJSON_IsNull(promo_code))
    {
    goto end; //String
    }
    }

    // payment_transaction_response->remote_ref_id
    cJSON *remote_ref_id = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "remoteRefId");
    if (cJSON_IsNull(remote_ref_id)) {
        remote_ref_id = NULL;
    }
    if (remote_ref_id) { 
    if(!cJSON_IsString(remote_ref_id) && !cJSON_IsNull(remote_ref_id))
    {
    goto end; //String
    }
    }

    // payment_transaction_response->currency_type
    cJSON *currency_type = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "currencyType");
    if (cJSON_IsNull(currency_type)) {
        currency_type = NULL;
    }
    if (currency_type) { 
    if(!cJSON_IsString(currency_type) && !cJSON_IsNull(currency_type))
    {
    goto end; //String
    }
    }

    // payment_transaction_response->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "amount");
    if (cJSON_IsNull(amount)) {
        amount = NULL;
    }
    if (amount) { 
    if(!cJSON_IsNumber(amount))
    {
    goto end; //Numeric
    }
    }

    // payment_transaction_response->tax
    cJSON *tax = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "tax");
    if (cJSON_IsNull(tax)) {
        tax = NULL;
    }
    if (tax) { 
    if(!cJSON_IsNumber(tax))
    {
    goto end; //Numeric
    }
    }

    // payment_transaction_response->offer_transactions
    cJSON *offer_transactions = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "offerTransactions");
    if (cJSON_IsNull(offer_transactions)) {
        offer_transactions = NULL;
    }
    if (offer_transactions) { 
    cJSON *offer_transactions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(offer_transactions)){
        goto end; //nonprimitive container
    }

    offer_transactionsList = list_createList();

    cJSON_ArrayForEach(offer_transactions_local_nonprimitive,offer_transactions )
    {
        if(!cJSON_IsObject(offer_transactions_local_nonprimitive)){
            goto end;
        }
        offer_transaction_response_t *offer_transactionsItem = offer_transaction_response_parseFromJSON(offer_transactions_local_nonprimitive);

        list_addElement(offer_transactionsList, offer_transactionsItem);
    }
    }

    // payment_transaction_response->order_items
    cJSON *order_items = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "orderItems");
    if (cJSON_IsNull(order_items)) {
        order_items = NULL;
    }
    if (order_items) { 
    cJSON *order_items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(order_items)){
        goto end; //nonprimitive container
    }

    order_itemsList = list_createList();

    cJSON_ArrayForEach(order_items_local_nonprimitive,order_items )
    {
        if(!cJSON_IsObject(order_items_local_nonprimitive)){
            goto end;
        }
        purchase_order_item_response_t *order_itemsItem = purchase_order_item_response_parseFromJSON(order_items_local_nonprimitive);

        list_addElement(order_itemsList, order_itemsItem);
    }
    }

    // payment_transaction_response->external_payment_id
    cJSON *external_payment_id = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "externalPaymentId");
    if (cJSON_IsNull(external_payment_id)) {
        external_payment_id = NULL;
    }
    if (external_payment_id) { 
    if(!cJSON_IsString(external_payment_id) && !cJSON_IsNull(external_payment_id))
    {
    goto end; //String
    }
    }

    // payment_transaction_response->metadata
    cJSON *metadata = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "metadata");
    if (cJSON_IsNull(metadata)) {
        metadata = NULL;
    }
    if (metadata) { 
    if(!cJSON_IsString(metadata) && !cJSON_IsNull(metadata))
    {
    goto end; //String
    }
    }

    // payment_transaction_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // payment_transaction_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // payment_transaction_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(payment_transaction_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    payment_transaction_response_local_var = payment_transaction_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        payment_transaction_id ? payment_transaction_id->valuedouble : 0,
        customer ? customer_local_nonprim : NULL,
        promo_code && !cJSON_IsNull(promo_code) ? strdup(promo_code->valuestring) : NULL,
        remote_ref_id && !cJSON_IsNull(remote_ref_id) ? strdup(remote_ref_id->valuestring) : NULL,
        currency_type && !cJSON_IsNull(currency_type) ? strdup(currency_type->valuestring) : NULL,
        amount ? amount->valuedouble : 0,
        tax ? tax->valuedouble : 0,
        offer_transactions ? offer_transactionsList : NULL,
        order_items ? order_itemsList : NULL,
        external_payment_id && !cJSON_IsNull(external_payment_id) ? strdup(external_payment_id->valuestring) : NULL,
        metadata && !cJSON_IsNull(metadata) ? strdup(metadata->valuestring) : NULL,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return payment_transaction_response_local_var;
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
    if (customer_local_nonprim) {
        account_short_response_free(customer_local_nonprim);
        customer_local_nonprim = NULL;
    }
    if (offer_transactionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, offer_transactionsList) {
            offer_transaction_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(offer_transactionsList);
        offer_transactionsList = NULL;
    }
    if (order_itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, order_itemsList) {
            purchase_order_item_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(order_itemsList);
        order_itemsList = NULL;
    }
    return NULL;

}
