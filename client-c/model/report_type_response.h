/*
 * report_type_response.h
 *
 * 
 */

#ifndef _report_type_response_H_
#define _report_type_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct report_type_response_t report_type_response_t;




typedef struct report_type_response_t {
    char *type; // string
    char *java_type; // string
    char *label; // string
    int number; //boolean
    int major_axis; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} report_type_response_t;

__attribute__((deprecated)) report_type_response_t *report_type_response_create(
    char *type,
    char *java_type,
    char *label,
    int number,
    int major_axis
);

void report_type_response_free(report_type_response_t *report_type_response);

report_type_response_t *report_type_response_parseFromJSON(cJSON *report_type_responseJSON);

cJSON *report_type_response_convertToJSON(report_type_response_t *report_type_response);

#endif /* _report_type_response_H_ */

