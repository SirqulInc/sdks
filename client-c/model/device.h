/*
 * device.h
 *
 * 
 */

#ifndef _device_H_
#define _device_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct device_t device_t;


// Enum HEALTH for device

typedef enum  { sirqul_iot_platform_device_HEALTH_NULL = 0, sirqul_iot_platform_device_HEALTH_RUNNING, sirqul_iot_platform_device_HEALTH_WARNING, sirqul_iot_platform_device_HEALTH_DOWN } sirqul_iot_platform_device_HEALTH_e;

char* device_health_ToString(sirqul_iot_platform_device_HEALTH_e health);

sirqul_iot_platform_device_HEALTH_e device_health_FromString(char* health);



typedef struct device_t {
    int reboot_time_hour; //numeric
    int reboot_time_minute; //numeric
    int idle_timeout_in_second; //numeric
    char *serial_number; // string
    char *udid; // string
    char *device_type; // string
    double device_power; //numeric
    double device_interference; //numeric
    char *last_heartbeat_sent; //date time
    char *last_down; //date time
    char *last_up; //date time
    char *last_notification_sent; //date time
    sirqul_iot_platform_device_HEALTH_e health; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} device_t;

__attribute__((deprecated)) device_t *device_create(
    int reboot_time_hour,
    int reboot_time_minute,
    int idle_timeout_in_second,
    char *serial_number,
    char *udid,
    char *device_type,
    double device_power,
    double device_interference,
    char *last_heartbeat_sent,
    char *last_down,
    char *last_up,
    char *last_notification_sent,
    sirqul_iot_platform_device_HEALTH_e health
);

void device_free(device_t *device);

device_t *device_parseFromJSON(cJSON *deviceJSON);

cJSON *device_convertToJSON(device_t *device);

#endif /* _device_H_ */

