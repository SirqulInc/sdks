#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "line_item.h"



static line_item_t *line_item_create_internal(
    char *description,
    char *item,
    int price_per_item,
    int total,
    int tax,
    int quantity
    ) {
    line_item_t *line_item_local_var = malloc(sizeof(line_item_t));
    if (!line_item_local_var) {
        return NULL;
    }
    line_item_local_var->description = description;
    line_item_local_var->item = item;
    line_item_local_var->price_per_item = price_per_item;
    line_item_local_var->total = total;
    line_item_local_var->tax = tax;
    line_item_local_var->quantity = quantity;

    line_item_local_var->_library_owned = 1;
    return line_item_local_var;
}

__attribute__((deprecated)) line_item_t *line_item_create(
    char *description,
    char *item,
    int price_per_item,
    int total,
    int tax,
    int quantity
    ) {
    return line_item_create_internal (
        description,
        item,
        price_per_item,
        total,
        tax,
        quantity
        );
}

void line_item_free(line_item_t *line_item) {
    if(NULL == line_item){
        return ;
    }
    if(line_item->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "line_item_free");
        return ;
    }
    listEntry_t *listEntry;
    if (line_item->description) {
        free(line_item->description);
        line_item->description = NULL;
    }
    if (line_item->item) {
        free(line_item->item);
        line_item->item = NULL;
    }
    free(line_item);
}

cJSON *line_item_convertToJSON(line_item_t *line_item) {
    cJSON *item = cJSON_CreateObject();

    // line_item->description
    if(line_item->description) {
    if(cJSON_AddStringToObject(item, "description", line_item->description) == NULL) {
    goto fail; //String
    }
    }


    // line_item->item
    if(line_item->item) {
    if(cJSON_AddStringToObject(item, "item", line_item->item) == NULL) {
    goto fail; //String
    }
    }


    // line_item->price_per_item
    if(line_item->price_per_item) {
    if(cJSON_AddNumberToObject(item, "pricePerItem", line_item->price_per_item) == NULL) {
    goto fail; //Numeric
    }
    }


    // line_item->total
    if(line_item->total) {
    if(cJSON_AddNumberToObject(item, "total", line_item->total) == NULL) {
    goto fail; //Numeric
    }
    }


    // line_item->tax
    if(line_item->tax) {
    if(cJSON_AddNumberToObject(item, "tax", line_item->tax) == NULL) {
    goto fail; //Numeric
    }
    }


    // line_item->quantity
    if(line_item->quantity) {
    if(cJSON_AddNumberToObject(item, "quantity", line_item->quantity) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

line_item_t *line_item_parseFromJSON(cJSON *line_itemJSON){

    line_item_t *line_item_local_var = NULL;

    // line_item->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(line_itemJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // line_item->item
    cJSON *item = cJSON_GetObjectItemCaseSensitive(line_itemJSON, "item");
    if (cJSON_IsNull(item)) {
        item = NULL;
    }
    if (item) { 
    if(!cJSON_IsString(item) && !cJSON_IsNull(item))
    {
    goto end; //String
    }
    }

    // line_item->price_per_item
    cJSON *price_per_item = cJSON_GetObjectItemCaseSensitive(line_itemJSON, "pricePerItem");
    if (cJSON_IsNull(price_per_item)) {
        price_per_item = NULL;
    }
    if (price_per_item) { 
    if(!cJSON_IsNumber(price_per_item))
    {
    goto end; //Numeric
    }
    }

    // line_item->total
    cJSON *total = cJSON_GetObjectItemCaseSensitive(line_itemJSON, "total");
    if (cJSON_IsNull(total)) {
        total = NULL;
    }
    if (total) { 
    if(!cJSON_IsNumber(total))
    {
    goto end; //Numeric
    }
    }

    // line_item->tax
    cJSON *tax = cJSON_GetObjectItemCaseSensitive(line_itemJSON, "tax");
    if (cJSON_IsNull(tax)) {
        tax = NULL;
    }
    if (tax) { 
    if(!cJSON_IsNumber(tax))
    {
    goto end; //Numeric
    }
    }

    // line_item->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(line_itemJSON, "quantity");
    if (cJSON_IsNull(quantity)) {
        quantity = NULL;
    }
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }


    line_item_local_var = line_item_create_internal (
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        item && !cJSON_IsNull(item) ? strdup(item->valuestring) : NULL,
        price_per_item ? price_per_item->valuedouble : 0,
        total ? total->valuedouble : 0,
        tax ? tax->valuedouble : 0,
        quantity ? quantity->valuedouble : 0
        );

    return line_item_local_var;
end:
    return NULL;

}
