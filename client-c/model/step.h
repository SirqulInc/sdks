/*
 * step.h
 *
 * 
 */

#ifndef _step_H_
#define _step_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct step_t step_t;

#include "account.h"
#include "leg.h"



typedef struct step_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    char *device_id; // string
    struct leg_t *leg; //model
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

    int _library_owned; // Is the library responsible for freeing this object?
} step_t;

__attribute__((deprecated)) step_t *step_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *device_id,
    leg_t *leg,
    double distance,
    long duration,
    double start_latitude,
    double start_longitude,
    double start_altitude,
    char *start_date,
    double end_latitude,
    double end_longitude,
    double end_altitude,
    char *end_date
);

void step_free(step_t *step);

step_t *step_parseFromJSON(cJSON *stepJSON);

cJSON *step_convertToJSON(step_t *step);

#endif /* _step_H_ */

