/*
 * billable_entity_short_response.h
 *
 * 
 */

#ifndef _billable_entity_short_response_H_
#define _billable_entity_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct billable_entity_short_response_t billable_entity_short_response_t;

#include "profile_short_response.h"



typedef struct billable_entity_short_response_t {
    long billable_entity_id; //numeric
    char *name; // string
    struct profile_short_response_t *responsible; //model

    int _library_owned; // Is the library responsible for freeing this object?
} billable_entity_short_response_t;

__attribute__((deprecated)) billable_entity_short_response_t *billable_entity_short_response_create(
    long billable_entity_id,
    char *name,
    profile_short_response_t *responsible
);

void billable_entity_short_response_free(billable_entity_short_response_t *billable_entity_short_response);

billable_entity_short_response_t *billable_entity_short_response_parseFromJSON(cJSON *billable_entity_short_responseJSON);

cJSON *billable_entity_short_response_convertToJSON(billable_entity_short_response_t *billable_entity_short_response);

#endif /* _billable_entity_short_response_H_ */

