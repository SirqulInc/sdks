#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "invoice.h"



static invoice_t *invoice_create_internal(
    char *location,
    int tax,
    int total,
    list_t *line_items
    ) {
    invoice_t *invoice_local_var = malloc(sizeof(invoice_t));
    if (!invoice_local_var) {
        return NULL;
    }
    invoice_local_var->location = location;
    invoice_local_var->tax = tax;
    invoice_local_var->total = total;
    invoice_local_var->line_items = line_items;

    invoice_local_var->_library_owned = 1;
    return invoice_local_var;
}

__attribute__((deprecated)) invoice_t *invoice_create(
    char *location,
    int tax,
    int total,
    list_t *line_items
    ) {
    return invoice_create_internal (
        location,
        tax,
        total,
        line_items
        );
}

void invoice_free(invoice_t *invoice) {
    if(NULL == invoice){
        return ;
    }
    if(invoice->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "invoice_free");
        return ;
    }
    listEntry_t *listEntry;
    if (invoice->location) {
        free(invoice->location);
        invoice->location = NULL;
    }
    if (invoice->line_items) {
        list_ForEach(listEntry, invoice->line_items) {
            line_item_free(listEntry->data);
        }
        list_freeList(invoice->line_items);
        invoice->line_items = NULL;
    }
    free(invoice);
}

cJSON *invoice_convertToJSON(invoice_t *invoice) {
    cJSON *item = cJSON_CreateObject();

    // invoice->location
    if(invoice->location) {
    if(cJSON_AddStringToObject(item, "location", invoice->location) == NULL) {
    goto fail; //String
    }
    }


    // invoice->tax
    if(invoice->tax) {
    if(cJSON_AddNumberToObject(item, "tax", invoice->tax) == NULL) {
    goto fail; //Numeric
    }
    }


    // invoice->total
    if(invoice->total) {
    if(cJSON_AddNumberToObject(item, "total", invoice->total) == NULL) {
    goto fail; //Numeric
    }
    }


    // invoice->line_items
    if(invoice->line_items) {
    cJSON *line_items = cJSON_AddArrayToObject(item, "lineItems");
    if(line_items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *line_itemsListEntry;
    if (invoice->line_items) {
    list_ForEach(line_itemsListEntry, invoice->line_items) {
    cJSON *itemLocal = line_item_convertToJSON(line_itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(line_items, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

invoice_t *invoice_parseFromJSON(cJSON *invoiceJSON){

    invoice_t *invoice_local_var = NULL;

    // define the local list for invoice->line_items
    list_t *line_itemsList = NULL;

    // invoice->location
    cJSON *location = cJSON_GetObjectItemCaseSensitive(invoiceJSON, "location");
    if (cJSON_IsNull(location)) {
        location = NULL;
    }
    if (location) { 
    if(!cJSON_IsString(location) && !cJSON_IsNull(location))
    {
    goto end; //String
    }
    }

    // invoice->tax
    cJSON *tax = cJSON_GetObjectItemCaseSensitive(invoiceJSON, "tax");
    if (cJSON_IsNull(tax)) {
        tax = NULL;
    }
    if (tax) { 
    if(!cJSON_IsNumber(tax))
    {
    goto end; //Numeric
    }
    }

    // invoice->total
    cJSON *total = cJSON_GetObjectItemCaseSensitive(invoiceJSON, "total");
    if (cJSON_IsNull(total)) {
        total = NULL;
    }
    if (total) { 
    if(!cJSON_IsNumber(total))
    {
    goto end; //Numeric
    }
    }

    // invoice->line_items
    cJSON *line_items = cJSON_GetObjectItemCaseSensitive(invoiceJSON, "lineItems");
    if (cJSON_IsNull(line_items)) {
        line_items = NULL;
    }
    if (line_items) { 
    cJSON *line_items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(line_items)){
        goto end; //nonprimitive container
    }

    line_itemsList = list_createList();

    cJSON_ArrayForEach(line_items_local_nonprimitive,line_items )
    {
        if(!cJSON_IsObject(line_items_local_nonprimitive)){
            goto end;
        }
        line_item_t *line_itemsItem = line_item_parseFromJSON(line_items_local_nonprimitive);

        list_addElement(line_itemsList, line_itemsItem);
    }
    }


    invoice_local_var = invoice_create_internal (
        location && !cJSON_IsNull(location) ? strdup(location->valuestring) : NULL,
        tax ? tax->valuedouble : 0,
        total ? total->valuedouble : 0,
        line_items ? line_itemsList : NULL
        );

    return invoice_local_var;
end:
    if (line_itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, line_itemsList) {
            line_item_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(line_itemsList);
        line_itemsList = NULL;
    }
    return NULL;

}
