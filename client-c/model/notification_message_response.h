/*
 * notification_message_response.h
 *
 * 
 */

#ifndef _notification_message_response_H_
#define _notification_message_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct notification_message_response_t notification_message_response_t;

#include "account_short_response.h"



typedef struct notification_message_response_t {
    struct account_short_response_t *sender; //model
    char *event; // string
    char *notification_message; // string
    long created; //numeric
    int has_read; //boolean
    long content_id; //numeric
    char *content_type; // string
    char *content_name; // string
    long parent_id; //numeric
    char *parent_type; // string
    char *action_category; // string
    char *thumbnail_url; // string
    char *cover_url; // string

    int _library_owned; // Is the library responsible for freeing this object?
} notification_message_response_t;

__attribute__((deprecated)) notification_message_response_t *notification_message_response_create(
    account_short_response_t *sender,
    char *event,
    char *notification_message,
    long created,
    int has_read,
    long content_id,
    char *content_type,
    char *content_name,
    long parent_id,
    char *parent_type,
    char *action_category,
    char *thumbnail_url,
    char *cover_url
);

void notification_message_response_free(notification_message_response_t *notification_message_response);

notification_message_response_t *notification_message_response_parseFromJSON(cJSON *notification_message_responseJSON);

cJSON *notification_message_response_convertToJSON(notification_message_response_t *notification_message_response);

#endif /* _notification_message_response_H_ */

