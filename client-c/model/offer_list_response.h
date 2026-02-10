/*
 * offer_list_response.h
 *
 * 
 */

#ifndef _offer_list_response_H_
#define _offer_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct offer_list_response_t offer_list_response_t;

#include "name_string_value_response.h"
#include "offer_response.h"



typedef struct offer_list_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *items; //nonprimitive container
    int has_more_results; //boolean
    int count; //numeric
    int start; //numeric
    int limit; //numeric
    long count_total; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} offer_list_response_t;

__attribute__((deprecated)) offer_list_response_t *offer_list_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *items,
    int has_more_results,
    int count,
    int start,
    int limit,
    long count_total,
    char *returning
);

void offer_list_response_free(offer_list_response_t *offer_list_response);

offer_list_response_t *offer_list_response_parseFromJSON(cJSON *offer_list_responseJSON);

cJSON *offer_list_response_convertToJSON(offer_list_response_t *offer_list_response);

#endif /* _offer_list_response_H_ */

