/*
 * note.h
 *
 * 
 */

#ifndef _note_H_
#define _note_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct note_t note_t;

#include "account.h"
#include "asset.h"
#include "flag.h"
#include "flag_threshold.h"
#include "yay_or_nay.h"



typedef struct note_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    struct account_t *owner; //model
    char *notable_type; // string
    long notable_id; //numeric
    char *note_tag; // string
    list_t *notes; //nonprimitive container
    list_t *likes; //nonprimitive container
    list_t *assets; //nonprimitive container
    char *note_description; // string
    long like_count; //numeric
    long dislike_count; //numeric
    long note_count; //numeric
    list_t *flags; //nonprimitive container
    long flag_count; //numeric
    struct flag_threshold_t *flag_threshold; //model
    char *content_name; // string
    long default_threshold; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} note_t;

__attribute__((deprecated)) note_t *note_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *notable_type,
    long notable_id,
    char *note_tag,
    list_t *notes,
    list_t *likes,
    list_t *assets,
    char *note_description,
    long like_count,
    long dislike_count,
    long note_count,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    char *content_name,
    long default_threshold
);

void note_free(note_t *note);

note_t *note_parseFromJSON(cJSON *noteJSON);

cJSON *note_convertToJSON(note_t *note);

#endif /* _note_H_ */

