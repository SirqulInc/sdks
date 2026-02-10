/*
 * time_slot_response.h
 *
 * 
 */

#ifndef _time_slot_response_H_
#define _time_slot_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct time_slot_response_t time_slot_response_t;

#include "account_short_response.h"



typedef struct time_slot_response_t {
    long scheduled_date; //numeric
    long start_time; //numeric
    long end_time; //numeric
    int day_of_week; //numeric
    char *time_zone; // string
    int reservation_count; //numeric
    list_t *reservations; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} time_slot_response_t;

__attribute__((deprecated)) time_slot_response_t *time_slot_response_create(
    long scheduled_date,
    long start_time,
    long end_time,
    int day_of_week,
    char *time_zone,
    int reservation_count,
    list_t *reservations
);

void time_slot_response_free(time_slot_response_t *time_slot_response);

time_slot_response_t *time_slot_response_parseFromJSON(cJSON *time_slot_responseJSON);

cJSON *time_slot_response_convertToJSON(time_slot_response_t *time_slot_response);

#endif /* _time_slot_response_H_ */

