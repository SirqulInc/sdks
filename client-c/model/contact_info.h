/*
 * contact_info.h
 *
 * 
 */

#ifndef _contact_info_H_
#define _contact_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct contact_info_t contact_info_t;

#include "address.h"
#include "cell_carrier.h"



typedef struct contact_info_t {
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

    int _library_owned; // Is the library responsible for freeing this object?
} contact_info_t;

__attribute__((deprecated)) contact_info_t *contact_info_create(
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
    char *web
);

void contact_info_free(contact_info_t *contact_info);

contact_info_t *contact_info_parseFromJSON(cJSON *contact_infoJSON);

cJSON *contact_info_convertToJSON(contact_info_t *contact_info);

#endif /* _contact_info_H_ */

