/*
 * blocked_notification_response.h
 *
 * 
 */

#ifndef _blocked_notification_response_H_
#define _blocked_notification_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct blocked_notification_response_t blocked_notification_response_t;




typedef struct blocked_notification_response_t {
    long blocked_notification_id; //numeric
    long created; //numeric
    char *event; // string
    char *conduit; // string
    char *custom_type; // string
    char *content_type; // string
    long content_id; //numeric
    char *search_tags; // string
    int blocked; //boolean
    int deleted; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} blocked_notification_response_t;

__attribute__((deprecated)) blocked_notification_response_t *blocked_notification_response_create(
    long blocked_notification_id,
    long created,
    char *event,
    char *conduit,
    char *custom_type,
    char *content_type,
    long content_id,
    char *search_tags,
    int blocked,
    int deleted
);

void blocked_notification_response_free(blocked_notification_response_t *blocked_notification_response);

blocked_notification_response_t *blocked_notification_response_parseFromJSON(cJSON *blocked_notification_responseJSON);

cJSON *blocked_notification_response_convertToJSON(blocked_notification_response_t *blocked_notification_response);

#endif /* _blocked_notification_response_H_ */

