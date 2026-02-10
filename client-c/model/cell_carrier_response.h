/*
 * cell_carrier_response.h
 *
 * 
 */

#ifndef _cell_carrier_response_H_
#define _cell_carrier_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct cell_carrier_response_t cell_carrier_response_t;




typedef struct cell_carrier_response_t {
    long id; //numeric
    char *uid; // string
    char *display; // string

    int _library_owned; // Is the library responsible for freeing this object?
} cell_carrier_response_t;

__attribute__((deprecated)) cell_carrier_response_t *cell_carrier_response_create(
    long id,
    char *uid,
    char *display
);

void cell_carrier_response_free(cell_carrier_response_t *cell_carrier_response);

cell_carrier_response_t *cell_carrier_response_parseFromJSON(cJSON *cell_carrier_responseJSON);

cJSON *cell_carrier_response_convertToJSON(cell_carrier_response_t *cell_carrier_response);

#endif /* _cell_carrier_response_H_ */

