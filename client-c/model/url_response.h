/*
 * url_response.h
 *
 * 
 */

#ifndef _url_response_H_
#define _url_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct url_response_t url_response_t;

#include "asset_short_response.h"



typedef struct url_response_t {
    char *url; // string
    struct asset_short_response_t *asset; //model

    int _library_owned; // Is the library responsible for freeing this object?
} url_response_t;

__attribute__((deprecated)) url_response_t *url_response_create(
    char *url,
    asset_short_response_t *asset
);

void url_response_free(url_response_t *url_response);

url_response_t *url_response_parseFromJSON(cJSON *url_responseJSON);

cJSON *url_response_convertToJSON(url_response_t *url_response);

#endif /* _url_response_H_ */

