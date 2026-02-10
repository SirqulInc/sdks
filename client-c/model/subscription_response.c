#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "subscription_response.h"



static subscription_response_t *subscription_response_create_internal(
    long id,
    subscription_plan_response_t *subscription_plan,
    char *promo_code,
    int active
    ) {
    subscription_response_t *subscription_response_local_var = malloc(sizeof(subscription_response_t));
    if (!subscription_response_local_var) {
        return NULL;
    }
    subscription_response_local_var->id = id;
    subscription_response_local_var->subscription_plan = subscription_plan;
    subscription_response_local_var->promo_code = promo_code;
    subscription_response_local_var->active = active;

    subscription_response_local_var->_library_owned = 1;
    return subscription_response_local_var;
}

__attribute__((deprecated)) subscription_response_t *subscription_response_create(
    long id,
    subscription_plan_response_t *subscription_plan,
    char *promo_code,
    int active
    ) {
    return subscription_response_create_internal (
        id,
        subscription_plan,
        promo_code,
        active
        );
}

void subscription_response_free(subscription_response_t *subscription_response) {
    if(NULL == subscription_response){
        return ;
    }
    if(subscription_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "subscription_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (subscription_response->subscription_plan) {
        subscription_plan_response_free(subscription_response->subscription_plan);
        subscription_response->subscription_plan = NULL;
    }
    if (subscription_response->promo_code) {
        free(subscription_response->promo_code);
        subscription_response->promo_code = NULL;
    }
    free(subscription_response);
}

cJSON *subscription_response_convertToJSON(subscription_response_t *subscription_response) {
    cJSON *item = cJSON_CreateObject();

    // subscription_response->id
    if(subscription_response->id) {
    if(cJSON_AddNumberToObject(item, "id", subscription_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_response->subscription_plan
    if(subscription_response->subscription_plan) {
    cJSON *subscription_plan_local_JSON = subscription_plan_response_convertToJSON(subscription_response->subscription_plan);
    if(subscription_plan_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "subscriptionPlan", subscription_plan_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // subscription_response->promo_code
    if(subscription_response->promo_code) {
    if(cJSON_AddStringToObject(item, "promoCode", subscription_response->promo_code) == NULL) {
    goto fail; //String
    }
    }


    // subscription_response->active
    if(subscription_response->active) {
    if(cJSON_AddBoolToObject(item, "active", subscription_response->active) == NULL) {
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

subscription_response_t *subscription_response_parseFromJSON(cJSON *subscription_responseJSON){

    subscription_response_t *subscription_response_local_var = NULL;

    // define the local variable for subscription_response->subscription_plan
    subscription_plan_response_t *subscription_plan_local_nonprim = NULL;

    // subscription_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(subscription_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // subscription_response->subscription_plan
    cJSON *subscription_plan = cJSON_GetObjectItemCaseSensitive(subscription_responseJSON, "subscriptionPlan");
    if (cJSON_IsNull(subscription_plan)) {
        subscription_plan = NULL;
    }
    if (subscription_plan) { 
    subscription_plan_local_nonprim = subscription_plan_response_parseFromJSON(subscription_plan); //nonprimitive
    }

    // subscription_response->promo_code
    cJSON *promo_code = cJSON_GetObjectItemCaseSensitive(subscription_responseJSON, "promoCode");
    if (cJSON_IsNull(promo_code)) {
        promo_code = NULL;
    }
    if (promo_code) { 
    if(!cJSON_IsString(promo_code) && !cJSON_IsNull(promo_code))
    {
    goto end; //String
    }
    }

    // subscription_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(subscription_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }


    subscription_response_local_var = subscription_response_create_internal (
        id ? id->valuedouble : 0,
        subscription_plan ? subscription_plan_local_nonprim : NULL,
        promo_code && !cJSON_IsNull(promo_code) ? strdup(promo_code->valuestring) : NULL,
        active ? active->valueint : 0
        );

    return subscription_response_local_var;
end:
    if (subscription_plan_local_nonprim) {
        subscription_plan_response_free(subscription_plan_local_nonprim);
        subscription_plan_local_nonprim = NULL;
    }
    return NULL;

}
