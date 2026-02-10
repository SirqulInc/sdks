/*
 * contact_info_response.h
 *
 * 
 */

#ifndef _contact_info_response_H_
#define _contact_info_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct contact_info_response_t contact_info_response_t;

#include "address_response.h"
#include "cell_carrier_response.h"



typedef struct contact_info_response_t {
    char *home_phone; // string
    char *cell_phone; // string
    char *cell_phone_carrier; // string
    char *business_phone; // string
    char *business_phone_ext; // string
    char *fax_number; // string
    char *time_zone; // string
    char *utc_offset; // string
    char *code501c3; // string
    char *email_address; // string
    struct address_response_t *address; //model
    char *web; // string
    struct cell_carrier_response_t *cell_carrier; //model

    int _library_owned; // Is the library responsible for freeing this object?
} contact_info_response_t;

__attribute__((deprecated)) contact_info_response_t *contact_info_response_create(
    char *home_phone,
    char *cell_phone,
    char *cell_phone_carrier,
    char *business_phone,
    char *business_phone_ext,
    char *fax_number,
    char *time_zone,
    char *utc_offset,
    char *code501c3,
    char *email_address,
    address_response_t *address,
    char *web,
    cell_carrier_response_t *cell_carrier
);

void contact_info_response_free(contact_info_response_t *contact_info_response);

contact_info_response_t *contact_info_response_parseFromJSON(cJSON *contact_info_responseJSON);

cJSON *contact_info_response_convertToJSON(contact_info_response_t *contact_info_response);

#endif /* _contact_info_response_H_ */

