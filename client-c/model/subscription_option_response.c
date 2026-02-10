#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "subscription_option_response.h"



static subscription_option_response_t *subscription_option_response_create_internal(
    long id,
    char *name,
    double price,
    int quantity,
    int threshold,
    int visible,
    char *option_type
    ) {
    subscription_option_response_t *subscription_option_response_local_var = malloc(sizeof(subscription_option_response_t));
    if (!subscription_option_response_local_var) {
        return NULL;
    }
    subscription_option_response_local_var->id = id;
    subscription_option_response_local_var->name = name;
    subscription_option_response_local_var->price = price;
    subscription_option_response_local_var->quantity = quantity;
    subscription_option_response_local_var->threshold = threshold;
    subscription_option_response_local_var->visible = visible;
    subscription_option_response_local_var->option_type = option_type;

    subscription_option_response_local_var->_library_owned = 1;
    return subscription_option_response_local_var;
}

__attribute__((deprecated)) subscription_option_response_t *subscription_option_response_create(
    long id,
    char *name,
    double price,
    int quantity,
    int threshold,
    int visible,
    char *option_type
    ) {
    return subscription_option_response_create_internal (
        id,
        name,
        price,
        quantity,
        threshold,
        visible,
        option_type
        );
}

void subscription_option_response_free(subscription_option_response_t *subscription_option_response) {
    if(NULL == subscription_option_response){
        return ;
    }
    if(subscription_option_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "subscription_option_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (subscription_option_response->name) {
        free(subscription_option_response->name);
        subscription_option_response->name = NULL;
    }
    if (subscription_option_response->option_type) {
        free(subscription_option_response->option_type);
        subscription_option_response->option_type = NULL;
    }
    free(subscription_option_response);
}

cJSON *subscription_option_response_convertToJSON(subscription_option_response_t *subscription_option_response) {
    cJSON *item = cJSON_CreateObject();

    // subscription_option_response->id
    if(subscription_option_response->id) {
    if(cJSON_AddNumberToObject(item, "id", subscription_option_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option_response->name
    if(subscription_option_response->name) {
    if(cJSON_AddStringToObject(item, "name", subscription_option_response->name) == NULL) {
    goto fail; //String
    }
    }


    // subscription_option_response->price
    if(subscription_option_response->price) {
    if(cJSON_AddNumberToObject(item, "price", subscription_option_response->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option_response->quantity
    if(subscription_option_response->quantity) {
    if(cJSON_AddNumberToObject(item, "quantity", subscription_option_response->quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option_response->threshold
    if(subscription_option_response->threshold) {
    if(cJSON_AddNumberToObject(item, "threshold", subscription_option_response->threshold) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option_response->visible
    if(subscription_option_response->visible) {
    if(cJSON_AddBoolToObject(item, "visible", subscription_option_response->visible) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_option_response->option_type
    if(subscription_option_response->option_type) {
    if(cJSON_AddStringToObject(item, "optionType", subscription_option_response->option_type) == NULL) {
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

subscription_option_response_t *subscription_option_response_parseFromJSON(cJSON *subscription_option_responseJSON){

    subscription_option_response_t *subscription_option_response_local_var = NULL;

    // subscription_option_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(subscription_option_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // subscription_option_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(subscription_option_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // subscription_option_response->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(subscription_option_responseJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // subscription_option_response->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(subscription_option_responseJSON, "quantity");
    if (cJSON_IsNull(quantity)) {
        quantity = NULL;
    }
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // subscription_option_response->threshold
    cJSON *threshold = cJSON_GetObjectItemCaseSensitive(subscription_option_responseJSON, "threshold");
    if (cJSON_IsNull(threshold)) {
        threshold = NULL;
    }
    if (threshold) { 
    if(!cJSON_IsNumber(threshold))
    {
    goto end; //Numeric
    }
    }

    // subscription_option_response->visible
    cJSON *visible = cJSON_GetObjectItemCaseSensitive(subscription_option_responseJSON, "visible");
    if (cJSON_IsNull(visible)) {
        visible = NULL;
    }
    if (visible) { 
    if(!cJSON_IsBool(visible))
    {
    goto end; //Bool
    }
    }

    // subscription_option_response->option_type
    cJSON *option_type = cJSON_GetObjectItemCaseSensitive(subscription_option_responseJSON, "optionType");
    if (cJSON_IsNull(option_type)) {
        option_type = NULL;
    }
    if (option_type) { 
    if(!cJSON_IsString(option_type) && !cJSON_IsNull(option_type))
    {
    goto end; //String
    }
    }


    subscription_option_response_local_var = subscription_option_response_create_internal (
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        price ? price->valuedouble : 0,
        quantity ? quantity->valuedouble : 0,
        threshold ? threshold->valuedouble : 0,
        visible ? visible->valueint : 0,
        option_type && !cJSON_IsNull(option_type) ? strdup(option_type->valuestring) : NULL
        );

    return subscription_option_response_local_var;
end:
    return NULL;

}
