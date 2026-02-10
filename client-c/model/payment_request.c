#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "payment_request.h"



static payment_request_t *payment_request_create_internal(
    char *app_key,
    char *client_payment_id,
    int min_age_years,
    invoice_t *invoice,
    biometric_request_t *biometrics,
    list_t *order_items,
    int accepted_billing
    ) {
    payment_request_t *payment_request_local_var = malloc(sizeof(payment_request_t));
    if (!payment_request_local_var) {
        return NULL;
    }
    payment_request_local_var->app_key = app_key;
    payment_request_local_var->client_payment_id = client_payment_id;
    payment_request_local_var->min_age_years = min_age_years;
    payment_request_local_var->invoice = invoice;
    payment_request_local_var->biometrics = biometrics;
    payment_request_local_var->order_items = order_items;
    payment_request_local_var->accepted_billing = accepted_billing;

    payment_request_local_var->_library_owned = 1;
    return payment_request_local_var;
}

__attribute__((deprecated)) payment_request_t *payment_request_create(
    char *app_key,
    char *client_payment_id,
    int min_age_years,
    invoice_t *invoice,
    biometric_request_t *biometrics,
    list_t *order_items,
    int accepted_billing
    ) {
    return payment_request_create_internal (
        app_key,
        client_payment_id,
        min_age_years,
        invoice,
        biometrics,
        order_items,
        accepted_billing
        );
}

void payment_request_free(payment_request_t *payment_request) {
    if(NULL == payment_request){
        return ;
    }
    if(payment_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "payment_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (payment_request->app_key) {
        free(payment_request->app_key);
        payment_request->app_key = NULL;
    }
    if (payment_request->client_payment_id) {
        free(payment_request->client_payment_id);
        payment_request->client_payment_id = NULL;
    }
    if (payment_request->invoice) {
        invoice_free(payment_request->invoice);
        payment_request->invoice = NULL;
    }
    if (payment_request->biometrics) {
        biometric_request_free(payment_request->biometrics);
        payment_request->biometrics = NULL;
    }
    if (payment_request->order_items) {
        list_ForEach(listEntry, payment_request->order_items) {
            order_item_request_free(listEntry->data);
        }
        list_freeList(payment_request->order_items);
        payment_request->order_items = NULL;
    }
    free(payment_request);
}

