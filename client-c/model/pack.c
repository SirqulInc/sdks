#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pack.h"


char* pack_sequence_type_ToString(sirqul_iot_platform_pack_SEQUENCETYPE_e sequence_type) {
    char* sequence_typeArray[] =  { "NULL", "FIRST_AVAILABLE", "ALL_AVAILABLE" };
    return sequence_typeArray[sequence_type];
}

sirqul_iot_platform_pack_SEQUENCETYPE_e pack_sequence_type_FromString(char* sequence_type){
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
char* pack_pack_type_ToString(sirqul_iot_platform_pack_PACKTYPE_e pack_type) {
    char* pack_typeArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    return pack_typeArray[pack_type];
}

sirqul_iot_platform_pack_PACKTYPE_e pack_pack_type_FromString(char* pack_type){
    int stringToReturn = 0;
    char *pack_typeArray[] =  { "NULL", "TUTORIAL", "BUILTIN", "DOWNLOAD", "THRESHOLD", "THEME", "TOURNAMENT" };
    size_t sizeofArray = sizeof(pack_typeArray) / sizeof(pack_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(pack_type, pack_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static pack_t *pack_create_internal(
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
    ) {
    pack_t *pack_local_var = malloc(sizeof(pack_t));
    if (!pack_local_var) {
        return NULL;
    }
    pack_local_var->id = id;
    pack_local_var->active = active;
    pack_local_var->valid = valid;
    pack_local_var->new_owner_id = new_owner_id;
    pack_local_var->owner = owner;
    pack_local_var->application = application;
    pack_local_var->sequence_type = sequence_type;
    pack_local_var->title = title;
    pack_local_var->description = description;
    pack_local_var->start_date = start_date;
    pack_local_var->end_date = end_date;
    pack_local_var->pack_type = pack_type;
    pack_local_var->image = image;
    pack_local_var->background = background;
    pack_local_var->image_url = image_url;
    pack_local_var->game_levels = game_levels;
    pack_local_var->has_more_items = has_more_items;
    pack_local_var->total_count = total_count;
    pack_local_var->downloaded = downloaded;
    pack_local_var->author_override = author_override;
    pack_local_var->pack_order = pack_order;
    pack_local_var->in_game = in_game;
    pack_local_var->highest = highest;
    pack_local_var->notification_count = notification_count;
    pack_local_var->points = points;
    pack_local_var->ticket_type = ticket_type;
    pack_local_var->ticket_count = ticket_count;
    pack_local_var->price_type = price_type;
    pack_local_var->price = price;
    pack_local_var->allocate_tickets = allocate_tickets;
    pack_local_var->application_title = application_title;
    pack_local_var->level_number_map = level_number_map;

    pack_local_var->_library_owned = 1;
    return pack_local_var;
}

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
    ) {
    return pack_create_internal (
        id,
        active,
        valid,
        new_owner_id,
        owner,
        application,
        sequence_type,
        title,
        description,
        start_date,
        end_date,
        pack_type,
        image,
        background,
        image_url,
        game_levels,
        has_more_items,
        total_count,
        downloaded,
        author_override,
        pack_order,
        in_game,
        highest,
        notification_count,
        points,
        ticket_type,
        ticket_count,
        price_type,
        price,
        allocate_tickets,
        application_title,
        level_number_map
        );
}

void pack_free(pack_t *pack) {
    if(NULL == pack){
        return ;
    }
    if(pack->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pack_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pack->owner) {
        account_free(pack->owner);
        pack->owner = NULL;
    }
    if (pack->application) {
        application_free(pack->application);
        pack->application = NULL;
    }
    if (pack->title) {
        free(pack->title);
        pack->title = NULL;
    }
    if (pack->description) {
        free(pack->description);
        pack->description = NULL;
    }
    if (pack->start_date) {
        free(pack->start_date);
        pack->start_date = NULL;
    }
    if (pack->end_date) {
        free(pack->end_date);
        pack->end_date = NULL;
    }
    if (pack->image) {
        asset_free(pack->image);
        pack->image = NULL;
    }
    if (pack->background) {
        asset_free(pack->background);
        pack->background = NULL;
    }
    if (pack->image_url) {
        free(pack->image_url);
        pack->image_url = NULL;
    }
    if (pack->game_levels) {
        list_ForEach(listEntry, pack->game_levels) {
            game_level_free(listEntry->data);
        }
        list_freeList(pack->game_levels);
        pack->game_levels = NULL;
    }
    if (pack->author_override) {
        free(pack->author_override);
        pack->author_override = NULL;
    }
    if (pack->ticket_type) {
        free(pack->ticket_type);
        pack->ticket_type = NULL;
    }
    if (pack->price_type) {
        free(pack->price_type);
        pack->price_type = NULL;
    }
    if (pack->application_title) {
        free(pack->application_title);
        pack->application_title = NULL;
    }
    if (pack->level_number_map) {
        list_ForEach(listEntry, pack->level_number_map) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free (localKeyValue->key);
            free (localKeyValue->value);
            keyValuePair_free(localKeyValue);
        }
        list_freeList(pack->level_number_map);
        pack->level_number_map = NULL;
    }
    free(pack);
}

cJSON *pack_convertToJSON(pack_t *pack) {
    cJSON *item = cJSON_CreateObject();

    // pack->id
    if(pack->id) {
    if(cJSON_AddNumberToObject(item, "id", pack->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->active
    if(pack->active) {
    if(cJSON_AddBoolToObject(item, "active", pack->active) == NULL) {
    goto fail; //Bool
    }
    }


    // pack->valid
    if(pack->valid) {
    if(cJSON_AddBoolToObject(item, "valid", pack->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // pack->new_owner_id
    if(pack->new_owner_id) {
    if(cJSON_AddNumberToObject(item, "newOwnerId", pack->new_owner_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->owner
    if(pack->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(pack->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack->application
    if(pack->application) {
    cJSON *application_local_JSON = application_convertToJSON(pack->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack->sequence_type
    if(pack->sequence_type != sirqul_iot_platform_pack_SEQUENCETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "sequenceType", pack_sequence_type_ToString(pack->sequence_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // pack->title
    if(pack->title) {
    if(cJSON_AddStringToObject(item, "title", pack->title) == NULL) {
    goto fail; //String
    }
    }


    // pack->description
    if(pack->description) {
    if(cJSON_AddStringToObject(item, "description", pack->description) == NULL) {
    goto fail; //String
    }
    }


    // pack->start_date
    if(pack->start_date) {
    if(cJSON_AddStringToObject(item, "startDate", pack->start_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pack->end_date
    if(pack->end_date) {
    if(cJSON_AddStringToObject(item, "endDate", pack->end_date) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pack->pack_type
    if(pack->pack_type != sirqul_iot_platform_pack_PACKTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "packType", pack_pack_type_ToString(pack->pack_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // pack->image
    if(pack->image) {
    cJSON *image_local_JSON = asset_convertToJSON(pack->image);
    if(image_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "image", image_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack->background
    if(pack->background) {
    cJSON *background_local_JSON = asset_convertToJSON(pack->background);
    if(background_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "background", background_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pack->image_url
    if(pack->image_url) {
    if(cJSON_AddStringToObject(item, "imageURL", pack->image_url) == NULL) {
    goto fail; //String
    }
    }


    // pack->game_levels
    if(pack->game_levels) {
    cJSON *game_levels = cJSON_AddArrayToObject(item, "gameLevels");
    if(game_levels == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *game_levelsListEntry;
    if (pack->game_levels) {
    list_ForEach(game_levelsListEntry, pack->game_levels) {
    cJSON *itemLocal = game_level_convertToJSON(game_levelsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(game_levels, itemLocal);
    }
    }
    }


    // pack->has_more_items
    if(pack->has_more_items) {
    if(cJSON_AddBoolToObject(item, "hasMoreItems", pack->has_more_items) == NULL) {
    goto fail; //Bool
    }
    }


    // pack->total_count
    if(pack->total_count) {
    if(cJSON_AddNumberToObject(item, "totalCount", pack->total_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->downloaded
    if(pack->downloaded) {
    if(cJSON_AddBoolToObject(item, "downloaded", pack->downloaded) == NULL) {
    goto fail; //Bool
    }
    }


    // pack->author_override
    if(pack->author_override) {
    if(cJSON_AddStringToObject(item, "authorOverride", pack->author_override) == NULL) {
    goto fail; //String
    }
    }


    // pack->pack_order
    if(pack->pack_order) {
    if(cJSON_AddNumberToObject(item, "packOrder", pack->pack_order) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->in_game
    if(pack->in_game) {
    if(cJSON_AddBoolToObject(item, "inGame", pack->in_game) == NULL) {
    goto fail; //Bool
    }
    }


    // pack->highest
    if(pack->highest) {
    if(cJSON_AddBoolToObject(item, "highest", pack->highest) == NULL) {
    goto fail; //Bool
    }
    }


    // pack->notification_count
    if(pack->notification_count) {
    if(cJSON_AddNumberToObject(item, "notificationCount", pack->notification_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->points
    if(pack->points) {
    if(cJSON_AddNumberToObject(item, "points", pack->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->ticket_type
    if(pack->ticket_type) {
    if(cJSON_AddStringToObject(item, "ticketType", pack->ticket_type) == NULL) {
    goto fail; //String
    }
    }


    // pack->ticket_count
    if(pack->ticket_count) {
    if(cJSON_AddNumberToObject(item, "ticketCount", pack->ticket_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->price_type
    if(pack->price_type) {
    if(cJSON_AddStringToObject(item, "priceType", pack->price_type) == NULL) {
    goto fail; //String
    }
    }


    // pack->price
    if(pack->price) {
    if(cJSON_AddNumberToObject(item, "price", pack->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // pack->allocate_tickets
    if(pack->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", pack->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }


    // pack->application_title
    if(pack->application_title) {
    if(cJSON_AddStringToObject(item, "applicationTitle", pack->application_title) == NULL) {
    goto fail; //String
    }
    }


    // pack->level_number_map
    if(pack->level_number_map) {
    cJSON *level_number_map = cJSON_AddObjectToObject(item, "levelNumberMap");
    if(level_number_map == NULL) {
        goto fail; //primitive map container
    }
    cJSON *localMapObject = level_number_map;
    listEntry_t *level_number_mapListEntry;
    if (pack->level_number_map) {
    list_ForEach(level_number_mapListEntry, pack->level_number_map) {
        keyValuePair_t *localKeyValue = level_number_mapListEntry->data;
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

pack_t *pack_parseFromJSON(cJSON *packJSON){

    pack_t *pack_local_var = NULL;

    // define the local variable for pack->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for pack->application
    application_t *application_local_nonprim = NULL;

    // define the local variable for pack->image
    asset_t *image_local_nonprim = NULL;

    // define the local variable for pack->background
    asset_t *background_local_nonprim = NULL;

    // define the local list for pack->game_levels
    list_t *game_levelsList = NULL;

    // define the local map for pack->level_number_map
    list_t *level_number_mapList = NULL;

    // pack->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(packJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // pack->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(packJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // pack->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(packJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // pack->new_owner_id
    cJSON *new_owner_id = cJSON_GetObjectItemCaseSensitive(packJSON, "newOwnerId");
    if (cJSON_IsNull(new_owner_id)) {
        new_owner_id = NULL;
    }
    if (new_owner_id) { 
    if(!cJSON_IsNumber(new_owner_id))
    {
    goto end; //Numeric
    }
    }

    // pack->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(packJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // pack->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(packJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // pack->sequence_type
    cJSON *sequence_type = cJSON_GetObjectItemCaseSensitive(packJSON, "sequenceType");
    if (cJSON_IsNull(sequence_type)) {
        sequence_type = NULL;
    }
    sirqul_iot_platform_pack_SEQUENCETYPE_e sequence_typeVariable;
    if (sequence_type) { 
    if(!cJSON_IsString(sequence_type))
    {
    goto end; //Enum
    }
    sequence_typeVariable = pack_sequence_type_FromString(sequence_type->valuestring);
    }

    // pack->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(packJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // pack->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(packJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // pack->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(packJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsString(start_date) && !cJSON_IsNull(start_date))
    {
    goto end; //DateTime
    }
    }

    // pack->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(packJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsString(end_date) && !cJSON_IsNull(end_date))
    {
    goto end; //DateTime
    }
    }

    // pack->pack_type
    cJSON *pack_type = cJSON_GetObjectItemCaseSensitive(packJSON, "packType");
    if (cJSON_IsNull(pack_type)) {
        pack_type = NULL;
    }
    sirqul_iot_platform_pack_PACKTYPE_e pack_typeVariable;
    if (pack_type) { 
    if(!cJSON_IsString(pack_type))
    {
    goto end; //Enum
    }
    pack_typeVariable = pack_pack_type_FromString(pack_type->valuestring);
    }

    // pack->image
    cJSON *image = cJSON_GetObjectItemCaseSensitive(packJSON, "image");
    if (cJSON_IsNull(image)) {
        image = NULL;
    }
    if (image) { 
    image_local_nonprim = asset_parseFromJSON(image); //nonprimitive
    }

    // pack->background
    cJSON *background = cJSON_GetObjectItemCaseSensitive(packJSON, "background");
    if (cJSON_IsNull(background)) {
        background = NULL;
    }
    if (background) { 
    background_local_nonprim = asset_parseFromJSON(background); //nonprimitive
    }

    // pack->image_url
    cJSON *image_url = cJSON_GetObjectItemCaseSensitive(packJSON, "imageURL");
    if (cJSON_IsNull(image_url)) {
        image_url = NULL;
    }
    if (image_url) { 
    if(!cJSON_IsString(image_url) && !cJSON_IsNull(image_url))
    {
    goto end; //String
    }
    }

    // pack->game_levels
    cJSON *game_levels = cJSON_GetObjectItemCaseSensitive(packJSON, "gameLevels");
    if (cJSON_IsNull(game_levels)) {
        game_levels = NULL;
    }
    if (game_levels) { 
    cJSON *game_levels_local_nonprimitive = NULL;
    if(!cJSON_IsArray(game_levels)){
        goto end; //nonprimitive container
    }

    game_levelsList = list_createList();

    cJSON_ArrayForEach(game_levels_local_nonprimitive,game_levels )
    {
        if(!cJSON_IsObject(game_levels_local_nonprimitive)){
            goto end;
        }
        game_level_t *game_levelsItem = game_level_parseFromJSON(game_levels_local_nonprimitive);

        list_addElement(game_levelsList, game_levelsItem);
    }
    }

    // pack->has_more_items
    cJSON *has_more_items = cJSON_GetObjectItemCaseSensitive(packJSON, "hasMoreItems");
    if (cJSON_IsNull(has_more_items)) {
        has_more_items = NULL;
    }
    if (has_more_items) { 
    if(!cJSON_IsBool(has_more_items))
    {
    goto end; //Bool
    }
    }

    // pack->total_count
    cJSON *total_count = cJSON_GetObjectItemCaseSensitive(packJSON, "totalCount");
    if (cJSON_IsNull(total_count)) {
        total_count = NULL;
    }
    if (total_count) { 
    if(!cJSON_IsNumber(total_count))
    {
    goto end; //Numeric
    }
    }

    // pack->downloaded
    cJSON *downloaded = cJSON_GetObjectItemCaseSensitive(packJSON, "downloaded");
    if (cJSON_IsNull(downloaded)) {
        downloaded = NULL;
    }
    if (downloaded) { 
    if(!cJSON_IsBool(downloaded))
    {
    goto end; //Bool
    }
    }

    // pack->author_override
    cJSON *author_override = cJSON_GetObjectItemCaseSensitive(packJSON, "authorOverride");
    if (cJSON_IsNull(author_override)) {
        author_override = NULL;
    }
    if (author_override) { 
    if(!cJSON_IsString(author_override) && !cJSON_IsNull(author_override))
    {
    goto end; //String
    }
    }

    // pack->pack_order
    cJSON *pack_order = cJSON_GetObjectItemCaseSensitive(packJSON, "packOrder");
    if (cJSON_IsNull(pack_order)) {
        pack_order = NULL;
    }
    if (pack_order) { 
    if(!cJSON_IsNumber(pack_order))
    {
    goto end; //Numeric
    }
    }

    // pack->in_game
    cJSON *in_game = cJSON_GetObjectItemCaseSensitive(packJSON, "inGame");
    if (cJSON_IsNull(in_game)) {
        in_game = NULL;
    }
    if (in_game) { 
    if(!cJSON_IsBool(in_game))
    {
    goto end; //Bool
    }
    }

    // pack->highest
    cJSON *highest = cJSON_GetObjectItemCaseSensitive(packJSON, "highest");
    if (cJSON_IsNull(highest)) {
        highest = NULL;
    }
    if (highest) { 
    if(!cJSON_IsBool(highest))
    {
    goto end; //Bool
    }
    }

    // pack->notification_count
    cJSON *notification_count = cJSON_GetObjectItemCaseSensitive(packJSON, "notificationCount");
    if (cJSON_IsNull(notification_count)) {
        notification_count = NULL;
    }
    if (notification_count) { 
    if(!cJSON_IsNumber(notification_count))
    {
    goto end; //Numeric
    }
    }

    // pack->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(packJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // pack->ticket_type
    cJSON *ticket_type = cJSON_GetObjectItemCaseSensitive(packJSON, "ticketType");
    if (cJSON_IsNull(ticket_type)) {
        ticket_type = NULL;
    }
    if (ticket_type) { 
    if(!cJSON_IsString(ticket_type) && !cJSON_IsNull(ticket_type))
    {
    goto end; //String
    }
    }

    // pack->ticket_count
    cJSON *ticket_count = cJSON_GetObjectItemCaseSensitive(packJSON, "ticketCount");
    if (cJSON_IsNull(ticket_count)) {
        ticket_count = NULL;
    }
    if (ticket_count) { 
    if(!cJSON_IsNumber(ticket_count))
    {
    goto end; //Numeric
    }
    }

    // pack->price_type
    cJSON *price_type = cJSON_GetObjectItemCaseSensitive(packJSON, "priceType");
    if (cJSON_IsNull(price_type)) {
        price_type = NULL;
    }
    if (price_type) { 
    if(!cJSON_IsString(price_type) && !cJSON_IsNull(price_type))
    {
    goto end; //String
    }
    }

    // pack->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(packJSON, "price");
    if (cJSON_IsNull(price)) {
        price = NULL;
    }
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // pack->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(packJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }

    // pack->application_title
    cJSON *application_title = cJSON_GetObjectItemCaseSensitive(packJSON, "applicationTitle");
    if (cJSON_IsNull(application_title)) {
        application_title = NULL;
    }
    if (application_title) { 
    if(!cJSON_IsString(application_title) && !cJSON_IsNull(application_title))
    {
    goto end; //String
    }
    }

    // pack->level_number_map
    cJSON *level_number_map = cJSON_GetObjectItemCaseSensitive(packJSON, "levelNumberMap");
    if (cJSON_IsNull(level_number_map)) {
        level_number_map = NULL;
    }
    if (level_number_map) { 

    // The data type of the elements in pack->level_number_map is currently not supported.

    }


    pack_local_var = pack_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        new_owner_id ? new_owner_id->valuedouble : 0,
        owner ? owner_local_nonprim : NULL,
        application ? application_local_nonprim : NULL,
        sequence_type ? sequence_typeVariable : sirqul_iot_platform_pack_SEQUENCETYPE_NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        start_date && !cJSON_IsNull(start_date) ? strdup(start_date->valuestring) : NULL,
        end_date && !cJSON_IsNull(end_date) ? strdup(end_date->valuestring) : NULL,
        pack_type ? pack_typeVariable : sirqul_iot_platform_pack_PACKTYPE_NULL,
        image ? image_local_nonprim : NULL,
        background ? background_local_nonprim : NULL,
        image_url && !cJSON_IsNull(image_url) ? strdup(image_url->valuestring) : NULL,
        game_levels ? game_levelsList : NULL,
        has_more_items ? has_more_items->valueint : 0,
        total_count ? total_count->valuedouble : 0,
        downloaded ? downloaded->valueint : 0,
        author_override && !cJSON_IsNull(author_override) ? strdup(author_override->valuestring) : NULL,
        pack_order ? pack_order->valuedouble : 0,
        in_game ? in_game->valueint : 0,
        highest ? highest->valueint : 0,
        notification_count ? notification_count->valuedouble : 0,
        points ? points->valuedouble : 0,
        ticket_type && !cJSON_IsNull(ticket_type) ? strdup(ticket_type->valuestring) : NULL,
        ticket_count ? ticket_count->valuedouble : 0,
        price_type && !cJSON_IsNull(price_type) ? strdup(price_type->valuestring) : NULL,
        price ? price->valuedouble : 0,
        allocate_tickets ? allocate_tickets->valueint : 0,
        application_title && !cJSON_IsNull(application_title) ? strdup(application_title->valuestring) : NULL,
        level_number_map ? level_number_mapList : NULL
        );

    return pack_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (image_local_nonprim) {
        asset_free(image_local_nonprim);
        image_local_nonprim = NULL;
    }
    if (background_local_nonprim) {
        asset_free(background_local_nonprim);
        background_local_nonprim = NULL;
    }
    if (game_levelsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, game_levelsList) {
            game_level_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(game_levelsList);
        game_levelsList = NULL;
    }

    // The data type of the elements in pack->level_number_map is currently not supported.

    return NULL;

}
