/*
 * shipment_import_status.h
 *
 * 
 */

#ifndef _shipment_import_status_H_
#define _shipment_import_status_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct shipment_import_status_t shipment_import_status_t;

#include "shipment.h"



typedef struct shipment_import_status_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *batch_id; // string
    char *message; // string
    struct shipment_t *shipment; //model
    char *started; //date time
    char *completed; //date time

    int _library_owned; // Is the library responsible for freeing this object?
} shipment_import_status_t;

__attribute__((deprecated)) shipment_import_status_t *shipment_import_status_create(
    long id,
    int active,
    int valid,
    char *name,
    char *batch_id,
    char *message,
    shipment_t *shipment,
    char *started,
    char *completed
);

void shipment_import_status_free(shipment_import_status_t *shipment_import_status);

shipment_import_status_t *shipment_import_status_parseFromJSON(cJSON *shipment_import_statusJSON);

cJSON *shipment_import_status_convertToJSON(shipment_import_status_t *shipment_import_status);

#endif /* _shipment_import_status_H_ */

