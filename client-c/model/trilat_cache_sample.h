/*
 * trilat_cache_sample.h
 *
 * 
 */

#ifndef _trilat_cache_sample_H_
#define _trilat_cache_sample_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct trilat_cache_sample_t trilat_cache_sample_t;


// Enum PROBETYPE for trilat_cache_sample

typedef enum  { sirqul_iot_platform_trilat_cache_sample_PROBETYPE_NULL = 0, sirqul_iot_platform_trilat_cache_sample_PROBETYPE_WIFI_PROBE_REQUEST, sirqul_iot_platform_trilat_cache_sample_PROBETYPE_IBEACON, sirqul_iot_platform_trilat_cache_sample_PROBETYPE_BLE, sirqul_iot_platform_trilat_cache_sample_PROBETYPE_UNKNOWN } sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e;

char* trilat_cache_sample_probe_type_ToString(sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e probe_type);

sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e trilat_cache_sample_probe_type_FromString(char* probe_type);



typedef struct trilat_cache_sample_t {
    char *avatar_id; // string
    char *device_id; // string
    list_t *rssi; //primitive container
    double filtered_rssi; //numeric
    long time; //numeric
    char *network_name; // string
    int randomized_id; //boolean
    char *device_signature; // string
    char *alternate_id; // string
    char *type; // string
    sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e probe_type; //enum
    double avg_rssi; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} trilat_cache_sample_t;

__attribute__((deprecated)) trilat_cache_sample_t *trilat_cache_sample_create(
    char *avatar_id,
    char *device_id,
    list_t *rssi,
    double filtered_rssi,
    long time,
    char *network_name,
    int randomized_id,
    char *device_signature,
    char *alternate_id,
    char *type,
    sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e probe_type,
    double avg_rssi
);

void trilat_cache_sample_free(trilat_cache_sample_t *trilat_cache_sample);

trilat_cache_sample_t *trilat_cache_sample_parseFromJSON(cJSON *trilat_cache_sampleJSON);

cJSON *trilat_cache_sample_convertToJSON(trilat_cache_sample_t *trilat_cache_sample);

#endif /* _trilat_cache_sample_H_ */

