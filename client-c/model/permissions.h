/*
 * permissions.h
 *
 * 
 */

#ifndef _permissions_H_
#define _permissions_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct permissions_t permissions_t;




typedef struct permissions_t {
    int read; //boolean
    int write; //boolean
    int _delete; //boolean
    int add; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} permissions_t;

__attribute__((deprecated)) permissions_t *permissions_create(
    int read,
    int write,
    int _delete,
    int add
);

void permissions_free(permissions_t *permissions);

permissions_t *permissions_parseFromJSON(cJSON *permissionsJSON);

cJSON *permissions_convertToJSON(permissions_t *permissions);

#endif /* _permissions_H_ */

