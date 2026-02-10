#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "game_level.h"


char* game_level_game_difficulty_ToString(sirqul_iot_platform_game_level_GAMEDIFFICULTY_e game_difficulty) {
    char* game_difficultyArray[] =  { "NULL", "VERY_EASY", "EASY", "MEDIUM", "HARD", "VERY_HARD" };
    return game_difficultyArray[game_difficulty];
}

sirqul_iot_platform_game_level_GAMEDIFFICULTY_e game_level_game_difficulty_FromString(char* game_difficulty){
    int stringToReturn = 0;
    char *game_difficultyArray[] =  { "NULL", "VERY_EASY", "EASY", "MEDIUM", "HARD", "VERY_HARD" };
    size_t sizeofArray = sizeof(game_difficultyArray) / sizeof(game_difficultyArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(game_difficulty, game_difficultyArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* game_level_visibility_ToString(sirqul_iot_platform_game_level_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_game_level_VISIBILITY_e game_level_visibility_FromString(char* visibility){
    int stringToReturn = 0;
    char *visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(visibilityArray) / sizeof(visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(visibility, visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* game_level_approval_status_ToString(sirqul_iot_platform_game_level_APPROVALSTATUS_e approval_status) {
    char* approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return approval_statusArray[approval_status];
}

sirqul_iot_platform_game_level_APPROVALSTATUS_e game_level_approval_status_FromString(char* approval_status){
    int stringToReturn = 0;
    char *approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    size_t sizeofArray = sizeof(approval_statusArray) / sizeof(approval_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(approval_status, approval_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static game_level_t *game_level_create_internal(
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
    ) {
    game_level_t *game_level_local_var = malloc(sizeof(game_level_t));
    if (!game_level_local_var) {
        return NULL;
    }
    game_level_local_var->id = id;
    game_level_local_var->active = active;
    game_level_local_var->valid = valid;
    game_level_local_var->new_owner_id = new_owner_id;
    game_level_local_var->game_difficulty = game_difficulty;
    game_level_local_var->name = name;
    game_level_local_var->image = image;
    game_level_local_var->icon = icon;
    game_level_local_var->description = description;
    game_level_local_var->start_date = start_date;
    game_level_local_var->end_date = end_date;
    game_level_local_var->randomize_game_objects = randomize_game_objects;
    game_level_local_var->owner = owner;
    game_level_local_var->version = version;
    game_level_local_var->notes = notes;
    game_level_local_var->note_count = note_count;
    game_level_local_var->likes = likes;
    game_level_local_var->like_count = like_count;
    game_level_local_var->dislike_count = dislike_count;
    game_level_local_var->play_count = play_count;
    game_level_local_var->download_count = download_count;
    game_level_local_var->game_object_count = game_object_count;
    game_level_local_var->public_permissions = public_permissions;
    game_level_local_var->visibility = visibility;
    game_level_local_var->user_permissions = user_permissions;
    game_level_local_var->flags = flags;
    game_level_local_var->flag_count = flag_count;
    game_level_local_var->flag_threshold = flag_threshold;
    game_level_local_var->application = application;
    game_level_local_var->assign_mission = assign_mission;
    game_level_local_var->author_override = author_override;
    game_level_local_var->splash_title = splash_title;
    game_level_local_var->splash_message = splash_message;
    game_level_local_var->winner_message = winner_message;
    game_level_local_var->tutorial = tutorial;
    game_level_local_var->approval_status = approval_status;
    game_level_local_var->next_level = next_level;
    game_level_local_var->offer = offer;
    game_level_local_var->balance = balance;
    game_level_local_var->level_number = level_number;
    game_level_local_var->points = points;
    game_level_local_var->ticket_type = ticket_type;
    game_level_local_var->ticket_count = ticket_count;
    game_level_local_var->allocate_tickets = allocate_tickets;
    game_level_local_var->application_title = application_title;
    game_level_local_var->owner_username = owner_username;
    game_level_local_var->likable_notification_models = likable_notification_models;
    game_level_local_var->notable_notification_models = notable_notification_models;
    game_level_local_var->published = published;
    game_level_local_var->content_name = content_name;
    game_level_local_var->default_threshold = default_threshold;
    game_level_local_var->content_asset = content_asset;
    game_level_local_var->content_type = content_type;

    game_level_local_var->_library_owned = 1;
    return game_level_local_var;
}

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
    ) {
    return game_level_create_internal (
        id,
        active,
        valid,
        new_owner_id,
        game_difficulty,
        name,
        image,
        icon,
        description,
        start_date,
        end_date,
        randomize_game_objects,
        owner,
        version,
        notes,
        note_count,
        likes,
        like_count,
        dislike_count,
        play_count,
        download_count,
        game_object_count,
        public_permissions,
        visibility,
        user_permissions,
        flags,
        flag_count,
        flag_threshold,
        application,
        assign_mission,
        author_override,
        splash_title,
        splash_message,
        winner_message,
        tutorial,
        approval_status,
        next_level,
        offer,
        balance,
        level_number,
        points,
        ticket_type,
        ticket_count,
        allocate_tickets,
        application_title,
        owner_username,
        likable_notification_models,
        notable_notification_models,
        published,
        content_name,
        default_threshold,
        content_asset,
        content_type
        );
}

void game_level_free(game_level_t *game_level) {
    if(NULL == game_level){
        return ;
    }
    if(game_level->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "game_level_free");
        return ;
    }
    listEntry_t *listEntry;
    if (game_level->name) {
        free(game_level->name);
        game_level->name = NULL;
    }
    if (game_level->image) {
        asset_free(game_level->image);
        game_level->image = NULL;
    }
    if (game_level->icon) {
        asset_free(game_level->icon);
        game_level->icon = NULL;
    }
    if (game_level->description) {
        free(game_level->description);
        game_level->description = NULL;
    }
    if (game_level->start_date) {
        free(game_level->start_date);
        game_level->start_date = NULL;
    }
    if (game_level->end_date) {
        free(game_level->end_date);
        game_level->end_date = NULL;
    }
    if (game_level->owner) {
        account_free(game_level->owner);
        game_level->owner = NULL;
    }
    if (game_level->version) {
        app_version_free(game_level->version);
        game_level->version = NULL;
    }
    if (game_level->notes) {
        list_ForEach(listEntry, game_level->notes) {
            note_free(listEntry->data);
        }
        list_freeList(game_level->notes);
        game_level->notes = NULL;
    }
    if (game_level->likes) {
        list_ForEach(listEntry, game_level->likes) {
            yay_or_nay_free(listEntry->data);
        }
        list_freeList(game_level->likes);
        game_level->likes = NULL;
    }
    if (game_level->public_permissions) {
        permissions_free(game_level->public_permissions);
        game_level->public_permissions = NULL;
    }
    if (game_level->user_permissions) {
        list_ForEach(listEntry, game_level->user_permissions) {
            user_permissions_free(listEntry->data);
        }
        list_freeList(game_level->user_permissions);
        game_level->user_permissions = NULL;
    }
    if (game_level->flags) {
        list_ForEach(listEntry, game_level->flags) {
            flag_free(listEntry->data);
        }
        list_freeList(game_level->flags);
        game_level->flags = NULL;
    }
    if (game_level->flag_threshold) {
        flag_threshold_free(game_level->flag_threshold);
        game_level->flag_threshold = NULL;
    }
    if (game_level->application) {
        application_free(game_level->application);
        game_level->application = NULL;
    }
    if (game_level->author_override) {
        free(game_level->author_override);
        game_level->author_override = NULL;
    }
    if (game_level->splash_title) {
        free(game_level->splash_title);
        game_level->splash_title = NULL;
    }
    if (game_level->splash_message) {
        free(game_level->splash_message);
        game_level->splash_message = NULL;
    }
    if (game_level->winner_message) {
        free(game_level->winner_message);
        game_level->winner_message = NULL;
    }
    if (game_level->tutorial) {
        tutorial_free(game_level->tutorial);
        game_level->tutorial = NULL;
    }
    if (game_level->next_level) {
        game_level_free(game_level->next_level);
        game_level->next_level = NULL;
    }
    if (game_level->offer) {
        offer_free(game_level->offer);
        game_level->offer = NULL;
    }
    if (game_level->ticket_type) {
        free(game_level->ticket_type);
        game_level->ticket_type = NULL;
    }
    if (game_level->application_title) {
        free(game_level->application_title);
        game_level->application_title = NULL;
    }
    if (game_level->owner_username) {
        free(game_level->owner_username);
        game_level->owner_username = NULL;
    }
    if (game_level->likable_notification_models) {
        list_ForEach(listEntry, game_level->likable_notification_models) {
            free(listEntry->data);
        }
        list_freeList(game_level->likable_notification_models);
        game_level->likable_notification_models = NULL;
    }
    if (game_level->notable_notification_models) {
        list_ForEach(listEntry, game_level->notable_notification_models) {
            free(listEntry->data);
        }
        list_freeList(game_level->notable_notification_models);
        game_level->notable_notification_models = NULL;
    }
    if (game_level->content_name) {
        free(game_level->content_name);
        game_level->content_name = NULL;
    }
    if (game_level->content_asset) {
        asset_free(game_level->content_asset);
        game_level->content_asset = NULL;
    }
    if (game_level->content_type) {
        free(game_level->content_type);
        game_level->content_type = NULL;
    }
    free(game_level);
}

cJSON *game_level_convertToJSON(game_level_t *game_level) {
    cJSON *item = cJSON_CreateObject();

    // game_level->id
    if(game_level->id) {
    if(cJSON_AddNumberToObject(item, "id", game_level->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->active
    if(game_level->active) {
    if(cJSON_AddBoolToObject(item, "active", game_level->active) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level->valid
    if(game_level->valid) {
    if(cJSON_AddBoolToObject(item, "valid", game_level->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level->new_owner_id
    if(game_level->new_owner_id) {
    if(cJSON_AddNumberToObject(item, "newOwnerId", game_level->new_owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->game_difficulty
    if(game_level->game_difficulty != sirqul_iot_platform_game_level_GAMEDIFFICULTY_NULL) {
    if(cJSON_AddStringToObject(item, "gameDifficulty", game_level_game_difficulty_ToString(game_level->game_difficulty)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game_level->name
    if(game_level->name) {
    if(cJSON_AddStringToObject(item, "name", game_level->name) == NULL) {
    goto fail; //String
    }
    }


    // game_level->image
    if(game_level->image) {
    cJSON *image_local_JSON = asset_convertToJSON(game_level->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->icon
    if(game_level->icon) {
    cJSON *icon_local_JSON = asset_convertToJSON(game_level->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->description
    if(game_level->description) {
    if(cJSON_AddStringToObject(item, "description", game_level->description) == NULL) {
    goto fail; //String
    }
    }


    // game_level->start_date
    if(game_level->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", game_level->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // game_level->end_date
    if(game_level->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", game_level->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // game_level->randomize_game_objects
    if(game_level->randomize_game_objects) {
    if(cJSON_AddBoolToObject(item, "randomizeGameObjects", game_level->randomize_game_objects) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level->owner
    if(game_level->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(game_level->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->version
    if(game_level->version) {
    cJSON *version_local_JSON = app_version_convertToJSON(game_level->version);
    if(version_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "version", version_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->notes
    if(game_level->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (game_level->notes) {
    list_ForEach(notesListEntry, game_level->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // game_level->note_count
    if(game_level->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", game_level->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->likes
    if(game_level->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (game_level->likes) {
    list_ForEach(likesListEntry, game_level->likes) {
    cJSON *itemLocal = yay_or_nay_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // game_level->like_count
    if(game_level->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", game_level->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->dislike_count
    if(game_level->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", game_level->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->play_count
    if(game_level->play_count) {
    if(cJSON_AddNumberToObject(item, "playCount", game_level->play_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->download_count
    if(game_level->download_count) {
    if(cJSON_AddNumberToObject(item, "downloadCount", game_level->download_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->game_object_count
    if(game_level->game_object_count) {
    if(cJSON_AddNumberToObject(item, "gameObjectCount", game_level->game_object_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->public_permissions
    if(game_level->public_permissions) {
    cJSON *public_permissions_local_JSON = permissions_convertToJSON(game_level->public_permissions);
    if(public_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "publicPermissions", public_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->visibility
    if(game_level->visibility != sirqul_iot_platform_game_level_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", game_level_visibility_ToString(game_level->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game_level->user_permissions
    if(game_level->user_permissions) {
    cJSON *user_permissions = cJSON_AddArrayToObject(item, "userPermissions");
    if(user_permissions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *user_permissionsListEntry;
    if (game_level->user_permissions) {
    list_ForEach(user_permissionsListEntry, game_level->user_permissions) {
    cJSON *itemLocal = user_permissions_convertToJSON(user_permissionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(user_permissions, itemLocal);
    }
    }
    }


    // game_level->flags
    if(game_level->flags) {
    cJSON *flags = cJSON_AddArrayToObject(item, "flags");
    if(flags == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *flagsListEntry;
    if (game_level->flags) {
    list_ForEach(flagsListEntry, game_level->flags) {
    cJSON *itemLocal = flag_convertToJSON(flagsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(flags, itemLocal);
    }
    }
    }


    // game_level->flag_count
    if(game_level->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", game_level->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->flag_threshold
    if(game_level->flag_threshold) {
    cJSON *flag_threshold_local_JSON = flag_threshold_convertToJSON(game_level->flag_threshold);
    if(flag_threshold_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "flagThreshold", flag_threshold_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->application
    if(game_level->application) {
    cJSON *application_local_JSON = application_convertToJSON(game_level->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->assign_mission
    if(game_level->assign_mission) {
    if(cJSON_AddBoolToObject(item, "assignMission", game_level->assign_mission) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level->author_override
    if(game_level->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", game_level->author_override) == NULL) {
    goto fail; //String
    }
    }


    // game_level->splash_title
    if(game_level->splash_title) {
    if(cJSON_AddStringToObject(item, "splashTitle", game_level->splash_title) == NULL) {
    goto fail; //String
    }
    }


    // game_level->splash_message
    if(game_level->splash_message) {
    if(cJSON_AddStringToObject(item, "splashMessage", game_level->splash_message) == NULL) {
    goto fail; //String
    }
    }


    // game_level->winner_message
    if(game_level->winner_message) {
    if(cJSON_AddStringToObject(item, "winnerMessage", game_level->winner_message) == NULL) {
    goto fail; //String
    }
    }


    // game_level->tutorial
    if(game_level->tutorial) {
    cJSON *tutorial_local_JSON = tutorial_convertToJSON(game_level->tutorial);
    if(tutorial_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tutorial", tutorial_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->approval_status
    if(game_level->approval_status != sirqul_iot_platform_game_level_APPROVALSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "approvalStatus", game_level_approval_status_ToString(game_level->approval_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game_level->next_level
    if(game_level->next_level) {
    cJSON *next_level_local_JSON = game_level_convertToJSON(game_level->next_level);
    if(next_level_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "nextLevel", next_level_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->offer
    if(game_level->offer) {
    cJSON *offer_local_JSON = offer_convertToJSON(game_level->offer);
    if(offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offer", offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->balance
    if(game_level->balance) {
    if(cJSON_AddNumberToObject(item, "balance", game_level->balance) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->level_number
    if(game_level->level_number) {
    if(cJSON_AddNumberToObject(item, "levelNumber", game_level->level_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->points
    if(game_level->points) {
    if(cJSON_AddNumberToObject(item, "points", game_level->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->ticket_type
    if(game_level->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", game_level->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // game_level->ticket_count
    if(game_level->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", game_level->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->allocate_tickets
    if(game_level->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", game_level->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level->application_title
    if(game_level->application_title) {
    if(cJSON_AddStringToObject(item, "applicationTitle", game_level->application_title) == NULL) {
    goto fail; //String
    }
    }


    // game_level->owner_username
    if(game_level->owner_username) {
    if(cJSON_AddStringToObject(item, "ownerUsername", game_level->owner_username) == NULL) {
    goto fail; //String
    }
    }


    // game_level->likable_notification_models
    if(game_level->likable_notification_models) {
    cJSON *likable_notification_models = cJSON_AddArrayToObject(item, "likableNotificationModels");
    if(likable_notification_models == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *likable_notification_modelsListEntry;
    list_ForEach(likable_notification_modelsListEntry, game_level->likable_notification_models) {
    }
    }


    // game_level->notable_notification_models
    if(game_level->notable_notification_models) {
    cJSON *notable_notification_models = cJSON_AddArrayToObject(item, "notableNotificationModels");
    if(notable_notification_models == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *notable_notification_modelsListEntry;
    list_ForEach(notable_notification_modelsListEntry, game_level->notable_notification_models) {
    }
    }


    // game_level->published
    if(game_level->published) {
    if(cJSON_AddBoolToObject(item, "published", game_level->published) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level->content_name
    if(game_level->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", game_level->content_name) == NULL) {
    goto fail; //String
    }
    }


    // game_level->default_threshold
    if(game_level->default_threshold) {
    if(cJSON_AddNumberToObject(item, "defaultThreshold", game_level->default_threshold) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level->content_asset
    if(game_level->content_asset) {
    cJSON *content_asset_local_JSON = asset_convertToJSON(game_level->content_asset);
    if(content_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contentAsset", content_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level->content_type
    if(game_level->content_type) {
    if(cJSON_AddStringToObject(item, "contentType", game_level->content_type) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

game_level_t *game_level_parseFromJSON(cJSON *game_levelJSON){

    game_level_t *game_level_local_var = NULL;

    // define the local variable for game_level->image
    asset_t *image_local_nonprim = NULL;

    // define the local variable for game_level->icon
    asset_t *icon_local_nonprim = NULL;

    // define the local variable for game_level->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for game_level->version
    app_version_t *version_local_nonprim = NULL;

    // define the local list for game_level->notes
    list_t *notesList = NULL;

    // define the local list for game_level->likes
    list_t *likesList = NULL;

    // define the local variable for game_level->public_permissions
    permissions_t *public_permissions_local_nonprim = NULL;

    // define the local list for game_level->user_permissions
    list_t *user_permissionsList = NULL;

    // define the local list for game_level->flags
    list_t *flagsList = NULL;

    // define the local variable for game_level->flag_threshold
    flag_threshold_t *flag_threshold_local_nonprim = NULL;

    // define the local variable for game_level->application
    application_t *application_local_nonprim = NULL;

    // define the local variable for game_level->tutorial
    tutorial_t *tutorial_local_nonprim = NULL;

    // define the local variable for game_level->next_level
    game_level_t *next_level_local_nonprim = NULL;

    // define the local variable for game_level->offer
    offer_t *offer_local_nonprim = NULL;

    // define the local list for game_level->likable_notification_models
    list_t *likable_notification_modelsList = NULL;

    // define the local list for game_level->notable_notification_models
    list_t *notable_notification_modelsList = NULL;

    // define the local variable for game_level->content_asset
    asset_t *content_asset_local_nonprim = NULL;

    // game_level->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // game_level->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // game_level->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // game_level->new_owner_id
    cJSON *new_owner_id = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "newOwnerId");
    if (cJSON_IsNull(new_owner_id)) {
        new_owner_id = NULL;
    }
    if (new_owner_id) { 
    if(!cJSON_IsNumber(new_owner_id))
    {
    goto end; //Numeric
    }
    }

    // game_level->game_difficulty
    cJSON *game_difficulty = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "gameDifficulty");
    if (cJSON_IsNull(game_difficulty)) {
        game_difficulty = NULL;
    }
    sirqul_iot_platform_game_level_GAMEDIFFICULTY_e game_difficultyVariable;
    if (game_difficulty) { 
    if(!cJSON_IsString(game_difficulty))
    {
    goto end; //Enum
    }
    game_difficultyVariable = game_level_game_difficulty_FromString(game_difficulty->valuestring);
    }

    // game_level->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // game_level->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }

    // game_level->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_parseFromJSON(icon); //nonprimitive
    }

    // game_level->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // game_level->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // game_level->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // game_level->randomize_game_objects
    cJSON *randomize_game_objects = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "randomizeGameObjects");
    if (cJSON_IsNull(randomize_game_objects)) {
        randomize_game_objects = NULL;
    }
    if (randomize_game_objects) { 
    if(!cJSON_IsBool(randomize_game_objects))
    {
    goto end; //Bool
    }
    }

    // game_level->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // game_level->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    version_local_nonprim = app_version_parseFromJSON(version); //nonprimitive
    }

    // game_level->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "notes");
    if (cJSON_IsNull(notes)) {
        notes = NULL;
    }
    if (notes) { 
    cJSON *notes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(notes)){
        goto end; //nonprimitive container
    }

    notesList = list_createList();

    cJSON_ArrayForEach(notes_local_nonprimitive,notes )
    {
        if(!cJSON_IsObject(notes_local_nonprimitive)){
            goto end;
        }
        note_t *notesItem = note_parseFromJSON(notes_local_nonprimitive);

        list_addElement(notesList, notesItem);
    }
    }

    // game_level->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "likes");
    if (cJSON_IsNull(likes)) {
        likes = NULL;
    }
    if (likes) { 
    cJSON *likes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(likes)){
        goto end; //nonprimitive container
    }

    likesList = list_createList();

    cJSON_ArrayForEach(likes_local_nonprimitive,likes )
    {
        if(!cJSON_IsObject(likes_local_nonprimitive)){
            goto end;
        }
        yay_or_nay_t *likesItem = yay_or_nay_parseFromJSON(likes_local_nonprimitive);

        list_addElement(likesList, likesItem);
    }
    }

    // game_level->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->play_count
    cJSON *play_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "playCount");
    if (cJSON_IsNull(play_count)) {
        play_count = NULL;
    }
    if (play_count) { 
    if(!cJSON_IsNumber(play_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->download_count
    cJSON *download_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "downloadCount");
    if (cJSON_IsNull(download_count)) {
        download_count = NULL;
    }
    if (download_count) { 
    if(!cJSON_IsNumber(download_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->game_object_count
    cJSON *game_object_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "gameObjectCount");
    if (cJSON_IsNull(game_object_count)) {
        game_object_count = NULL;
    }
    if (game_object_count) { 
    if(!cJSON_IsNumber(game_object_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->public_permissions
    cJSON *public_permissions = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "publicPermissions");
    if (cJSON_IsNull(public_permissions)) {
        public_permissions = NULL;
    }
    if (public_permissions) { 
    public_permissions_local_nonprim = permissions_parseFromJSON(public_permissions); //nonprimitive
    }

    // game_level->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_game_level_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = game_level_visibility_FromString(visibility->valuestring);
    }

    // game_level->user_permissions
    cJSON *user_permissions = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "userPermissions");
    if (cJSON_IsNull(user_permissions)) {
        user_permissions = NULL;
    }
    if (user_permissions) { 
    cJSON *user_permissions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(user_permissions)){
        goto end; //nonprimitive container
    }

    user_permissionsList = list_createList();

    cJSON_ArrayForEach(user_permissions_local_nonprimitive,user_permissions )
    {
        if(!cJSON_IsObject(user_permissions_local_nonprimitive)){
            goto end;
        }
        user_permissions_t *user_permissionsItem = user_permissions_parseFromJSON(user_permissions_local_nonprimitive);

        list_addElement(user_permissionsList, user_permissionsItem);
    }
    }

    // game_level->flags
    cJSON *flags = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "flags");
    if (cJSON_IsNull(flags)) {
        flags = NULL;
    }
    if (flags) { 
    cJSON *flags_local_nonprimitive = NULL;
    if(!cJSON_IsArray(flags)){
        goto end; //nonprimitive container
    }

    flagsList = list_createList();

    cJSON_ArrayForEach(flags_local_nonprimitive,flags )
    {
        if(!cJSON_IsObject(flags_local_nonprimitive)){
            goto end;
        }
        flag_t *flagsItem = flag_parseFromJSON(flags_local_nonprimitive);

        list_addElement(flagsList, flagsItem);
    }
    }

    // game_level->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->flag_threshold
    cJSON *flag_threshold = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "flagThreshold");
    if (cJSON_IsNull(flag_threshold)) {
        flag_threshold = NULL;
    }
    if (flag_threshold) { 
    flag_threshold_local_nonprim = flag_threshold_parseFromJSON(flag_threshold); //nonprimitive
    }

    // game_level->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // game_level->assign_mission
    cJSON *assign_mission = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "assignMission");
    if (cJSON_IsNull(assign_mission)) {
        assign_mission = NULL;
    }
    if (assign_mission) { 
    if(!cJSON_IsBool(assign_mission))
    {
    goto end; //Bool
    }
    }

    // game_level->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // game_level->splash_title
    cJSON *splash_title = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "splashTitle");
    if (cJSON_IsNull(splash_title)) {
        splash_title = NULL;
    }
    if (splash_title) { 
    if(!cJSON_IsString(splash_title) && !cJSON_IsNull(splash_title))
    {
    goto end; //String
    }
    }

    // game_level->splash_message
    cJSON *splash_message = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "splashMessage");
    if (cJSON_IsNull(splash_message)) {
        splash_message = NULL;
    }
    if (splash_message) { 
    if(!cJSON_IsString(splash_message) && !cJSON_IsNull(splash_message))
    {
    goto end; //String
    }
    }

    // game_level->winner_message
    cJSON *winner_message = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "winnerMessage");
    if (cJSON_IsNull(winner_message)) {
        winner_message = NULL;
    }
    if (winner_message) { 
    if(!cJSON_IsString(winner_message) && !cJSON_IsNull(winner_message))
    {
    goto end; //String
    }
    }

    // game_level->tutorial
    cJSON *tutorial = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "tutorial");
    if (cJSON_IsNull(tutorial)) {
        tutorial = NULL;
    }
    if (tutorial) { 
    tutorial_local_nonprim = tutorial_parseFromJSON(tutorial); //nonprimitive
    }

    // game_level->approval_status
    cJSON *approval_status = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "approvalStatus");
    if (cJSON_IsNull(approval_status)) {
        approval_status = NULL;
    }
    sirqul_iot_platform_game_level_APPROVALSTATUS_e approval_statusVariable;
    if (approval_status) { 
    if(!cJSON_IsString(approval_status))
    {
    goto end; //Enum
    }
    approval_statusVariable = game_level_approval_status_FromString(approval_status->valuestring);
    }

    // game_level->next_level
    cJSON *next_level = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "nextLevel");
    if (cJSON_IsNull(next_level)) {
        next_level = NULL;
    }
    if (next_level) { 
    next_level_local_nonprim = game_level_parseFromJSON(next_level); //nonprimitive
    }

    // game_level->offer
    cJSON *offer = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "offer");
    if (cJSON_IsNull(offer)) {
        offer = NULL;
    }
    if (offer) { 
    offer_local_nonprim = offer_parseFromJSON(offer); //nonprimitive
    }

    // game_level->balance
    cJSON *balance = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "balance");
    if (cJSON_IsNull(balance)) {
        balance = NULL;
    }
    if (balance) { 
    if(!cJSON_IsNumber(balance))
    {
    goto end; //Numeric
    }
    }

    // game_level->level_number
    cJSON *level_number = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "levelNumber");
    if (cJSON_IsNull(level_number)) {
        level_number = NULL;
    }
    if (level_number) { 
    if(!cJSON_IsNumber(level_number))
    {
    goto end; //Numeric
    }
    }

    // game_level->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // game_level->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // game_level->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // game_level->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // game_level->application_title
    cJSON *application_title = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "applicationTitle");
    if (cJSON_IsNull(application_title)) {
        application_title = NULL;
    }
    if (application_title) { 
    if(!cJSON_IsString(application_title) && !cJSON_IsNull(application_title))
    {
    goto end; //String
    }
    }

    // game_level->owner_username
    cJSON *owner_username = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "ownerUsername");
    if (cJSON_IsNull(owner_username)) {
        owner_username = NULL;
    }
    if (owner_username) { 
    if(!cJSON_IsString(owner_username) && !cJSON_IsNull(owner_username))
    {
    goto end; //String
    }
    }

    // game_level->likable_notification_models
    cJSON *likable_notification_models = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "likableNotificationModels");
    if (cJSON_IsNull(likable_notification_models)) {
        likable_notification_models = NULL;
    }
    if (likable_notification_models) { 
    cJSON *likable_notification_models_local = NULL;
    if(!cJSON_IsArray(likable_notification_models)) {
        goto end;//primitive container
    }
    likable_notification_modelsList = list_createList();

    cJSON_ArrayForEach(likable_notification_models_local, likable_notification_models)
    {
    }
    }

    // game_level->notable_notification_models
    cJSON *notable_notification_models = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "notableNotificationModels");
    if (cJSON_IsNull(notable_notification_models)) {
        notable_notification_models = NULL;
    }
    if (notable_notification_models) { 
    cJSON *notable_notification_models_local = NULL;
    if(!cJSON_IsArray(notable_notification_models)) {
        goto end;//primitive container
    }
    notable_notification_modelsList = list_createList();

    cJSON_ArrayForEach(notable_notification_models_local, notable_notification_models)
    {
    }
    }

    // game_level->published
    cJSON *published = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "published");
    if (cJSON_IsNull(published)) {
        published = NULL;
    }
    if (published) { 
    if(!cJSON_IsBool(published))
    {
    goto end; //Bool
    }
    }

    // game_level->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // game_level->default_threshold
    cJSON *default_threshold = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "defaultThreshold");
    if (cJSON_IsNull(default_threshold)) {
        default_threshold = NULL;
    }
    if (default_threshold) { 
    if(!cJSON_IsNumber(default_threshold))
    {
    goto end; //Numeric
    }
    }

    // game_level->content_asset
    cJSON *content_asset = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "contentAsset");
    if (cJSON_IsNull(content_asset)) {
        content_asset = NULL;
    }
    if (content_asset) { 
    content_asset_local_nonprim = asset_parseFromJSON(content_asset); //nonprimitive
    }

    // game_level->content_type
    cJSON *content_type = cJSON_GetObjectItemCaseSensitive(game_levelJSON, "contentType");
    if (cJSON_IsNull(content_type)) {
        content_type = NULL;
    }
    if (content_type) { 
    if(!cJSON_IsString(content_type) && !cJSON_IsNull(content_type))
    {
    goto end; //String
    }
    }


    game_level_local_var = game_level_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        new_owner_id ? new_owner_id->valuedouble : 0,
        game_difficulty ? game_difficultyVariable : sirqul_iot_platform_game_level_GAMEDIFFICULTY_NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        image ? image_local_nonprim : NULL,
        icon ? icon_local_nonprim : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        randomize_game_objects ? randomize_game_objects->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        version ? version_local_nonprim : NULL,
        notes ? notesList : NULL,
        note_count ? note_count->valuedouble : 0,
        likes ? likesList : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        play_count ? play_count->valuedouble : 0,
        download_count ? download_count->valuedouble : 0,
        game_object_count ? game_object_count->valuedouble : 0,
        public_permissions ? public_permissions_local_nonprim : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_game_level_VISIBILITY_NULL,
        user_permissions ? user_permissionsList : NULL,
        flags ? flagsList : NULL,
        flag_count ? flag_count->valuedouble : 0,
        flag_threshold ? flag_threshold_local_nonprim : NULL,
        application ? application_local_nonprim : NULL,
        assign_mission ? assign_mission->valueint : 0,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        splash_title && !cJSON_IsNull(splash_title) ? strdup(splash_title->valuestring) : NULL,
        splash_message && !cJSON_IsNull(splash_message) ? strdup(splash_message->valuestring) : NULL,
        winner_message && !cJSON_IsNull(winner_message) ? strdup(winner_message->valuestring) : NULL,
        tutorial ? tutorial_local_nonprim : NULL,
        approval_status ? approval_statusVariable : sirqul_iot_platform_game_level_APPROVALSTATUS_NULL,
        next_level ? next_level_local_nonprim : NULL,
        offer ? offer_local_nonprim : NULL,
        balance ? balance->valuedouble : 0,
        level_number ? level_number->valuedouble : 0,
        points ? points->valuedouble : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        application_title && !cJSON_IsNull(application_title) ? strdup(application_title->valuestring) : NULL,
        owner_username && !cJSON_IsNull(owner_username) ? strdup(owner_username->valuestring) : NULL,
        likable_notification_models ? likable_notification_modelsList : NULL,
        notable_notification_models ? notable_notification_modelsList : NULL,
        published ? published->valueint : 0,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        default_threshold ? default_threshold->valuedouble : 0,
        content_asset ? content_asset_local_nonprim : NULL,
        content_type && !cJSON_IsNull(content_type) ? strdup(content_type->valuestring) : NULL
        );

    return game_level_local_var;
end:
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (icon_local_nonprim) {
        asset_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (version_local_nonprim) {
        app_version_free(version_local_nonprim);
        version_local_nonprim = NULL;
    }
    if (notesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, notesList) {
            note_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(notesList);
        notesList = NULL;
    }
    if (likesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, likesList) {
            yay_or_nay_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(likesList);
        likesList = NULL;
    }
    if (public_permissions_local_nonprim) {
        permissions_free(public_permissions_local_nonprim);
        public_permissions_local_nonprim = NULL;
    }
    if (user_permissionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, user_permissionsList) {
            user_permissions_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(user_permissionsList);
        user_permissionsList = NULL;
    }
    if (flagsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, flagsList) {
            flag_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(flagsList);
        flagsList = NULL;
    }
    if (flag_threshold_local_nonprim) {
        flag_threshold_free(flag_threshold_local_nonprim);
        flag_threshold_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (tutorial_local_nonprim) {
        tutorial_free(tutorial_local_nonprim);
        tutorial_local_nonprim = NULL;
    }
    if (next_level_local_nonprim) {
        game_level_free(next_level_local_nonprim);
        next_level_local_nonprim = NULL;
    }
    if (offer_local_nonprim) {
        offer_free(offer_local_nonprim);
        offer_local_nonprim = NULL;
    }
    if (likable_notification_modelsList) {
        list_freeList(likable_notification_modelsList);
        likable_notification_modelsList = NULL;
    }
    if (notable_notification_modelsList) {
        list_freeList(notable_notification_modelsList);
        notable_notification_modelsList = NULL;
    }
    if (content_asset_local_nonprim) {
        asset_free(content_asset_local_nonprim);
        content_asset_local_nonprim = NULL;
    }
    return NULL;

}
