/*
 * report_batch_response.h
 *
 * 
 */

#ifndef _report_batch_response_H_
#define _report_batch_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct report_batch_response_t report_batch_response_t;

#include "name_string_value_response.h"

// Enum REPORTBATCHSTATUS for report_batch_response

typedef enum  { sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_NULL = 0, sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS__NEW, sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_ERROR, sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_COMPLETE, sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_PARSE_ERROR, sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_PROCESSING, sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_DUPLICATE, sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_SAVEONLY } sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e;

char* report_batch_response_report_batch_status_ToString(sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_status);

sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_response_report_batch_status_FromString(char* report_batch_status);



typedef struct report_batch_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long batch_id; //numeric
    sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_status; //enum
    char *error_message; // string
    char *endpoint; // string
    char *page_url; // string
    char *name; // string
    char *description; // string
    long created; //numeric
    long updated; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} report_batch_response_t;

__attribute__((deprecated)) report_batch_response_t *report_batch_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long batch_id,
    sirqul_iot_platform_report_batch_response_REPORTBATCHSTATUS_e report_batch_status,
    char *error_message,
    char *endpoint,
    char *page_url,
    char *name,
    char *description,
    long created,
    long updated,
    char *returning
);

void report_batch_response_free(report_batch_response_t *report_batch_response);

report_batch_response_t *report_batch_response_parseFromJSON(cJSON *report_batch_responseJSON);

cJSON *report_batch_response_convertToJSON(report_batch_response_t *report_batch_response);

#endif /* _report_batch_response_H_ */

