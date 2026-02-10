/*
 * report_response.h
 *
 * 
 */

#ifndef _report_response_H_
#define _report_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct report_response_t report_response_t;

#include "name_string_value_response.h"
#include "object.h"
#include "report_type_response.h"



typedef struct report_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *columns; //nonprimitive container
    list_t *rows; //primitive container
    list_t* summations; //map
    long count; //numeric
    char *query_name; // string
    int has_more; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} report_response_t;

__attribute__((deprecated)) report_response_t *report_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *columns,
    list_t *rows,
    list_t* summations,
    long count,
    char *query_name,
    int has_more,
    char *returning
);

void report_response_free(report_response_t *report_response);

report_response_t *report_response_parseFromJSON(cJSON *report_responseJSON);

cJSON *report_response_convertToJSON(report_response_t *report_response);

#endif /* _report_response_H_ */

