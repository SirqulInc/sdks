/*
 * availability_response.h
 *
 * 
 */

#ifndef _availability_response_H_
#define _availability_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct availability_response_t availability_response_t;




typedef struct availability_response_t {
    long availability_id; //numeric
    long start_date; //numeric
    long end_date; //numeric
    int day_of_week; //numeric
    long start_time; //numeric
    long end_time; //numeric
    char *time_zone; // string
    int deleted; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} availability_response_t;

__attribute__((deprecated)) availability_response_t *availability_response_create(
    long availability_id,
    long start_date,
    long end_date,
    int day_of_week,
    long start_time,
    long end_time,
    char *time_zone,
    int deleted
);

void availability_response_free(availability_response_t *availability_response);

availability_response_t *availability_response_parseFromJSON(cJSON *availability_responseJSON);

cJSON *availability_response_convertToJSON(availability_response_t *availability_response);

#endif /* _availability_response_H_ */

