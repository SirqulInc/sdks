#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "device.h"


char* device_health_ToString(sirqul_iot_platform_device_HEALTH_e health) {
    char* healthArray[] =  { "NULL", "RUNNING", "WARNING", "DOWN" };
    return healthArray[health];
}

sirqul_iot_platform_device_HEALTH_e device_health_FromString(char* health){
    int stringToReturn = 0;
    char *healthArray[] =  { "NULL", "RUNNING", "WARNING", "DOWN" };
    size_t sizeofArray = sizeof(healthArray) / sizeof(healthArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(health, healthArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static device_t *device_create_internal(
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
    ) {
    device_t *device_local_var = malloc(sizeof(device_t));
    if (!device_local_var) {
        return NULL;
    }
    device_local_var->reboot_time_hour = reboot_time_hour;
    device_local_var->reboot_time_minute = reboot_time_minute;
    device_local_var->idle_timeout_in_second = idle_timeout_in_second;
    device_local_var->serial_number = serial_number;
    device_local_var->udid = udid;
    device_local_var->device_type = device_type;
    device_local_var->device_power = device_power;
    device_local_var->device_interference = device_interference;
    device_local_var->last_heartbeat_sent = last_heartbeat_sent;
    device_local_var->last_down = last_down;
    device_local_var->last_up = last_up;
    device_local_var->last_notification_sent = last_notification_sent;
    device_local_var->health = health;

    device_local_var->_library_owned = 1;
    return device_local_var;
}

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
    ) {
    return device_create_internal (
        reboot_time_hour,
        reboot_time_minute,
        idle_timeout_in_second,
        serial_number,
        udid,
        device_type,
        device_power,
        device_interference,
        last_heartbeat_sent,
        last_down,
        last_up,
        last_notification_sent,
        health
        );
}

void device_free(device_t *device) {
    if(NULL == device){
        return ;
    }
    if(device->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "device_free");
        return ;
    }
    listEntry_t *listEntry;
    if (device->serial_number) {
        free(device->serial_number);
        device->serial_number = NULL;
    }
    if (device->udid) {
        free(device->udid);
        device->udid = NULL;
    }
    if (device->device_type) {
        free(device->device_type);
        device->device_type = NULL;
    }
    if (device->last_heartbeat_sent) {
        free(device->last_heartbeat_sent);
        device->last_heartbeat_sent = NULL;
    }
    if (device->last_down) {
        free(device->last_down);
        device->last_down = NULL;
    }
    if (device->last_up) {
        free(device->last_up);
        device->last_up = NULL;
    }
    if (device->last_notification_sent) {
        free(device->last_notification_sent);
        device->last_notification_sent = NULL;
    }
    free(device);
}

cJSON *device_convertToJSON(device_t *device) {
    cJSON *item = cJSON_CreateObject();

    // device->reboot_time_hour
    if(device->reboot_time_hour) {
    if(cJSON_AddNumberToObject(item, "rebootTimeHour", device->reboot_time_hour) == NULL) {
    goto fail; //Numeric
    }
    }


    // device->reboot_time_minute
    if(device->reboot_time_minute) {
    if(cJSON_AddNumberToObject(item, "rebootTimeMinute", device->reboot_time_minute) == NULL) {
    goto fail; //Numeric
    }
    }


    // device->idle_timeout_in_second
    if(device->idle_timeout_in_second) {
    if(cJSON_AddNumberToObject(item, "idleTimeoutInSecond", device->idle_timeout_in_second) == NULL) {
    goto fail; //Numeric
    }
    }


    // device->serial_number
    if(device->serial_number) {
    if(cJSON_AddStringToObject(item, "serialNumber", device->serial_number) == NULL) {
    goto fail; //String
    }
    }


    // device->udid
    if(device->udid) {
    if(cJSON_AddStringToObject(item, "udid", device->udid) == NULL) {
    goto fail; //String
    }
    }


    // device->device_type
    if(device->device_type) {
    if(cJSON_AddStringToObject(item, "deviceType", device->device_type) == NULL) {
    goto fail; //String
    }
    }


    // device->device_power
    if(device->device_power) {
    if(cJSON_AddNumberToObject(item, "devicePower", device->device_power) == NULL) {
    goto fail; //Numeric
    }
    }


    // device->device_interference
    if(device->device_interference) {
    if(cJSON_AddNumberToObject(item, "deviceInterference", device->device_interference) == NULL) {
    goto fail; //Numeric
    }
    }


    // device->last_heartbeat_sent
    if(device->last_heartbeat_sent) {
    if(cJSON_AddStringToObject(item, "lastHeartbeatSent", device->last_heartbeat_sent) == NULL) {
    goto fail; //Date-Time
    }
    }


    // device->last_down
    if(device->last_down) {
    if(cJSON_AddStringToObject(item, "lastDown", device->last_down) == NULL) {
    goto fail; //Date-Time
    }
    }


    // device->last_up
    if(device->last_up) {
    if(cJSON_AddStringToObject(item, "lastUp", device->last_up) == NULL) {
    goto fail; //Date-Time
    }
    }


    // device->last_notification_sent
    if(device->last_notification_sent) {
    if(cJSON_AddStringToObject(item, "lastNotificationSent", device->last_notification_sent) == NULL) {
    goto fail; //Date-Time
    }
    }


    // device->health
    if(device->health != sirqul_iot_platform_device_HEALTH_NULL) {
    if(cJSON_AddStringToObject(item, "health", device_health_ToString(device->health)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

device_t *device_parseFromJSON(cJSON *deviceJSON){

    device_t *device_local_var = NULL;

    // device->reboot_time_hour
    cJSON *reboot_time_hour = cJSON_GetObjectItemCaseSensitive(deviceJSON, "rebootTimeHour");
    if (cJSON_IsNull(reboot_time_hour)) {
        reboot_time_hour = NULL;
    }
    if (reboot_time_hour) { 
    if(!cJSON_IsNumber(reboot_time_hour))
    {
    goto end; //Numeric
    }
    }

    // device->reboot_time_minute
    cJSON *reboot_time_minute = cJSON_GetObjectItemCaseSensitive(deviceJSON, "rebootTimeMinute");
    if (cJSON_IsNull(reboot_time_minute)) {
        reboot_time_minute = NULL;
    }
    if (reboot_time_minute) { 
    if(!cJSON_IsNumber(reboot_time_minute))
    {
    goto end; //Numeric
    }
    }

    // device->idle_timeout_in_second
    cJSON *idle_timeout_in_second = cJSON_GetObjectItemCaseSensitive(deviceJSON, "idleTimeoutInSecond");
    if (cJSON_IsNull(idle_timeout_in_second)) {
        idle_timeout_in_second = NULL;
    }
    if (idle_timeout_in_second) { 
    if(!cJSON_IsNumber(idle_timeout_in_second))
    {
    goto end; //Numeric
    }
    }

    // device->serial_number
    cJSON *serial_number = cJSON_GetObjectItemCaseSensitive(deviceJSON, "serialNumber");
    if (cJSON_IsNull(serial_number)) {
        serial_number = NULL;
    }
    if (serial_number) { 
    if(!cJSON_IsString(serial_number) && !cJSON_IsNull(serial_number))
    {
    goto end; //String
    }
    }

    // device->udid
    cJSON *udid = cJSON_GetObjectItemCaseSensitive(deviceJSON, "udid");
    if (cJSON_IsNull(udid)) {
        udid = NULL;
    }
    if (udid) { 
    if(!cJSON_IsString(udid) && !cJSON_IsNull(udid))
    {
    goto end; //String
    }
    }

    // device->device_type
    cJSON *device_type = cJSON_GetObjectItemCaseSensitive(deviceJSON, "deviceType");
    if (cJSON_IsNull(device_type)) {
        device_type = NULL;
    }
    if (device_type) { 
    if(!cJSON_IsString(device_type) && !cJSON_IsNull(device_type))
    {
    goto end; //String
    }
    }

    // device->device_power
    cJSON *device_power = cJSON_GetObjectItemCaseSensitive(deviceJSON, "devicePower");
    if (cJSON_IsNull(device_power)) {
        device_power = NULL;
    }
    if (device_power) { 
    if(!cJSON_IsNumber(device_power))
    {
    goto end; //Numeric
    }
    }

    // device->device_interference
    cJSON *device_interference = cJSON_GetObjectItemCaseSensitive(deviceJSON, "deviceInterference");
    if (cJSON_IsNull(device_interference)) {
        device_interference = NULL;
    }
    if (device_interference) { 
    if(!cJSON_IsNumber(device_interference))
    {
    goto end; //Numeric
    }
    }

    // device->last_heartbeat_sent
    cJSON *last_heartbeat_sent = cJSON_GetObjectItemCaseSensitive(deviceJSON, "lastHeartbeatSent");
    if (cJSON_IsNull(last_heartbeat_sent)) {
        last_heartbeat_sent = NULL;
    }
    if (last_heartbeat_sent) { 
    if(!cJSON_IsString(last_heartbeat_sent) && !cJSON_IsNull(last_heartbeat_sent))
    {
    goto end; //DateTime
    }
    }

    // device->last_down
    cJSON *last_down = cJSON_GetObjectItemCaseSensitive(deviceJSON, "lastDown");
    if (cJSON_IsNull(last_down)) {
        last_down = NULL;
    }
    if (last_down) { 
    if(!cJSON_IsString(last_down) && !cJSON_IsNull(last_down))
    {
    goto end; //DateTime
    }
    }

    // device->last_up
    cJSON *last_up = cJSON_GetObjectItemCaseSensitive(deviceJSON, "lastUp");
    if (cJSON_IsNull(last_up)) {
        last_up = NULL;
    }
    if (last_up) { 
    if(!cJSON_IsString(last_up) && !cJSON_IsNull(last_up))
    {
    goto end; //DateTime
    }
    }

    // device->last_notification_sent
    cJSON *last_notification_sent = cJSON_GetObjectItemCaseSensitive(deviceJSON, "lastNotificationSent");
    if (cJSON_IsNull(last_notification_sent)) {
        last_notification_sent = NULL;
    }
    if (last_notification_sent) { 
    if(!cJSON_IsString(last_notification_sent) && !cJSON_IsNull(last_notification_sent))
    {
    goto end; //DateTime
    }
    }

    // device->health
    cJSON *health = cJSON_GetObjectItemCaseSensitive(deviceJSON, "health");
    if (cJSON_IsNull(health)) {
        health = NULL;
    }
    sirqul_iot_platform_device_HEALTH_e healthVariable;
    if (health) { 
    if(!cJSON_IsString(health))
    {
    goto end; //Enum
    }
    healthVariable = device_health_FromString(health->valuestring);
    }


    device_local_var = device_create_internal (
        reboot_time_hour ? reboot_time_hour->valuedouble : 0,
        reboot_time_minute ? reboot_time_minute->valuedouble : 0,
        idle_timeout_in_second ? idle_timeout_in_second->valuedouble : 0,
        serial_number && !cJSON_IsNull(serial_number) ? strdup(serial_number->valuestring) : NULL,
        udid && !cJSON_IsNull(udid) ? strdup(udid->valuestring) : NULL,
        device_type && !cJSON_IsNull(device_type) ? strdup(device_type->valuestring) : NULL,
        device_power ? device_power->valuedouble : 0,
        device_interference ? device_interference->valuedouble : 0,
        last_heartbeat_sent && !cJSON_IsNull(last_heartbeat_sent) ? strdup(last_heartbeat_sent->valuestring) : NULL,
        last_down && !cJSON_IsNull(last_down) ? strdup(last_down->valuestring) : NULL,
        last_up && !cJSON_IsNull(last_up) ? strdup(last_up->valuestring) : NULL,
        last_notification_sent && !cJSON_IsNull(last_notification_sent) ? strdup(last_notification_sent->valuestring) : NULL,
        health ? healthVariable : sirqul_iot_platform_device_HEALTH_NULL
        );

    return device_local_var;
end:
    return NULL;

}
