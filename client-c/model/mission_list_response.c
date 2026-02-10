#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mission_list_response.h"



static mission_list_response_t *mission_list_response_create_internal(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int has_more_results,
    int count
    ) {
    mission_list_response_t *mission_list_response_local_var = malloc(sizeof(mission_list_response_t));
    if (!mission_list_response_local_var) {
        return NULL;
    }
    mission_list_response_local_var->start = start;
    mission_list_response_local_var->limit = limit;
    mission_list_response_local_var->count_total = count_total;
    mission_list_response_local_var->items = items;
    mission_list_response_local_var->has_more_results = has_more_results;
    mission_list_response_local_var->count = count;

    mission_list_response_local_var->_library_owned = 1;
    return mission_list_response_local_var;
}

__attribute__((deprecated)) mission_list_response_t *mission_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int has_more_results,
    int count
    ) {
    return mission_list_response_create_internal (
        start,
        limit,
        count_total,
        items,
        has_more_results,
        count
        );
}

void mission_list_response_free(mission_list_response_t *mission_list_response) {
    if(NULL == mission_list_response){
        return ;
    }
    if(mission_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mission_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mission_list_response->items) {
        list_ForEach(listEntry, mission_list_response->items) {
            mission_response_free(listEntry->data);
        }
        list_freeList(mission_list_response->items);
        mission_list_response->items = NULL;
    }
    free(mission_list_response);
}

cJSON *mission_list_response_convertToJSON(mission_list_response_t *mission_list_response) {
    cJSON *item = cJSON_CreateObject();

    // mission_list_response->start
    if(mission_list_response->start) {
    if(cJSON_AddNumberToObject(item, "start", mission_list_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_list_response->limit
    if(mission_list_response->limit) {
    if(cJSON_AddNumberToObject(item, "limit", mission_list_response->limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_list_response->count_total
    if(mission_list_response->count_total) {
    if(cJSON_AddNumberToObject(item, "countTotal", mission_list_response->count_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_list_response->items
    if(mission_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (mission_list_response->items) {
    list_ForEach(itemsListEntry, mission_list_response->items) {
    cJSON *itemLocal = mission_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // mission_list_response->has_more_results
    if(mission_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", mission_list_response->has_more_results) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_list_response->count
    if(mission_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", mission_list_response->count) == NULL) {
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

mission_list_response_t *mission_list_response_parseFromJSON(cJSON *mission_list_responseJSON){

    mission_list_response_t *mission_list_response_local_var = NULL;

    // define the local list for mission_list_response->items
    list_t *itemsList = NULL;

    // mission_list_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(mission_list_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // mission_list_response->limit
    cJSON *limit = cJSON_GetObjectItemCaseSensitive(mission_list_responseJSON, "limit");
    if (cJSON_IsNull(limit)) {
        limit = NULL;
    }
    if (limit) { 
    if(!cJSON_IsNumber(limit))
    {
    goto end; //Numeric
    }
    }

    // mission_list_response->count_total
    cJSON *count_total = cJSON_GetObjectItemCaseSensitive(mission_list_responseJSON, "countTotal");
    if (cJSON_IsNull(count_total)) {
        count_total = NULL;
    }
    if (count_total) { 
    if(!cJSON_IsNumber(count_total))
    {
    goto end; //Numeric
    }
    }

    // mission_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(mission_list_responseJSON, "items");
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
        mission_response_t *itemsItem = mission_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // mission_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(mission_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }

    // mission_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(mission_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }


    mission_list_response_local_var = mission_list_response_create_internal (
        start ? start->valuedouble : 0,
        limit ? limit->valuedouble : 0,
        count_total ? count_total->valuedouble : 0,
        items ? itemsList : NULL,
        has_more_results ? has_more_results->valueint : 0,
        count ? count->valuedouble : 0
        );

    return mission_list_response_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            mission_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
