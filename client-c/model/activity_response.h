/*
 * activity_response.h
 *
 * 
 */

#ifndef _activity_response_H_
#define _activity_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct activity_response_t activity_response_t;




typedef struct activity_response_t {
    long activity_id; //numeric
    long created; //numeric
    char *app_key; // string
    long target_id; //numeric
    char *target_type; // string
    char *target_legacy_id; // string
    char *target_description; // string
    int target_active; //boolean
    char *action; // string
    long slave_entity_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} activity_response_t;

__attribute__((deprecated)) activity_response_t *activity_response_create(
    long activity_id,
    long created,
    char *app_key,
    long target_id,
    char *target_type,
    char *target_legacy_id,
    char *target_description,
    int target_active,
    char *action,
    long slave_entity_id
);

void activity_response_free(activity_response_t *activity_response);

activity_response_t *activity_response_parseFromJSON(cJSON *activity_responseJSON);

cJSON *activity_response_convertToJSON(activity_response_t *activity_response);

#endif /* _activity_response_H_ */

