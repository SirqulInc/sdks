#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "purchase_order_item_response.h"



static purchase_order_item_response_t *purchase_order_item_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long purchase_order_item_id,
    long created,
    long updated,
    account_short_response_t *customer,
    char *order_item_type,
    long order_item_id,
    char *order_custom_type,
    char *order_custom_id,
    long retailer_location_id,
    double amount,
    double tax,
    char *comment,
    char *returning
    ) {
    purchase_order_item_response_t *purchase_order_item_response_local_var = malloc(sizeof(purchase_order_item_response_t));
    if (!purchase_order_item_response_local_var) {
        return NULL;
    }
    purchase_order_item_response_local_var->valid = valid;
    purchase_order_item_response_local_var->message = message;
    purchase_order_item_response_local_var->version = version;
    purchase_order_item_response_local_var->serialize_nulls = serialize_nulls;
    purchase_order_item_response_local_var->start_time_log = start_time_log;
    purchase_order_item_response_local_var->error_code = error_code;
    purchase_order_item_response_local_var->request = request;
    purchase_order_item_response_local_var->purchase_order_item_id = purchase_order_item_id;
    purchase_order_item_response_local_var->created = created;
    purchase_order_item_response_local_var->updated = updated;
    purchase_order_item_response_local_var->customer = customer;
    purchase_order_item_response_local_var->order_item_type = order_item_type;
    purchase_order_item_response_local_var->order_item_id = order_item_id;
    purchase_order_item_response_local_var->order_custom_type = order_custom_type;
    purchase_order_item_response_local_var->order_custom_id = order_custom_id;
    purchase_order_item_response_local_var->retailer_location_id = retailer_location_id;
    purchase_order_item_response_local_var->amount = amount;
    purchase_order_item_response_local_var->tax = tax;
    purchase_order_item_response_local_var->comment = comment;
    purchase_order_item_response_local_var->returning = returning;

    purchase_order_item_response_local_var->_library_owned = 1;
    return purchase_order_item_response_local_var;
}

__attribute__((deprecated)) purchase_order_item_response_t *purchase_order_item_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long purchase_order_item_id,
    long created,
    long updated,
    account_short_response_t *customer,
    char *order_item_type,
    long order_item_id,
    char *order_custom_type,
    char *order_custom_id,
    long retailer_location_id,
    double amount,
    double tax,
    char *comment,
    char *returning
    ) {
    return purchase_order_item_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        purchase_order_item_id,
        created,
        updated,
        customer,
        order_item_type,
        order_item_id,
        order_custom_type,
        order_custom_id,
        retailer_location_id,
        amount,
        tax,
        comment,
        returning
        );
}

