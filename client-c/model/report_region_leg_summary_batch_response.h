/*
 * report_region_leg_summary_batch_response.h
 *
 * 
 */

#ifndef _report_region_leg_summary_batch_response_H_
#define _report_region_leg_summary_batch_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct report_region_leg_summary_batch_response_t report_region_leg_summary_batch_response_t;

#include "name_string_value_response.h"



typedef struct report_region_leg_summary_batch_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long success_count; //numeric
    long failure_count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} report_region_leg_summary_batch_response_t;

__attribute__((deprecated)) report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long success_count,
    long failure_count,
    char *returning
);

void report_region_leg_summary_batch_response_free(report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response);

report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response_parseFromJSON(cJSON *report_region_leg_summary_batch_responseJSON);

cJSON *report_region_leg_summary_batch_response_convertToJSON(report_region_leg_summary_batch_response_t *report_region_leg_summary_batch_response);

#endif /* _report_region_leg_summary_batch_response_H_ */

