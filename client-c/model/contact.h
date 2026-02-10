/*
 * contact.h
 *
 * 
 */

#ifndef _contact_H_
#define _contact_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct contact_t contact_t;

#include "address.h"
#include "cell_carrier.h"



typedef struct contact_t {
    char *first_name; // string
    char *middle_name; // string
    char *last_name; // string
    char *prefix; // string
    char *suffix; // string
    char *title; // string
    char *home_phone; // string
    char *cell_phone; // string
    struct cell_carrier_t *cell_carrier; //model
    char *business_phone; // string
    char *business_phone_ext; // string
    char *fax_number; // string
    char *time_zone; // string
    char *utc_offset; // string
    char *code501c3; // string
    char *email_address; // string
    struct address_t *address; //model
    char *web; // string
    char *display; // string

    int _library_owned; // Is the library responsible for freeing this object?
} contact_t;

__attribute__((deprecated)) contact_t *contact_create(
    char *first_name,
    char *middle_name,
    char *last_name,
    char *prefix,
    char *suffix,
    char *title,
    char *home_phone,
    char *cell_phone,
    cell_carrier_t *cell_carrier,
    char *business_phone,
    char *business_phone_ext,
    char *fax_number,
    char *time_zone,
    char *utc_offset,
    char *code501c3,
    char *email_address,
    address_t *address,
    char *web,
    char *display
);

void contact_free(contact_t *contact);

contact_t *contact_parseFromJSON(cJSON *contactJSON);

cJSON *contact_convertToJSON(contact_t *contact);

#endif /* _contact_H_ */

