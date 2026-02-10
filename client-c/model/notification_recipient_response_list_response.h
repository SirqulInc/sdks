/*
 * notification_recipient_response_list_response.h
 *
 * 
 */

#ifndef _notification_recipient_response_list_response_H_
#define _notification_recipient_response_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct notification_recipient_response_list_response_t notification_recipient_response_list_response_t;

#include "object.h"



typedef struct notification_recipient_response_list_response_t {
    list_t *items; //nonprimitive container
    int count; //numeric
    int start_index_audiences; //numeric
    int start_index_groups; //numeric
    long total; //numeric
    long count_audiences; //numeric
    long count_groups; //numeric
    int has_more_results; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} notification_recipient_response_list_response_t;

__attribute__((deprecated)) notification_recipient_response_list_response_t *notification_recipient_response_list_response_create(
    list_t *items,
    int count,
    int start_index_audiences,
    int start_index_groups,
    long total,
    long count_audiences,
    long count_groups,
    int has_more_results
);

void notification_recipient_response_list_response_free(notification_recipient_response_list_response_t *notification_recipient_response_list_response);

notification_recipient_response_list_response_t *notification_recipient_response_list_response_parseFromJSON(cJSON *notification_recipient_response_list_responseJSON);

cJSON *notification_recipient_response_list_response_convertToJSON(notification_recipient_response_list_response_t *notification_recipient_response_list_response);

#endif /* _notification_recipient_response_list_response_H_ */

