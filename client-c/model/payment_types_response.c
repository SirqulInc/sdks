#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "payment_types_response.h"



static payment_types_response_t *payment_types_response_create_internal(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    int credit_card_on_file,
    char *credit_card_number,
    char *credit_card_expiration_month,
    char *credit_card_expiration_year,
    int points_on_file,
    double points_amount,
    account_short_response_t *account,
    char *first_name,
    char *last_name,
    char *address,
    char *city,
    char *state,
    char *postal_code,
    char *phone,
    char *provider,
    long payment_method_id,
    int validated,
    char *account_number,
    char *bank_name,
    char *routing_number,
    int is_default_payment_method,
    char *account_name,
    char *payment_method_nickname,
    char *tax_id,
    char *returning
    ) {
    payment_types_response_t *payment_types_response_local_var = malloc(sizeof(payment_types_response_t));
    if (!payment_types_response_local_var) {
        return NULL;
    }
    payment_types_response_local_var->valid = valid;
    payment_types_response_local_var->message = message;
    payment_types_response_local_var->version = version;
    payment_types_response_local_var->serialize_nulls = serialize_nulls;
    payment_types_response_local_var->start_time_log = start_time_log;
    payment_types_response_local_var->error_code = error_code;
    payment_types_response_local_var->request = request;
    payment_types_response_local_var->credit_card_on_file = credit_card_on_file;
    payment_types_response_local_var->credit_card_number = credit_card_number;
    payment_types_response_local_var->credit_card_expiration_month = credit_card_expiration_month;
    payment_types_response_local_var->credit_card_expiration_year = credit_card_expiration_year;
    payment_types_response_local_var->points_on_file = points_on_file;
    payment_types_response_local_var->points_amount = points_amount;
    payment_types_response_local_var->account = account;
    payment_types_response_local_var->first_name = first_name;
    payment_types_response_local_var->last_name = last_name;
    payment_types_response_local_var->address = address;
    payment_types_response_local_var->city = city;
    payment_types_response_local_var->state = state;
    payment_types_response_local_var->postal_code = postal_code;
    payment_types_response_local_var->phone = phone;
    payment_types_response_local_var->provider = provider;
    payment_types_response_local_var->payment_method_id = payment_method_id;
    payment_types_response_local_var->validated = validated;
    payment_types_response_local_var->account_number = account_number;
    payment_types_response_local_var->bank_name = bank_name;
    payment_types_response_local_var->routing_number = routing_number;
    payment_types_response_local_var->is_default_payment_method = is_default_payment_method;
    payment_types_response_local_var->account_name = account_name;
    payment_types_response_local_var->payment_method_nickname = payment_method_nickname;
    payment_types_response_local_var->tax_id = tax_id;
    payment_types_response_local_var->returning = returning;

    payment_types_response_local_var->_library_owned = 1;
    return payment_types_response_local_var;
}

__attribute__((deprecated)) payment_types_response_t *payment_types_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    int credit_card_on_file,
    char *credit_card_number,
    char *credit_card_expiration_month,
    char *credit_card_expiration_year,
    int points_on_file,
    double points_amount,
    account_short_response_t *account,
    char *first_name,
    char *last_name,
    char *address,
    char *city,
    char *state,
    char *postal_code,
    char *phone,
    char *provider,
    long payment_method_id,
    int validated,
    char *account_number,
    char *bank_name,
    char *routing_number,
    int is_default_payment_method,
    char *account_name,
    char *payment_method_nickname,
    char *tax_id,
    char *returning
    ) {
    return payment_types_response_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        credit_card_on_file,
        credit_card_number,
        credit_card_expiration_month,
        credit_card_expiration_year,
        points_on_file,
        points_amount,
        account,
        first_name,
        last_name,
        address,
        city,
        state,
        postal_code,
        phone,
        provider,
        payment_method_id,
        validated,
        account_number,
        bank_name,
        routing_number,
        is_default_payment_method,
        account_name,
        payment_method_nickname,
        tax_id,
        returning
        );
}

