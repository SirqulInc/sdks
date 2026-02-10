/*
 * step_response.h
 *
 * 
 */

#ifndef _step_response_H_
#define _step_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct step_response_t step_response_t;

#include "leg_response.h"



typedef struct step_response_t {
    struct leg_response_t *leg; //model
    double distance; //numeric
    long duration; //numeric
    double start_lat; //numeric
    double start_lng; //numeric
    double start_alt; //numeric
    long start_date; //numeric
    double end_lat; //numeric
    double end_lng; //numeric
    double end_alt; //numeric
    long end_date; //numeric
    int accuracy; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} step_response_t;

__attribute__((deprecated)) step_response_t *step_response_create(
    leg_response_t *leg,
    double distance,
    long duration,
    double start_lat,
    double start_lng,
    double start_alt,
    long start_date,
    double end_lat,
    double end_lng,
    double end_alt,
    long end_date,
    int accuracy
);

void step_response_free(step_response_t *step_response);

step_response_t *step_response_parseFromJSON(cJSON *step_responseJSON);

cJSON *step_response_convertToJSON(step_response_t *step_response);

#endif /* _step_response_H_ */

