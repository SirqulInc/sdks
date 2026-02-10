#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "billable_entity_response.h"



static billable_entity_response_t *billable_entity_response_create_internal(
    long billable_entity_id,
    char *name,
    profile_short_response_t *responsible,
    contact_info_response_t *contact,
    subscription_response_t *subscription,
    payment_types_response_t *payment
    ) {
    billable_entity_response_t *billable_entity_response_local_var = malloc(sizeof(billable_entity_response_t));
    if (!billable_entity_response_local_var) {
        return NULL;
    }
    billable_entity_response_local_var->billable_entity_id = billable_entity_id;
    billable_entity_response_local_var->name = name;
    billable_entity_response_local_var->responsible = responsible;
    billable_entity_response_local_var->contact = contact;
    billable_entity_response_local_var->subscription = subscription;
    billable_entity_response_local_var->payment = payment;

    billable_entity_response_local_var->_library_owned = 1;
    return billable_entity_response_local_var;
}

__attribute__((deprecated)) billable_entity_response_t *billable_entity_response_create(
    long billable_entity_id,
    char *name,
    profile_short_response_t *responsible,
    contact_info_response_t *contact,
    subscription_response_t *subscription,
    payment_types_response_t *payment
    ) {
    return billable_entity_response_create_internal (
        billable_entity_id,
        name,
        responsible,
        contact,
        subscription,
        payment
        );
}

void billable_entity_response_free(billable_entity_response_t *billable_entity_response) {
    if(NULL == billable_entity_response){
        return ;
    }
    if(billable_entity_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "billable_entity_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (billable_entity_response->name) {
        free(billable_entity_response->name);
        billable_entity_response->name = NULL;
    }
    if (billable_entity_response->responsible) {
        profile_short_response_free(billable_entity_response->responsible);
        billable_entity_response->responsible = NULL;
    }
    if (billable_entity_response->contact) {
        contact_info_response_free(billable_entity_response->contact);
        billable_entity_response->contact = NULL;
    }
    if (billable_entity_response->subscription) {
        subscription_response_free(billable_entity_response->subscription);
        billable_entity_response->subscription = NULL;
    }
    if (billable_entity_response->payment) {
        payment_types_response_free(billable_entity_response->payment);
        billable_entity_response->payment = NULL;
    }
    free(billable_entity_response);
}

cJSON *billable_entity_response_convertToJSON(billable_entity_response_t *billable_entity_response) {
    cJSON *item = cJSON_CreateObject();

    // billable_entity_response->billable_entity_id
    if(billable_entity_response->billable_entity_id) {
    if(cJSON_AddNumberToObject(item, "billableEntityId", billable_entity_response->billable_entity_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // billable_entity_response->name
    if(billable_entity_response->name) {
    if(cJSON_AddStringToObject(item, "name", billable_entity_response->name) == NULL) {
    goto fail; //String
    }
    }


    // billable_entity_response->responsible
    if(billable_entity_response->responsible) {
    cJSON *responsible_local_JSON = profile_short_response_convertToJSON(billable_entity_response->responsible);
    if(responsible_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "responsible", responsible_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity_response->contact
    if(billable_entity_response->contact) {
    cJSON *contact_local_JSON = contact_info_response_convertToJSON(billable_entity_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity_response->subscription
    if(billable_entity_response->subscription) {
    cJSON *subscription_local_JSON = subscription_response_convertToJSON(billable_entity_response->subscription);
    if(subscription_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "subscription", subscription_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // billable_entity_response->payment
    if(billable_entity_response->payment) {
    cJSON *payment_local_JSON = payment_types_response_convertToJSON(billable_entity_response->payment);
    if(payment_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "payment", payment_local_JSON);
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

billable_entity_response_t *billable_entity_response_parseFromJSON(cJSON *billable_entity_responseJSON){

    billable_entity_response_t *billable_entity_response_local_var = NULL;

    // define the local variable for billable_entity_response->responsible
    profile_short_response_t *responsible_local_nonprim = NULL;

    // define the local variable for billable_entity_response->contact
    contact_info_response_t *contact_local_nonprim = NULL;

    // define the local variable for billable_entity_response->subscription
    subscription_response_t *subscription_local_nonprim = NULL;

    // define the local variable for billable_entity_response->payment
    payment_types_response_t *payment_local_nonprim = NULL;

    // billable_entity_response->billable_entity_id
    cJSON *billable_entity_id = cJSON_GetObjectItemCaseSensitive(billable_entity_responseJSON, "billableEntityId");
    if (cJSON_IsNull(billable_entity_id)) {
        billable_entity_id = NULL;
    }
    if (billable_entity_id) { 
    if(!cJSON_IsNumber(billable_entity_id))
    {
    goto end; //Numeric
    }
    }

    // billable_entity_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(billable_entity_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // billable_entity_response->responsible
    cJSON *responsible = cJSON_GetObjectItemCaseSensitive(billable_entity_responseJSON, "responsible");
    if (cJSON_IsNull(responsible)) {
        responsible = NULL;
    }
    if (responsible) { 
    responsible_local_nonprim = profile_short_response_parseFromJSON(responsible); //nonprimitive
    }

    // billable_entity_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(billable_entity_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_info_response_parseFromJSON(contact); //nonprimitive
    }

    // billable_entity_response->subscription
    cJSON *subscription = cJSON_GetObjectItemCaseSensitive(billable_entity_responseJSON, "subscription");
    if (cJSON_IsNull(subscription)) {
        subscription = NULL;
    }
    if (subscription) { 
    subscription_local_nonprim = subscription_response_parseFromJSON(subscription); //nonprimitive
    }

    // billable_entity_response->payment
    cJSON *payment = cJSON_GetObjectItemCaseSensitive(billable_entity_responseJSON, "payment");
    if (cJSON_IsNull(payment)) {
        payment = NULL;
    }
    if (payment) { 
    payment_local_nonprim = payment_types_response_parseFromJSON(payment); //nonprimitive
    }


    billable_entity_response_local_var = billable_entity_response_create_internal (
        billable_entity_id ? billable_entity_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        responsible ? responsible_local_nonprim : NULL,
        contact ? contact_local_nonprim : NULL,
        subscription ? subscription_local_nonprim : NULL,
        payment ? payment_local_nonprim : NULL
        );

    return billable_entity_response_local_var;
end:
    if (responsible_local_nonprim) {
        profile_short_response_free(responsible_local_nonprim);
        responsible_local_nonprim = NULL;
    }
    if (contact_local_nonprim) {
        contact_info_response_free(contact_local_nonprim);
        contact_local_nonprim = NULL;
    }
    if (subscription_local_nonprim) {
        subscription_response_free(subscription_local_nonprim);
        subscription_local_nonprim = NULL;
    }
    if (payment_local_nonprim) {
        payment_types_response_free(payment_local_nonprim);
        payment_local_nonprim = NULL;
    }
    return NULL;

}
