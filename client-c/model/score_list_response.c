#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "score_list_response.h"



static score_list_response_t *score_list_response_create_internal(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int count,
    int has_more_results
    ) {
    score_list_response_t *score_list_response_local_var = malloc(sizeof(score_list_response_t));
    if (!score_list_response_local_var) {
        return NULL;
    }
    score_list_response_local_var->start = start;
    score_list_response_local_var->limit = limit;
    score_list_response_local_var->count_total = count_total;
    score_list_response_local_var->items = items;
    score_list_response_local_var->count = count;
    score_list_response_local_var->has_more_results = has_more_results;

    score_list_response_local_var->_library_owned = 1;
    return score_list_response_local_var;
}

__attribute__((deprecated)) score_list_response_t *score_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int count,
    int has_more_results
    ) {
    return score_list_response_create_internal (
        start,
        limit,
        count_total,
        items,
        count,
        has_more_results
        );
}

void score_list_response_free(score_list_response_t *score_list_response) {
    if(NULL == score_list_response){
        return ;
    }
    if(score_list_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "score_list_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (score_list_response->items) {
        list_ForEach(listEntry, score_list_response->items) {
            score_response_free(listEntry->data);
        }
        list_freeList(score_list_response->items);
        score_list_response->items = NULL;
    }
    free(score_list_response);
}

cJSON *score_list_response_convertToJSON(score_list_response_t *score_list_response) {
    cJSON *item = cJSON_CreateObject();

    // score_list_response->start
    if(score_list_response->start) {
    if(cJSON_AddNumberToObject(item, "start", score_list_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_list_response->limit
    if(score_list_response->limit) {
    if(cJSON_AddNumberToObject(item, "limit", score_list_response->limit) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_list_response->count_total
    if(score_list_response->count_total) {
    if(cJSON_AddNumberToObject(item, "countTotal", score_list_response->count_total) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_list_response->items
    if(score_list_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (score_list_response->items) {
    list_ForEach(itemsListEntry, score_list_response->items) {
    cJSON *itemLocal = score_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // score_list_response->count
    if(score_list_response->count) {
    if(cJSON_AddNumberToObject(item, "count", score_list_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_list_response->has_more_results
    if(score_list_response->has_more_results) {
    if(cJSON_AddBoolToObject(item, "hasMoreResults", score_list_response->has_more_results) == NULL) {
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

score_list_response_t *score_list_response_parseFromJSON(cJSON *score_list_responseJSON){

    score_list_response_t *score_list_response_local_var = NULL;

    // define the local list for score_list_response->items
    list_t *itemsList = NULL;

    // score_list_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(score_list_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // score_list_response->limit
    cJSON *limit = cJSON_GetObjectItemCaseSensitive(score_list_responseJSON, "limit");
    if (cJSON_IsNull(limit)) {
        limit = NULL;
    }
    if (limit) { 
    if(!cJSON_IsNumber(limit))
    {
    goto end; //Numeric
    }
    }

    // score_list_response->count_total
    cJSON *count_total = cJSON_GetObjectItemCaseSensitive(score_list_responseJSON, "countTotal");
    if (cJSON_IsNull(count_total)) {
        count_total = NULL;
    }
    if (count_total) { 
    if(!cJSON_IsNumber(count_total))
    {
    goto end; //Numeric
    }
    }

    // score_list_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(score_list_responseJSON, "items");
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
        score_response_t *itemsItem = score_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // score_list_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(score_list_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // score_list_response->has_more_results
    cJSON *has_more_results = cJSON_GetObjectItemCaseSensitive(score_list_responseJSON, "hasMoreResults");
    if (cJSON_IsNull(has_more_results)) {
        has_more_results = NULL;
    }
    if (has_more_results) { 
    if(!cJSON_IsBool(has_more_results))
    {
    goto end; //Bool
    }
    }


    score_list_response_local_var = score_list_response_create_internal (
        start ? start->valuedouble : 0,
        limit ? limit->valuedouble : 0,
        count_total ? count_total->valuedouble : 0,
        items ? itemsList : NULL,
        count ? count->valuedouble : 0,
        has_more_results ? has_more_results->valueint : 0
        );

    return score_list_response_local_var;
end:
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            score_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
