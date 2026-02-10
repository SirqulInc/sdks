/*
 * yay_or_nay.h
 *
 * 
 */

#ifndef _yay_or_nay_H_
#define _yay_or_nay_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct yay_or_nay_t yay_or_nay_t;

#include "account.h"



typedef struct yay_or_nay_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    int yay_or_nay; //boolean
    char *likable_object_type; // string
    long likable_object_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} yay_or_nay_t;

__attribute__((deprecated)) yay_or_nay_t *yay_or_nay_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    int yay_or_nay,
    char *likable_object_type,
    long likable_object_id
);

void yay_or_nay_free(yay_or_nay_t *yay_or_nay);

yay_or_nay_t *yay_or_nay_parseFromJSON(cJSON *yay_or_nayJSON);

cJSON *yay_or_nay_convertToJSON(yay_or_nay_t *yay_or_nay);

#endif /* _yay_or_nay_H_ */

