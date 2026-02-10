#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orders.h"



static orders_t *orders_create_internal(
    list_t *orders
    ) {
    orders_t *orders_local_var = malloc(sizeof(orders_t));
    if (!orders_local_var) {
        return NULL;
    }
    orders_local_var->orders = orders;

    orders_local_var->_library_owned = 1;
    return orders_local_var;
}

__attribute__((deprecated)) orders_t *orders_create(
    list_t *orders
    ) {
    return orders_create_internal (
        orders
        );
}

void orders_free(orders_t *orders) {
    if(NULL == orders){
        return ;
    }
    if(orders->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orders_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orders->orders) {
        list_ForEach(listEntry, orders->orders) {
            shipment_order_free(listEntry->data);
        }
        list_freeList(orders->orders);
        orders->orders = NULL;
    }
    free(orders);
}

cJSON *orders_convertToJSON(orders_t *orders) {
    cJSON *item = cJSON_CreateObject();

    // orders->orders
    if(orders->orders) {
    cJSON *orders = cJSON_AddArrayToObject(item, "Orders");
    if(orders == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *ordersListEntry;
    if (orders->orders) {
    list_ForEach(ordersListEntry, orders->orders) {
    cJSON *itemLocal = shipment_order_convertToJSON(ordersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(orders, itemLocal);
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

orders_t *orders_parseFromJSON(cJSON *ordersJSON){

    orders_t *orders_local_var = NULL;

    // define the local list for orders->orders
    list_t *ordersList = NULL;

    // orders->orders
    cJSON *orders = cJSON_GetObjectItemCaseSensitive(ordersJSON, "Orders");
    if (cJSON_IsNull(orders)) {
        orders = NULL;
    }
    if (orders) { 
    cJSON *orders_local_nonprimitive = NULL;
    if(!cJSON_IsArray(orders)){
        goto end; //nonprimitive container
    }

    ordersList = list_createList();

    cJSON_ArrayForEach(orders_local_nonprimitive,orders )
    {
        if(!cJSON_IsObject(orders_local_nonprimitive)){
            goto end;
        }
        shipment_order_t *ordersItem = shipment_order_parseFromJSON(orders_local_nonprimitive);

        list_addElement(ordersList, ordersItem);
    }
    }


    orders_local_var = orders_create_internal (
        orders ? ordersList : NULL
        );

    return orders_local_var;
end:
    if (ordersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, ordersList) {
            shipment_order_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(ordersList);
        ordersList = NULL;
    }
    return NULL;

}
