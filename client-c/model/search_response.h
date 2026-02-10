/*
 * search_response.h
 *
 * 
 */

#ifndef _search_response_H_
#define _search_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct search_response_t search_response_t;

#include "name_string_value_response.h"
#include "object.h"



typedef struct search_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    int count; //numeric
    int has_more_results; //boolean
    long count_total; //numeric
    long start; //numeric
    long limit; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} search_response_t;

__attribute__((deprecated)) search_response_t *search_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int count,
    int has_more_results,
    long count_total,
    long start,
    long limit,
    char *returning
);

void search_response_free(search_response_t *search_response);

search_response_t *search_response_parseFromJSON(cJSON *search_responseJSON);

cJSON *search_response_convertToJSON(search_response_t *search_response);

#endif /* _search_response_H_ */

