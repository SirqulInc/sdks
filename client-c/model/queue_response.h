/*
 * queue_response.h
 *
 * 
 */

#ifndef _queue_response_H_
#define _queue_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct queue_response_t queue_response_t;




typedef struct queue_response_t {
    long queue_id; //numeric
    char *name; // string
    char *host; // string
    int port; //numeric
    char *username; // string
    char *password; // string
    char *virtual_host; // string
    int workers; //numeric
    char *exchanger; // string
    char *exchanger_type; // string
    int handle_delivery; //boolean
    char *data_mapping; // string
    char *analytic_tags; // string

    int _library_owned; // Is the library responsible for freeing this object?
} queue_response_t;

__attribute__((deprecated)) queue_response_t *queue_response_create(
    long queue_id,
    char *name,
    char *host,
    int port,
    char *username,
    char *password,
    char *virtual_host,
    int workers,
    char *exchanger,
    char *exchanger_type,
    int handle_delivery,
    char *data_mapping,
    char *analytic_tags
);

void queue_response_free(queue_response_t *queue_response);

queue_response_t *queue_response_parseFromJSON(cJSON *queue_responseJSON);

cJSON *queue_response_convertToJSON(queue_response_t *queue_response);

#endif /* _queue_response_H_ */

