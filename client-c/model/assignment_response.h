/*
 * assignment_response.h
 *
 * 
 */

#ifndef _assignment_response_H_
#define _assignment_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct assignment_response_t assignment_response_t;

#include "account_short_response.h"
#include "assignment_status_response.h"
#include "retailer_location_short_response.h"

// Enum CURRENTSTATUSTYPE for assignment_response

typedef enum  { sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_NULL = 0, sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE__NEW, sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_IN_PROGRESS, sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_SUBSCRIBED, sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_ARCHIVED } sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e;

char* assignment_response_current_status_type_ToString(sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e current_status_type);

sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e assignment_response_current_status_type_FromString(char* current_status_type);



typedef struct assignment_response_t {
    long assignment_id; //numeric
    char *name; // string
    char *description; // string
    int active; //boolean
    long created; //numeric
    long updated; //numeric
    struct account_short_response_t *assignee; //model
    struct account_short_response_t *creator; //model
    struct account_short_response_t *last_reported_by; //model
    struct retailer_location_short_response_t *location; //model
    struct assignment_status_response_t *current_status; //model
    sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e current_status_type; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} assignment_response_t;

__attribute__((deprecated)) assignment_response_t *assignment_response_create(
    long assignment_id,
    char *name,
    char *description,
    int active,
    long created,
    long updated,
    account_short_response_t *assignee,
    account_short_response_t *creator,
    account_short_response_t *last_reported_by,
    retailer_location_short_response_t *location,
    assignment_status_response_t *current_status,
    sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e current_status_type
);

void assignment_response_free(assignment_response_t *assignment_response);

assignment_response_t *assignment_response_parseFromJSON(cJSON *assignment_responseJSON);

cJSON *assignment_response_convertToJSON(assignment_response_t *assignment_response);

#endif /* _assignment_response_H_ */

