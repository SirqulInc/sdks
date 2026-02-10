#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "subscription_plan.h"



static subscription_plan_t *subscription_plan_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    list_t *options,
    double price,
    double promo,
    double transaction_fee,
    char *role,
    int default_plan,
    int visible,
    asset_t *image
    ) {
    subscription_plan_t *subscription_plan_local_var = malloc(sizeof(subscription_plan_t));
    if (!subscription_plan_local_var) {
        return NULL;
    }
    subscription_plan_local_var->id = id;
    subscription_plan_local_var->active = active;
    subscription_plan_local_var->valid = valid;
    subscription_plan_local_var->name = name;
    subscription_plan_local_var->description = description;
    subscription_plan_local_var->options = options;
    subscription_plan_local_var->price = price;
    subscription_plan_local_var->promo = promo;
    subscription_plan_local_var->transaction_fee = transaction_fee;
    subscription_plan_local_var->role = role;
    subscription_plan_local_var->default_plan = default_plan;
    subscription_plan_local_var->visible = visible;
    subscription_plan_local_var->image = image;

    subscription_plan_local_var->_library_owned = 1;
    return subscription_plan_local_var;
}

__attribute__((deprecated)) subscription_plan_t *subscription_plan_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    list_t *options,
    double price,
    double promo,
    double transaction_fee,
    char *role,
    int default_plan,
    int visible,
    asset_t *image
    ) {
    return subscription_plan_create_internal (
        id,
        active,
        valid,
        name,
        description,
        options,
        price,
        promo,
        transaction_fee,
        role,
        default_plan,
        visible,
        image
        );
}

void subscription_plan_free(subscription_plan_t *subscription_plan) {
    if(NULL == subscription_plan){
        return ;
    }
    if(subscription_plan->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "subscription_plan_free");
        return ;
    }
    listEntry_t *listEntry;
    if (subscription_plan->name) {
        free(subscription_plan->name);
        subscription_plan->name = NULL;
    }
    if (subscription_plan->description) {
        free(subscription_plan->description);
        subscription_plan->description = NULL;
    }
    if (subscription_plan->options) {
        list_ForEach(listEntry, subscription_plan->options) {
            subscription_option_free(listEntry->data);
        }
        list_freeList(subscription_plan->options);
        subscription_plan->options = NULL;
    }
    if (subscription_plan->role) {
        free(subscription_plan->role);
        subscription_plan->role = NULL;
    }
    if (subscription_plan->image) {
        asset_free(subscription_plan->image);
        subscription_plan->image = NULL;
    }
    free(subscription_plan);
}

