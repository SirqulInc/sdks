/*
 * subscription_response.h
 *
 * 
 */

#ifndef _subscription_response_H_
#define _subscription_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct subscription_response_t subscription_response_t;

#include "subscription_plan_response.h"



typedef struct subscription_response_t {
    long id; //numeric
    struct subscription_plan_response_t *subscription_plan; //model
    char *promo_code; // string
    int active; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} subscription_response_t;

__attribute__((deprecated)) subscription_response_t *subscription_response_create(
    long id,
    subscription_plan_response_t *subscription_plan,
    char *promo_code,
    int active
);

void subscription_response_free(subscription_response_t *subscription_response);

subscription_response_t *subscription_response_parseFromJSON(cJSON *subscription_responseJSON);

cJSON *subscription_response_convertToJSON(subscription_response_t *subscription_response);

#endif /* _subscription_response_H_ */

