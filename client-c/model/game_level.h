/*
 * game_level.h
 *
 * 
 */

#ifndef _game_level_H_
#define _game_level_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct game_level_t game_level_t;

#include "account.h"
#include "app_version.h"
#include "application.h"
#include "asset.h"
#include "flag.h"
#include "flag_threshold.h"
#include "note.h"
#include "object.h"
#include "offer.h"
#include "permissions.h"
#include "tutorial.h"
#include "user_permissions.h"
#include "yay_or_nay.h"

// Enum GAMEDIFFICULTY for game_level

typedef enum  { sirqul_iot_platform_game_level_GAMEDIFFICULTY_NULL = 0, sirqul_iot_platform_game_level_GAMEDIFFICULTY_VERY_EASY, sirqul_iot_platform_game_level_GAMEDIFFICULTY_EASY, sirqul_iot_platform_game_level_GAMEDIFFICULTY_MEDIUM, sirqul_iot_platform_game_level_GAMEDIFFICULTY_HARD, sirqul_iot_platform_game_level_GAMEDIFFICULTY_VERY_HARD } sirqul_iot_platform_game_level_GAMEDIFFICULTY_e;

char* game_level_game_difficulty_ToString(sirqul_iot_platform_game_level_GAMEDIFFICULTY_e game_difficulty);

sirqul_iot_platform_game_level_GAMEDIFFICULTY_e game_level_game_difficulty_FromString(char* game_difficulty);

// Enum VISIBILITY for game_level

typedef enum  { sirqul_iot_platform_game_level_VISIBILITY_NULL = 0, sirqul_iot_platform_game_level_VISIBILITY__PUBLIC, sirqul_iot_platform_game_level_VISIBILITY__PRIVATE, sirqul_iot_platform_game_level_VISIBILITY_FRIENDS } sirqul_iot_platform_game_level_VISIBILITY_e;

char* game_level_visibility_ToString(sirqul_iot_platform_game_level_VISIBILITY_e visibility);

sirqul_iot_platform_game_level_VISIBILITY_e game_level_visibility_FromString(char* visibility);

// Enum APPROVALSTATUS for game_level

typedef enum  { sirqul_iot_platform_game_level_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_game_level_APPROVALSTATUS_PENDING, sirqul_iot_platform_game_level_APPROVALSTATUS_REJECTED, sirqul_iot_platform_game_level_APPROVALSTATUS_APPROVED, sirqul_iot_platform_game_level_APPROVALSTATUS_FEATURED } sirqul_iot_platform_game_level_APPROVALSTATUS_e;

char* game_level_approval_status_ToString(sirqul_iot_platform_game_level_APPROVALSTATUS_e approval_status);

sirqul_iot_platform_game_level_APPROVALSTATUS_e game_level_approval_status_FromString(char* approval_status);



typedef struct game_level_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    long new_owner_id; //numeric
    sirqul_iot_platform_game_level_GAMEDIFFICULTY_e game_difficulty; //enum
    char *name; // string
    struct asset_t *image; //model
    struct asset_t *icon; //model
    char *description; // string
    char *start_date; //date time
    char *end_date; //date time
    int randomize_game_objects; //boolean
    struct account_t *owner; //model
    struct app_version_t *version; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    list_t *likes; //nonprimitive container
    long like_count; //numeric
    long dislike_count; //numeric
    long play_count; //numeric
    long download_count; //numeric
    int game_object_count; //numeric
    struct permissions_t *public_permissions; //model
    sirqul_iot_platform_game_level_VISIBILITY_e visibility; //enum
    list_t *user_permissions; //nonprimitive container
    list_t *flags; //nonprimitive container
    long flag_count; //numeric
    struct flag_threshold_t *flag_threshold; //model
    struct application_t *application; //model
    int assign_mission; //boolean
    char *author_override; // string
    char *splash_title; // string
    char *splash_message; // string
    char *winner_message; // string
    struct tutorial_t *tutorial; //model
    sirqul_iot_platform_game_level_APPROVALSTATUS_e approval_status; //enum
    struct game_level_t *next_level; //model
    struct offer_t *offer; //model
    double balance; //numeric
    int level_number; //numeric
    long points; //numeric
    char *ticket_type; // string
    long ticket_count; //numeric
    int allocate_tickets; //boolean
    char *application_title; // string
    char *owner_username; // string
    list_t *likable_notification_models; //primitive container
    list_t *notable_notification_models; //primitive container
    int published; //boolean
    char *content_name; // string
    long default_threshold; //numeric
    struct asset_t *content_asset; //model
    char *content_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} game_level_t;

__attribute__((deprecated)) game_level_t *game_level_create(
    long id,
    int active,
    int valid,
    long new_owner_id,
    sirqul_iot_platform_game_level_GAMEDIFFICULTY_e game_difficulty,
    char *name,
    asset_t *image,
    asset_t *icon,
    char *description,
    char *start_date,
    char *end_date,
    int randomize_game_objects,
    account_t *owner,
    app_version_t *version,
    list_t *notes,
    long note_count,
    list_t *likes,
    long like_count,
    long dislike_count,
    long play_count,
    long download_count,
    int game_object_count,
    permissions_t *public_permissions,
    sirqul_iot_platform_game_level_VISIBILITY_e visibility,
    list_t *user_permissions,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    application_t *application,
    int assign_mission,
    char *author_override,
    char *splash_title,
    char *splash_message,
    char *winner_message,
    tutorial_t *tutorial,
    sirqul_iot_platform_game_level_APPROVALSTATUS_e approval_status,
    game_level_t *next_level,
    offer_t *offer,
    double balance,
    int level_number,
    long points,
    char *ticket_type,
    long ticket_count,
    int allocate_tickets,
    char *application_title,
    char *owner_username,
    list_t *likable_notification_models,
    list_t *notable_notification_models,
    int published,
    char *content_name,
    long default_threshold,
    asset_t *content_asset,
    char *content_type
);

void game_level_free(game_level_t *game_level);

game_level_t *game_level_parseFromJSON(cJSON *game_levelJSON);

cJSON *game_level_convertToJSON(game_level_t *game_level);

#endif /* _game_level_H_ */

