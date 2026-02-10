/*
 * subscription_plan_response.h
 *
 * 
 */

#ifndef _subscription_plan_response_H_
#define _subscription_plan_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct subscription_plan_response_t subscription_plan_response_t;

#include "asset_short_response.h"
#include "subscription_option_response.h"



typedef struct subscription_plan_response_t {
    long id; //numeric
    char *name; // string
    char *description; // string
    list_t *options; //nonprimitive container
    double price; //numeric
    double promo; //numeric
    double transaction_fee; //numeric
    char *role; // string
    int default_plan; //boolean
    int visible; //boolean
    struct asset_short_response_t *image; //model

    int _library_owned; // Is the library responsible for freeing this object?
} subscription_plan_response_t;

__attribute__((deprecated)) subscription_plan_response_t *subscription_plan_response_create(
    long id,
    char *name,
    char *description,
    list_t *options,
    double price,
    double promo,
    double transaction_fee,
    char *role,
    int default_plan,
    int visible,
    asset_short_response_t *image
);

void subscription_plan_response_free(subscription_plan_response_t *subscription_plan_response);

subscription_plan_response_t *subscription_plan_response_parseFromJSON(cJSON *subscription_plan_responseJSON);

cJSON *subscription_plan_response_convertToJSON(subscription_plan_response_t *subscription_plan_response);

#endif /* _subscription_plan_response_H_ */

