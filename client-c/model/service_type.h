/*
 * service_type.h
 *
 * 
 */

#ifndef _service_type_H_
#define _service_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct service_type_t service_type_t;

#include "address.h"
#include "local_time.h"
#include "retailer.h"
#include "service_hub.h"

// Enum DATEOVERRIDE for service_type

typedef enum  { sirqul_iot_platform_service_type_DATEOVERRIDE_NULL = 0, sirqul_iot_platform_service_type_DATEOVERRIDE_NONE, sirqul_iot_platform_service_type_DATEOVERRIDE_PICKUP_START, sirqul_iot_platform_service_type_DATEOVERRIDE_PICKUP_END, sirqul_iot_platform_service_type_DATEOVERRIDE_DROPOFF_START, sirqul_iot_platform_service_type_DATEOVERRIDE_DROPOFF_END } sirqul_iot_platform_service_type_DATEOVERRIDE_e;

char* service_type_date_override_ToString(sirqul_iot_platform_service_type_DATEOVERRIDE_e date_override);

sirqul_iot_platform_service_type_DATEOVERRIDE_e service_type_date_override_FromString(char* date_override);



typedef struct service_type_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct retailer_t *business; //model
    struct service_hub_t *hub; //model
    char *name; // string
    long additional_load_time; //numeric
    struct address_t *pickup_address_override; //model
    struct address_t *dropoff_address_override; //model
    struct local_time_t *pickup_start_time_override; //model
    struct local_time_t *pickup_end_time_override; //model
    struct local_time_t *dropoff_start_time_override; //model
    struct local_time_t *dropoff_end_time_override; //model
    sirqul_iot_platform_service_type_DATEOVERRIDE_e date_override; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} service_type_t;

__attribute__((deprecated)) service_type_t *service_type_create(
    long id,
    int active,
    int valid,
    retailer_t *business,
    service_hub_t *hub,
    char *name,
    long additional_load_time,
    address_t *pickup_address_override,
    address_t *dropoff_address_override,
    local_time_t *pickup_start_time_override,
    local_time_t *pickup_end_time_override,
    local_time_t *dropoff_start_time_override,
    local_time_t *dropoff_end_time_override,
    sirqul_iot_platform_service_type_DATEOVERRIDE_e date_override
);

void service_type_free(service_type_t *service_type);

service_type_t *service_type_parseFromJSON(cJSON *service_typeJSON);

cJSON *service_type_convertToJSON(service_type_t *service_type);

#endif /* _service_type_H_ */

