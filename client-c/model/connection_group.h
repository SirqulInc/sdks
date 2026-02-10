/*
 * connection_group.h
 *
 * 
 */

#ifndef _connection_group_H_
#define _connection_group_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct connection_group_t connection_group_t;

#include "account.h"
#include "asset.h"
#include "connection.h"
#include "group_permissions.h"



typedef struct connection_group_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    char *name; // string
    char *description; // string
    list_t *connections; //nonprimitive container
    struct group_permissions_t *permissions; //model
    struct asset_t *image; //model
    list_t *sub_groups; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} connection_group_t;

__attribute__((deprecated)) connection_group_t *connection_group_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *name,
    char *description,
    list_t *connections,
    group_permissions_t *permissions,
    asset_t *image,
    list_t *sub_groups
);

void connection_group_free(connection_group_t *connection_group);

connection_group_t *connection_group_parseFromJSON(cJSON *connection_groupJSON);

cJSON *connection_group_convertToJSON(connection_group_t *connection_group);

#endif /* _connection_group_H_ */

