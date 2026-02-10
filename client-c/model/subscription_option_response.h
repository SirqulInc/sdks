/*
 * subscription_option_response.h
 *
 * 
 */

#ifndef _subscription_option_response_H_
#define _subscription_option_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct subscription_option_response_t subscription_option_response_t;




typedef struct subscription_option_response_t {
    long id; //numeric
    char *name; // string
    double price; //numeric
    int quantity; //numeric
    int threshold; //numeric
    int visible; //boolean
    char *option_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} subscription_option_response_t;

__attribute__((deprecated)) subscription_option_response_t *subscription_option_response_create(
    long id,
    char *name,
    double price,
    int quantity,
    int threshold,
    int visible,
    char *option_type
);

void subscription_option_response_free(subscription_option_response_t *subscription_option_response);

subscription_option_response_t *subscription_option_response_parseFromJSON(cJSON *subscription_option_responseJSON);

cJSON *subscription_option_response_convertToJSON(subscription_option_response_t *subscription_option_response);

#endif /* _subscription_option_response_H_ */

