#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "reward_response.h"



static reward_response_t *reward_response_create_internal(
    long offer_id,
    char *title,
    char *sub_title,
    char *details,
    asset_short_response_t *artwork,
    char *fine_print,
    char *redemption_code,
    int redemption_status,
    long transaction_id,
    double estimated_value
    ) {
    reward_response_t *reward_response_local_var = malloc(sizeof(reward_response_t));
    if (!reward_response_local_var) {
        return NULL;
    }
    reward_response_local_var->offer_id = offer_id;
    reward_response_local_var->title = title;
    reward_response_local_var->sub_title = sub_title;
    reward_response_local_var->details = details;
    reward_response_local_var->artwork = artwork;
    reward_response_local_var->fine_print = fine_print;
    reward_response_local_var->redemption_code = redemption_code;
    reward_response_local_var->redemption_status = redemption_status;
    reward_response_local_var->transaction_id = transaction_id;
    reward_response_local_var->estimated_value = estimated_value;

    reward_response_local_var->_library_owned = 1;
    return reward_response_local_var;
}

__attribute__((deprecated)) reward_response_t *reward_response_create(
    long offer_id,
    char *title,
    char *sub_title,
    char *details,
    asset_short_response_t *artwork,
    char *fine_print,
    char *redemption_code,
    int redemption_status,
    long transaction_id,
    double estimated_value
    ) {
    return reward_response_create_internal (
        offer_id,
        title,
        sub_title,
        details,
        artwork,
        fine_print,
        redemption_code,
        redemption_status,
        transaction_id,
        estimated_value
        );
}

void reward_response_free(reward_response_t *reward_response) {
    if(NULL == reward_response){
        return ;
    }
    if(reward_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "reward_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (reward_response->title) {
        free(reward_response->title);
        reward_response->title = NULL;
    }
    if (reward_response->sub_title) {
        free(reward_response->sub_title);
        reward_response->sub_title = NULL;
    }
    if (reward_response->details) {
        free(reward_response->details);
        reward_response->details = NULL;
    }
    if (reward_response->artwork) {
        asset_short_response_free(reward_response->artwork);
        reward_response->artwork = NULL;
    }
    if (reward_response->fine_print) {
        free(reward_response->fine_print);
        reward_response->fine_print = NULL;
    }
    if (reward_response->redemption_code) {
        free(reward_response->redemption_code);
        reward_response->redemption_code = NULL;
    }
    free(reward_response);
}

