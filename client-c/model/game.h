/*
 * game.h
 *
 * 
 */

#ifndef _game_H_
#define _game_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct game_t game_t;

#include "account.h"
#include "application.h"
#include "asset.h"
#include "game_level.h"
#include "pack.h"

// Enum SEQUENCETYPE for game

typedef enum  { sirqul_iot_platform_game_SEQUENCETYPE_NULL = 0, sirqul_iot_platform_game_SEQUENCETYPE_FIRST_AVAILABLE, sirqul_iot_platform_game_SEQUENCETYPE_ALL_AVAILABLE } sirqul_iot_platform_game_SEQUENCETYPE_e;

char* game_sequence_type_ToString(sirqul_iot_platform_game_SEQUENCETYPE_e sequence_type);

sirqul_iot_platform_game_SEQUENCETYPE_e game_sequence_type_FromString(char* sequence_type);



typedef struct game_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    struct account_t *owner; //model
    struct application_t *application; //model
    char *title; // string
    char *description; // string
    char *start_date; //date time
    char *end_date; //date time
    list_t *packs; //nonprimitive container
    sirqul_iot_platform_game_SEQUENCETYPE_e sequence_type; //enum
    char *author_override; // string
    struct asset_t *icon; //model
    struct asset_t *image; //model
    long points; //numeric
    char *ticket_type; // string
    long ticket_count; //numeric
    int allocate_tickets; //boolean
    list_t *all_game_levels; //nonprimitive container
    char *content_name; // string
    char *content_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} game_t;

__attribute__((deprecated)) game_t *game_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    application_t *application,
    char *title,
    char *description,
    char *start_date,
    char *end_date,
    list_t *packs,
    sirqul_iot_platform_game_SEQUENCETYPE_e sequence_type,
    char *author_override,
    asset_t *icon,
    asset_t *image,
    long points,
    char *ticket_type,
    long ticket_count,
    int allocate_tickets,
    list_t *all_game_levels,
    char *content_name,
    char *content_type
);

void game_free(game_t *game);

game_t *game_parseFromJSON(cJSON *gameJSON);

cJSON *game_convertToJSON(game_t *game);

#endif /* _game_H_ */

