/*
 * tutorial.h
 *
 * 
 */

#ifndef _tutorial_H_
#define _tutorial_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct tutorial_t tutorial_t;

#include "asset.h"

// Enum ALIGNMENT for tutorial

typedef enum  { sirqul_iot_platform_tutorial_ALIGNMENT_NULL = 0, sirqul_iot_platform_tutorial_ALIGNMENT_NONE, sirqul_iot_platform_tutorial_ALIGNMENT_IMAGE_ABOVE, sirqul_iot_platform_tutorial_ALIGNMENT_IMAGE_BELOW, sirqul_iot_platform_tutorial_ALIGNMENT_IMAGE_LEFT, sirqul_iot_platform_tutorial_ALIGNMENT_IMAGE_RIGHT, sirqul_iot_platform_tutorial_ALIGNMENT_IMAGE_ONLY, sirqul_iot_platform_tutorial_ALIGNMENT_TEXT_ONLY } sirqul_iot_platform_tutorial_ALIGNMENT_e;

char* tutorial_alignment_ToString(sirqul_iot_platform_tutorial_ALIGNMENT_e alignment);

sirqul_iot_platform_tutorial_ALIGNMENT_e tutorial_alignment_FromString(char* alignment);

// Enum TUTORIALOBJECTTYPE for tutorial

typedef enum  { sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_NULL = 0, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_GAME_OBJECT, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_GAME_LEVEL, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_PACK, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_GAME, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_MISSION, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_PROFILE, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_APPLICATION, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_TICKETS, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_ASSET, sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_CUSTOM } sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e;

char* tutorial_tutorial_object_type_ToString(sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_object_type);

sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_tutorial_object_type_FromString(char* tutorial_object_type);



typedef struct tutorial_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *description; // string
    sirqul_iot_platform_tutorial_ALIGNMENT_e alignment; //enum
    struct asset_t *image; //model
    long order_index; //numeric
    sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_object_type; //enum

    int _library_owned; // Is the library responsible for freeing this object?
} tutorial_t;

__attribute__((deprecated)) tutorial_t *tutorial_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    sirqul_iot_platform_tutorial_ALIGNMENT_e alignment,
    asset_t *image,
    long order_index,
    sirqul_iot_platform_tutorial_TUTORIALOBJECTTYPE_e tutorial_object_type
);

void tutorial_free(tutorial_t *tutorial);

tutorial_t *tutorial_parseFromJSON(cJSON *tutorialJSON);

cJSON *tutorial_convertToJSON(tutorial_t *tutorial);

#endif /* _tutorial_H_ */