cJSON *reward_response_convertToJSON(reward_response_t *reward_response) {
    cJSON *item = cJSON_CreateObject();

    // reward_response->offer_id
    if(reward_response->offer_id) {
    if(cJSON_AddNumberToObject(item, "offerId", reward_response->offer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // reward_response->title
    if(reward_response->title) {
    if(cJSON_AddStringToObject(item, "title", reward_response->title) == NULL) {
    goto fail; //String
    }
    }


    // reward_response->sub_title
    if(reward_response->sub_title) {
    if(cJSON_AddStringToObject(item, "subTitle", reward_response->sub_title) == NULL) {
    goto fail; //String
    }
    }


    // reward_response->details
    if(reward_response->details) {
    if(cJSON_AddStringToObject(item, "details", reward_response->details) == NULL) {
    goto fail; //String
    }
    }


    // reward_response->artwork
    if(reward_response->artwork) {
    cJSON *artwork_local_JSON = asset_short_response_convertToJSON(reward_response->artwork);
    if(artwork_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "artwork", artwork_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // reward_response->fine_print
    if(reward_response->fine_print) {
    if(cJSON_AddStringToObject(item, "finePrint", reward_response->fine_print) == NULL) {
    goto fail; //String
    }
    }


    // reward_response->redemption_code
    if(reward_response->redemption_code) {
    if(cJSON_AddStringToObject(item, "redemptionCode", reward_response->redemption_code) == NULL) {
    goto fail; //String
    }
    }


    // reward_response->redemption_status
    if(reward_response->redemption_status) {
    if(cJSON_AddNumberToObject(item, "redemptionStatus", reward_response->redemption_status) == NULL) {
    goto fail; //Numeric
    }
    }


    // reward_response->transaction_id
    if(reward_response->transaction_id) {
    if(cJSON_AddNumberToObject(item, "transactionId", reward_response->transaction_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // reward_response->estimated_value
    if(reward_response->estimated_value) {
    if(cJSON_AddNumberToObject(item, "estimatedValue", reward_response->estimated_value) == NULL) {
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

reward_response_t *reward_response_parseFromJSON(cJSON *reward_responseJSON){

    reward_response_t *reward_response_local_var = NULL;

    // define the local variable for reward_response->artwork
    asset_short_response_t *artwork_local_nonprim = NULL;

    // reward_response->offer_id
    cJSON *offer_id = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "offerId");
    if (cJSON_IsNull(offer_id)) {
        offer_id = NULL;
    }
    if (offer_id) { 
    if(!cJSON_IsNumber(offer_id))
    {
    goto end; //Numeric
    }
    }

    // reward_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // reward_response->sub_title
    cJSON *sub_title = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "subTitle");
    if (cJSON_IsNull(sub_title)) {
        sub_title = NULL;
    }
    if (sub_title) { 
    if(!cJSON_IsString(sub_title) && !cJSON_IsNull(sub_title))
    {
    goto end; //String
    }
    }

    // reward_response->details
    cJSON *details = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "details");
    if (cJSON_IsNull(details)) {
        details = NULL;
    }
    if (details) { 
    if(!cJSON_IsString(details) && !cJSON_IsNull(details))
    {
    goto end; //String
    }
    }

    // reward_response->artwork
    cJSON *artwork = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "artwork");
    if (cJSON_IsNull(artwork)) {
        artwork = NULL;
    }
    if (artwork) { 
    artwork_local_nonprim = asset_short_response_parseFromJSON(artwork); //nonprimitive
    }

    // reward_response->fine_print
    cJSON *fine_print = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "finePrint");
    if (cJSON_IsNull(fine_print)) {
        fine_print = NULL;
    }
    if (fine_print) { 
    if(!cJSON_IsString(fine_print) && !cJSON_IsNull(fine_print))
    {
    goto end; //String
    }
    }

    // reward_response->redemption_code
    cJSON *redemption_code = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "redemptionCode");
    if (cJSON_IsNull(redemption_code)) {
        redemption_code = NULL;
    }
    if (redemption_code) { 
    if(!cJSON_IsString(redemption_code) && !cJSON_IsNull(redemption_code))
    {
    goto end; //String
    }
    }

    // reward_response->redemption_status
    cJSON *redemption_status = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "redemptionStatus");
    if (cJSON_IsNull(redemption_status)) {
        redemption_status = NULL;
    }
    if (redemption_status) { 
    if(!cJSON_IsNumber(redemption_status))
    {
    goto end; //Numeric
    }
    }

    // reward_response->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "transactionId");
    if (cJSON_IsNull(transaction_id)) {
        transaction_id = NULL;
    }
    if (transaction_id) { 
    if(!cJSON_IsNumber(transaction_id))
    {
    goto end; //Numeric
    }
    }

    // reward_response->estimated_value
    cJSON *estimated_value = cJSON_GetObjectItemCaseSensitive(reward_responseJSON, "estimatedValue");
    if (cJSON_IsNull(estimated_value)) {
        estimated_value = NULL;
    }
    if (estimated_value) { 
    if(!cJSON_IsNumber(estimated_value))
    {
    goto end; //Numeric
    }
    }


    reward_response_local_var = reward_response_create_internal (
        offer_id ? offer_id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        sub_title && !cJSON_IsNull(sub_title) ? strdup(sub_title->valuestring) : NULL,
        details && !cJSON_IsNull(details) ? strdup(details->valuestring) : NULL,
        artwork ? artwork_local_nonprim : NULL,
        fine_print && !cJSON_IsNull(fine_print) ? strdup(fine_print->valuestring) : NULL,
        redemption_code && !cJSON_IsNull(redemption_code) ? strdup(redemption_code->valuestring) : NULL,
        redemption_status ? redemption_status->valuedouble : 0,
        transaction_id ? transaction_id->valuedouble : 0,
        estimated_value ? estimated_value->valuedouble : 0
        );

    return reward_response_local_var;
end:
    if (artwork_local_nonprim) {
        asset_short_response_free(artwork_local_nonprim);
        artwork_local_nonprim = NULL;
    }
    return NULL;

}
