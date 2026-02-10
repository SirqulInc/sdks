/*
 * pack.h
 *
 * 
 */

#ifndef _pack_H_
#define _pack_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pack_t pack_t;

#include "account.h"
#include "application.h"
#include "asset.h"
#include "game_level.h"

// Enum SEQUENCETYPE for pack

typedef enum  { sirqul_iot_platform_pack_SEQUENCETYPE_NULL = 0, sirqul_iot_platform_pack_SEQUENCETYPE_FIRST_AVAILABLE, sirqul_iot_platform_pack_SEQUENCETYPE_ALL_AVAILABLE } sirqul_iot_platform_pack_SEQUENCETYPE_e;

char* pack_sequence_type_ToString(sirqul_iot_platform_pack_SEQUENCETYPE_e sequence_type);

sirqul_iot_platform_pack_SEQUENCETYPE_e pack_sequence_type_FromString(char* sequence_type);

// Enum PACKTYPE for pack

typedef enum  { sirqul_iot_platform_pack_PACKTYPE_NULL = 0, sirqul_iot_platform_pack_PACKTYPE_TUTORIAL, sirqul_iot_platform_pack_PACKTYPE_BUILTIN, sirqul_iot_platform_pack_PACKTYPE_DOWNLOAD, sirqul_iot_platform_pack_PACKTYPE_THRESHOLD, sirqul_iot_platform_pack_PACKTYPE_THEME, sirqul_iot_platform_pack_PACKTYPE_TOURNAMENT } sirqul_iot_platform_pack_PACKTYPE_e;

char* pack_pack_type_ToString(sirqul_iot_platform_pack_PACKTYPE_e pack_type);

sirqul_iot_platform_pack_PACKTYPE_e pack_pack_type_FromString(char* pack_type);



typedef struct pack_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    long new_owner_id; //numeric
    struct account_t *owner; //model
    struct application_t *application; //model
    sirqul_iot_platform_pack_SEQUENCETYPE_e sequence_type; //enum
    char *title; // string
    char *description; // string
    char *start_date; //date time
    char *end_date; //date time
    sirqul_iot_platform_pack_PACKTYPE_e pack_type; //enum
    struct asset_t *image; //model
    struct asset_t *background; //model
    char *image_url; // string
    list_t *game_levels; //nonprimitive container
    int has_more_items; //boolean
    long total_count; //numeric
    int downloaded; //boolean
    char *author_override; // string
    long pack_order; //numeric
    int in_game; //boolean
    int highest; //boolean
    int notification_count; //numeric
    long points; //numeric
    char *ticket_type; // string
    long ticket_count; //numeric
    char *price_type; // string
    int price; //numeric
    int allocate_tickets; //boolean
    char *application_title; // string
    list_t* level_number_map; //map

    int _library_owned; // Is the library responsible for freeing this object?
} pack_t;

__attribute__((deprecated)) pack_t *pack_create(
    long id,
    int active,
    int valid,
    long new_owner_id,
    account_t *owner,
    application_t *application,
    sirqul_iot_platform_pack_SEQUENCETYPE_e sequence_type,
    char *title,
    char *description,
    char *start_date,
    char *end_date,
    sirqul_iot_platform_pack_PACKTYPE_e pack_type,
    asset_t *image,
    asset_t *background,
    char *image_url,
    list_t *game_levels,
    int has_more_items,
    long total_count,
    int downloaded,
    char *author_override,
    long pack_order,
    int in_game,
    int highest,
    int notification_count,
    long points,
    char *ticket_type,
    long ticket_count,
    char *price_type,
    int price,
    int allocate_tickets,
    char *application_title,
    list_t* level_number_map
);

void pack_free(pack_t *pack);

pack_t *pack_parseFromJSON(cJSON *packJSON);

cJSON *pack_convertToJSON(pack_t *pack);

#endif /* _pack_H_ */

