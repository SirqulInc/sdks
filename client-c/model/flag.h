/*
 * flag.h
 *
 * 
 */

#ifndef _flag_H_
#define _flag_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct flag_t flag_t;

#include "account.h"



typedef struct flag_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    char *flagable_object_type; // string
    long flagable_object_id; //numeric
    char *flag_description; // string
    char *app; // string

    int _library_owned; // Is the library responsible for freeing this object?
} flag_t;

__attribute__((deprecated)) flag_t *flag_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *flagable_object_type,
    long flagable_object_id,
    char *flag_description,
    char *app
);

void flag_free(flag_t *flag);

flag_t *flag_parseFromJSON(cJSON *flagJSON);

cJSON *flag_convertToJSON(flag_t *flag);

#endif /* _flag_H_ */