cJSON *payment_request_convertToJSON(payment_request_t *payment_request) {
    cJSON *item = cJSON_CreateObject();

    // payment_request->app_key
    if(payment_request->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", payment_request->app_key) == NULL) {
    goto fail; //String
    }
    }


    // payment_request->client_payment_id
    if(payment_request->client_payment_id) {
    if(cJSON_AddStringToObject(item, "clientPaymentId", payment_request->client_payment_id) == NULL) {
    goto fail; //String
    }
    }


    // payment_request->min_age_years
    if(payment_request->min_age_years) {
    if(cJSON_AddNumberToObject(item, "minAgeYears", payment_request->min_age_years) == NULL) {
    goto fail; //Numeric
    }
    }


    // payment_request->invoice
    if(payment_request->invoice) {
    cJSON *invoice_local_JSON = invoice_convertToJSON(payment_request->invoice);
    if(invoice_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "invoice", invoice_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // payment_request->biometrics
    if(payment_request->biometrics) {
    cJSON *biometrics_local_JSON = biometric_request_convertToJSON(payment_request->biometrics);
    if(biometrics_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "biometrics", biometrics_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // payment_request->order_items
    if(payment_request->order_items) {
    cJSON *order_items = cJSON_AddArrayToObject(item, "orderItems");
    if(order_items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *order_itemsListEntry;
    if (payment_request->order_items) {
    list_ForEach(order_itemsListEntry, payment_request->order_items) {
    cJSON *itemLocal = order_item_request_convertToJSON(order_itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(order_items, itemLocal);
    }
    }
    }


    // payment_request->accepted_billing
    if(payment_request->accepted_billing) {
    if(cJSON_AddBoolToObject(item, "acceptedBilling", payment_request->accepted_billing) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

payment_request_t *payment_request_parseFromJSON(cJSON *payment_requestJSON){

    payment_request_t *payment_request_local_var = NULL;

    // define the local variable for payment_request->invoice
    invoice_t *invoice_local_nonprim = NULL;

    // define the local variable for payment_request->biometrics
    biometric_request_t *biometrics_local_nonprim = NULL;

    // define the local list for payment_request->order_items
    list_t *order_itemsList = NULL;

    // payment_request->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(payment_requestJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // payment_request->client_payment_id
    cJSON *client_payment_id = cJSON_GetObjectItemCaseSensitive(payment_requestJSON, "clientPaymentId");
    if (cJSON_IsNull(client_payment_id)) {
        client_payment_id = NULL;
    }
    if (client_payment_id) { 
    if(!cJSON_IsString(client_payment_id) && !cJSON_IsNull(client_payment_id))
    {
    goto end; //String
    }
    }

    // payment_request->min_age_years
    cJSON *min_age_years = cJSON_GetObjectItemCaseSensitive(payment_requestJSON, "minAgeYears");
    if (cJSON_IsNull(min_age_years)) {
        min_age_years = NULL;
    }
    if (min_age_years) { 
    if(!cJSON_IsNumber(min_age_years))
    {
    goto end; //Numeric
    }
    }

    // payment_request->invoice
    cJSON *invoice = cJSON_GetObjectItemCaseSensitive(payment_requestJSON, "invoice");
    if (cJSON_IsNull(invoice)) {
        invoice = NULL;
    }
    if (invoice) { 
    invoice_local_nonprim = invoice_parseFromJSON(invoice); //nonprimitive
    }

    // payment_request->biometrics
    cJSON *biometrics = cJSON_GetObjectItemCaseSensitive(payment_requestJSON, "biometrics");
    if (cJSON_IsNull(biometrics)) {
        biometrics = NULL;
    }
    if (biometrics) { 
    biometrics_local_nonprim = biometric_request_parseFromJSON(biometrics); //nonprimitive
    }

    // payment_request->order_items
    cJSON *order_items = cJSON_GetObjectItemCaseSensitive(payment_requestJSON, "orderItems");
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
        order_item_request_t *order_itemsItem = order_item_request_parseFromJSON(order_items_local_nonprimitive);

        list_addElement(order_itemsList, order_itemsItem);
    }
    }

    // payment_request->accepted_billing
    cJSON *accepted_billing = cJSON_GetObjectItemCaseSensitive(payment_requestJSON, "acceptedBilling");
    if (cJSON_IsNull(accepted_billing)) {
        accepted_billing = NULL;
    }
    if (accepted_billing) { 
    if(!cJSON_IsBool(accepted_billing))
    {
    goto end; //Bool
    }
    }


    payment_request_local_var = payment_request_create_internal (
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        client_payment_id && !cJSON_IsNull(client_payment_id) ? strdup(client_payment_id->valuestring) : NULL,
        min_age_years ? min_age_years->valuedouble : 0,
        invoice ? invoice_local_nonprim : NULL,
        biometrics ? biometrics_local_nonprim : NULL,
        order_items ? order_itemsList : NULL,
        accepted_billing ? accepted_billing->valueint : 0
        );

    return payment_request_local_var;
end:
    if (invoice_local_nonprim) {
        invoice_free(invoice_local_nonprim);
        invoice_local_nonprim = NULL;
    }
    if (biometrics_local_nonprim) {
        biometric_request_free(biometrics_local_nonprim);
        biometrics_local_nonprim = NULL;
    }
    if (order_itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, order_itemsList) {
            order_item_request_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(order_itemsList);
        order_itemsList = NULL;
    }
    return NULL;

}
