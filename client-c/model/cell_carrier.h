/*
 * cell_carrier.h
 *
 * 
 */

#ifndef _cell_carrier_H_
#define _cell_carrier_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cell_carrier_t cell_carrier_t;




typedef struct cell_carrier_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *uid; // string
    char *display; // string
    char *email_format; // string
    char *api_url; // string
    char *auth_url; // string
    char *short_code; // string
    char *client_id; // string
    char *client_secret; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cell_carrier_t;

__attribute__((deprecated)) cell_carrier_t *cell_carrier_create(
    long id,
    int active,
    int valid,
    char *uid,
    char *display,
    char *email_format,
    char *api_url,
    char *auth_url,
    char *short_code,
    char *client_id,
    char *client_secret
);

void cell_carrier_free(cell_carrier_t *cell_carrier);

cell_carrier_t *cell_carrier_parseFromJSON(cJSON *cell_carrierJSON);

cJSON *cell_carrier_convertToJSON(cell_carrier_t *cell_carrier);

#endif /* _cell_carrier_H_ */

