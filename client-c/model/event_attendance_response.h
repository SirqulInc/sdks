/*
 * event_attendance_response.h
 *
 * 
 */

#ifndef _event_attendance_response_H_
#define _event_attendance_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct event_attendance_response_t event_attendance_response_t;

#include "account_short_response.h"
#include "category_response.h"
#include "offer_short_response.h"



typedef struct event_attendance_response_t {
    struct offer_short_response_t *event; //model
    list_t *affiliated_categories; //nonprimitive container
    struct account_short_response_t *attendee; //model
    int _friend; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} event_attendance_response_t;

__attribute__((deprecated)) event_attendance_response_t *event_attendance_response_create(
    offer_short_response_t *event,
    list_t *affiliated_categories,
    account_short_response_t *attendee,
    int _friend
);

void event_attendance_response_free(event_attendance_response_t *event_attendance_response);

event_attendance_response_t *event_attendance_response_parseFromJSON(cJSON *event_attendance_responseJSON);

cJSON *event_attendance_response_convertToJSON(event_attendance_response_t *event_attendance_response);

#endif /* _event_attendance_response_H_ */

