#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "subscription_option.h"


char* subscription_option_option_type_ToString(sirqul_iot_platform_subscription_option_OPTIONTYPE_e option_type) {
    char* option_typeArray[] =  { "NULL", "MISSION", "LOCATION", "OFFER", "NOTIFICATION", "REQUEST", "STORAGE_S3", "STORAGE_DB" };
    return option_typeArray[option_type];
}

sirqul_iot_platform_subscription_option_OPTIONTYPE_e subscription_option_option_type_FromString(char* option_type){
    int stringToReturn = 0;
    char *option_typeArray[] =  { "NULL", "MISSION", "LOCATION", "OFFER", "NOTIFICATION", "REQUEST", "STORAGE_S3", "STORAGE_DB" };
    size_t sizeofArray = sizeof(option_typeArray) / sizeof(option_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(option_type, option_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* subscription_option_offer_type_ToString(sirqul_iot_platform_subscription_option_OFFERTYPE_e offer_type) {
    char* offer_typeArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    return offer_typeArray[offer_type];
}

sirqul_iot_platform_subscription_option_OFFERTYPE_e subscription_option_offer_type_FromString(char* offer_type){
    int stringToReturn = 0;
    char *offer_typeArray[] =  { "NULL", "VOUCHER", "COUPON", "PRODUCT", "MEDIA", "EVENT", "DEVICE" };
    size_t sizeofArray = sizeof(offer_typeArray) / sizeof(offer_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(offer_type, offer_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static subscription_option_t *subscription_option_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    double price,
    int quantity,
    int threshold,
    int visible,
    sirqul_iot_platform_subscription_option_OPTIONTYPE_e option_type,
    sirqul_iot_platform_subscription_option_OFFERTYPE_e offer_type
    ) {
    subscription_option_t *subscription_option_local_var = malloc(sizeof(subscription_option_t));
    if (!subscription_option_local_var) {
        return NULL;
    }
    subscription_option_local_var->id = id;
    subscription_option_local_var->active = active;
    subscription_option_local_var->valid = valid;
    subscription_option_local_var->name = name;
    subscription_option_local_var->price = price;
    subscription_option_local_var->quantity = quantity;
    subscription_option_local_var->threshold = threshold;
    subscription_option_local_var->visible = visible;
    subscription_option_local_var->option_type = option_type;
    subscription_option_local_var->offer_type = offer_type;

    subscription_option_local_var->_library_owned = 1;
    return subscription_option_local_var;
}

__attribute__((deprecated)) subscription_option_t *subscription_option_create(
    long id,
    int active,
    int valid,
    char *name,
    double price,
    int quantity,
    int threshold,
    int visible,
    sirqul_iot_platform_subscription_option_OPTIONTYPE_e option_type,
    sirqul_iot_platform_subscription_option_OFFERTYPE_e offer_type
    ) {
    return subscription_option_create_internal (
        id,
        active,
        valid,
        name,
        price,
        quantity,
        threshold,
        visible,
        option_type,
        offer_type
        );
}

void subscription_option_free(subscription_option_t *subscription_option) {
    if(NULL == subscription_option){
        return ;
    }
    if(subscription_option->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "subscription_option_free");
        return ;
    }
    listEntry_t *listEntry;
    if (subscription_option->name) {
        free(subscription_option->name);
        subscription_option->name = NULL;
    }
    free(subscription_option);
}

cJSON *subscription_option_convertToJSON(subscription_option_t *subscription_option) {
    cJSON *item = cJSON_CreateObject();

    // subscription_option->id
    if(subscription_option->id) {
    if(cJSON_AddNumberToObject(item, "id", subscription_option->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option->active
    if(subscription_option->active) {
    if(cJSON_AddBoolToObject(item, "active", subscription_option->active) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_option->valid
    if(subscription_option->valid) {
    if(cJSON_AddBoolToObject(item, "valid", subscription_option->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_option->name
    if(subscription_option->name) {
    if(cJSON_AddStringToObject(item, "name", subscription_option->name) == NULL) {
    goto fail; //String
    }
    }


    // subscription_option->price
    if(subscription_option->price) {
    if(cJSON_AddNumberToObject(item, "price", subscription_option->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option->quantity
    if(subscription_option->quantity) {
    if(cJSON_AddNumberToObject(item, "quantity", subscription_option->quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option->threshold
    if(subscription_option->threshold) {
    if(cJSON_AddNumberToObject(item, "threshold", subscription_option->threshold) == NULL) {
    goto fail; //Numeric
    }
    }


    // subscription_option->visible
    if(subscription_option->visible) {
    if(cJSON_AddBoolToObject(item, "visible", subscription_option->visible) == NULL) {
    goto fail; //Bool
    }
    }


    // subscription_option->option_type
    if(subscription_option->option_type != sirqul_iot_platform_subscription_option_OPTIONTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "optionType", subscription_option_option_type_ToString(subscription_option->option_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // subscription_option->offer_type
    if(subscription_option->offer_type != sirqul_iot_platform_subscription_option_OFFERTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "offerType", subscription_option_offer_type_ToString(subscription_option->offer_type)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

subscription_option_t *subscription_option_parseFromJSON(cJSON *subscription_optionJSON){

    subscription_option_t *subscription_option_local_var = NULL;

    // subscription_option->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // subscription_option->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // subscription_option->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // subscription_option->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // subscription_option->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // subscription_option->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "quantity");
    if (cJSON_IsNull(quantity)) {
        quantity = NULL;
    }
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // subscription_option->threshold
    cJSON *threshold = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "threshold");
    if (cJSON_IsNull(threshold)) {
        threshold = NULL;
    }
    if (threshold) { 
    if(!cJSON_IsNumber(threshold))
    {
    goto end; //Numeric
    }
    }

    // subscription_option->visible
    cJSON *visible = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "visible");
    if (cJSON_IsNull(visible)) {
        visible = NULL;
    }
    if (visible) { 
    if(!cJSON_IsBool(visible))
    {
    goto end; //Bool
    }
    }

    // subscription_option->option_type
    cJSON *option_type = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "optionType");
    if (cJSON_IsNull(option_type)) {
        option_type = NULL;
    }
    sirqul_iot_platform_subscription_option_OPTIONTYPE_e option_typeVariable;
    if (option_type) { 
    if(!cJSON_IsString(option_type))
    {
    goto end; //Enum
    }
    option_typeVariable = subscription_option_option_type_FromString(option_type->valuestring);
    }

    // subscription_option->offer_type
    cJSON *offer_type = cJSON_GetObjectItemCaseSensitive(subscription_optionJSON, "offerType");
    if (cJSON_IsNull(offer_type)) {
        offer_type = NULL;
    }
    sirqul_iot_platform_subscription_option_OFFERTYPE_e offer_typeVariable;
    if (offer_type) { 
    if(!cJSON_IsString(offer_type))
    {
    goto end; //Enum
    }
    offer_typeVariable = subscription_option_offer_type_FromString(offer_type->valuestring);
    }


    subscription_option_local_var = subscription_option_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        price ? price->valuedouble : 0,
        quantity ? quantity->valuedouble : 0,
        threshold ? threshold->valuedouble : 0,
        visible ? visible->valueint : 0,
        option_type ? option_typeVariable : sirqul_iot_platform_subscription_option_OPTIONTYPE_NULL,
        offer_type ? offer_typeVariable : sirqul_iot_platform_subscription_option_OFFERTYPE_NULL
        );

    return subscription_option_local_var;
end:
    return NULL;

}
