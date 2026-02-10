/*
 * biometric_image.h
 *
 * 
 */

#ifndef _biometric_image_H_
#define _biometric_image_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct biometric_image_t biometric_image_t;


// Enum POSITION for biometric_image

typedef enum  { sirqul_iot_platform_biometric_image_POSITION_NULL = 0, sirqul_iot_platform_biometric_image_POSITION_UNKNOWN, sirqul_iot_platform_biometric_image_POSITION_LEFT_INDEX, sirqul_iot_platform_biometric_image_POSITION_LEFT_MIDDLE, sirqul_iot_platform_biometric_image_POSITION_LEFT_RING, sirqul_iot_platform_biometric_image_POSITION_LEFT_LITTLE, sirqul_iot_platform_biometric_image_POSITION_LEFT_THUMB, sirqul_iot_platform_biometric_image_POSITION_RIGHT_INDEX, sirqul_iot_platform_biometric_image_POSITION_RIGHT_MIDDLE, sirqul_iot_platform_biometric_image_POSITION_RIGHT_RING, sirqul_iot_platform_biometric_image_POSITION_RIGHT_LITTLE, sirqul_iot_platform_biometric_image_POSITION_RIGHT_THUMB, sirqul_iot_platform_biometric_image_POSITION_LEFT, sirqul_iot_platform_biometric_image_POSITION_RIGHT } sirqul_iot_platform_biometric_image_POSITION_e;

char* biometric_image_position_ToString(sirqul_iot_platform_biometric_image_POSITION_e position);

sirqul_iot_platform_biometric_image_POSITION_e biometric_image_position_FromString(char* position);



typedef struct biometric_image_t {
    sirqul_iot_platform_biometric_image_POSITION_e position; //enum
    char *data; // string

    int _library_owned; // Is the library responsible for freeing this object?
} biometric_image_t;

__attribute__((deprecated)) biometric_image_t *biometric_image_create(
    sirqul_iot_platform_biometric_image_POSITION_e position,
    char *data
);

void biometric_image_free(biometric_image_t *biometric_image);

biometric_image_t *biometric_image_parseFromJSON(cJSON *biometric_imageJSON);

cJSON *biometric_image_convertToJSON(biometric_image_t *biometric_image);

#endif /* _biometric_image_H_ */

