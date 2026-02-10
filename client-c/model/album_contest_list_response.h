/*
 * album_contest_list_response.h
 *
 * 
 */

#ifndef _album_contest_list_response_H_
#define _album_contest_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct album_contest_list_response_t album_contest_list_response_t;

#include "album_contest_response.h"
#include "name_string_value_response.h"



typedef struct album_contest_list_response_t {
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
    long count_total; //numeric
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} album_contest_list_response_t;

__attribute__((deprecated)) album_contest_list_response_t *album_contest_list_response_create(
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
    long count_total,
    char *returning
);

void album_contest_list_response_free(album_contest_list_response_t *album_contest_list_response);

album_contest_list_response_t *album_contest_list_response_parseFromJSON(cJSON *album_contest_list_responseJSON);

cJSON *album_contest_list_response_convertToJSON(album_contest_list_response_t *album_contest_list_response);

#endif /* _album_contest_list_response_H_ */

