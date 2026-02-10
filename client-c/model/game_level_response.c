#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "game_level_response.h"


char* game_level_response_action_ToString(sirqul_iot_platform_game_level_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_game_level_response_ACTION_e game_level_response_action_FromString(char* action){
    int stringToReturn = 0;
    char *actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    size_t sizeofArray = sizeof(actionArray) / sizeof(actionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(action, actionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* game_level_response_scoring_type_ToString(sirqul_iot_platform_game_level_response_SCORINGTYPE_e scoring_type) {
    char* scoring_typeArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    return scoring_typeArray[scoring_type];
}

sirqul_iot_platform_game_level_response_SCORINGTYPE_e game_level_response_scoring_type_FromString(char* scoring_type){
    int stringToReturn = 0;
    char *scoring_typeArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    size_t sizeofArray = sizeof(scoring_typeArray) / sizeof(scoring_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(scoring_type, scoring_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static game_level_response_t *game_level_response_create_internal(
    sirqul_iot_platform_game_level_response_ACTION_e action,
    long game_level_id,
    char *game_type,
    int active,
    char *name,
    char *description,
    char *difficulty,
    char *app_version,
    long likes_count,
    long dislikes_count,
    long comments_count,
    long download_count,
    list_t *comments,
    int locked,
    int completed,
    long tickets_earned,
    game_object_list_response_t *game_objects,
    int has_liked,
    asset_short_response_t *image,
    char *game_data,
    char *game_data_suffix,
    score_list_response_t *scores,
    account_short_response_t *owner,
    user_permissions_list_response_t *user_permissions_list,
    list_t *results,
    int randomize_game_objects,
    ticket_list_response_t *tickets,
    int assign_mission,
    asset_short_response_t *icon,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    char *splash_title,
    char *splash_message,
    int has_flagged,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points,
    char *winner_message,
    tutorial_response_t *tutorial,
    char *app_key,
    char *app_name,
    sirqul_iot_platform_game_level_response_SCORINGTYPE_e scoring_type,
    char *tutorial_title,
    char *tutorial_message,
    char *tutorial_alignment,
    asset_short_response_t *tutorial_image,
    long next_level_id,
    offer_short_response_t *offer
    ) {
    game_level_response_t *game_level_response_local_var = malloc(sizeof(game_level_response_t));
    if (!game_level_response_local_var) {
        return NULL;
    }
    game_level_response_local_var->action = action;
    game_level_response_local_var->game_level_id = game_level_id;
    game_level_response_local_var->game_type = game_type;
    game_level_response_local_var->active = active;
    game_level_response_local_var->name = name;
    game_level_response_local_var->description = description;
    game_level_response_local_var->difficulty = difficulty;
    game_level_response_local_var->app_version = app_version;
    game_level_response_local_var->likes_count = likes_count;
    game_level_response_local_var->dislikes_count = dislikes_count;
    game_level_response_local_var->comments_count = comments_count;
    game_level_response_local_var->download_count = download_count;
    game_level_response_local_var->comments = comments;
    game_level_response_local_var->locked = locked;
    game_level_response_local_var->completed = completed;
    game_level_response_local_var->tickets_earned = tickets_earned;
    game_level_response_local_var->game_objects = game_objects;
    game_level_response_local_var->has_liked = has_liked;
    game_level_response_local_var->image = image;
    game_level_response_local_var->game_data = game_data;
    game_level_response_local_var->game_data_suffix = game_data_suffix;
    game_level_response_local_var->scores = scores;
    game_level_response_local_var->owner = owner;
    game_level_response_local_var->user_permissions_list = user_permissions_list;
    game_level_response_local_var->results = results;
    game_level_response_local_var->randomize_game_objects = randomize_game_objects;
    game_level_response_local_var->tickets = tickets;
    game_level_response_local_var->assign_mission = assign_mission;
    game_level_response_local_var->icon = icon;
    game_level_response_local_var->author_override = author_override;
    game_level_response_local_var->updated_date = updated_date;
    game_level_response_local_var->start_date = start_date;
    game_level_response_local_var->end_date = end_date;
    game_level_response_local_var->splash_title = splash_title;
    game_level_response_local_var->splash_message = splash_message;
    game_level_response_local_var->has_flagged = has_flagged;
    game_level_response_local_var->allocate_tickets = allocate_tickets;
    game_level_response_local_var->ticket_type = ticket_type;
    game_level_response_local_var->ticket_count = ticket_count;
    game_level_response_local_var->points = points;
    game_level_response_local_var->winner_message = winner_message;
    game_level_response_local_var->tutorial = tutorial;
    game_level_response_local_var->app_key = app_key;
    game_level_response_local_var->app_name = app_name;
    game_level_response_local_var->scoring_type = scoring_type;
    game_level_response_local_var->tutorial_title = tutorial_title;
    game_level_response_local_var->tutorial_message = tutorial_message;
    game_level_response_local_var->tutorial_alignment = tutorial_alignment;
    game_level_response_local_var->tutorial_image = tutorial_image;
    game_level_response_local_var->next_level_id = next_level_id;
    game_level_response_local_var->offer = offer;

    game_level_response_local_var->_library_owned = 1;
    return game_level_response_local_var;
}

__attribute__((deprecated)) game_level_response_t *game_level_response_create(
    sirqul_iot_platform_game_level_response_ACTION_e action,
    long game_level_id,
    char *game_type,
    int active,
    char *name,
    char *description,
    char *difficulty,
    char *app_version,
    long likes_count,
    long dislikes_count,
    long comments_count,
    long download_count,
    list_t *comments,
    int locked,
    int completed,
    long tickets_earned,
    game_object_list_response_t *game_objects,
    int has_liked,
    asset_short_response_t *image,
    char *game_data,
    char *game_data_suffix,
    score_list_response_t *scores,
    account_short_response_t *owner,
    user_permissions_list_response_t *user_permissions_list,
    list_t *results,
    int randomize_game_objects,
    ticket_list_response_t *tickets,
    int assign_mission,
    asset_short_response_t *icon,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    char *splash_title,
    char *splash_message,
    int has_flagged,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points,
    char *winner_message,
    tutorial_response_t *tutorial,
    char *app_key,
    char *app_name,
    sirqul_iot_platform_game_level_response_SCORINGTYPE_e scoring_type,
    char *tutorial_title,
    char *tutorial_message,
    char *tutorial_alignment,
    asset_short_response_t *tutorial_image,
    long next_level_id,
    offer_short_response_t *offer
    ) {
    return game_level_response_create_internal (
        action,
        game_level_id,
        game_type,
        active,
        name,
        description,
        difficulty,
        app_version,
        likes_count,
        dislikes_count,
        comments_count,
        download_count,
        comments,
        locked,
        completed,
        tickets_earned,
        game_objects,
        has_liked,
        image,
        game_data,
        game_data_suffix,
        scores,
        owner,
        user_permissions_list,
        results,
        randomize_game_objects,
        tickets,
        assign_mission,
        icon,
        author_override,
        updated_date,
        start_date,
        end_date,
        splash_title,
        splash_message,
        has_flagged,
        allocate_tickets,
        ticket_type,
        ticket_count,
        points,
        winner_message,
        tutorial,
        app_key,
        app_name,
        scoring_type,
        tutorial_title,
        tutorial_message,
        tutorial_alignment,
        tutorial_image,
        next_level_id,
        offer
        );
}

void game_level_response_free(game_level_response_t *game_level_response) {
    if(NULL == game_level_response){
        return ;
    }
    if(game_level_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "game_level_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (game_level_response->game_type) {
        free(game_level_response->game_type);
        game_level_response->game_type = NULL;
    }
    if (game_level_response->name) {
        free(game_level_response->name);
        game_level_response->name = NULL;
    }
    if (game_level_response->description) {
        free(game_level_response->description);
        game_level_response->description = NULL;
    }
    if (game_level_response->difficulty) {
        free(game_level_response->difficulty);
        game_level_response->difficulty = NULL;
    }
    if (game_level_response->app_version) {
        free(game_level_response->app_version);
        game_level_response->app_version = NULL;
    }
    if (game_level_response->comments) {
        list_ForEach(listEntry, game_level_response->comments) {
            note_response_free(listEntry->data);
        }
        list_freeList(game_level_response->comments);
        game_level_response->comments = NULL;
    }
    if (game_level_response->game_objects) {
        game_object_list_response_free(game_level_response->game_objects);
        game_level_response->game_objects = NULL;
    }
    if (game_level_response->image) {
        asset_short_response_free(game_level_response->image);
        game_level_response->image = NULL;
    }
    if (game_level_response->game_data) {
        free(game_level_response->game_data);
        game_level_response->game_data = NULL;
    }
    if (game_level_response->game_data_suffix) {
        free(game_level_response->game_data_suffix);
        game_level_response->game_data_suffix = NULL;
    }
    if (game_level_response->scores) {
        score_list_response_free(game_level_response->scores);
        game_level_response->scores = NULL;
    }
    if (game_level_response->owner) {
        account_short_response_free(game_level_response->owner);
        game_level_response->owner = NULL;
    }
    if (game_level_response->user_permissions_list) {
        user_permissions_list_response_free(game_level_response->user_permissions_list);
        game_level_response->user_permissions_list = NULL;
    }
    if (game_level_response->results) {
        list_ForEach(listEntry, game_level_response->results) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(game_level_response->results);
        game_level_response->results = NULL;
    }
    if (game_level_response->tickets) {
        ticket_list_response_free(game_level_response->tickets);
        game_level_response->tickets = NULL;
    }
    if (game_level_response->icon) {
        asset_short_response_free(game_level_response->icon);
        game_level_response->icon = NULL;
    }
    if (game_level_response->author_override) {
        free(game_level_response->author_override);
        game_level_response->author_override = NULL;
    }
    if (game_level_response->splash_title) {
        free(game_level_response->splash_title);
        game_level_response->splash_title = NULL;
    }
    if (game_level_response->splash_message) {
        free(game_level_response->splash_message);
        game_level_response->splash_message = NULL;
    }
    if (game_level_response->ticket_type) {
        free(game_level_response->ticket_type);
        game_level_response->ticket_type = NULL;
    }
    if (game_level_response->winner_message) {
        free(game_level_response->winner_message);
        game_level_response->winner_message = NULL;
    }
    if (game_level_response->tutorial) {
        tutorial_response_free(game_level_response->tutorial);
        game_level_response->tutorial = NULL;
    }
    if (game_level_response->app_key) {
        free(game_level_response->app_key);
        game_level_response->app_key = NULL;
    }
    if (game_level_response->app_name) {
        free(game_level_response->app_name);
        game_level_response->app_name = NULL;
    }
    if (game_level_response->tutorial_title) {
        free(game_level_response->tutorial_title);
        game_level_response->tutorial_title = NULL;
    }
    if (game_level_response->tutorial_message) {
        free(game_level_response->tutorial_message);
        game_level_response->tutorial_message = NULL;
    }
    if (game_level_response->tutorial_alignment) {
        free(game_level_response->tutorial_alignment);
        game_level_response->tutorial_alignment = NULL;
    }
    if (game_level_response->tutorial_image) {
        asset_short_response_free(game_level_response->tutorial_image);
        game_level_response->tutorial_image = NULL;
    }
    if (game_level_response->offer) {
        offer_short_response_free(game_level_response->offer);
        game_level_response->offer = NULL;
    }
    free(game_level_response);
}

cJSON *game_level_response_convertToJSON(game_level_response_t *game_level_response) {
    cJSON *item = cJSON_CreateObject();

    // game_level_response->action
    if(game_level_response->action != sirqul_iot_platform_game_level_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", game_level_response_action_ToString(game_level_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game_level_response->game_level_id
    if(game_level_response->game_level_id) {
    if(cJSON_AddNumberToObject(item, "gameLevelId", game_level_response->game_level_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->game_type
    if(game_level_response->game_type) {
    if(cJSON_AddStringToObject(item, "gameType", game_level_response->game_type) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->active
    if(game_level_response->active) {
    if(cJSON_AddBoolToObject(item, "active", game_level_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->name
    if(game_level_response->name) {
    if(cJSON_AddStringToObject(item, "name", game_level_response->name) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->description
    if(game_level_response->description) {
    if(cJSON_AddStringToObject(item, "description", game_level_response->description) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->difficulty
    if(game_level_response->difficulty) {
    if(cJSON_AddStringToObject(item, "difficulty", game_level_response->difficulty) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->app_version
    if(game_level_response->app_version) {
    if(cJSON_AddStringToObject(item, "appVersion", game_level_response->app_version) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->likes_count
    if(game_level_response->likes_count) {
    if(cJSON_AddNumberToObject(item, "likesCount", game_level_response->likes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->dislikes_count
    if(game_level_response->dislikes_count) {
    if(cJSON_AddNumberToObject(item, "dislikesCount", game_level_response->dislikes_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->comments_count
    if(game_level_response->comments_count) {
    if(cJSON_AddNumberToObject(item, "commentsCount", game_level_response->comments_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->download_count
    if(game_level_response->download_count) {
    if(cJSON_AddNumberToObject(item, "downloadCount", game_level_response->download_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->comments
    if(game_level_response->comments) {
    cJSON *comments = cJSON_AddArrayToObject(item, "comments");
    if(comments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *commentsListEntry;
    if (game_level_response->comments) {
    list_ForEach(commentsListEntry, game_level_response->comments) {
    cJSON *itemLocal = note_response_convertToJSON(commentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(comments, itemLocal);
    }
    }
    }


    // game_level_response->locked
    if(game_level_response->locked) {
    if(cJSON_AddBoolToObject(item, "locked", game_level_response->locked) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->completed
    if(game_level_response->completed) {
    if(cJSON_AddBoolToObject(item, "completed", game_level_response->completed) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->tickets_earned
    if(game_level_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", game_level_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->game_objects
    if(game_level_response->game_objects) {
    cJSON *game_objects_local_JSON = game_object_list_response_convertToJSON(game_level_response->game_objects);
    if(game_objects_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "gameObjects", game_objects_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->has_liked
    if(game_level_response->has_liked) {
    if(cJSON_AddBoolToObject(item, "hasLiked", game_level_response->has_liked) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->image
    if(game_level_response->image) {
    cJSON *image_local_JSON = asset_short_response_convertToJSON(game_level_response->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->game_data
    if(game_level_response->game_data) {
    if(cJSON_AddStringToObject(item, "gameData", game_level_response->game_data) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->game_data_suffix
    if(game_level_response->game_data_suffix) {
    if(cJSON_AddStringToObject(item, "gameDataSuffix", game_level_response->game_data_suffix) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->scores
    if(game_level_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(game_level_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->owner
    if(game_level_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(game_level_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->user_permissions_list
    if(game_level_response->user_permissions_list) {
    cJSON *user_permissions_list_local_JSON = user_permissions_list_response_convertToJSON(game_level_response->user_permissions_list);
    if(user_permissions_list_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "userPermissionsList", user_permissions_list_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->results
    if(game_level_response->results) {
    cJSON *results = cJSON_AddArrayToObject(item, "results");
    if(results == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *resultsListEntry;
    if (game_level_response->results) {
    list_ForEach(resultsListEntry, game_level_response->results) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(resultsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(results, itemLocal);
    }
    }
    }


    // game_level_response->randomize_game_objects
    if(game_level_response->randomize_game_objects) {
    if(cJSON_AddBoolToObject(item, "randomizeGameObjects", game_level_response->randomize_game_objects) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->tickets
    if(game_level_response->tickets) {
    cJSON *tickets_local_JSON = ticket_list_response_convertToJSON(game_level_response->tickets);
    if(tickets_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tickets", tickets_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->assign_mission
    if(game_level_response->assign_mission) {
    if(cJSON_AddBoolToObject(item, "assignMission", game_level_response->assign_mission) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->icon
    if(game_level_response->icon) {
    cJSON *icon_local_JSON = asset_short_response_convertToJSON(game_level_response->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->author_override
    if(game_level_response->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", game_level_response->author_override) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->updated_date
    if(game_level_response->updated_date) {
    if(cJSON_AddNumberToObject(item, "updatedDate", game_level_response->updated_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->start_date
    if(game_level_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", game_level_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->end_date
    if(game_level_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", game_level_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->splash_title
    if(game_level_response->splash_title) {
    if(cJSON_AddStringToObject(item, "splashTitle", game_level_response->splash_title) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->splash_message
    if(game_level_response->splash_message) {
    if(cJSON_AddStringToObject(item, "splashMessage", game_level_response->splash_message) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->has_flagged
    if(game_level_response->has_flagged) {
    if(cJSON_AddBoolToObject(item, "hasFlagged", game_level_response->has_flagged) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->allocate_tickets
    if(game_level_response->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", game_level_response->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // game_level_response->ticket_type
    if(game_level_response->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", game_level_response->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->ticket_count
    if(game_level_response->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", game_level_response->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->points
    if(game_level_response->points) {
    if(cJSON_AddNumberToObject(item, "points", game_level_response->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->winner_message
    if(game_level_response->winner_message) {
    if(cJSON_AddStringToObject(item, "winnerMessage", game_level_response->winner_message) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->tutorial
    if(game_level_response->tutorial) {
    cJSON *tutorial_local_JSON = tutorial_response_convertToJSON(game_level_response->tutorial);
    if(tutorial_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tutorial", tutorial_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->app_key
    if(game_level_response->app_key) {
    if(cJSON_AddStringToObject(item, "appKey", game_level_response->app_key) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->app_name
    if(game_level_response->app_name) {
    if(cJSON_AddStringToObject(item, "appName", game_level_response->app_name) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->scoring_type
    if(game_level_response->scoring_type != sirqul_iot_platform_game_level_response_SCORINGTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "scoringType", game_level_response_scoring_type_ToString(game_level_response->scoring_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game_level_response->tutorial_title
    if(game_level_response->tutorial_title) {
    if(cJSON_AddStringToObject(item, "tutorialTitle", game_level_response->tutorial_title) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->tutorial_message
    if(game_level_response->tutorial_message) {
    if(cJSON_AddStringToObject(item, "tutorialMessage", game_level_response->tutorial_message) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->tutorial_alignment
    if(game_level_response->tutorial_alignment) {
    if(cJSON_AddStringToObject(item, "tutorialAlignment", game_level_response->tutorial_alignment) == NULL) {
    goto fail; //String
    }
    }


    // game_level_response->tutorial_image
    if(game_level_response->tutorial_image) {
    cJSON *tutorial_image_local_JSON = asset_short_response_convertToJSON(game_level_response->tutorial_image);
    if(tutorial_image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tutorialImage", tutorial_image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_level_response->next_level_id
    if(game_level_response->next_level_id) {
    if(cJSON_AddNumberToObject(item, "nextLevelId", game_level_response->next_level_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_level_response->offer
    if(game_level_response->offer) {
    cJSON *offer_local_JSON = offer_short_response_convertToJSON(game_level_response->offer);
    if(offer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offer", offer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

game_level_response_t *game_level_response_parseFromJSON(cJSON *game_level_responseJSON){

    game_level_response_t *game_level_response_local_var = NULL;

    // define the local list for game_level_response->comments
    list_t *commentsList = NULL;

    // define the local variable for game_level_response->game_objects
    game_object_list_response_t *game_objects_local_nonprim = NULL;

    // define the local variable for game_level_response->image
    asset_short_response_t *image_local_nonprim = NULL;

    // define the local variable for game_level_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for game_level_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // define the local variable for game_level_response->user_permissions_list
    user_permissions_list_response_t *user_permissions_list_local_nonprim = NULL;

    // define the local list for game_level_response->results
    list_t *resultsList = NULL;

    // define the local variable for game_level_response->tickets
    ticket_list_response_t *tickets_local_nonprim = NULL;

    // define the local variable for game_level_response->icon
    asset_short_response_t *icon_local_nonprim = NULL;

    // define the local variable for game_level_response->tutorial
    tutorial_response_t *tutorial_local_nonprim = NULL;

    // define the local variable for game_level_response->tutorial_image
    asset_short_response_t *tutorial_image_local_nonprim = NULL;

    // define the local variable for game_level_response->offer
    offer_short_response_t *offer_local_nonprim = NULL;

    // game_level_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_game_level_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = game_level_response_action_FromString(action->valuestring);
    }

    // game_level_response->game_level_id
    cJSON *game_level_id = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "gameLevelId");
    if (cJSON_IsNull(game_level_id)) {
        game_level_id = NULL;
    }
    if (game_level_id) { 
    if(!cJSON_IsNumber(game_level_id))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->game_type
    cJSON *game_type = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "gameType");
    if (cJSON_IsNull(game_type)) {
        game_type = NULL;
    }
    if (game_type) { 
    if(!cJSON_IsString(game_type) && !cJSON_IsNull(game_type))
    {
    goto end; //String
    }
    }

    // game_level_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // game_level_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // game_level_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // game_level_response->difficulty
    cJSON *difficulty = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "difficulty");
    if (cJSON_IsNull(difficulty)) {
        difficulty = NULL;
    }
    if (difficulty) { 
    if(!cJSON_IsString(difficulty) && !cJSON_IsNull(difficulty))
    {
    goto end; //String
    }
    }

    // game_level_response->app_version
    cJSON *app_version = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "appVersion");
    if (cJSON_IsNull(app_version)) {
        app_version = NULL;
    }
    if (app_version) { 
    if(!cJSON_IsString(app_version) && !cJSON_IsNull(app_version))
    {
    goto end; //String
    }
    }

    // game_level_response->likes_count
    cJSON *likes_count = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "likesCount");
    if (cJSON_IsNull(likes_count)) {
        likes_count = NULL;
    }
    if (likes_count) { 
    if(!cJSON_IsNumber(likes_count))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->dislikes_count
    cJSON *dislikes_count = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "dislikesCount");
    if (cJSON_IsNull(dislikes_count)) {
        dislikes_count = NULL;
    }
    if (dislikes_count) { 
    if(!cJSON_IsNumber(dislikes_count))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->comments_count
    cJSON *comments_count = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "commentsCount");
    if (cJSON_IsNull(comments_count)) {
        comments_count = NULL;
    }
    if (comments_count) { 
    if(!cJSON_IsNumber(comments_count))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->download_count
    cJSON *download_count = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "downloadCount");
    if (cJSON_IsNull(download_count)) {
        download_count = NULL;
    }
    if (download_count) { 
    if(!cJSON_IsNumber(download_count))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->comments
    cJSON *comments = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "comments");
    if (cJSON_IsNull(comments)) {
        comments = NULL;
    }
    if (comments) { 
    cJSON *comments_local_nonprimitive = NULL;
    if(!cJSON_IsArray(comments)){
        goto end; //nonprimitive container
    }

    commentsList = list_createList();

    cJSON_ArrayForEach(comments_local_nonprimitive,comments )
    {
        if(!cJSON_IsObject(comments_local_nonprimitive)){
            goto end;
        }
        note_response_t *commentsItem = note_response_parseFromJSON(comments_local_nonprimitive);

        list_addElement(commentsList, commentsItem);
    }
    }

    // game_level_response->locked
    cJSON *locked = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "locked");
    if (cJSON_IsNull(locked)) {
        locked = NULL;
    }
    if (locked) { 
    if(!cJSON_IsBool(locked))
    {
    goto end; //Bool
    }
    }

    // game_level_response->completed
    cJSON *completed = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "completed");
    if (cJSON_IsNull(completed)) {
        completed = NULL;
    }
    if (completed) { 
    if(!cJSON_IsBool(completed))
    {
    goto end; //Bool
    }
    }

    // game_level_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->game_objects
    cJSON *game_objects = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "gameObjects");
    if (cJSON_IsNull(game_objects)) {
        game_objects = NULL;
    }
    if (game_objects) { 
    game_objects_local_nonprim = game_object_list_response_parseFromJSON(game_objects); //nonprimitive
    }

    // game_level_response->has_liked
    cJSON *has_liked = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "hasLiked");
    if (cJSON_IsNull(has_liked)) {
        has_liked = NULL;
    }
    if (has_liked) { 
    if(!cJSON_IsBool(has_liked))
    {
    goto end; //Bool
    }
    }

    // game_level_response->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_short_response_parseFromJSON(image); //nonprimitive
    }

    // game_level_response->game_data
    cJSON *game_data = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "gameData");
    if (cJSON_IsNull(game_data)) {
        game_data = NULL;
    }
    if (game_data) { 
    if(!cJSON_IsString(game_data) && !cJSON_IsNull(game_data))
    {
    goto end; //String
    }
    }

    // game_level_response->game_data_suffix
    cJSON *game_data_suffix = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "gameDataSuffix");
    if (cJSON_IsNull(game_data_suffix)) {
        game_data_suffix = NULL;
    }
    if (game_data_suffix) { 
    if(!cJSON_IsString(game_data_suffix) && !cJSON_IsNull(game_data_suffix))
    {
    goto end; //String
    }
    }

    // game_level_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // game_level_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // game_level_response->user_permissions_list
    cJSON *user_permissions_list = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "userPermissionsList");
    if (cJSON_IsNull(user_permissions_list)) {
        user_permissions_list = NULL;
    }
    if (user_permissions_list) { 
    user_permissions_list_local_nonprim = user_permissions_list_response_parseFromJSON(user_permissions_list); //nonprimitive
    }

    // game_level_response->results
    cJSON *results = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "results");
    if (cJSON_IsNull(results)) {
        results = NULL;
    }
    if (results) { 
    cJSON *results_local_nonprimitive = NULL;
    if(!cJSON_IsArray(results)){
        goto end; //nonprimitive container
    }

    resultsList = list_createList();

    cJSON_ArrayForEach(results_local_nonprimitive,results )
    {
        if(!cJSON_IsObject(results_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *resultsItem = name_string_value_response_parseFromJSON(results_local_nonprimitive);

        list_addElement(resultsList, resultsItem);
    }
    }

    // game_level_response->randomize_game_objects
    cJSON *randomize_game_objects = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "randomizeGameObjects");
    if (cJSON_IsNull(randomize_game_objects)) {
        randomize_game_objects = NULL;
    }
    if (randomize_game_objects) { 
    if(!cJSON_IsBool(randomize_game_objects))
    {
    goto end; //Bool
    }
    }

    // game_level_response->tickets
    cJSON *tickets = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "tickets");
    if (cJSON_IsNull(tickets)) {
        tickets = NULL;
    }
    if (tickets) { 
    tickets_local_nonprim = ticket_list_response_parseFromJSON(tickets); //nonprimitive
    }

    // game_level_response->assign_mission
    cJSON *assign_mission = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "assignMission");
    if (cJSON_IsNull(assign_mission)) {
        assign_mission = NULL;
    }
    if (assign_mission) { 
    if(!cJSON_IsBool(assign_mission))
    {
    goto end; //Bool
    }
    }

    // game_level_response->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_short_response_parseFromJSON(icon); //nonprimitive
    }

    // game_level_response->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // game_level_response->updated_date
    cJSON *updated_date = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "updatedDate");
    if (cJSON_IsNull(updated_date)) {
        updated_date = NULL;
    }
    if (updated_date) { 
    if(!cJSON_IsNumber(updated_date))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->splash_title
    cJSON *splash_title = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "splashTitle");
    if (cJSON_IsNull(splash_title)) {
        splash_title = NULL;
    }
    if (splash_title) { 
    if(!cJSON_IsString(splash_title) && !cJSON_IsNull(splash_title))
    {
    goto end; //String
    }
    }

    // game_level_response->splash_message
    cJSON *splash_message = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "splashMessage");
    if (cJSON_IsNull(splash_message)) {
        splash_message = NULL;
    }
    if (splash_message) { 
    if(!cJSON_IsString(splash_message) && !cJSON_IsNull(splash_message))
    {
    goto end; //String
    }
    }

    // game_level_response->has_flagged
    cJSON *has_flagged = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "hasFlagged");
    if (cJSON_IsNull(has_flagged)) {
        has_flagged = NULL;
    }
    if (has_flagged) { 
    if(!cJSON_IsBool(has_flagged))
    {
    goto end; //Bool
    }
    }

    // game_level_response->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // game_level_response->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // game_level_response->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->winner_message
    cJSON *winner_message = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "winnerMessage");
    if (cJSON_IsNull(winner_message)) {
        winner_message = NULL;
    }
    if (winner_message) { 
    if(!cJSON_IsString(winner_message) && !cJSON_IsNull(winner_message))
    {
    goto end; //String
    }
    }

    // game_level_response->tutorial
    cJSON *tutorial = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "tutorial");
    if (cJSON_IsNull(tutorial)) {
        tutorial = NULL;
    }
    if (tutorial) { 
    tutorial_local_nonprim = tutorial_response_parseFromJSON(tutorial); //nonprimitive
    }

    // game_level_response->app_key
    cJSON *app_key = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "appKey");
    if (cJSON_IsNull(app_key)) {
        app_key = NULL;
    }
    if (app_key) { 
    if(!cJSON_IsString(app_key) && !cJSON_IsNull(app_key))
    {
    goto end; //String
    }
    }

    // game_level_response->app_name
    cJSON *app_name = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "appName");
    if (cJSON_IsNull(app_name)) {
        app_name = NULL;
    }
    if (app_name) { 
    if(!cJSON_IsString(app_name) && !cJSON_IsNull(app_name))
    {
    goto end; //String
    }
    }

    // game_level_response->scoring_type
    cJSON *scoring_type = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "scoringType");
    if (cJSON_IsNull(scoring_type)) {
        scoring_type = NULL;
    }
    sirqul_iot_platform_game_level_response_SCORINGTYPE_e scoring_typeVariable;
    if (scoring_type) { 
    if(!cJSON_IsString(scoring_type))
    {
    goto end; //Enum
    }
    scoring_typeVariable = game_level_response_scoring_type_FromString(scoring_type->valuestring);
    }

    // game_level_response->tutorial_title
    cJSON *tutorial_title = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "tutorialTitle");
    if (cJSON_IsNull(tutorial_title)) {
        tutorial_title = NULL;
    }
    if (tutorial_title) { 
    if(!cJSON_IsString(tutorial_title) && !cJSON_IsNull(tutorial_title))
    {
    goto end; //String
    }
    }

    // game_level_response->tutorial_message
    cJSON *tutorial_message = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "tutorialMessage");
    if (cJSON_IsNull(tutorial_message)) {
        tutorial_message = NULL;
    }
    if (tutorial_message) { 
    if(!cJSON_IsString(tutorial_message) && !cJSON_IsNull(tutorial_message))
    {
    goto end; //String
    }
    }

    // game_level_response->tutorial_alignment
    cJSON *tutorial_alignment = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "tutorialAlignment");
    if (cJSON_IsNull(tutorial_alignment)) {
        tutorial_alignment = NULL;
    }
    if (tutorial_alignment) { 
    if(!cJSON_IsString(tutorial_alignment) && !cJSON_IsNull(tutorial_alignment))
    {
    goto end; //String
    }
    }

    // game_level_response->tutorial_image
    cJSON *tutorial_image = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "tutorialImage");
    if (cJSON_IsNull(tutorial_image)) {
        tutorial_image = NULL;
    }
    if (tutorial_image) { 
    tutorial_image_local_nonprim = asset_short_response_parseFromJSON(tutorial_image); //nonprimitive
    }

    // game_level_response->next_level_id
    cJSON *next_level_id = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "nextLevelId");
    if (cJSON_IsNull(next_level_id)) {
        next_level_id = NULL;
    }
    if (next_level_id) { 
    if(!cJSON_IsNumber(next_level_id))
    {
    goto end; //Numeric
    }
    }

    // game_level_response->offer
    cJSON *offer = cJSON_GetObjectItemCaseSensitive(game_level_responseJSON, "offer");
    if (cJSON_IsNull(offer)) {
        offer = NULL;
    }
    if (offer) { 
    offer_local_nonprim = offer_short_response_parseFromJSON(offer); //nonprimitive
    }


    game_level_response_local_var = game_level_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_game_level_response_ACTION_NULL,
        game_level_id ? game_level_id->valuedouble : 0,
        game_type && !cJSON_IsNull(game_type) ? strdup(game_type->valuestring) : NULL,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        difficulty && !cJSON_IsNull(difficulty) ? strdup(difficulty->valuestring) : NULL,
        app_version && !cJSON_IsNull(app_version) ? strdup(app_version->valuestring) : NULL,
        likes_count ? likes_count->valuedouble : 0,
        dislikes_count ? dislikes_count->valuedouble : 0,
        comments_count ? comments_count->valuedouble : 0,
        download_count ? download_count->valuedouble : 0,
        comments ? commentsList : NULL,
        locked ? locked->valueint : 0,
        completed ? completed->valueint : 0,
        tickets_earned ? tickets_earned->valuedouble : 0,
        game_objects ? game_objects_local_nonprim : NULL,
        has_liked ? has_liked->valueint : 0,
        image ? image_local_nonprim : NULL,
        game_data && !cJSON_IsNull(game_data) ? strdup(game_data->valuestring) : NULL,
        game_data_suffix && !cJSON_IsNull(game_data_suffix) ? strdup(game_data_suffix->valuestring) : NULL,
        scores ? scores_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL,
        user_permissions_list ? user_permissions_list_local_nonprim : NULL,
        results ? resultsList : NULL,
        randomize_game_objects ? randomize_game_objects->valueint : 0,
        tickets ? tickets_local_nonprim : NULL,
        assign_mission ? assign_mission->valueint : 0,
        icon ? icon_local_nonprim : NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        updated_date ? updated_date->valuedouble : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        splash_title && !cJSON_IsNull(splash_title) ? strdup(splash_title->valuestring) : NULL,
        splash_message && !cJSON_IsNull(splash_message) ? strdup(splash_message->valuestring) : NULL,
        has_flagged ? has_flagged->valueint : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        points ? points->valuedouble : 0,
        winner_message && !cJSON_IsNull(winner_message) ? strdup(winner_message->valuestring) : NULL,
        tutorial ? tutorial_local_nonprim : NULL,
        app_key && !cJSON_IsNull(app_key) ? strdup(app_key->valuestring) : NULL,
        app_name && !cJSON_IsNull(app_name) ? strdup(app_name->valuestring) : NULL,
        scoring_type ? scoring_typeVariable : sirqul_iot_platform_game_level_response_SCORINGTYPE_NULL,
        tutorial_title && !cJSON_IsNull(tutorial_title) ? strdup(tutorial_title->valuestring) : NULL,
        tutorial_message && !cJSON_IsNull(tutorial_message) ? strdup(tutorial_message->valuestring) : NULL,
        tutorial_alignment && !cJSON_IsNull(tutorial_alignment) ? strdup(tutorial_alignment->valuestring) : NULL,
        tutorial_image ? tutorial_image_local_nonprim : NULL,
        next_level_id ? next_level_id->valuedouble : 0,
        offer ? offer_local_nonprim : NULL
        );

    return game_level_response_local_var;
end:
    if (commentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, commentsList) {
            note_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(commentsList);
        commentsList = NULL;
    }
    if (game_objects_local_nonprim) {
        game_object_list_response_free(game_objects_local_nonprim);
        game_objects_local_nonprim = NULL;
    }
    if (image_local_nonprim) {
        asset_short_response_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (scores_local_nonprim) {
        score_list_response_free(scores_local_nonprim);
        scores_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (user_permissions_list_local_nonprim) {
        user_permissions_list_response_free(user_permissions_list_local_nonprim);
        user_permissions_list_local_nonprim = NULL;
    }
    if (resultsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, resultsList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(resultsList);
        resultsList = NULL;
    }
    if (tickets_local_nonprim) {
        ticket_list_response_free(tickets_local_nonprim);
        tickets_local_nonprim = NULL;
    }
    if (icon_local_nonprim) {
        asset_short_response_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    if (tutorial_local_nonprim) {
        tutorial_response_free(tutorial_local_nonprim);
        tutorial_local_nonprim = NULL;
    }
    if (tutorial_image_local_nonprim) {
        asset_short_response_free(tutorial_image_local_nonprim);
        tutorial_image_local_nonprim = NULL;
    }
    if (offer_local_nonprim) {
        offer_short_response_free(offer_local_nonprim);
        offer_local_nonprim = NULL;
    }
    return NULL;

}
