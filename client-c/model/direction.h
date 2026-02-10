/*
 * direction.h
 *
 * 
 */

#ifndef _direction_H_
#define _direction_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct direction_t direction_t;


// Enum PROGRESSSTATUS for direction

typedef enum  { sirqul_iot_platform_direction_PROGRESSSTATUS_NULL = 0, sirqul_iot_platform_direction_PROGRESSSTATUS_PENDING, sirqul_iot_platform_direction_PROGRESSSTATUS_COMPLETE, sirqul_iot_platform_direction_PROGRESSSTATUS_INVALID } sirqul_iot_platform_direction_PROGRESSSTATUS_e;

char* direction_progress_status_ToString(sirqul_iot_platform_direction_PROGRESSSTATUS_e progress_status);

sirqul_iot_platform_direction_PROGRESSSTATUS_e direction_progress_status_FromString(char* progress_status);



typedef struct direction_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *distance; // string
    char *duration; // string
    double end_latitude; //numeric
    double end_longitude; //numeric
    double start_latitude; //numeric
    double start_longitude; //numeric
    char *instruction; // string
    char *polyline; // string
    sirqul_iot_platform_direction_PROGRESSSTATUS_e progress_status; //enum
    int highlight; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} direction_t;

__attribute__((deprecated)) direction_t *direction_create(
    long id,
    int active,
    int valid,
    char *distance,
    char *duration,
    double end_latitude,
    double end_longitude,
    double start_latitude,
    double start_longitude,
    char *instruction,
    char *polyline,
    sirqul_iot_platform_direction_PROGRESSSTATUS_e progress_status,
    int highlight
);

void direction_free(direction_t *direction);

direction_t *direction_parseFromJSON(cJSON *directionJSON);

cJSON *direction_convertToJSON(direction_t *direction);

#endif /* _direction_H_ */

