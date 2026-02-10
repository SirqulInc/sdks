/*
 * connection_response.h
 *
 * 
 */

#ifndef _connection_response_H_
#define _connection_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct connection_response_t connection_response_t;




typedef struct connection_response_t {
    long connection_id; //numeric
    char *connection_account_id; // string
    char *connection_pending_id; // string
    char *display; // string
    char *location_display; // string
    long connection_viewed_date; //numeric
    char *profile_image; // string
    char *title; // string
    char *connection_account_type; // string
    int trusted; //boolean
    int following; //boolean
    int friend_requested; //boolean
    int friend_request_pending; //boolean
    int blocked; //boolean
    int _friend; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} connection_response_t;

__attribute__((deprecated)) connection_response_t *connection_response_create(
    long connection_id,
    char *connection_account_id,
    char *connection_pending_id,
    char *display,
    char *location_display,
    long connection_viewed_date,
    char *profile_image,
    char *title,
    char *connection_account_type,
    int trusted,
    int following,
    int friend_requested,
    int friend_request_pending,
    int blocked,
    int _friend
);

void connection_response_free(connection_response_t *connection_response);

connection_response_t *connection_response_parseFromJSON(cJSON *connection_responseJSON);

cJSON *connection_response_convertToJSON(connection_response_t *connection_response);

#endif /* _connection_response_H_ */

