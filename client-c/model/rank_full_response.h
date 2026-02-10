/*
 * rank_full_response.h
 *
 * 
 */

#ifndef _rank_full_response_H_
#define _rank_full_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rank_full_response_t rank_full_response_t;

#include "name_string_value_response.h"
#include "rank_list_response.h"



typedef struct rank_full_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    list_t *rankings; //nonprimitive container
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} rank_full_response_t;

__attribute__((deprecated)) rank_full_response_t *rank_full_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    list_t *rankings,
    char *returning
);

void rank_full_response_free(rank_full_response_t *rank_full_response);

rank_full_response_t *rank_full_response_parseFromJSON(cJSON *rank_full_responseJSON);

cJSON *rank_full_response_convertToJSON(rank_full_response_t *rank_full_response);

#endif /* _rank_full_response_H_ */

