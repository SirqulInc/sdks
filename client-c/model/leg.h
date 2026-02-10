/*
 * leg.h
 *
 * 
 */

#ifndef _leg_H_
#define _leg_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct leg_t leg_t;

#include "account.h"
#include "application.h"
#include "step.h"



typedef struct leg_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    struct account_t *parent_owner; //model
    struct application_t *application; //model
    char *device_id; // string
    double distance; //numeric
    long duration; //numeric
    double start_latitude; //numeric
    double start_longitude; //numeric
    double start_altitude; //numeric
    char *start_date; //date time
    double end_latitude; //numeric
    double end_longitude; //numeric
    double end_altitude; //numeric
    char *end_date; //date time
    char *type; // string
    long retailer_location_id; //numeric
    char *floor_id; // string
    list_t *steps; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} leg_t;

__attribute__((deprecated)) leg_t *leg_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    account_t *parent_owner,
    application_t *application,
    char *device_id,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    char *start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    char *end_date,
    char *type,
    long retailer_location_id,
    char *floor_id,
    list_t *steps
);

void leg_free(leg_t *leg);

leg_t *leg_parseFromJSON(cJSON *legJSON);

cJSON *leg_convertToJSON(leg_t *leg);

#endif /* _leg_H_ */

