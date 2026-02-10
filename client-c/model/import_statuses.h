/*
 * import_statuses.h
 *
 * 
 */

#ifndef _import_statuses_H_
#define _import_statuses_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct import_statuses_t import_statuses_t;

#include "shipment_import_status.h"



typedef struct import_statuses_t {
    list_t *statuses; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} import_statuses_t;

__attribute__((deprecated)) import_statuses_t *import_statuses_create(
    list_t *statuses
);

void import_statuses_free(import_statuses_t *import_statuses);

import_statuses_t *import_statuses_parseFromJSON(cJSON *import_statusesJSON);

cJSON *import_statuses_convertToJSON(import_statuses_t *import_statuses);

#endif /* _import_statuses_H_ */

