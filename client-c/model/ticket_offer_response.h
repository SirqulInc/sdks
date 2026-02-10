/*
 * ticket_offer_response.h
 *
 * 
 */

#ifndef _ticket_offer_response_H_
#define _ticket_offer_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct ticket_offer_response_t ticket_offer_response_t;




typedef struct ticket_offer_response_t {
    long id; //numeric
    char *title; // string
    char *description; // string
    char *image_url; // string
    char *retailer; // string

    int _library_owned; // Is the library responsible for freeing this object?
} ticket_offer_response_t;

__attribute__((deprecated)) ticket_offer_response_t *ticket_offer_response_create(
    long id,
    char *title,
    char *description,
    char *image_url,
    char *retailer
);

void ticket_offer_response_free(ticket_offer_response_t *ticket_offer_response);

ticket_offer_response_t *ticket_offer_response_parseFromJSON(cJSON *ticket_offer_responseJSON);

cJSON *ticket_offer_response_convertToJSON(ticket_offer_response_t *ticket_offer_response);

#endif /* _ticket_offer_response_H_ */

