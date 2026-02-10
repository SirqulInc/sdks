/*
 * media.h
 *
 * 
 */

#ifndef _media_H_
#define _media_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct media_t media_t;

#include "album.h"

// Enum MEDIATYPE for media

typedef enum  { sirqul_iot_platform_media_MEDIATYPE_NULL = 0, sirqul_iot_platform_media_MEDIATYPE_APK, sirqul_iot_platform_media_MEDIATYPE_APPLICATION, sirqul_iot_platform_media_MEDIATYPE_IMAGE, sirqul_iot_platform_media_MEDIATYPE_AUDIO, sirqul_iot_platform_media_MEDIATYPE_VIDEO, sirqul_iot_platform_media_MEDIATYPE_MULTIPART, sirqul_iot_platform_media_MEDIATYPE_BAR_CODE, sirqul_iot_platform_media_MEDIATYPE_TEXT, sirqul_iot_platform_media_MEDIATYPE_OTHER } sirqul_iot_platform_media_MEDIATYPE_e;

char* media_media_type_ToString(sirqul_iot_platform_media_MEDIATYPE_e media_type);

sirqul_iot_platform_media_MEDIATYPE_e media_media_type_FromString(char* media_type);

// Enum CONDITION for media

typedef enum  { sirqul_iot_platform_media_CONDITION_NULL = 0, sirqul_iot_platform_media_CONDITION__NEW, sirqul_iot_platform_media_CONDITION_USED, sirqul_iot_platform_media_CONDITION_REFURBISHED, sirqul_iot_platform_media_CONDITION_OTHER } sirqul_iot_platform_media_CONDITION_e;

char* media_condition_ToString(sirqul_iot_platform_media_CONDITION_e condition);

sirqul_iot_platform_media_CONDITION_e media_condition_FromString(char* condition);



typedef struct media_t {
    sirqul_iot_platform_media_MEDIATYPE_e media_type; //enum
    sirqul_iot_platform_media_CONDITION_e condition; //enum
    char *isbn; // string
    char *asin; // string
    list_t *catalog_numbers; //primitive container
    int duration; //numeric
    char *author; // string
    long release_date; //numeric
    long availability_date; //numeric
    char *parental_rating; // string
    list_t *collections; //nonprimitive container
    int collection_count; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} media_t;

__attribute__((deprecated)) media_t *media_create(
    sirqul_iot_platform_media_MEDIATYPE_e media_type,
    sirqul_iot_platform_media_CONDITION_e condition,
    char *isbn,
    char *asin,
    list_t *catalog_numbers,
    int duration,
    char *author,
    long release_date,
    long availability_date,
    char *parental_rating,
    list_t *collections,
    int collection_count
);

void media_free(media_t *media);

media_t *media_parseFromJSON(cJSON *mediaJSON);

cJSON *media_convertToJSON(media_t *media);

#endif /* _media_H_ */