void purchase_order_item_response_free(purchase_order_item_response_t *purchase_order_item_response) {
    if(NULL == purchase_order_item_response){
        return ;
    }
    if(purchase_order_item_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "purchase_order_item_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (purchase_order_item_response->message) {
        free(purchase_order_item_response->message);
        purchase_order_item_response->message = NULL;
    }
    if (purchase_order_item_response->error_code) {
        free(purchase_order_item_response->error_code);
        purchase_order_item_response->error_code = NULL;
    }
    if (purchase_order_item_response->request) {
        list_ForEach(listEntry, purchase_order_item_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(purchase_order_item_response->request);
        purchase_order_item_response->request = NULL;
    }
    if (purchase_order_item_response->customer) {
        account_short_response_free(purchase_order_item_response->customer);
        purchase_order_item_response->customer = NULL;
    }
    if (purchase_order_item_response->order_item_type) {
        free(purchase_order_item_response->order_item_type);
        purchase_order_item_response->order_item_type = NULL;
    }
    if (purchase_order_item_response->order_custom_type) {
        free(purchase_order_item_response->order_custom_type);
        purchase_order_item_response->order_custom_type = NULL;
    }
    if (purchase_order_item_response->order_custom_id) {
        free(purchase_order_item_response->order_custom_id);
        purchase_order_item_response->order_custom_id = NULL;
    }
    if (purchase_order_item_response->comment) {
        free(purchase_order_item_response->comment);
        purchase_order_item_response->comment = NULL;
    }
    if (purchase_order_item_response->returning) {
        free(purchase_order_item_response->returning);
        purchase_order_item_response->returning = NULL;
    }
    free(purchase_order_item_response);
}

cJSON *purchase_order_item_response_convertToJSON(purchase_order_item_response_t *purchase_order_item_response) {
    cJSON *item = cJSON_CreateObject();

    // purchase_order_item_response->valid
    if(purchase_order_item_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", purchase_order_item_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // purchase_order_item_response->message
    if(purchase_order_item_response->message) {
    if(cJSON_AddStringToObject(item, "message", purchase_order_item_response->message) == NULL) {
    goto fail; //String
    }
    }


    // purchase_order_item_response->version
    if(purchase_order_item_response->version) {
    if(cJSON_AddNumberToObject(item, "version", purchase_order_item_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->serialize_nulls
    if(purchase_order_item_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", purchase_order_item_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // purchase_order_item_response->start_time_log
    if(purchase_order_item_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", purchase_order_item_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->error_code
    if(purchase_order_item_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", purchase_order_item_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // purchase_order_item_response->request
    if(purchase_order_item_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (purchase_order_item_response->request) {
    list_ForEach(requestListEntry, purchase_order_item_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // purchase_order_item_response->purchase_order_item_id
    if(purchase_order_item_response->purchase_order_item_id) {
    if(cJSON_AddNumberToObject(item, "purchaseOrderItemId", purchase_order_item_response->purchase_order_item_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->created
    if(purchase_order_item_response->created) {
    if(cJSON_AddNumberToObject(item, "created", purchase_order_item_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->updated
    if(purchase_order_item_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", purchase_order_item_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->customer
    if(purchase_order_item_response->customer) {
    cJSON *customer_local_JSON = account_short_response_convertToJSON(purchase_order_item_response->customer);
    if(customer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "customer", customer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // purchase_order_item_response->order_item_type
    if(purchase_order_item_response->order_item_type) {
    if(cJSON_AddStringToObject(item, "orderItemType", purchase_order_item_response->order_item_type) == NULL) {
    goto fail; //String
    }
    }


    // purchase_order_item_response->order_item_id
    if(purchase_order_item_response->order_item_id) {
    if(cJSON_AddNumberToObject(item, "orderItemId", purchase_order_item_response->order_item_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->order_custom_type
    if(purchase_order_item_response->order_custom_type) {
    if(cJSON_AddStringToObject(item, "orderCustomType", purchase_order_item_response->order_custom_type) == NULL) {
    goto fail; //String
    }
    }


    // purchase_order_item_response->order_custom_id
    if(purchase_order_item_response->order_custom_id) {
    if(cJSON_AddStringToObject(item, "orderCustomId", purchase_order_item_response->order_custom_id) == NULL) {
    goto fail; //String
    }
    }


    // purchase_order_item_response->retailer_location_id
    if(purchase_order_item_response->retailer_location_id) {
    if(cJSON_AddNumberToObject(item, "retailerLocationId", purchase_order_item_response->retailer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->amount
    if(purchase_order_item_response->amount) {
    if(cJSON_AddNumberToObject(item, "amount", purchase_order_item_response->amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->tax
    if(purchase_order_item_response->tax) {
    if(cJSON_AddNumberToObject(item, "tax", purchase_order_item_response->tax) == NULL) {
    goto fail; //Numeric
    }
    }


    // purchase_order_item_response->comment
    if(purchase_order_item_response->comment) {
    if(cJSON_AddStringToObject(item, "comment", purchase_order_item_response->comment) == NULL) {
    goto fail; //String
    }
    }


    // purchase_order_item_response->returning
    if(purchase_order_item_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", purchase_order_item_response->returning) == NULL) {
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

purchase_order_item_response_t *purchase_order_item_response_parseFromJSON(cJSON *purchase_order_item_responseJSON){

    purchase_order_item_response_t *purchase_order_item_response_local_var = NULL;

    // define the local list for purchase_order_item_response->request
    list_t *requestList = NULL;

    // define the local variable for purchase_order_item_response->customer
    account_short_response_t *customer_local_nonprim = NULL;

    // purchase_order_item_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // purchase_order_item_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // purchase_order_item_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // purchase_order_item_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // purchase_order_item_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "request");
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

    // purchase_order_item_response->purchase_order_item_id
    cJSON *purchase_order_item_id = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "purchaseOrderItemId");
    if (cJSON_IsNull(purchase_order_item_id)) {
        purchase_order_item_id = NULL;
    }
    if (purchase_order_item_id) { 
    if(!cJSON_IsNumber(purchase_order_item_id))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->customer
    cJSON *customer = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "customer");
    if (cJSON_IsNull(customer)) {
        customer = NULL;
    }
    if (customer) { 
    customer_local_nonprim = account_short_response_parseFromJSON(customer); //nonprimitive
    }

    // purchase_order_item_response->order_item_type
    cJSON *order_item_type = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "orderItemType");
    if (cJSON_IsNull(order_item_type)) {
        order_item_type = NULL;
    }
    if (order_item_type) { 
    if(!cJSON_IsString(order_item_type) && !cJSON_IsNull(order_item_type))
    {
    goto end; //String
    }
    }

    // purchase_order_item_response->order_item_id
    cJSON *order_item_id = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "orderItemId");
    if (cJSON_IsNull(order_item_id)) {
        order_item_id = NULL;
    }
    if (order_item_id) { 
    if(!cJSON_IsNumber(order_item_id))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->order_custom_type
    cJSON *order_custom_type = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "orderCustomType");
    if (cJSON_IsNull(order_custom_type)) {
        order_custom_type = NULL;
    }
    if (order_custom_type) { 
    if(!cJSON_IsString(order_custom_type) && !cJSON_IsNull(order_custom_type))
    {
    goto end; //String
    }
    }

    // purchase_order_item_response->order_custom_id
    cJSON *order_custom_id = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "orderCustomId");
    if (cJSON_IsNull(order_custom_id)) {
        order_custom_id = NULL;
    }
    if (order_custom_id) { 
    if(!cJSON_IsString(order_custom_id) && !cJSON_IsNull(order_custom_id))
    {
    goto end; //String
    }
    }

    // purchase_order_item_response->retailer_location_id
    cJSON *retailer_location_id = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "retailerLocationId");
    if (cJSON_IsNull(retailer_location_id)) {
        retailer_location_id = NULL;
    }
    if (retailer_location_id) { 
    if(!cJSON_IsNumber(retailer_location_id))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "amount");
    if (cJSON_IsNull(amount)) {
        amount = NULL;
    }
    if (amount) { 
    if(!cJSON_IsNumber(amount))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->tax
    cJSON *tax = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "tax");
    if (cJSON_IsNull(tax)) {
        tax = NULL;
    }
    if (tax) { 
    if(!cJSON_IsNumber(tax))
    {
    goto end; //Numeric
    }
    }

    // purchase_order_item_response->comment
    cJSON *comment = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "comment");
    if (cJSON_IsNull(comment)) {
        comment = NULL;
    }
    if (comment) { 
    if(!cJSON_IsString(comment) && !cJSON_IsNull(comment))
    {
    goto end; //String
    }
    }

    // purchase_order_item_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(purchase_order_item_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    purchase_order_item_response_local_var = purchase_order_item_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        purchase_order_item_id ? purchase_order_item_id->valuedouble : 0,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        customer ? customer_local_nonprim : NULL,
        order_item_type && !cJSON_IsNull(order_item_type) ? strdup(order_item_type->valuestring) : NULL,
        order_item_id ? order_item_id->valuedouble : 0,
        order_custom_type && !cJSON_IsNull(order_custom_type) ? strdup(order_custom_type->valuestring) : NULL,
        order_custom_id && !cJSON_IsNull(order_custom_id) ? strdup(order_custom_id->valuestring) : NULL,
        retailer_location_id ? retailer_location_id->valuedouble : 0,
        amount ? amount->valuedouble : 0,
        tax ? tax->valuedouble : 0,
        comment && !cJSON_IsNull(comment) ? strdup(comment->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return purchase_order_item_response_local_var;
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
    return NULL;

}
