/*
 * mission_task.h
 *
 * 
 */

#ifndef _mission_task_H_
#define _mission_task_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mission_task_t mission_task_t;


// Enum TASKTYPE for mission_task

typedef enum  { sirqul_iot_platform_mission_task_TASKTYPE_NULL = 0, sirqul_iot_platform_mission_task_TASKTYPE_PHOTO, sirqul_iot_platform_mission_task_TASKTYPE_VOTE, sirqul_iot_platform_mission_task_TASKTYPE_ASK, sirqul_iot_platform_mission_task_TASKTYPE_ANSWER, sirqul_iot_platform_mission_task_TASKTYPE_GROUP, sirqul_iot_platform_mission_task_TASKTYPE_INVITE, sirqul_iot_platform_mission_task_TASKTYPE_OFFER, sirqul_iot_platform_mission_task_TASKTYPE_AD, sirqul_iot_platform_mission_task_TASKTYPE_CUSTOM, sirqul_iot_platform_mission_task_TASKTYPE_GAME } sirqul_iot_platform_mission_task_TASKTYPE_e;

char* mission_task_task_type_ToString(sirqul_iot_platform_mission_task_TASKTYPE_e task_type);

sirqul_iot_platform_mission_task_TASKTYPE_e mission_task_task_type_FromString(char* task_type);



typedef struct mission_task_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *description; // string
    char *format; // string
    char *suffix; // string
    sirqul_iot_platform_mission_task_TASKTYPE_e task_type; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} mission_task_t;

__attribute__((deprecated)) mission_task_t *mission_task_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    char *format,
    char *suffix,
    sirqul_iot_platform_mission_task_TASKTYPE_e task_type
);

void mission_task_free(mission_task_t *mission_task);

mission_task_t *mission_task_parseFromJSON(cJSON *mission_taskJSON);

cJSON *mission_task_convertToJSON(mission_task_t *mission_task);

#endif /* _mission_task_H_ */

