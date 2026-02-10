/*
 * bid_response.h
 *
 * 
 */

#ifndef _bid_response_H_
#define _bid_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct bid_response_t bid_response_t;


// Enum BUDGETSCHEDULE for bid_response

typedef enum  { sirqul_iot_platform_bid_response_BUDGETSCHEDULE_NULL = 0, sirqul_iot_platform_bid_response_BUDGETSCHEDULE_DAILY, sirqul_iot_platform_bid_response_BUDGETSCHEDULE_WEEKLY, sirqul_iot_platform_bid_response_BUDGETSCHEDULE_MONTHLY, sirqul_iot_platform_bid_response_BUDGETSCHEDULE_YEARLY } sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e;

char* bid_response_budget_schedule_ToString(sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e budget_schedule);

sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e bid_response_budget_schedule_FromString(char* budget_schedule);



typedef struct bid_response_t {
    long bid_id; //numeric
    char *biddable_type; // string
    long biddable_id; //numeric
    double amount_per_view; //numeric
    double amount_per_action; //numeric
    double current_daily_budget; //numeric
    double current_budget; //numeric
    long current_budget_expiration; //numeric
    long current_budget_start; //numeric
    double budget_amount; //numeric
    sirqul_iot_platform_bid_response_BUDGETSCHEDULE_e budget_schedule; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} bid_response_t;

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
);

void bid_response_free(bid_response_t *bid_response);

bid_response_t *bid_response_parseFromJSON(cJSON *bid_responseJSON);

cJSON *bid_response_convertToJSON(bid_response_t *bid_response);

#endif /* _bid_response_H_ */