cJSON *subscription_plan_convertToJSON(subscription_plan_t *subscription_plan) {
    cJSON *item = cJSON_CreateObject();

    // subscription_plan->id
    if(subscription_plan->id) {
    if(cJSON_AddNumberToObject(item, "id", subscription_plan->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_plan->active
    if(subscription_plan->active) {
    if(cJSON_AddBoolToObject(item, "active", subscription_plan->active) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_plan->valid
    if(subscription_plan->valid) {
    if(cJSON_AddBoolToObject(item, "valid", subscription_plan->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_plan->name
    if(subscription_plan->name) {
    if(cJSON_AddStringToObject(item, "name", subscription_plan->name) == NULL) {
    goto fail; //String
    }
    }


    // subscription_plan->description
    if(subscription_plan->description) {
    if(cJSON_AddStringToObject(item, "description", subscription_plan->description) == NULL) {
    goto fail; //String
    }
    }


    // subscription_plan->options
    if(subscription_plan->options) {
    cJSON *options = cJSON_AddArrayToObject(item, "options");
    if(options == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *optionsListEntry;
    if (subscription_plan->options) {
    list_ForEach(optionsListEntry, subscription_plan->options) {
    cJSON *itemLocal = subscription_option_convertToJSON(optionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(options, itemLocal);
    }
    }
    }


    // subscription_plan->price
    if(subscription_plan->price) {
    if(cJSON_AddNumberToObject(item, "price", subscription_plan->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_plan->promo
    if(subscription_plan->promo) {
    if(cJSON_AddNumberToObject(item, "promo", subscription_plan->promo) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_plan->transaction_fee
    if(subscription_plan->transaction_fee) {
    if(cJSON_AddNumberToObject(item, "transactionFee", subscription_plan->transaction_fee) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_plan->role
    if(subscription_plan->role) {
    if(cJSON_AddStringToObject(item, "role", subscription_plan->role) == NULL) {
    goto fail; //String
    }
    }


    // subscription_plan->default_plan
    if(subscription_plan->default_plan) {
    if(cJSON_AddBoolToObject(item, "defaultPlan", subscription_plan->default_plan) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_plan->visible
    if(subscription_plan->visible) {
    if(cJSON_AddBoolToObject(item, "visible", subscription_plan->visible) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_plan->image
    if(subscription_plan->image) {
    cJSON *image_local_JSON = asset_convertToJSON(subscription_plan->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
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

subscription_plan_t *subscription_plan_parseFromJSON(cJSON *subscription_planJSON){

    subscription_plan_t *subscription_plan_local_var = NULL;

    // define the local list for subscription_plan->options
    list_t *optionsList = NULL;

    // define the local variable for subscription_plan->image
    asset_t *image_local_nonprim = NULL;

    // subscription_plan->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // subscription_plan->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // subscription_plan->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // subscription_plan->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // subscription_plan->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // subscription_plan->options
    cJSON *options = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "options");
    if (cJSON_IsNull(options)) {
        options = NULL;
    }
    if (options) { 
    cJSON *options_local_nonprimitive = NULL;
    if(!cJSON_IsArray(options)){
        goto end; //nonprimitive container
    }

    optionsList = list_createList();

    cJSON_ArrayForEach(options_local_nonprimitive,options )
    {
        if(!cJSON_IsObject(options_local_nonprimitive)){
            goto end;
        }
        subscription_option_t *optionsItem = subscription_option_parseFromJSON(options_local_nonprimitive);

        list_addElement(optionsList, optionsItem);
    }
    }

    // subscription_plan->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // subscription_plan->promo
    cJSON *promo = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "promo");
    if (cJSON_IsNull(promo)) {
        promo = NULL;
    }
    if (promo) { 
    if(!cJSON_IsNumber(promo))
    {
    goto end; //Numeric
    }
    }

    // subscription_plan->transaction_fee
    cJSON *transaction_fee = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "transactionFee");
    if (cJSON_IsNull(transaction_fee)) {
        transaction_fee = NULL;
    }
    if (transaction_fee) { 
    if(!cJSON_IsNumber(transaction_fee))
    {
    goto end; //Numeric
    }
    }

    // subscription_plan->role
    cJSON *role = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "role");
    if (cJSON_IsNull(role)) {
        role = NULL;
    }
    if (role) { 
    if(!cJSON_IsString(role) && !cJSON_IsNull(role))
    {
    goto end; //String
    }
    }

    // subscription_plan->default_plan
    cJSON *default_plan = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "defaultPlan");
    if (cJSON_IsNull(default_plan)) {
        default_plan = NULL;
    }
    if (default_plan) { 
    if(!cJSON_IsBool(default_plan))
    {
    goto end; //Bool
    }
    }

    // subscription_plan->visible
    cJSON *visible = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "visible");
    if (cJSON_IsNull(visible)) {
        visible = NULL;
    }
    if (visible) { 
    if(!cJSON_IsBool(visible))
    {
    goto end; //Bool
    }
    }

    // subscription_plan->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(subscription_planJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }


    subscription_plan_local_var = subscription_plan_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        options ? optionsList : NULL,
        price ? price->valuedouble : 0,
        promo ? promo->valuedouble : 0,
        transaction_fee ? transaction_fee->valuedouble : 0,
        role && !cJSON_IsNull(role) ? strdup(role->valuestring) : NULL,
        default_plan ? default_plan->valueint : 0,
        visible ? visible->valueint : 0,
        image ? image_local_nonprim : NULL
        );

    return subscription_plan_local_var;
end:
    if (optionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, optionsList) {
            subscription_option_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(optionsList);
        optionsList = NULL;
    }
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    return NULL;

}