void payment_types_response_free(payment_types_response_t *payment_types_response) {
    if(NULL == payment_types_response){
        return ;
    }
    if(payment_types_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "payment_types_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (payment_types_response->message) {
        free(payment_types_response->message);
        payment_types_response->message = NULL;
    }
    if (payment_types_response->error_code) {
        free(payment_types_response->error_code);
        payment_types_response->error_code = NULL;
    }
    if (payment_types_response->request) {
        list_ForEach(listEntry, payment_types_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(payment_types_response->request);
        payment_types_response->request = NULL;
    }
    if (payment_types_response->credit_card_number) {
        free(payment_types_response->credit_card_number);
        payment_types_response->credit_card_number = NULL;
    }
    if (payment_types_response->credit_card_expiration_month) {
        free(payment_types_response->credit_card_expiration_month);
        payment_types_response->credit_card_expiration_month = NULL;
    }
    if (payment_types_response->credit_card_expiration_year) {
        free(payment_types_response->credit_card_expiration_year);
        payment_types_response->credit_card_expiration_year = NULL;
    }
    if (payment_types_response->account) {
        account_short_response_free(payment_types_response->account);
        payment_types_response->account = NULL;
    }
    if (payment_types_response->first_name) {
        free(payment_types_response->first_name);
        payment_types_response->first_name = NULL;
    }
    if (payment_types_response->last_name) {
        free(payment_types_response->last_name);
        payment_types_response->last_name = NULL;
    }
    if (payment_types_response->address) {
        free(payment_types_response->address);
        payment_types_response->address = NULL;
    }
    if (payment_types_response->city) {
        free(payment_types_response->city);
        payment_types_response->city = NULL;
    }
    if (payment_types_response->state) {
        free(payment_types_response->state);
        payment_types_response->state = NULL;
    }
    if (payment_types_response->postal_code) {
        free(payment_types_response->postal_code);
        payment_types_response->postal_code = NULL;
    }
    if (payment_types_response->phone) {
        free(payment_types_response->phone);
        payment_types_response->phone = NULL;
    }
    if (payment_types_response->provider) {
        free(payment_types_response->provider);
        payment_types_response->provider = NULL;
    }
    if (payment_types_response->account_number) {
        free(payment_types_response->account_number);
        payment_types_response->account_number = NULL;
    }
    if (payment_types_response->bank_name) {
        free(payment_types_response->bank_name);
        payment_types_response->bank_name = NULL;
    }
    if (payment_types_response->routing_number) {
        free(payment_types_response->routing_number);
        payment_types_response->routing_number = NULL;
    }
    if (payment_types_response->account_name) {
        free(payment_types_response->account_name);
        payment_types_response->account_name = NULL;
    }
    if (payment_types_response->payment_method_nickname) {
        free(payment_types_response->payment_method_nickname);
        payment_types_response->payment_method_nickname = NULL;
    }
    if (payment_types_response->tax_id) {
        free(payment_types_response->tax_id);
        payment_types_response->tax_id = NULL;
    }
    if (payment_types_response->returning) {
        free(payment_types_response->returning);
        payment_types_response->returning = NULL;
    }
    free(payment_types_response);
}

cJSON *payment_types_response_convertToJSON(payment_types_response_t *payment_types_response) {
    cJSON *item = cJSON_CreateObject();

    // payment_types_response->valid
    if(payment_types_response->valid) {
    if(cJSON_AddBoolToObject(item, "valid", payment_types_response->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_types_response->message
    if(payment_types_response->message) {
    if(cJSON_AddStringToObject(item, "message", payment_types_response->message) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->version
    if(payment_types_response->version) {
    if(cJSON_AddNumberToObject(item, "version", payment_types_response->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_types_response->serialize_nulls
    if(payment_types_response->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", payment_types_response->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_types_response->start_time_log
    if(payment_types_response->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", payment_types_response->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_types_response->error_code
    if(payment_types_response->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", payment_types_response->error_code) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->request
    if(payment_types_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (payment_types_response->request) {
    list_ForEach(requestListEntry, payment_types_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // payment_types_response->credit_card_on_file
    if(payment_types_response->credit_card_on_file) {
    if(cJSON_AddBoolToObject(item, "creditCardOnFile", payment_types_response->credit_card_on_file) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_types_response->credit_card_number
    if(payment_types_response->credit_card_number) {
    if(cJSON_AddStringToObject(item, "creditCardNumber", payment_types_response->credit_card_number) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->credit_card_expiration_month
    if(payment_types_response->credit_card_expiration_month) {
    if(cJSON_AddStringToObject(item, "creditCardExpirationMonth", payment_types_response->credit_card_expiration_month) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->credit_card_expiration_year
    if(payment_types_response->credit_card_expiration_year) {
    if(cJSON_AddStringToObject(item, "creditCardExpirationYear", payment_types_response->credit_card_expiration_year) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->points_on_file
    if(payment_types_response->points_on_file) {
    if(cJSON_AddBoolToObject(item, "pointsOnFile", payment_types_response->points_on_file) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_types_response->points_amount
    if(payment_types_response->points_amount) {
    if(cJSON_AddNumberToObject(item, "pointsAmount", payment_types_response->points_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_types_response->account
    if(payment_types_response->account) {
    cJSON *account_local_JSON = account_short_response_convertToJSON(payment_types_response->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // payment_types_response->first_name
    if(payment_types_response->first_name) {
    if(cJSON_AddStringToObject(item, "firstName", payment_types_response->first_name) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->last_name
    if(payment_types_response->last_name) {
    if(cJSON_AddStringToObject(item, "lastName", payment_types_response->last_name) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->address
    if(payment_types_response->address) {
    if(cJSON_AddStringToObject(item, "address", payment_types_response->address) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->city
    if(payment_types_response->city) {
    if(cJSON_AddStringToObject(item, "city", payment_types_response->city) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->state
    if(payment_types_response->state) {
    if(cJSON_AddStringToObject(item, "state", payment_types_response->state) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->postal_code
    if(payment_types_response->postal_code) {
    if(cJSON_AddStringToObject(item, "postalCode", payment_types_response->postal_code) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->phone
    if(payment_types_response->phone) {
    if(cJSON_AddStringToObject(item, "phone", payment_types_response->phone) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->provider
    if(payment_types_response->provider) {
    if(cJSON_AddStringToObject(item, "provider", payment_types_response->provider) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->payment_method_id
    if(payment_types_response->payment_method_id) {
    if(cJSON_AddNumberToObject(item, "paymentMethodId", payment_types_response->payment_method_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_types_response->validated
    if(payment_types_response->validated) {
    if(cJSON_AddBoolToObject(item, "validated", payment_types_response->validated) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_types_response->account_number
    if(payment_types_response->account_number) {
    if(cJSON_AddStringToObject(item, "accountNumber", payment_types_response->account_number) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->bank_name
    if(payment_types_response->bank_name) {
    if(cJSON_AddStringToObject(item, "bankName", payment_types_response->bank_name) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->routing_number
    if(payment_types_response->routing_number) {
    if(cJSON_AddStringToObject(item, "routingNumber", payment_types_response->routing_number) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->is_default_payment_method
    if(payment_types_response->is_default_payment_method) {
    if(cJSON_AddBoolToObject(item, "isDefaultPaymentMethod", payment_types_response->is_default_payment_method) == NULL) {
    goto fail; //Bool
    }
    }


    // payment_types_response->account_name
    if(payment_types_response->account_name) {
    if(cJSON_AddStringToObject(item, "accountName", payment_types_response->account_name) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->payment_method_nickname
    if(payment_types_response->payment_method_nickname) {
    if(cJSON_AddStringToObject(item, "paymentMethodNickname", payment_types_response->payment_method_nickname) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->tax_id
    if(payment_types_response->tax_id) {
    if(cJSON_AddStringToObject(item, "taxId", payment_types_response->tax_id) == NULL) {
    goto fail; //String
    }
    }


    // payment_types_response->returning
    if(payment_types_response->returning) {
    if(cJSON_AddStringToObject(item, "returning", payment_types_response->returning) == NULL) {
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

payment_types_response_t *payment_types_response_parseFromJSON(cJSON *payment_types_responseJSON){

    payment_types_response_t *payment_types_response_local_var = NULL;

    // define the local list for payment_types_response->request
    list_t *requestList = NULL;

    // define the local variable for payment_types_response->account
    account_short_response_t *account_local_nonprim = NULL;

    // payment_types_response->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // payment_types_response->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // payment_types_response->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // payment_types_response->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // payment_types_response->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // payment_types_response->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // payment_types_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "request");
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

    // payment_types_response->credit_card_on_file
    cJSON *credit_card_on_file = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "creditCardOnFile");
    if (cJSON_IsNull(credit_card_on_file)) {
        credit_card_on_file = NULL;
    }
    if (credit_card_on_file) { 
    if(!cJSON_IsBool(credit_card_on_file))
    {
    goto end; //Bool
    }
    }

    // payment_types_response->credit_card_number
    cJSON *credit_card_number = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "creditCardNumber");
    if (cJSON_IsNull(credit_card_number)) {
        credit_card_number = NULL;
    }
    if (credit_card_number) { 
    if(!cJSON_IsString(credit_card_number) && !cJSON_IsNull(credit_card_number))
    {
    goto end; //String
    }
    }

    // payment_types_response->credit_card_expiration_month
    cJSON *credit_card_expiration_month = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "creditCardExpirationMonth");
    if (cJSON_IsNull(credit_card_expiration_month)) {
        credit_card_expiration_month = NULL;
    }
    if (credit_card_expiration_month) { 
    if(!cJSON_IsString(credit_card_expiration_month) && !cJSON_IsNull(credit_card_expiration_month))
    {
    goto end; //String
    }
    }

    // payment_types_response->credit_card_expiration_year
    cJSON *credit_card_expiration_year = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "creditCardExpirationYear");
    if (cJSON_IsNull(credit_card_expiration_year)) {
        credit_card_expiration_year = NULL;
    }
    if (credit_card_expiration_year) { 
    if(!cJSON_IsString(credit_card_expiration_year) && !cJSON_IsNull(credit_card_expiration_year))
    {
    goto end; //String
    }
    }

    // payment_types_response->points_on_file
    cJSON *points_on_file = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "pointsOnFile");
    if (cJSON_IsNull(points_on_file)) {
        points_on_file = NULL;
    }
    if (points_on_file) { 
    if(!cJSON_IsBool(points_on_file))
    {
    goto end; //Bool
    }
    }

    // payment_types_response->points_amount
    cJSON *points_amount = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "pointsAmount");
    if (cJSON_IsNull(points_amount)) {
        points_amount = NULL;
    }
    if (points_amount) { 
    if(!cJSON_IsNumber(points_amount))
    {
    goto end; //Numeric
    }
    }

    // payment_types_response->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_short_response_parseFromJSON(account); //nonprimitive
    }

    // payment_types_response->first_name
    cJSON *first_name = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "firstName");
    if (cJSON_IsNull(first_name)) {
        first_name = NULL;
    }
    if (first_name) { 
    if(!cJSON_IsString(first_name) && !cJSON_IsNull(first_name))
    {
    goto end; //String
    }
    }

    // payment_types_response->last_name
    cJSON *last_name = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "lastName");
    if (cJSON_IsNull(last_name)) {
        last_name = NULL;
    }
    if (last_name) { 
    if(!cJSON_IsString(last_name) && !cJSON_IsNull(last_name))
    {
    goto end; //String
    }
    }

    // payment_types_response->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // payment_types_response->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // payment_types_response->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // payment_types_response->postal_code
    cJSON *postal_code = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "postalCode");
    if (cJSON_IsNull(postal_code)) {
        postal_code = NULL;
    }
    if (postal_code) { 
    if(!cJSON_IsString(postal_code) && !cJSON_IsNull(postal_code))
    {
    goto end; //String
    }
    }

    // payment_types_response->phone
    cJSON *phone = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "phone");
    if (cJSON_IsNull(phone)) {
        phone = NULL;
    }
    if (phone) { 
    if(!cJSON_IsString(phone) && !cJSON_IsNull(phone))
    {
    goto end; //String
    }
    }

    // payment_types_response->provider
    cJSON *provider = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "provider");
    if (cJSON_IsNull(provider)) {
        provider = NULL;
    }
    if (provider) { 
    if(!cJSON_IsString(provider) && !cJSON_IsNull(provider))
    {
    goto end; //String
    }
    }

    // payment_types_response->payment_method_id
    cJSON *payment_method_id = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "paymentMethodId");
    if (cJSON_IsNull(payment_method_id)) {
        payment_method_id = NULL;
    }
    if (payment_method_id) { 
    if(!cJSON_IsNumber(payment_method_id))
    {
    goto end; //Numeric
    }
    }

    // payment_types_response->validated
    cJSON *validated = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "validated");
    if (cJSON_IsNull(validated)) {
        validated = NULL;
    }
    if (validated) { 
    if(!cJSON_IsBool(validated))
    {
    goto end; //Bool
    }
    }

    // payment_types_response->account_number
    cJSON *account_number = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "accountNumber");
    if (cJSON_IsNull(account_number)) {
        account_number = NULL;
    }
    if (account_number) { 
    if(!cJSON_IsString(account_number) && !cJSON_IsNull(account_number))
    {
    goto end; //String
    }
    }

    // payment_types_response->bank_name
    cJSON *bank_name = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "bankName");
    if (cJSON_IsNull(bank_name)) {
        bank_name = NULL;
    }
    if (bank_name) { 
    if(!cJSON_IsString(bank_name) && !cJSON_IsNull(bank_name))
    {
    goto end; //String
    }
    }

    // payment_types_response->routing_number
    cJSON *routing_number = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "routingNumber");
    if (cJSON_IsNull(routing_number)) {
        routing_number = NULL;
    }
    if (routing_number) { 
    if(!cJSON_IsString(routing_number) && !cJSON_IsNull(routing_number))
    {
    goto end; //String
    }
    }

    // payment_types_response->is_default_payment_method
    cJSON *is_default_payment_method = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "isDefaultPaymentMethod");
    if (cJSON_IsNull(is_default_payment_method)) {
        is_default_payment_method = NULL;
    }
    if (is_default_payment_method) { 
    if(!cJSON_IsBool(is_default_payment_method))
    {
    goto end; //Bool
    }
    }

    // payment_types_response->account_name
    cJSON *account_name = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "accountName");
    if (cJSON_IsNull(account_name)) {
        account_name = NULL;
    }
    if (account_name) { 
    if(!cJSON_IsString(account_name) && !cJSON_IsNull(account_name))
    {
    goto end; //String
    }
    }

    // payment_types_response->payment_method_nickname
    cJSON *payment_method_nickname = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "paymentMethodNickname");
    if (cJSON_IsNull(payment_method_nickname)) {
        payment_method_nickname = NULL;
    }
    if (payment_method_nickname) { 
    if(!cJSON_IsString(payment_method_nickname) && !cJSON_IsNull(payment_method_nickname))
    {
    goto end; //String
    }
    }

    // payment_types_response->tax_id
    cJSON *tax_id = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "taxId");
    if (cJSON_IsNull(tax_id)) {
        tax_id = NULL;
    }
    if (tax_id) { 
    if(!cJSON_IsString(tax_id) && !cJSON_IsNull(tax_id))
    {
    goto end; //String
    }
    }

    // payment_types_response->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(payment_types_responseJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    payment_types_response_local_var = payment_types_response_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        credit_card_on_file ? credit_card_on_file->valueint : 0,
        credit_card_number && !cJSON_IsNull(credit_card_number) ? strdup(credit_card_number->valuestring) : NULL,
        credit_card_expiration_month && !cJSON_IsNull(credit_card_expiration_month) ? strdup(credit_card_expiration_month->valuestring) : NULL,
        credit_card_expiration_year && !cJSON_IsNull(credit_card_expiration_year) ? strdup(credit_card_expiration_year->valuestring) : NULL,
        points_on_file ? points_on_file->valueint : 0,
        points_amount ? points_amount->valuedouble : 0,
        account ? account_local_nonprim : NULL,
        first_name && !cJSON_IsNull(first_name) ? strdup(first_name->valuestring) : NULL,
        last_name && !cJSON_IsNull(last_name) ? strdup(last_name->valuestring) : NULL,
        address && !cJSON_IsNull(address) ? strdup(address->valuestring) : NULL,
        city && !cJSON_IsNull(city) ? strdup(city->valuestring) : NULL,
        state && !cJSON_IsNull(state) ? strdup(state->valuestring) : NULL,
        postal_code && !cJSON_IsNull(postal_code) ? strdup(postal_code->valuestring) : NULL,
        phone && !cJSON_IsNull(phone) ? strdup(phone->valuestring) : NULL,
        provider && !cJSON_IsNull(provider) ? strdup(provider->valuestring) : NULL,
        payment_method_id ? payment_method_id->valuedouble : 0,
        validated ? validated->valueint : 0,
        account_number && !cJSON_IsNull(account_number) ? strdup(account_number->valuestring) : NULL,
        bank_name && !cJSON_IsNull(bank_name) ? strdup(bank_name->valuestring) : NULL,
        routing_number && !cJSON_IsNull(routing_number) ? strdup(routing_number->valuestring) : NULL,
        is_default_payment_method ? is_default_payment_method->valueint : 0,
        account_name && !cJSON_IsNull(account_name) ? strdup(account_name->valuestring) : NULL,
        payment_method_nickname && !cJSON_IsNull(payment_method_nickname) ? strdup(payment_method_nickname->valuestring) : NULL,
        tax_id && !cJSON_IsNull(tax_id) ? strdup(tax_id->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return payment_types_response_local_var;
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
    if (account_local_nonprim) {
        account_short_response_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    return NULL;

}
