#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "game.h"


char* game_sequence_type_ToString(sirqul_iot_platform_game_SEQUENCETYPE_e sequence_type) {
    char* sequence_typeArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    return sequence_typeArray[sequence_type];
}

sirqul_iot_platform_game_SEQUENCETYPE_e game_sequence_type_FromString(char* sequence_type){
    int stringToReturn = 0;
    char *sequence_typeArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    size_t sizeofArray = sizeof(sequence_typeArray) / sizeof(sequence_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(sequence_type, sequence_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static game_t *game_create_internal(
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
    ) {
    game_t *game_local_var = malloc(sizeof(game_t));
    if (!game_local_var) {
        return NULL;
    }
    game_local_var->id = id;
    game_local_var->active = active;
    game_local_var->valid = valid;
    game_local_var->owner = owner;
    game_local_var->application = application;
    game_local_var->title = title;
    game_local_var->description = description;
    game_local_var->start_date = start_date;
    game_local_var->end_date = end_date;
    game_local_var->packs = packs;
    game_local_var->sequence_type = sequence_type;
    game_local_var->author_override = author_override;
    game_local_var->icon = icon;
    game_local_var->image = image;
    game_local_var->points = points;
    game_local_var->ticket_type = ticket_type;
    game_local_var->ticket_count = ticket_count;
    game_local_var->allocate_tickets = allocate_tickets;
    game_local_var->all_game_levels = all_game_levels;
    game_local_var->content_name = content_name;
    game_local_var->content_type = content_type;

    game_local_var->_library_owned = 1;
    return game_local_var;
}

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
    ) {
    return game_create_internal (
        id,
        active,
        valid,
        owner,
        application,
        title,
        description,
        start_date,
        end_date,
        packs,
        sequence_type,
        author_override,
        icon,
        image,
        points,
        ticket_type,
        ticket_count,
        allocate_tickets,
        all_game_levels,
        content_name,
        content_type
        );
}

void game_free(game_t *game) {
    if(NULL == game){
        return ;
    }
    if(game->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "game_free");
        return ;
    }
    listEntry_t *listEntry;
    if (game->owner) {
        account_free(game->owner);
        game->owner = NULL;
    }
    if (game->application) {
        application_free(game->application);
        game->application = NULL;
    }
    if (game->title) {
        free(game->title);
        game->title = NULL;
    }
    if (game->description) {
        free(game->description);
        game->description = NULL;
    }
    if (game->start_date) {
        free(game->start_date);
        game->start_date = NULL;
    }
    if (game->end_date) {
        free(game->end_date);
        game->end_date = NULL;
    }
    if (game->packs) {
        list_ForEach(listEntry, game->packs) {
            pack_free(listEntry->data);
        }
        list_freeList(game->packs);
        game->packs = NULL;
    }
    if (game->author_override) {
        free(game->author_override);
        game->author_override = NULL;
    }
    if (game->icon) {
        asset_free(game->icon);
        game->icon = NULL;
    }
    if (game->image) {
        asset_free(game->image);
        game->image = NULL;
    }
    if (game->ticket_type) {
        free(game->ticket_type);
        game->ticket_type = NULL;
    }
    if (game->all_game_levels) {
        list_ForEach(listEntry, game->all_game_levels) {
            game_level_free(listEntry->data);
        }
        list_freeList(game->all_game_levels);
        game->all_game_levels = NULL;
    }
    if (game->content_name) {
        free(game->content_name);
        game->content_name = NULL;
    }
    if (game->content_type) {
        free(game->content_type);
        game->content_type = NULL;
    }
    free(game);
}

cJSON *game_convertToJSON(game_t *game) {
    cJSON *item = cJSON_CreateObject();

    // game->id
    if(game->id) {
    if(cJSON_AddNumberToObject(item, "id", game->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // game->active
    if(game->active) {
    if(cJSON_AddBoolToObject(item, "active", game->active) == NULL) {
    goto fail; //Bool
    }
    }


    // game->valid
    if(game->valid) {
    if(cJSON_AddBoolToObject(item, "valid", game->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // game->owner
    if(game->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(game->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game->application
    if(game->application) {
    cJSON *application_local_JSON = application_convertToJSON(game->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game->title
    if(game->title) {
    if(cJSON_AddStringToObject(item, "title", game->title) == NULL) {
    goto fail; //String
    }
    }


    // game->description
    if(game->description) {
    if(cJSON_AddStringToObject(item, "description", game->description) == NULL) {
    goto fail; //String
    }
    }


    // game->start_date
    if(game->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", game->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // game->end_date
    if(game->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", game->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // game->packs
    if(game->packs) {
    cJSON *packs = cJSON_AddArrayToObject(item, "packs");
    if(packs == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *packsListEntry;
    if (game->packs) {
    list_ForEach(packsListEntry, game->packs) {
    cJSON *itemLocal = pack_convertToJSON(packsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(packs, itemLocal);
    }
    }
    }


    // game->sequence_type
    if(game->sequence_type != sirqul_iot_platform_game_SEQUENCETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "sequenceType", game_sequence_type_ToString(game->sequence_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game->author_override
    if(game->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", game->author_override) == NULL) {
    goto fail; //String
    }
    }


    // game->icon
    if(game->icon) {
    cJSON *icon_local_JSON = asset_convertToJSON(game->icon);
    if(icon_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "icon", icon_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game->image
    if(game->image) {
    cJSON *image_local_JSON = asset_convertToJSON(game->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game->points
    if(game->points) {
    if(cJSON_AddNumberToObject(item, "points", game->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // game->ticket_type
    if(game->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", game->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // game->ticket_count
    if(game->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", game->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // game->allocate_tickets
    if(game->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", game->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // game->all_game_levels
    if(game->all_game_levels) {
    cJSON *all_game_levels = cJSON_AddArrayToObject(item, "allGameLevels");
    if(all_game_levels == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *all_game_levelsListEntry;
    if (game->all_game_levels) {
    list_ForEach(all_game_levelsListEntry, game->all_game_levels) {
    cJSON *itemLocal = game_level_convertToJSON(all_game_levelsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(all_game_levels, itemLocal);
    }
    }
    }


    // game->content_name
    if(game->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", game->content_name) == NULL) {
    goto fail; //String
    }
    }


    // game->content_type
    if(game->content_type) {
    if(cJSON_AddStringToObject(item, "contentType", game->content_type) == NULL) {
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

game_t *game_parseFromJSON(cJSON *gameJSON){

    game_t *game_local_var = NULL;

    // define the local variable for game->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for game->application
    application_t *application_local_nonprim = NULL;

    // define the local list for game->packs
    list_t *packsList = NULL;

    // define the local variable for game->icon
    asset_t *icon_local_nonprim = NULL;

    // define the local variable for game->image
    asset_t *image_local_nonprim = NULL;

    // define the local list for game->all_game_levels
    list_t *all_game_levelsList = NULL;

    // game->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(gameJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // game->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(gameJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // game->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(gameJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // game->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(gameJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // game->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(gameJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // game->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(gameJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // game->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(gameJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // game->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(gameJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // game->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(gameJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // game->packs
    cJSON *packs = cJSON_GetObjectItemCaseSensitive(gameJSON, "packs");
    if (cJSON_IsNull(packs)) {
        packs = NULL;
    }
    if (packs) { 
    cJSON *packs_local_nonprimitive = NULL;
    if(!cJSON_IsArray(packs)){
        goto end; //nonprimitive container
    }

    packsList = list_createList();

    cJSON_ArrayForEach(packs_local_nonprimitive,packs )
    {
        if(!cJSON_IsObject(packs_local_nonprimitive)){
            goto end;
        }
        pack_t *packsItem = pack_parseFromJSON(packs_local_nonprimitive);

        list_addElement(packsList, packsItem);
    }
    }

    // game->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(gameJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    sirqul_iot_platform_game_SEQUENCETYPE_e sequence_typeVariable;
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type))
    {
    goto end; //Enum
    }
    sequence_typeVariable = game_sequence_type_FromString(sequence_type->valuestring);
    }

    // game->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(gameJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // game->icon
    cJSON *icon = cJSON_GetObjectItemCaseSensitive(gameJSON, "icon");
    if (cJSON_IsNull(icon)) {
        icon = NULL;
    }
    if (icon) { 
    icon_local_nonprim = asset_parseFromJSON(icon); //nonprimitive
    }

    // game->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(gameJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }

    // game->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(gameJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // game->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(gameJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // game->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(gameJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // game->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(gameJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // game->all_game_levels
    cJSON *all_game_levels = cJSON_GetObjectItemCaseSensitive(gameJSON, "allGameLevels");
    if (cJSON_IsNull(all_game_levels)) {
        all_game_levels = NULL;
    }
    if (all_game_levels) { 
    cJSON *all_game_levels_local_nonprimitive = NULL;
    if(!cJSON_IsArray(all_game_levels)){
        goto end; //nonprimitive container
    }

    all_game_levelsList = list_createList();

    cJSON_ArrayForEach(all_game_levels_local_nonprimitive,all_game_levels )
    {
        if(!cJSON_IsObject(all_game_levels_local_nonprimitive)){
            goto end;
        }
        game_level_t *all_game_levelsItem = game_level_parseFromJSON(all_game_levels_local_nonprimitive);

        list_addElement(all_game_levelsList, all_game_levelsItem);
    }
    }

    // game->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(gameJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // game->content_type
    cJSON *content_type = cJSON_GetObjectItemCaseSensitive(gameJSON, "contentType");
    if (cJSON_IsNull(content_type)) {
        content_type = NULL;
    }
    if (content_type) { 
    if(!cJSON_IsString(content_type) && !cJSON_IsNull(content_type))
    {
    goto end; //String
    }
    }


    game_local_var = game_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        application ? application_local_nonprim : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        packs ? packsList : NULL,
        sequence_type ? sequence_typeVariable : sirqul_iot_platform_game_SEQUENCETYPE_NULL,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        icon ? icon_local_nonprim : NULL,
        image ? image_local_nonprim : NULL,
        points ? points->valuedouble : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        all_game_levels ? all_game_levelsList : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        content_type && !cJSON_IsNull(content_type) ? strdup(content_type->valuestring) : NULL
        );

    return game_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (packsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, packsList) {
            pack_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(packsList);
        packsList = NULL;
    }
    if (icon_local_nonprim) {
        asset_free(icon_local_nonprim);
        icon_local_nonprim = NULL;
    }
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (all_game_levelsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, all_game_levelsList) {
            game_level_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(all_game_levelsList);
        all_game_levelsList = NULL;
    }
    return NULL;

}
