#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "order_item_request.h"


char* order_item_request_order_item_type_ToString(sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_type) {
    char* order_item_typeArray[] =  { "NULL", "OFFER", "CUSTOM" };
    return order_item_typeArray[order_item_type];
}

sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_request_order_item_type_FromString(char* order_item_type){
    int stringToReturn = 0;
    char *order_item_typeArray[] =  { "NULL", "OFFER", "CUSTOM" };
    size_t sizeofArray = sizeof(order_item_typeArray) / sizeof(order_item_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(order_item_type, order_item_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static order_item_request_t *order_item_request_create_internal(
    sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_type,
    long order_item_id,
    char *offer_name,
    char *order_custom_type,
    char *order_custom_id,
    long retailer_location_id,
    int quantity,
    double amount,
    double tax,
    long reserve_start_date,
    long reserve_end_date,
    char *message
    ) {
    order_item_request_t *order_item_request_local_var = malloc(sizeof(order_item_request_t));
    if (!order_item_request_local_var) {
        return NULL;
    }
    order_item_request_local_var->order_item_type = order_item_type;
    order_item_request_local_var->order_item_id = order_item_id;
    order_item_request_local_var->offer_name = offer_name;
    order_item_request_local_var->order_custom_type = order_custom_type;
    order_item_request_local_var->order_custom_id = order_custom_id;
    order_item_request_local_var->retailer_location_id = retailer_location_id;
    order_item_request_local_var->quantity = quantity;
    order_item_request_local_var->amount = amount;
    order_item_request_local_var->tax = tax;
    order_item_request_local_var->reserve_start_date = reserve_start_date;
    order_item_request_local_var->reserve_end_date = reserve_end_date;
    order_item_request_local_var->message = message;

    order_item_request_local_var->_library_owned = 1;
    return order_item_request_local_var;
}

__attribute__((deprecated)) order_item_request_t *order_item_request_create(
    sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_type,
    long order_item_id,
    char *offer_name,
    char *order_custom_type,
    char *order_custom_id,
    long retailer_location_id,
    int quantity,
    double amount,
    double tax,
    long reserve_start_date,
    long reserve_end_date,
    char *message
    ) {
    return order_item_request_create_internal (
        order_item_type,
        order_item_id,
        offer_name,
        order_custom_type,
        order_custom_id,
        retailer_location_id,
        quantity,
        amount,
        tax,
        reserve_start_date,
        reserve_end_date,
        message
        );
}

void order_item_request_free(order_item_request_t *order_item_request) {
    if(NULL == order_item_request){
        return ;
    }
    if(order_item_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "order_item_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (order_item_request->offer_name) {
        free(order_item_request->offer_name);
        order_item_request->offer_name = NULL;
    }
    if (order_item_request->order_custom_type) {
        free(order_item_request->order_custom_type);
        order_item_request->order_custom_type = NULL;
    }
    if (order_item_request->order_custom_id) {
        free(order_item_request->order_custom_id);
        order_item_request->order_custom_id = NULL;
    }
    if (order_item_request->message) {
        free(order_item_request->message);
        order_item_request->message = NULL;
    }
    free(order_item_request);
}

cJSON *order_item_request_convertToJSON(order_item_request_t *order_item_request) {
    cJSON *item = cJSON_CreateObject();

    // order_item_request->order_item_type
    if(order_item_request->order_item_type != sirqul_iot_platform_order_item_request_ORDERITEMTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "orderItemType", order_item_request_order_item_type_ToString(order_item_request->order_item_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // order_item_request->order_item_id
    if(order_item_request->order_item_id) {
    if(cJSON_AddNumberToObject(item, "orderItemId", order_item_request->order_item_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_item_request->offer_name
    if(order_item_request->offer_name) {
    if(cJSON_AddStringToObject(item, "offerName", order_item_request->offer_name) == NULL) {
    goto fail; //String
    }
    }


    // order_item_request->order_custom_type
    if(order_item_request->order_custom_type) {
    if(cJSON_AddStringToObject(item, "orderCustomType", order_item_request->order_custom_type) == NULL) {
    goto fail; //String
    }
    }


    // order_item_request->order_custom_id
    if(order_item_request->order_custom_id) {
    if(cJSON_AddStringToObject(item, "orderCustomId", order_item_request->order_custom_id) == NULL) {
    goto fail; //String
    }
    }


    // order_item_request->retailer_location_id
    if(order_item_request->retailer_location_id) {
    if(cJSON_AddNumberToObject(item, "retailerLocationId", order_item_request->retailer_location_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_item_request->quantity
    if(order_item_request->quantity) {
    if(cJSON_AddNumberToObject(item, "quantity", order_item_request->quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_item_request->amount
    if(order_item_request->amount) {
    if(cJSON_AddNumberToObject(item, "amount", order_item_request->amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_item_request->tax
    if(order_item_request->tax) {
    if(cJSON_AddNumberToObject(item, "tax", order_item_request->tax) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_item_request->reserve_start_date
    if(order_item_request->reserve_start_date) {
    if(cJSON_AddNumberToObject(item, "reserveStartDate", order_item_request->reserve_start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_item_request->reserve_end_date
    if(order_item_request->reserve_end_date) {
    if(cJSON_AddNumberToObject(item, "reserveEndDate", order_item_request->reserve_end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // order_item_request->message
    if(order_item_request->message) {
    if(cJSON_AddStringToObject(item, "message", order_item_request->message) == NULL) {
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

order_item_request_t *order_item_request_parseFromJSON(cJSON *order_item_requestJSON){

    order_item_request_t *order_item_request_local_var = NULL;

    // order_item_request->order_item_type
    cJSON *order_item_type = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "orderItemType");
    if (cJSON_IsNull(order_item_type)) {
        order_item_type = NULL;
    }
    sirqul_iot_platform_order_item_request_ORDERITEMTYPE_e order_item_typeVariable;
    if (order_item_type) { 
    if(!cJSON_IsString(order_item_type))
    {
    goto end; //Enum
    }
    order_item_typeVariable = order_item_request_order_item_type_FromString(order_item_type->valuestring);
    }

    // order_item_request->order_item_id
    cJSON *order_item_id = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "orderItemId");
    if (cJSON_IsNull(order_item_id)) {
        order_item_id = NULL;
    }
    if (order_item_id) { 
    if(!cJSON_IsNumber(order_item_id))
    {
    goto end; //Numeric
    }
    }

    // order_item_request->offer_name
    cJSON *offer_name = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "offerName");
    if (cJSON_IsNull(offer_name)) {
        offer_name = NULL;
    }
    if (offer_name) { 
    if(!cJSON_IsString(offer_name) && !cJSON_IsNull(offer_name))
    {
    goto end; //String
    }
    }

    // order_item_request->order_custom_type
    cJSON *order_custom_type = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "orderCustomType");
    if (cJSON_IsNull(order_custom_type)) {
        order_custom_type = NULL;
    }
    if (order_custom_type) { 
    if(!cJSON_IsString(order_custom_type) && !cJSON_IsNull(order_custom_type))
    {
    goto end; //String
    }
    }

    // order_item_request->order_custom_id
    cJSON *order_custom_id = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "orderCustomId");
    if (cJSON_IsNull(order_custom_id)) {
        order_custom_id = NULL;
    }
    if (order_custom_id) { 
    if(!cJSON_IsString(order_custom_id) && !cJSON_IsNull(order_custom_id))
    {
    goto end; //String
    }
    }

    // order_item_request->retailer_location_id
    cJSON *retailer_location_id = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "retailerLocationId");
    if (cJSON_IsNull(retailer_location_id)) {
        retailer_location_id = NULL;
    }
    if (retailer_location_id) { 
    if(!cJSON_IsNumber(retailer_location_id))
    {
    goto end; //Numeric
    }
    }

    // order_item_request->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "quantity");
    if (cJSON_IsNull(quantity)) {
        quantity = NULL;
    }
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // order_item_request->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "amount");
    if (cJSON_IsNull(amount)) {
        amount = NULL;
    }
    if (amount) { 
    if(!cJSON_IsNumber(amount))
    {
    goto end; //Numeric
    }
    }

    // order_item_request->tax
    cJSON *tax = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "tax");
    if (cJSON_IsNull(tax)) {
        tax = NULL;
    }
    if (tax) { 
    if(!cJSON_IsNumber(tax))
    {
    goto end; //Numeric
    }
    }

    // order_item_request->reserve_start_date
    cJSON *reserve_start_date = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "reserveStartDate");
    if (cJSON_IsNull(reserve_start_date)) {
        reserve_start_date = NULL;
    }
    if (reserve_start_date) { 
    if(!cJSON_IsNumber(reserve_start_date))
    {
    goto end; //Numeric
    }
    }

    // order_item_request->reserve_end_date
    cJSON *reserve_end_date = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "reserveEndDate");
    if (cJSON_IsNull(reserve_end_date)) {
        reserve_end_date = NULL;
    }
    if (reserve_end_date) { 
    if(!cJSON_IsNumber(reserve_end_date))
    {
    goto end; //Numeric
    }
    }

    // order_item_request->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(order_item_requestJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }


    order_item_request_local_var = order_item_request_create_internal (
        order_item_type ? order_item_typeVariable : sirqul_iot_platform_order_item_request_ORDERITEMTYPE_NULL,
        order_item_id ? order_item_id->valuedouble : 0,
        offer_name && !cJSON_IsNull(offer_name) ? strdup(offer_name->valuestring) : NULL,
        order_custom_type && !cJSON_IsNull(order_custom_type) ? strdup(order_custom_type->valuestring) : NULL,
        order_custom_id && !cJSON_IsNull(order_custom_id) ? strdup(order_custom_id->valuestring) : NULL,
        retailer_location_id ? retailer_location_id->valuedouble : 0,
        quantity ? quantity->valuedouble : 0,
        amount ? amount->valuedouble : 0,
        tax ? tax->valuedouble : 0,
        reserve_start_date ? reserve_start_date->valuedouble : 0,
        reserve_end_date ? reserve_end_date->valuedouble : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL
        );

    return order_item_request_local_var;
end:
    return NULL;

}
