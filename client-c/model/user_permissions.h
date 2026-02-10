/*
 * user_permissions.h
 *
 * 
 */

#ifndef _user_permissions_H_
#define _user_permissions_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_permissions_t user_permissions_t;

#include "account.h"
#include "connection.h"
#include "connection_group.h"
#include "permissions.h"



typedef struct user_permissions_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *permissionable_type; // string
    long permissionable_id; //numeric
    struct connection_group_t *connection_group; //model
    int friend_group; //boolean
    struct connection_t *connection; //model
    struct permissions_t *permissions; //model
    int exclude; //boolean
    int blocked; //boolean
    struct account_t *owner; //model

    int _library_owned; // Is the library responsible for freeing this object?
} user_permissions_t;

__attribute__((deprecated)) user_permissions_t *user_permissions_create(
    long id,
    int active,
    int valid,
    char *permissionable_type,
    long permissionable_id,
    connection_group_t *connection_group,
    int friend_group,
    connection_t *connection,
    permissions_t *permissions,
    int exclude,
    int blocked,
    account_t *owner
);

void user_permissions_free(user_permissions_t *user_permissions);

user_permissions_t *user_permissions_parseFromJSON(cJSON *user_permissionsJSON);

cJSON *user_permissions_convertToJSON(user_permissions_t *user_permissions);

#endif /* _user_permissions_H_ */

