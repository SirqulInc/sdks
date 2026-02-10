/*
 * trilat_app_settings.h
 *
 * 
 */

#ifndef _trilat_app_settings_H_
#define _trilat_app_settings_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct trilat_app_settings_t trilat_app_settings_t;


// Enum PROCESSINGTYPE for trilat_app_settings

typedef enum  { sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_NULL = 0, sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE__DEFAULT, sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_FINGERPRINT, sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_FINGERPRINT_V2 } sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e;

char* trilat_app_settings_processing_type_ToString(sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e processing_type);

sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e trilat_app_settings_processing_type_FromString(char* processing_type);



typedef struct trilat_app_settings_t {
    sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e processing_type; //enum
    int max_sample_size; //numeric
    double min_rssi; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} trilat_app_settings_t;

__attribute__((deprecated)) trilat_app_settings_t *trilat_app_settings_create(
    sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e processing_type,
    int max_sample_size,
    double min_rssi
);

void trilat_app_settings_free(trilat_app_settings_t *trilat_app_settings);

trilat_app_settings_t *trilat_app_settings_parseFromJSON(cJSON *trilat_app_settingsJSON);

cJSON *trilat_app_settings_convertToJSON(trilat_app_settings_t *trilat_app_settings);

#endif /* _trilat_app_settings_H_ */

