/*
 * connection.h
 *
 * 
 */

#ifndef _connection_H_
#define _connection_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct connection_t connection_t;

#include "account.h"
#include "connected_friend.h"

// Enum CONNECTIONTYPE for connection

typedef enum  { sirqul_iot_platform_connection_CONNECTIONTYPE_NULL = 0, sirqul_iot_platform_connection_CONNECTIONTYPE_PRIMARY, sirqul_iot_platform_connection_CONNECTIONTYPE_SECONDARY, sirqul_iot_platform_connection_CONNECTIONTYPE_DEPENDENT, sirqul_iot_platform_connection_CONNECTIONTYPE_ACQUAINTANCE } sirqul_iot_platform_connection_CONNECTIONTYPE_e;

char* connection_connection_type_ToString(sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_type);

sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_connection_type_FromString(char* connection_type);



typedef struct connection_t {
    long id; //numeric
    char *created; //date time
    char *updated; //date time
    char *deleted; //date time
    char *object_type; // string
    char *legacy_id; // string
    char *search_tags; // string
    int active; //boolean
    int valid; //boolean
    struct account_t *account; //model
    struct account_t *connection; //model
    struct connected_friend_t *pending_connection; //model
    int _friend; //boolean
    int friend_requested; //boolean
    int friend_request_pending; //boolean
    int following; //boolean
    int follower; //boolean
    int trusted; //boolean
    int blocked; //boolean
    char *friend_request_date; //date time
    char *friend_response_date; //date time
    char *display; // string
    char *connection_viewed_date; //date time
    sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_type; //enum
    char *title; // string
    long pending_connection_id; //numeric
    double latitude; //numeric
    double longitude; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} connection_t;

__attribute__((deprecated)) connection_t *connection_create(
    long id,
    char *created,
    char *updated,
    char *deleted,
    char *object_type,
    char *legacy_id,
    char *search_tags,
    int active,
    int valid,
    account_t *account,
    account_t *connection,
    connected_friend_t *pending_connection,
    int _friend,
    int friend_requested,
    int friend_request_pending,
    int following,
    int follower,
    int trusted,
    int blocked,
    char *friend_request_date,
    char *friend_response_date,
    char *display,
    char *connection_viewed_date,
    sirqul_iot_platform_connection_CONNECTIONTYPE_e connection_type,
    char *title,
    long pending_connection_id,
    double latitude,
    double longitude
);

void connection_free(connection_t *connection);

connection_t *connection_parseFromJSON(cJSON *connectionJSON);

cJSON *connection_convertToJSON(connection_t *connection);

#endif /* _connection_H_ */

