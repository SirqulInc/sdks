/*
 * billable_entity_response.h
 *
 * 
 */

#ifndef _billable_entity_response_H_
#define _billable_entity_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct billable_entity_response_t billable_entity_response_t;

#include "contact_info_response.h"
#include "payment_types_response.h"
#include "profile_short_response.h"
#include "subscription_response.h"



typedef struct billable_entity_response_t {
    long billable_entity_id; //numeric
    char *name; // string
    struct profile_short_response_t *responsible; //model
    struct contact_info_response_t *contact; //model
    struct subscription_response_t *subscription; //model
    struct payment_types_response_t *payment; //model

    int _library_owned; // Is the library responsible for freeing this object?
} billable_entity_response_t;

__attribute__((deprecated)) billable_entity_response_t *billable_entity_response_create(
    long billable_entity_id,
    char *name,
    profile_short_response_t *responsible,
    contact_info_response_t *contact,
    subscription_response_t *subscription,
    payment_types_response_t *payment
);

void billable_entity_response_free(billable_entity_response_t *billable_entity_response);

billable_entity_response_t *billable_entity_response_parseFromJSON(cJSON *billable_entity_responseJSON);

cJSON *billable_entity_response_convertToJSON(billable_entity_response_t *billable_entity_response);

#endif /* _billable_entity_response_H_ */

