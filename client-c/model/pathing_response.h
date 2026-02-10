/*
 * pathing_response.h
 *
 * 
 */

#ifndef _pathing_response_H_
#define _pathing_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pathing_response_t pathing_response_t;

#include "direction_response.h"
#include "node_request.h"



typedef struct pathing_response_t {
    struct node_request_t *start; //model
    struct node_request_t *end; //model
    list_t *waypoints; //nonprimitive container
    list_t *exclusions; //nonprimitive container
    int width; //numeric
    int height; //numeric
    struct node_request_t *southwest; //model
    struct node_request_t *northeast; //model
    double meters_per_x; //numeric
    double meters_per_y; //numeric
    list_t *path; //nonprimitive container
    int path_count; //numeric
    list_t *directions; //nonprimitive container
    int direction_count; //numeric
    struct node_request_t *swcalibration; //model
    double calibration_bearings; //numeric
    struct node_request_t *necalibration; //model

    int _library_owned; // Is the library responsible for freeing this object?
} pathing_response_t;

__attribute__((deprecated)) pathing_response_t *pathing_response_create(
    node_request_t *start,
    node_request_t *end,
    list_t *waypoints,
    list_t *exclusions,
    int width,
    int height,
    node_request_t *southwest,
    node_request_t *northeast,
    double meters_per_x,
    double meters_per_y,
    list_t *path,
    int path_count,
    list_t *directions,
    int direction_count,
    node_request_t *swcalibration,
    double calibration_bearings,
    node_request_t *necalibration
);

void pathing_response_free(pathing_response_t *pathing_response);

pathing_response_t *pathing_response_parseFromJSON(cJSON *pathing_responseJSON);

cJSON *pathing_response_convertToJSON(pathing_response_t *pathing_response);

#endif /* _pathing_response_H_ */

