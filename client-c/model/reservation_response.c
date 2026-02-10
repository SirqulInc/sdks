#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "reservation_response.h"



static reservation_response_t *reservation_response_create_internal(
    long reservation_id,
    long reservable_id,
    char *reservable_type,
    account_short_response_t *account,
    long created_date,
    long updated_date,
    long start_date,
    long end_date,
    offer_short_response_t *transaction
    ) {
    reservation_response_t *reservation_response_local_var = malloc(sizeof(reservation_response_t));
    if (!reservation_response_local_var) {
        return NULL;
    }
    reservation_response_local_var->reservation_id = reservation_id;
    reservation_response_local_var->reservable_id = reservable_id;
    reservation_response_local_var->reservable_type = reservable_type;
    reservation_response_local_var->account = account;
    reservation_response_local_var->created_date = created_date;
    reservation_response_local_var->updated_date = updated_date;
    reservation_response_local_var->start_date = start_date;
    reservation_response_local_var->end_date = end_date;
    reservation_response_local_var->transaction = transaction;

    reservation_response_local_var->_library_owned = 1;
    return reservation_response_local_var;
}

__attribute__((deprecated)) reservation_response_t *reservation_response_create(
    long reservation_id,
    long reservable_id,
    char *reservable_type,
    account_short_response_t *account,
    long created_date,
    long updated_date,
    long start_date,
    long end_date,
    offer_short_response_t *transaction
    ) {
    return reservation_response_create_internal (
        reservation_id,
        reservable_id,
        reservable_type,
        account,
        created_date,
        updated_date,
        start_date,
        end_date,
        transaction
        );
}

void reservation_response_free(reservation_response_t *reservation_response) {
    if(NULL == reservation_response){
        return ;
    }
    if(reservation_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "reservation_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (reservation_response->reservable_type) {
        free(reservation_response->reservable_type);
        reservation_response->reservable_type = NULL;
    }
    if (reservation_response->account) {
        account_short_response_free(reservation_response->account);
        reservation_response->account = NULL;
    }
    if (reservation_response->transaction) {
        offer_short_response_free(reservation_response->transaction);
        reservation_response->transaction = NULL;
    }
    free(reservation_response);
}

cJSON *reservation_response_convertToJSON(reservation_response_t *reservation_response) {
    cJSON *item = cJSON_CreateObject();

    // reservation_response->reservation_id
    if(reservation_response->reservation_id) {
    if(cJSON_AddNumberToObject(item, "reservationId", reservation_response->reservation_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // reservation_response->reservable_id
    if(reservation_response->reservable_id) {
    if(cJSON_AddNumberToObject(item, "reservableId", reservation_response->reservable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // reservation_response->reservable_type
    if(reservation_response->reservable_type) {
    if(cJSON_AddStringToObject(item, "reservableType", reservation_response->reservable_type) == NULL) {
    goto fail; //String
    }
    }


    // reservation_response->account
    if(reservation_response->account) {
    cJSON *account_local_JSON = account_short_response_convertToJSON(reservation_response->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // reservation_response->created_date
    if(reservation_response->created_date) {
    if(cJSON_AddNumberToObject(item, "createdDate", reservation_response->created_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // reservation_response->updated_date
    if(reservation_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", reservation_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // reservation_response->start_date
    if(reservation_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", reservation_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // reservation_response->end_date
    if(reservation_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", reservation_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // reservation_response->transaction
    if(reservation_response->transaction) {
    cJSON *transaction_local_JSON = offer_short_response_convertToJSON(reservation_response->transaction);
    if(transaction_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "transaction", transaction_local_JSON);
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

reservation_response_t *reservation_response_parseFromJSON(cJSON *reservation_responseJSON){

    reservation_response_t *reservation_response_local_var = NULL;

    // define the local variable for reservation_response->account
    account_short_response_t *account_local_nonprim = NULL;

    // define the local variable for reservation_response->transaction
    offer_short_response_t *transaction_local_nonprim = NULL;

    // reservation_response->reservation_id
    cJSON *reservation_id = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "reservationId");
    if (cJSON_IsNull(reservation_id)) {
        reservation_id = NULL;
    }
    if (reservation_id) { 
    if(!cJSON_IsNumber(reservation_id))
    {
    goto end; //Numeric
    }
    }

    // reservation_response->reservable_id
    cJSON *reservable_id = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "reservableId");
    if (cJSON_IsNull(reservable_id)) {
        reservable_id = NULL;
    }
    if (reservable_id) { 
    if(!cJSON_IsNumber(reservable_id))
    {
    goto end; //Numeric
    }
    }

    // reservation_response->reservable_type
    cJSON *reservable_type = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "reservableType");
    if (cJSON_IsNull(reservable_type)) {
        reservable_type = NULL;
    }
    if (reservable_type) { 
    if(!cJSON_IsString(reservable_type) && !cJSON_IsNull(reservable_type))
    {
    goto end; //String
    }
    }

    // reservation_response->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_short_response_parseFromJSON(account); //nonprimitive
    }

    // reservation_response->created_date
    cJSON *created_date = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "createdDate");
    if (cJSON_IsNull(created_date)) {
        created_date = NULL;
    }
    if (created_date) { 
    if(!cJSON_IsNumber(created_date))
    {
    goto end; //Numeric
    }
    }

    // reservation_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // reservation_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // reservation_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // reservation_response->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(reservation_responseJSON, "transaction");
    if (cJSON_IsNull(transaction)) {
        transaction = NULL;
    }
    if (transaction) { 
    transaction_local_nonprim = offer_short_response_parseFromJSON(transaction); //nonprimitive
    }


    reservation_response_local_var = reservation_response_create_internal (
        reservation_id ? reservation_id->valuedouble : 0,
        reservable_id ? reservable_id->valuedouble : 0,
        reservable_type && !cJSON_IsNull(reservable_type) ? strdup(reservable_type->valuestring) : NULL,
        account ? account_local_nonprim : NULL,
        created_date ? created_date->valuedouble : 0,
        updated_date ? updated_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        transaction ? transaction_local_nonprim : NULL
        );

    return reservation_response_local_var;
end:
    if (account_local_nonprim) {
        account_short_response_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    if (transaction_local_nonprim) {
        offer_short_response_free(transaction_local_nonprim);
        transaction_local_nonprim = NULL;
    }
    return NULL;

}
