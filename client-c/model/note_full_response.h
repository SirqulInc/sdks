/*
 * note_full_response.h
 *
 * 
 */

#ifndef _note_full_response_H_
#define _note_full_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct note_full_response_t note_full_response_t;

#include "account_short_response.h"
#include "asset_short_response.h"
#include "like_response.h"
#include "name_string_value_response.h"



typedef struct note_full_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long note_id; //numeric
    char *comment; // string
    char *tags; // string
    long likes_count; //numeric
    long dislikes_count; //numeric
    long date_created; //numeric
    long created_date; //numeric
    long updated_date; //numeric
    struct account_short_response_t *owner; //model
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    list_t *attached_assets; //nonprimitive container
    list_t *likes; //nonprimitive container
    int has_liked; //boolean
    int has_disliked; //boolean
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} note_full_response_t;

__attribute__((deprecated)) note_full_response_t *note_full_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long note_id,
    char *comment,
    char *tags,
    long likes_count,
    long dislikes_count,
    long date_created,
    long created_date,
    long updated_date,
    account_short_response_t *owner,
    double latitude,
    double longitude,
    char *location_description,
    list_t *attached_assets,
    list_t *likes,
    int has_liked,
    int has_disliked,
    char *returning
);

void note_full_response_free(note_full_response_t *note_full_response);

note_full_response_t *note_full_response_parseFromJSON(cJSON *note_full_responseJSON);

cJSON *note_full_response_convertToJSON(note_full_response_t *note_full_response);

#endif /* _note_full_response_H_ */

