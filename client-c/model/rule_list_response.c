#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rule_list_response.h"



static rule_list_response_t *rule_list_response_create_internal(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int count,
    int has_more_results
    ) {
    rule_list_response_t *rule_list_response_local_var = malloc(sizeof(rule_list_response_t));
    if (!rule_list_response_local_var) {
        return NULL;
    }
    rule_list_response_local_var->start = start;
    rule_list_response_local_var->limit = limit;
    rule_list_response_local_var->count_total = count_total;
    rule_list_response_local_var->items = items;
    rule_list_response_local_var->count = count;
    rule_list_response_local_var->has_more_results = has_more_results;

    rule_list_response_local_var->_library_owned = 1;
    return rule_list_response_local_var;
}

__attribute__((deprecated)) rule_list_response_t *rule_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int count,
    int has_more_results
    ) {
    return rule_list_response_create_internal (
        start,
        limit,
        count_total,
        items,
        count,
        has_more_results
        );
}

void rule_list_response_free(rule_list_response_t *rule_list_response) {
    if(NULL == rule_list_response){
        return ;
    }
    if(rule_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "rule_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (rule_list_response->items) {
        list_ForEach(listEntry, rule_list_response->items) {
            rule_response_free(listEntry->data);
        }
        list_freeList(rule_list_response->items);
        rule_list_response->items = NULL;
    }
    free(rule_list_response);
}

cJSON *rule_list_response_convertToJSON(rule_list_response_t *rule_list_response) {
    cJSON *item = cJSON_CreateObject();

    // rule_list_response->start
    if(rule_list_response->start) {
    if(cJSON_AddNumberToObject(item, "start", rule_list_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // rule_list_response->limit
    if(rule_list_response->limit) {
    if(cJSON_AddNumberToObject(item, "limit", rule_list_response->limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // rule_list_response->count_total
    if(rule_list_response->count_total) {
    if(cJSON_AddNumberToObject(item, "countTotal", rule_list_response->count_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // rule_list_response->items
    if(rule_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (rule_list_response->items) {
    list_ForEach(itemsListEntry, rule_list_response->items) {
    cJSON *itemLocal = rule_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // rule_list_response->count
    if(rule_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", rule_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // rule_list_response->has_more_results
    if(rule_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", rule_list_response->has_more_results) == NULL) {
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

rule_list_response_t *rule_list_response_parseFromJSON(cJSON *rule_list_responseJSON){

    rule_list_response_t *rule_list_response_local_var = NULL;

    // define the local list for rule_list_response->items
    list_t *itemsList = NULL;

    // rule_list_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(rule_list_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // rule_list_response->limit
    cJSON *limit = cJSON_GetObjectItemCaseSensitive(rule_list_responseJSON, "limit");
    if (cJSON_IsNull(limit)) {
        limit = NULL;
    }
    if (limit) { 
    if(!cJSON_IsNumber(limit))
    {
    goto end; //Numeric
    }
    }

    // rule_list_response->count_total
    cJSON *count_total = cJSON_GetObjectItemCaseSensitive(rule_list_responseJSON, "countTotal");
    if (cJSON_IsNull(count_total)) {
        count_total = NULL;
    }
    if (count_total) { 
    if(!cJSON_IsNumber(count_total))
    {
    goto end; //Numeric
    }
    }

    // rule_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(rule_list_responseJSON, "items");
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
        rule_response_t *itemsItem = rule_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // rule_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(rule_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // rule_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(rule_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }


    rule_list_response_local_var = rule_list_response_create_internal (
        start ? start->valuedouble : 0,
        limit ? limit->valuedouble : 0,
        count_total ? count_total->valuedouble : 0,
        items ? itemsList : NULL,
        count ? count->valuedouble : 0,
        has_more_results ? has_more_results->valueint : 0
        );

    return rule_list_response_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            rule_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
