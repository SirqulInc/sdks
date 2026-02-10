/*
 * retailer_count_response.h
 *
 * 
 */

#ifndef _retailer_count_response_H_
#define _retailer_count_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_count_response_t retailer_count_response_t;




typedef struct retailer_count_response_t {
    int locations; //numeric
    int transactions; //numeric
    int offers; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_count_response_t;

__attribute__((deprecated)) retailer_count_response_t *retailer_count_response_create(
    int locations,
    int transactions,
    int offers
);

void retailer_count_response_free(retailer_count_response_t *retailer_count_response);

retailer_count_response_t *retailer_count_response_parseFromJSON(cJSON *retailer_count_responseJSON);

cJSON *retailer_count_response_convertToJSON(retailer_count_response_t *retailer_count_response);

#endif /* _retailer_count_response_H_ */

