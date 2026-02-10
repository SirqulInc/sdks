#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "rank_response.h"



static rank_response_t *rank_response_create_internal(
    account_short_response_t *owner,
    char *rank,
    long score_value,
    long time_value,
    long count_value,
    long updated
    ) {
    rank_response_t *rank_response_local_var = malloc(sizeof(rank_response_t));
    if (!rank_response_local_var) {
        return NULL;
    }
    rank_response_local_var->owner = owner;
    rank_response_local_var->rank = rank;
    rank_response_local_var->score_value = score_value;
    rank_response_local_var->time_value = time_value;
    rank_response_local_var->count_value = count_value;
    rank_response_local_var->updated = updated;

    rank_response_local_var->_library_owned = 1;
    return rank_response_local_var;
}

__attribute__((deprecated)) rank_response_t *rank_response_create(
    account_short_response_t *owner,
    char *rank,
    long score_value,
    long time_value,
    long count_value,
    long updated
    ) {
    return rank_response_create_internal (
        owner,
        rank,
        score_value,
        time_value,
        count_value,
        updated
        );
}

void rank_response_free(rank_response_t *rank_response) {
    if(NULL == rank_response){
        return ;
    }
    if(rank_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "rank_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (rank_response->owner) {
        account_short_response_free(rank_response->owner);
        rank_response->owner = NULL;
    }
    if (rank_response->rank) {
        free(rank_response->rank);
        rank_response->rank = NULL;
    }
    free(rank_response);
}

cJSON *rank_response_convertToJSON(rank_response_t *rank_response) {
    cJSON *item = cJSON_CreateObject();

    // rank_response->owner
    if(rank_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(rank_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // rank_response->rank
    if(rank_response->rank) {
    if(cJSON_AddStringToObject(item, "rank", rank_response->rank) == NULL) {
    goto fail; //String
    }
    }


    // rank_response->score_value
    if(rank_response->score_value) {
    if(cJSON_AddNumberToObject(item, "scoreValue", rank_response->score_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // rank_response->time_value
    if(rank_response->time_value) {
    if(cJSON_AddNumberToObject(item, "timeValue", rank_response->time_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // rank_response->count_value
    if(rank_response->count_value) {
    if(cJSON_AddNumberToObject(item, "countValue", rank_response->count_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // rank_response->updated
    if(rank_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", rank_response->updated) == NULL) {
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

rank_response_t *rank_response_parseFromJSON(cJSON *rank_responseJSON){

    rank_response_t *rank_response_local_var = NULL;

    // define the local variable for rank_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // rank_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(rank_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // rank_response->rank
    cJSON *rank = cJSON_GetObjectItemCaseSensitive(rank_responseJSON, "rank");
    if (cJSON_IsNull(rank)) {
        rank = NULL;
    }
    if (rank) { 
    if(!cJSON_IsString(rank) && !cJSON_IsNull(rank))
    {
    goto end; //String
    }
    }

    // rank_response->score_value
    cJSON *score_value = cJSON_GetObjectItemCaseSensitive(rank_responseJSON, "scoreValue");
    if (cJSON_IsNull(score_value)) {
        score_value = NULL;
    }
    if (score_value) { 
    if(!cJSON_IsNumber(score_value))
    {
    goto end; //Numeric
    }
    }

    // rank_response->time_value
    cJSON *time_value = cJSON_GetObjectItemCaseSensitive(rank_responseJSON, "timeValue");
    if (cJSON_IsNull(time_value)) {
        time_value = NULL;
    }
    if (time_value) { 
    if(!cJSON_IsNumber(time_value))
    {
    goto end; //Numeric
    }
    }

    // rank_response->count_value
    cJSON *count_value = cJSON_GetObjectItemCaseSensitive(rank_responseJSON, "countValue");
    if (cJSON_IsNull(count_value)) {
        count_value = NULL;
    }
    if (count_value) { 
    if(!cJSON_IsNumber(count_value))
    {
    goto end; //Numeric
    }
    }

    // rank_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(rank_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }


    rank_response_local_var = rank_response_create_internal (
        owner ? owner_local_nonprim : NULL,
        rank && !cJSON_IsNull(rank) ? strdup(rank->valuestring) : NULL,
        score_value ? score_value->valuedouble : 0,
        time_value ? time_value->valuedouble : 0,
        count_value ? count_value->valuedouble : 0,
        updated ? updated->valuedouble : 0
        );

    return rank_response_local_var;
end:
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
