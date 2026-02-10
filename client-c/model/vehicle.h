/*
 * vehicle.h
 *
 * 
 */

#ifndef _vehicle_H_
#define _vehicle_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct vehicle_t vehicle_t;

#include "account.h"
#include "asset.h"
#include "note.h"
#include "program.h"
#include "region.h"
#include "service_hub.h"
#include "vehicle_type.h"



typedef struct vehicle_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *description; // string
    struct vehicle_type_t *vehicle_type; //model
    char *vin; // string
    char *license_plate_number; // string
    char *external_id; // string
    struct service_hub_t *hub; //model
    list_t *programs; //nonprimitive container
    long seat_quantity; //numeric
    struct asset_t *picture; //model
    struct asset_t *marker_icon; //model
    char *tracking_color; // string
    struct account_t *belongs_to; //model
    struct region_t *zone; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    int in_use; //boolean
    char *content_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} vehicle_t;

__attribute__((deprecated)) vehicle_t *vehicle_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    vehicle_type_t *vehicle_type,
    char *vin,
    char *license_plate_number,
    char *external_id,
    service_hub_t *hub,
    list_t *programs,
    long seat_quantity,
    asset_t *picture,
    asset_t *marker_icon,
    char *tracking_color,
    account_t *belongs_to,
    region_t *zone,
    list_t *notes,
    long note_count,
    int in_use,
    char *content_name
);

void vehicle_free(vehicle_t *vehicle);

vehicle_t *vehicle_parseFromJSON(cJSON *vehicleJSON);

cJSON *vehicle_convertToJSON(vehicle_t *vehicle);

#endif /* _vehicle_H_ */

