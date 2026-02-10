/*
 * list_count_response.h
 *
 * 
 */

#ifndef _list_count_response_H_
#define _list_count_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct list_count_response_t list_count_response_t;

#include "name_string_value_response.h"



typedef struct list_count_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long location_offers_count; //numeric
    long instant_offers_count; //numeric
    long all_offers_count; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} list_count_response_t;

__attribute__((deprecated)) list_count_response_t *list_count_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long location_offers_count,
    long instant_offers_count,
    long all_offers_count,
    char *returning
);

void list_count_response_free(list_count_response_t *list_count_response);

list_count_response_t *list_count_response_parseFromJSON(cJSON *list_count_responseJSON);

cJSON *list_count_response_convertToJSON(list_count_response_t *list_count_response);

#endif /* _list_count_response_H_ */

