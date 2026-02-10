/*
 * account_mini_response.h
 *
 * 
 */

#ifndef _account_mini_response_H_
#define _account_mini_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_mini_response_t account_mini_response_t;




typedef struct account_mini_response_t {
    long account_id; //numeric
    char *location_display; // string
    char *display; // string
    char *username; // string
    char *account_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} account_mini_response_t;

__attribute__((deprecated)) account_mini_response_t *account_mini_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type
);

void account_mini_response_free(account_mini_response_t *account_mini_response);

account_mini_response_t *account_mini_response_parseFromJSON(cJSON *account_mini_responseJSON);

cJSON *account_mini_response_convertToJSON(account_mini_response_t *account_mini_response);

#endif /* _account_mini_response_H_ */

