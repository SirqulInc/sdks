#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "notification_recipient_response_list_response.h"



static notification_recipient_response_list_response_t *notification_recipient_response_list_response_create_internal(
    list_t *items,
    int count,
    int start_index_audiences,
    int start_index_groups,
    long total,
    long count_audiences,
    long count_groups,
    int has_more_results
    ) {
    notification_recipient_response_list_response_t *notification_recipient_response_list_response_local_var = malloc(sizeof(notification_recipient_response_list_response_t));
    if (!notification_recipient_response_list_response_local_var) {
        return NULL;
    }
    notification_recipient_response_list_response_local_var->items = items;
    notification_recipient_response_list_response_local_var->count = count;
    notification_recipient_response_list_response_local_var->start_index_audiences = start_index_audiences;
    notification_recipient_response_list_response_local_var->start_index_groups = start_index_groups;
    notification_recipient_response_list_response_local_var->total = total;
    notification_recipient_response_list_response_local_var->count_audiences = count_audiences;
    notification_recipient_response_list_response_local_var->count_groups = count_groups;
    notification_recipient_response_list_response_local_var->has_more_results = has_more_results;

    notification_recipient_response_list_response_local_var->_library_owned = 1;
    return notification_recipient_response_list_response_local_var;
}

__attribute__((deprecated)) notification_recipient_response_list_response_t *notification_recipient_response_list_response_create(
    list_t *items,
    int count,
    int start_index_audiences,
    int start_index_groups,
    long total,
    long count_audiences,
    long count_groups,
    int has_more_results
    ) {
    return notification_recipient_response_list_response_create_internal (
        items,
        count,
        start_index_audiences,
        start_index_groups,
        total,
        count_audiences,
        count_groups,
        has_more_results
        );
}

void notification_recipient_response_list_response_free(notification_recipient_response_list_response_t *notification_recipient_response_list_response) {
    if(NULL == notification_recipient_response_list_response){
        return ;
    }
    if(notification_recipient_response_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "notification_recipient_response_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (notification_recipient_response_list_response->items) {
        list_ForEach(listEntry, notification_recipient_response_list_response->items) {
            object_free(listEntry->data);
        }
        list_freeList(notification_recipient_response_list_response->items);
        notification_recipient_response_list_response->items = NULL;
    }
    free(notification_recipient_response_list_response);
}

cJSON *notification_recipient_response_list_response_convertToJSON(notification_recipient_response_list_response_t *notification_recipient_response_list_response) {
    cJSON *item = cJSON_CreateObject();

    // notification_recipient_response_list_response->items
    if(notification_recipient_response_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (notification_recipient_response_list_response->items) {
    list_ForEach(itemsListEntry, notification_recipient_response_list_response->items) {
    cJSON *itemLocal = object_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // notification_recipient_response_list_response->count
    if(notification_recipient_response_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", notification_recipient_response_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response_list_response->start_index_audiences
    if(notification_recipient_response_list_response->start_index_audiences) {
    if(cJSON_AddNumberToObject(item, "startIndexAudiences", notification_recipient_response_list_response->start_index_audiences) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response_list_response->start_index_groups
    if(notification_recipient_response_list_response->start_index_groups) {
    if(cJSON_AddNumberToObject(item, "startIndexGroups", notification_recipient_response_list_response->start_index_groups) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response_list_response->total
    if(notification_recipient_response_list_response->total) {
    if(cJSON_AddNumberToObject(item, "total", notification_recipient_response_list_response->total) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response_list_response->count_audiences
    if(notification_recipient_response_list_response->count_audiences) {
    if(cJSON_AddNumberToObject(item, "countAudiences", notification_recipient_response_list_response->count_audiences) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response_list_response->count_groups
    if(notification_recipient_response_list_response->count_groups) {
    if(cJSON_AddNumberToObject(item, "countGroups", notification_recipient_response_list_response->count_groups) == NULL) {
    goto fail; //Numeric
    }
    }


    // notification_recipient_response_list_response->has_more_results
    if(notification_recipient_response_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", notification_recipient_response_list_response->has_more_results) == NULL) {
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

notification_recipient_response_list_response_t *notification_recipient_response_list_response_parseFromJSON(cJSON *notification_recipient_response_list_responseJSON){

    notification_recipient_response_list_response_t *notification_recipient_response_list_response_local_var = NULL;

    // define the local list for notification_recipient_response_list_response->items
    list_t *itemsList = NULL;

    // notification_recipient_response_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        object_t *itemsItem = object_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // notification_recipient_response_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response_list_response->start_index_audiences
    cJSON *start_index_audiences = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "startIndexAudiences");
    if (cJSON_IsNull(start_index_audiences)) {
        start_index_audiences = NULL;
    }
    if (start_index_audiences) { 
    if(!cJSON_IsNumber(start_index_audiences))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response_list_response->start_index_groups
    cJSON *start_index_groups = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "startIndexGroups");
    if (cJSON_IsNull(start_index_groups)) {
        start_index_groups = NULL;
    }
    if (start_index_groups) { 
    if(!cJSON_IsNumber(start_index_groups))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response_list_response->total
    cJSON *total = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "total");
    if (cJSON_IsNull(total)) {
        total = NULL;
    }
    if (total) { 
    if(!cJSON_IsNumber(total))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response_list_response->count_audiences
    cJSON *count_audiences = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "countAudiences");
    if (cJSON_IsNull(count_audiences)) {
        count_audiences = NULL;
    }
    if (count_audiences) { 
    if(!cJSON_IsNumber(count_audiences))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response_list_response->count_groups
    cJSON *count_groups = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "countGroups");
    if (cJSON_IsNull(count_groups)) {
        count_groups = NULL;
    }
    if (count_groups) { 
    if(!cJSON_IsNumber(count_groups))
    {
    goto end; //Numeric
    }
    }

    // notification_recipient_response_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(notification_recipient_response_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }


    notification_recipient_response_list_response_local_var = notification_recipient_response_list_response_create_internal (
        items ? itemsList : NULL,
        count ? count->valuedouble : 0,
        start_index_audiences ? start_index_audiences->valuedouble : 0,
        start_index_groups ? start_index_groups->valuedouble : 0,
        total ? total->valuedouble : 0,
        count_audiences ? count_audiences->valuedouble : 0,
        count_groups ? count_groups->valuedouble : 0,
        has_more_results ? has_more_results->valueint : 0
        );

    return notification_recipient_response_list_response_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            object_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
