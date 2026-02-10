#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "bid_response.h"


char* bid_response_budget_schedule_ToString(sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e budget_schedule) {
    char* budget_scheduleArray[] =  { "NULL", "DAILY", "WEEKLY", "MONTHLY", "YEARLY" };
    return budget_scheduleArray[budget_schedule];
}

sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e bid_response_budget_schedule_FromString(char* budget_schedule){
    int stringToReturn = 0;
    char *budget_scheduleArray[] =  { "NULL", "DAILY", "WEEKLY", "MONTHLY", "YEARLY" };
    size_t sizeofArray = sizeof(budget_scheduleArray) / sizeof(budget_scheduleArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(budget_schedule, budget_scheduleArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static bid_response_t *bid_response_create_internal(
    long bid_id,
    char *biddable_type,
    long biddable_id,
    double amount_per_view,
    double amount_per_action,
    double current_daily_budget,
    double current_budget,
    long current_budget_expiration,
    long current_budget_start,
    double budget_amount,
    sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e budget_schedule
    ) {
    bid_response_t *bid_response_local_var = malloc(sizeof(bid_response_t));
    if (!bid_response_local_var) {
        return NULL;
    }
    bid_response_local_var->bid_id = bid_id;
    bid_response_local_var->biddable_type = biddable_type;
    bid_response_local_var->biddable_id = biddable_id;
    bid_response_local_var->amount_per_view = amount_per_view;
    bid_response_local_var->amount_per_action = amount_per_action;
    bid_response_local_var->current_daily_budget = current_daily_budget;
    bid_response_local_var->current_budget = current_budget;
    bid_response_local_var->current_budget_expiration = current_budget_expiration;
    bid_response_local_var->current_budget_start = current_budget_start;
    bid_response_local_var->budget_amount = budget_amount;
    bid_response_local_var->budget_schedule = budget_schedule;

    bid_response_local_var->_library_owned = 1;
    return bid_response_local_var;
}

__attribute__((deprecated)) bid_response_t *bid_response_create(
    long bid_id,
    char *biddable_type,
    long biddable_id,
    double amount_per_view,
    double amount_per_action,
    double current_daily_budget,
    double current_budget,
    long current_budget_expiration,
    long current_budget_start,
    double budget_amount,
    sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e budget_schedule
    ) {
    return bid_response_create_internal (
        bid_id,
        biddable_type,
        biddable_id,
        amount_per_view,
        amount_per_action,
        current_daily_budget,
        current_budget,
        current_budget_expiration,
        current_budget_start,
        budget_amount,
        budget_schedule
        );
}

void bid_response_free(bid_response_t *bid_response) {
    if(NULL == bid_response){
        return ;
    }
    if(bid_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "bid_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (bid_response->biddable_type) {
        free(bid_response->biddable_type);
        bid_response->biddable_type = NULL;
    }
    free(bid_response);
}

cJSON *bid_response_convertToJSON(bid_response_t *bid_response) {
    cJSON *item = cJSON_CreateObject();

    // bid_response->bid_id
    if(bid_response->bid_id) {
    if(cJSON_AddNumberToObject(item, "bidId", bid_response->bid_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->biddable_type
    if(bid_response->biddable_type) {
    if(cJSON_AddStringToObject(item, "biddableType", bid_response->biddable_type) == NULL) {
    goto fail; //String
    }
    }


    // bid_response->biddable_id
    if(bid_response->biddable_id) {
    if(cJSON_AddNumberToObject(item, "biddableId", bid_response->biddable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->amount_per_view
    if(bid_response->amount_per_view) {
    if(cJSON_AddNumberToObject(item, "amountPerView", bid_response->amount_per_view) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->amount_per_action
    if(bid_response->amount_per_action) {
    if(cJSON_AddNumberToObject(item, "amountPerAction", bid_response->amount_per_action) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->current_daily_budget
    if(bid_response->current_daily_budget) {
    if(cJSON_AddNumberToObject(item, "currentDailyBudget", bid_response->current_daily_budget) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->current_budget
    if(bid_response->current_budget) {
    if(cJSON_AddNumberToObject(item, "currentBudget", bid_response->current_budget) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->current_budget_expiration
    if(bid_response->current_budget_expiration) {
    if(cJSON_AddNumberToObject(item, "currentBudgetExpiration", bid_response->current_budget_expiration) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->current_budget_start
    if(bid_response->current_budget_start) {
    if(cJSON_AddNumberToObject(item, "currentBudgetStart", bid_response->current_budget_start) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->budget_amount
    if(bid_response->budget_amount) {
    if(cJSON_AddNumberToObject(item, "budgetAmount", bid_response->budget_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // bid_response->budget_schedule
    if(bid_response->budget_schedule != sirqul_iot_platform_bid_response_BUDGETSCHEDULE_NULL) {
    if(cJSON_AddStringToObject(item, "budgetSchedule", bid_response_budget_schedule_ToString(bid_response->budget_schedule)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

bid_response_t *bid_response_parseFromJSON(cJSON *bid_responseJSON){

    bid_response_t *bid_response_local_var = NULL;

    // bid_response->bid_id
    cJSON *bid_id = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "bidId");
    if (cJSON_IsNull(bid_id)) {
        bid_id = NULL;
    }
    if (bid_id) { 
    if(!cJSON_IsNumber(bid_id))
    {
    goto end; //Numeric
    }
    }

    // bid_response->biddable_type
    cJSON *biddable_type = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "biddableType");
    if (cJSON_IsNull(biddable_type)) {
        biddable_type = NULL;
    }
    if (biddable_type) { 
    if(!cJSON_IsString(biddable_type) && !cJSON_IsNull(biddable_type))
    {
    goto end; //String
    }
    }

    // bid_response->biddable_id
    cJSON *biddable_id = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "biddableId");
    if (cJSON_IsNull(biddable_id)) {
        biddable_id = NULL;
    }
    if (biddable_id) { 
    if(!cJSON_IsNumber(biddable_id))
    {
    goto end; //Numeric
    }
    }

    // bid_response->amount_per_view
    cJSON *amount_per_view = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "amountPerView");
    if (cJSON_IsNull(amount_per_view)) {
        amount_per_view = NULL;
    }
    if (amount_per_view) { 
    if(!cJSON_IsNumber(amount_per_view))
    {
    goto end; //Numeric
    }
    }

    // bid_response->amount_per_action
    cJSON *amount_per_action = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "amountPerAction");
    if (cJSON_IsNull(amount_per_action)) {
        amount_per_action = NULL;
    }
    if (amount_per_action) { 
    if(!cJSON_IsNumber(amount_per_action))
    {
    goto end; //Numeric
    }
    }

    // bid_response->current_daily_budget
    cJSON *current_daily_budget = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "currentDailyBudget");
    if (cJSON_IsNull(current_daily_budget)) {
        current_daily_budget = NULL;
    }
    if (current_daily_budget) { 
    if(!cJSON_IsNumber(current_daily_budget))
    {
    goto end; //Numeric
    }
    }

    // bid_response->current_budget
    cJSON *current_budget = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "currentBudget");
    if (cJSON_IsNull(current_budget)) {
        current_budget = NULL;
    }
    if (current_budget) { 
    if(!cJSON_IsNumber(current_budget))
    {
    goto end; //Numeric
    }
    }

    // bid_response->current_budget_expiration
    cJSON *current_budget_expiration = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "currentBudgetExpiration");
    if (cJSON_IsNull(current_budget_expiration)) {
        current_budget_expiration = NULL;
    }
    if (current_budget_expiration) { 
    if(!cJSON_IsNumber(current_budget_expiration))
    {
    goto end; //Numeric
    }
    }

    // bid_response->current_budget_start
    cJSON *current_budget_start = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "currentBudgetStart");
    if (cJSON_IsNull(current_budget_start)) {
        current_budget_start = NULL;
    }
    if (current_budget_start) { 
    if(!cJSON_IsNumber(current_budget_start))
    {
    goto end; //Numeric
    }
    }

    // bid_response->budget_amount
    cJSON *budget_amount = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "budgetAmount");
    if (cJSON_IsNull(budget_amount)) {
        budget_amount = NULL;
    }
    if (budget_amount) { 
    if(!cJSON_IsNumber(budget_amount))
    {
    goto end; //Numeric
    }
    }

    // bid_response->budget_schedule
    cJSON *budget_schedule = cJSON_GetObjectItemCaseSensitive(bid_responseJSON, "budgetSchedule");
    if (cJSON_IsNull(budget_schedule)) {
        budget_schedule = NULL;
    }
    sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e budget_scheduleVariable;
    if (budget_schedule) { 
    if(!cJSON_IsString(budget_schedule))
    {
    goto end; //Enum
    }
    budget_scheduleVariable = bid_response_budget_schedule_FromString(budget_schedule->valuestring);
    }


    bid_response_local_var = bid_response_create_internal (
        bid_id ? bid_id->valuedouble : 0,
        biddable_type && !cJSON_IsNull(biddable_type) ? strdup(biddable_type->valuestring) : NULL,
        biddable_id ? biddable_id->valuedouble : 0,
        amount_per_view ? amount_per_view->valuedouble : 0,
        amount_per_action ? amount_per_action->valuedouble : 0,
        current_daily_budget ? current_daily_budget->valuedouble : 0,
        current_budget ? current_budget->valuedouble : 0,
        current_budget_expiration ? current_budget_expiration->valuedouble : 0,
        current_budget_start ? current_budget_start->valuedouble : 0,
        budget_amount ? budget_amount->valuedouble : 0,
        budget_schedule ? budget_scheduleVariable : sirqul_iot_platform_bid_response_BUDGETSCHEDULE_NULL
        );

    return bid_response_local_var;
end:
    return NULL;

}
