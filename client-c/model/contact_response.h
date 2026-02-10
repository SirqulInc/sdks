/*
 * contact_response.h
 *
 * 
 */

#ifndef _contact_response_H_
#define _contact_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct contact_response_t contact_response_t;

#include "contact_info_response.h"



typedef struct contact_response_t {
    char *first_name; // string
    char *middle_name; // string
    char *last_name; // string
    char *prefix; // string
    char *suffix; // string
    char *title; // string
    struct contact_info_response_t *contact_info; //model

    int _library_owned; // Is the library responsible for freeing this object?
} contact_response_t;

__attribute__((deprecated)) contact_response_t *contact_response_create(
    char *first_name,
    char *middle_name,
    char *last_name,
    char *prefix,
    char *suffix,
    char *title,
    contact_info_response_t *contact_info
);

void contact_response_free(contact_response_t *contact_response);

contact_response_t *contact_response_parseFromJSON(cJSON *contact_responseJSON);

cJSON *contact_response_convertToJSON(contact_response_t *contact_response);

#endif /* _contact_response_H_ */

