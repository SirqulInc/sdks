#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "game_object_response.h"


char* game_object_response_action_ToString(sirqul_iot_platform_game_object_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_game_object_response_ACTION_e game_object_response_action_FromString(char* action){
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

static game_object_response_t *game_object_response_create_internal(
    sirqul_iot_platform_game_object_response_ACTION_e action,
    long game_object_id,
    char *game_type,
    long tickets_earned,
    score_list_response_t *scores,
    ticket_list_response_t *tickets,
    list_t *items,
    int allocate_tickets
    ) {
    game_object_response_t *game_object_response_local_var = malloc(sizeof(game_object_response_t));
    if (!game_object_response_local_var) {
        return NULL;
    }
    game_object_response_local_var->action = action;
    game_object_response_local_var->game_object_id = game_object_id;
    game_object_response_local_var->game_type = game_type;
    game_object_response_local_var->tickets_earned = tickets_earned;
    game_object_response_local_var->scores = scores;
    game_object_response_local_var->tickets = tickets;
    game_object_response_local_var->items = items;
    game_object_response_local_var->allocate_tickets = allocate_tickets;

    game_object_response_local_var->_library_owned = 1;
    return game_object_response_local_var;
}

__attribute__((deprecated)) game_object_response_t *game_object_response_create(
    sirqul_iot_platform_game_object_response_ACTION_e action,
    long game_object_id,
    char *game_type,
    long tickets_earned,
    score_list_response_t *scores,
    ticket_list_response_t *tickets,
    list_t *items,
    int allocate_tickets
    ) {
    return game_object_response_create_internal (
        action,
        game_object_id,
        game_type,
        tickets_earned,
        scores,
        tickets,
        items,
        allocate_tickets
        );
}

void game_object_response_free(game_object_response_t *game_object_response) {
    if(NULL == game_object_response){
        return ;
    }
    if(game_object_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "game_object_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (game_object_response->game_type) {
        free(game_object_response->game_type);
        game_object_response->game_type = NULL;
    }
    if (game_object_response->scores) {
        score_list_response_free(game_object_response->scores);
        game_object_response->scores = NULL;
    }
    if (game_object_response->tickets) {
        ticket_list_response_free(game_object_response->tickets);
        game_object_response->tickets = NULL;
    }
    if (game_object_response->items) {
        list_ForEach(listEntry, game_object_response->items) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(game_object_response->items);
        game_object_response->items = NULL;
    }
    free(game_object_response);
}

cJSON *game_object_response_convertToJSON(game_object_response_t *game_object_response) {
    cJSON *item = cJSON_CreateObject();

    // game_object_response->action
    if(game_object_response->action != sirqul_iot_platform_game_object_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", game_object_response_action_ToString(game_object_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // game_object_response->game_object_id
    if(game_object_response->game_object_id) {
    if(cJSON_AddNumberToObject(item, "gameObjectId", game_object_response->game_object_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_object_response->game_type
    if(game_object_response->game_type) {
    if(cJSON_AddStringToObject(item, "gameType", game_object_response->game_type) == NULL) {
    goto fail; //String
    }
    }


    // game_object_response->tickets_earned
    if(game_object_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", game_object_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // game_object_response->scores
    if(game_object_response->scores) {
    cJSON *scores_local_JSON = score_list_response_convertToJSON(game_object_response->scores);
    if(scores_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "scores", scores_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_object_response->tickets
    if(game_object_response->tickets) {
    cJSON *tickets_local_JSON = ticket_list_response_convertToJSON(game_object_response->tickets);
    if(tickets_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tickets", tickets_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // game_object_response->items
    if(game_object_response->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (game_object_response->items) {
    list_ForEach(itemsListEntry, game_object_response->items) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // game_object_response->allocate_tickets
    if(game_object_response->allocate_tickets) {
    if(cJSON_AddBoolToObject(item, "allocateTickets", game_object_response->allocate_tickets) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

game_object_response_t *game_object_response_parseFromJSON(cJSON *game_object_responseJSON){

    game_object_response_t *game_object_response_local_var = NULL;

    // define the local variable for game_object_response->scores
    score_list_response_t *scores_local_nonprim = NULL;

    // define the local variable for game_object_response->tickets
    ticket_list_response_t *tickets_local_nonprim = NULL;

    // define the local list for game_object_response->items
    list_t *itemsList = NULL;

    // game_object_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_game_object_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = game_object_response_action_FromString(action->valuestring);
    }

    // game_object_response->game_object_id
    cJSON *game_object_id = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "gameObjectId");
    if (cJSON_IsNull(game_object_id)) {
        game_object_id = NULL;
    }
    if (game_object_id) { 
    if(!cJSON_IsNumber(game_object_id))
    {
    goto end; //Numeric
    }
    }

    // game_object_response->game_type
    cJSON *game_type = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "gameType");
    if (cJSON_IsNull(game_type)) {
        game_type = NULL;
    }
    if (game_type) { 
    if(!cJSON_IsString(game_type) && !cJSON_IsNull(game_type))
    {
    goto end; //String
    }
    }

    // game_object_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // game_object_response->scores
    cJSON *scores = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "scores");
    if (cJSON_IsNull(scores)) {
        scores = NULL;
    }
    if (scores) { 
    scores_local_nonprim = score_list_response_parseFromJSON(scores); //nonprimitive
    }

    // game_object_response->tickets
    cJSON *tickets = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "tickets");
    if (cJSON_IsNull(tickets)) {
        tickets = NULL;
    }
    if (tickets) { 
    tickets_local_nonprim = ticket_list_response_parseFromJSON(tickets); //nonprimitive
    }

    // game_object_response->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *itemsItem = name_string_value_response_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // game_object_response->allocate_tickets
    cJSON *allocate_tickets = cJSON_GetObjectItemCaseSensitive(game_object_responseJSON, "allocateTickets");
    if (cJSON_IsNull(allocate_tickets)) {
        allocate_tickets = NULL;
    }
    if (allocate_tickets) { 
    if(!cJSON_IsBool(allocate_tickets))
    {
    goto end; //Bool
    }
    }


    game_object_response_local_var = game_object_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_game_object_response_ACTION_NULL,
        game_object_id ? game_object_id->valuedouble : 0,
        game_type && !cJSON_IsNull(game_type) ? strdup(game_type->valuestring) : NULL,
        tickets_earned ? tickets_earned->valuedouble : 0,
        scores ? scores_local_nonprim : NULL,
        tickets ? tickets_local_nonprim : NULL,
        items ? itemsList : NULL,
        allocate_tickets ? allocate_tickets->valueint : 0
        );

    return game_object_response_local_var;
end:
    if (scores_local_nonprim) {
        score_list_response_free(scores_local_nonprim);
        scores_local_nonprim = NULL;
    }
    if (tickets_local_nonprim) {
        ticket_list_response_free(tickets_local_nonprim);
        tickets_local_nonprim = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    return NULL;

}
