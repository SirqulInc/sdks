/*
 * purchase_item_list_response.h
 *
 * 
 */

#ifndef _purchase_item_list_response_H_
#define _purchase_item_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct purchase_item_list_response_t purchase_item_list_response_t;

#include "name_string_value_response.h"
#include "purchase_item_response.h"



typedef struct purchase_item_list_response_t {
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
    int start; //numeric
    int limit; //numeric
    long count_total; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} purchase_item_list_response_t;

__attribute__((deprecated)) purchase_item_list_response_t *purchase_item_list_response_create(
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
    int start,
    int limit,
    long count_total,
    char *returning
);

void purchase_item_list_response_free(purchase_item_list_response_t *purchase_item_list_response);

purchase_item_list_response_t *purchase_item_list_response_parseFromJSON(cJSON *purchase_item_list_responseJSON);

cJSON *purchase_item_list_response_convertToJSON(purchase_item_list_response_t *purchase_item_list_response);

#endif /* _purchase_item_list_response_H_ */

