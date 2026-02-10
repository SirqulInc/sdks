/*
 * connected_friend.h
 *
 * 
 */

#ifndef _connected_friend_H_
#define _connected_friend_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct connected_friend_t connected_friend_t;

#include "asset.h"



typedef struct connected_friend_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *display; // string
    struct asset_t *avatar; //model
    char *avatar_url; // string
    char *platform; // string
    char *platform_id; // string
    int invited; //boolean
    char *location_description; // string

    int _library_owned; // Is the library responsible for freeing this object?
} connected_friend_t;

__attribute__((deprecated)) connected_friend_t *connected_friend_create(
    long id,
    int active,
    int valid,
    char *display,
    asset_t *avatar,
    char *avatar_url,
    char *platform,
    char *platform_id,
    int invited,
    char *location_description
);

void connected_friend_free(connected_friend_t *connected_friend);

connected_friend_t *connected_friend_parseFromJSON(cJSON *connected_friendJSON);

cJSON *connected_friend_convertToJSON(connected_friend_t *connected_friend);

#endif /* _connected_friend_H_ */

