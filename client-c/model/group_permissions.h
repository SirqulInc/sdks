/*
 * group_permissions.h
 *
 * 
 */

#ifndef _group_permissions_H_
#define _group_permissions_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct group_permissions_t group_permissions_t;




typedef struct group_permissions_t {
    int can_view_profile_info; //boolean
    int can_view_game_info; //boolean
    int can_view_friend_info; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} group_permissions_t;

__attribute__((deprecated)) group_permissions_t *group_permissions_create(
    int can_view_profile_info,
    int can_view_game_info,
    int can_view_friend_info
);

void group_permissions_free(group_permissions_t *group_permissions);

group_permissions_t *group_permissions_parseFromJSON(cJSON *group_permissionsJSON);

cJSON *group_permissions_convertToJSON(group_permissions_t *group_permissions);

#endif /* _group_permissions_H_ */

