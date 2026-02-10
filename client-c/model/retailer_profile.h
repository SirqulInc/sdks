/*
 * retailer_profile.h
 *
 * 
 */

#ifndef _retailer_profile_H_
#define _retailer_profile_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_profile_t retailer_profile_t;

#include "address.h"
#include "cell_carrier.h"



typedef struct retailer_profile_t {
    char *details_header; // string
    char *details_body; // string
    char *details_line_left1; // string
    char *details_line_left2; // string
    char *details_line_right1; // string
    char *meta_description; // string
    char *directions; // string
    char *hours; // string
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
    int featured; //boolean
    int listed; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_profile_t;

__attribute__((deprecated)) retailer_profile_t *retailer_profile_create(
    char *details_header,
    char *details_body,
    char *details_line_left1,
    char *details_line_left2,
    char *details_line_right1,
    char *meta_description,
    char *directions,
    char *hours,
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
    int featured,
    int listed
);

void retailer_profile_free(retailer_profile_t *retailer_profile);

retailer_profile_t *retailer_profile_parseFromJSON(cJSON *retailer_profileJSON);

cJSON *retailer_profile_convertToJSON(retailer_profile_t *retailer_profile);

#endif /* _retailer_profile_H_ */

