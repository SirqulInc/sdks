/*
 * subscription_plan.h
 *
 * 
 */

#ifndef _subscription_plan_H_
#define _subscription_plan_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct subscription_plan_t subscription_plan_t;

#include "asset.h"
#include "subscription_option.h"



typedef struct subscription_plan_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *description; // string
    list_t *options; //nonprimitive container
    double price; //numeric
    double promo; //numeric
    double transaction_fee; //numeric
    char *role; // string
    int default_plan; //boolean
    int visible; //boolean
    struct asset_t *image; //model

    int _library_owned; // Is the library responsible for freeing this object?
} subscription_plan_t;

__attribute__((deprecated)) subscription_plan_t *subscription_plan_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    list_t *options,
    double price,
    double promo,
    double transaction_fee,
    char *role,
    int default_plan,
    int visible,
    asset_t *image
);

void subscription_plan_free(subscription_plan_t *subscription_plan);

subscription_plan_t *subscription_plan_parseFromJSON(cJSON *subscription_planJSON);

cJSON *subscription_plan_convertToJSON(subscription_plan_t *subscription_plan);

#endif /* _subscription_plan_H_ */

