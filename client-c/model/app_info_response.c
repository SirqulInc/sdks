#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "app_info_response.h"


char* app_info_response_scoring_type_ToString(sirqul_iot_platform_app_info_response_SCORINGTYPE_e scoring_type) {
    char* scoring_typeArray[] =  { "NULL", "GAME_LEVEL", "GAME_OBJECT" };
    return scoring_typeArray[scoring_type];
}

sirqul_iot_platform_app_info_response_SCORINGTYPE_e app_info_response_scoring_type_FromString(char* scoring_type){
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

static app_info_response_t *app_info_response_create_internal(
    long points,
    long tickets_available,
    long tickets_earned,
    long tickets_purchased,
    long tickets_used,
    char *rank,
    long max_points,
    long max_tickets,
    float point_to_ticket_modifier,
    sirqul_iot_platform_app_info_response_SCORINGTYPE_e scoring_type,
    purchase_item_list_response_t *purchase_item_list_response,
    long terms_accepted_date,
    int requires_terms_acceptance,
    list_t *completed_achievements,
    list_t *wip_achievements,
    char *app_blob,
    int enable_push,
    int enable_sms,
    int enable_email,
    list_t *ticket_counts
    ) {
    app_info_response_t *app_info_response_local_var = malloc(sizeof(app_info_response_t));
    if (!app_info_response_local_var) {
        return NULL;
    }
    app_info_response_local_var->points = points;
    app_info_response_local_var->tickets_available = tickets_available;
    app_info_response_local_var->tickets_earned = tickets_earned;
    app_info_response_local_var->tickets_purchased = tickets_purchased;
    app_info_response_local_var->tickets_used = tickets_used;
    app_info_response_local_var->rank = rank;
    app_info_response_local_var->max_points = max_points;
    app_info_response_local_var->max_tickets = max_tickets;
    app_info_response_local_var->point_to_ticket_modifier = point_to_ticket_modifier;
    app_info_response_local_var->scoring_type = scoring_type;
    app_info_response_local_var->purchase_item_list_response = purchase_item_list_response;
    app_info_response_local_var->terms_accepted_date = terms_accepted_date;
    app_info_response_local_var->requires_terms_acceptance = requires_terms_acceptance;
    app_info_response_local_var->completed_achievements = completed_achievements;
    app_info_response_local_var->wip_achievements = wip_achievements;
    app_info_response_local_var->app_blob = app_blob;
    app_info_response_local_var->enable_push = enable_push;
    app_info_response_local_var->enable_sms = enable_sms;
    app_info_response_local_var->enable_email = enable_email;
    app_info_response_local_var->ticket_counts = ticket_counts;

    app_info_response_local_var->_library_owned = 1;
    return app_info_response_local_var;
}

__attribute__((deprecated)) app_info_response_t *app_info_response_create(
    long points,
    long tickets_available,
    long tickets_earned,
    long tickets_purchased,
    long tickets_used,
    char *rank,
    long max_points,
    long max_tickets,
    float point_to_ticket_modifier,
    sirqul_iot_platform_app_info_response_SCORINGTYPE_e scoring_type,
    purchase_item_list_response_t *purchase_item_list_response,
    long terms_accepted_date,
    int requires_terms_acceptance,
    list_t *completed_achievements,
    list_t *wip_achievements,
    char *app_blob,
    int enable_push,
    int enable_sms,
    int enable_email,
    list_t *ticket_counts
    ) {
    return app_info_response_create_internal (
        points,
        tickets_available,
        tickets_earned,
        tickets_purchased,
        tickets_used,
        rank,
        max_points,
        max_tickets,
        point_to_ticket_modifier,
        scoring_type,
        purchase_item_list_response,
        terms_accepted_date,
        requires_terms_acceptance,
        completed_achievements,
        wip_achievements,
        app_blob,
        enable_push,
        enable_sms,
        enable_email,
        ticket_counts
        );
}

void app_info_response_free(app_info_response_t *app_info_response) {
    if(NULL == app_info_response){
        return ;
    }
    if(app_info_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "app_info_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (app_info_response->rank) {
        free(app_info_response->rank);
        app_info_response->rank = NULL;
    }
    if (app_info_response->purchase_item_list_response) {
        purchase_item_list_response_free(app_info_response->purchase_item_list_response);
        app_info_response->purchase_item_list_response = NULL;
    }
    if (app_info_response->completed_achievements) {
        list_ForEach(listEntry, app_info_response->completed_achievements) {
            achievement_progress_response_free(listEntry->data);
        }
        list_freeList(app_info_response->completed_achievements);
        app_info_response->completed_achievements = NULL;
    }
    if (app_info_response->wip_achievements) {
        list_ForEach(listEntry, app_info_response->wip_achievements) {
            achievement_progress_response_free(listEntry->data);
        }
        list_freeList(app_info_response->wip_achievements);
        app_info_response->wip_achievements = NULL;
    }
    if (app_info_response->app_blob) {
        free(app_info_response->app_blob);
        app_info_response->app_blob = NULL;
    }
    if (app_info_response->ticket_counts) {
        list_ForEach(listEntry, app_info_response->ticket_counts) {
            ticket_count_response_free(listEntry->data);
        }
        list_freeList(app_info_response->ticket_counts);
        app_info_response->ticket_counts = NULL;
    }
    free(app_info_response);
}

cJSON *app_info_response_convertToJSON(app_info_response_t *app_info_response) {
    cJSON *item = cJSON_CreateObject();

    // app_info_response->points
    if(app_info_response->points) {
    if(cJSON_AddNumberToObject(item, "points", app_info_response->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->tickets_available
    if(app_info_response->tickets_available) {
    if(cJSON_AddNumberToObject(item, "ticketsAvailable", app_info_response->tickets_available) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->tickets_earned
    if(app_info_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", app_info_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->tickets_purchased
    if(app_info_response->tickets_purchased) {
    if(cJSON_AddNumberToObject(item, "ticketsPurchased", app_info_response->tickets_purchased) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->tickets_used
    if(app_info_response->tickets_used) {
    if(cJSON_AddNumberToObject(item, "ticketsUsed", app_info_response->tickets_used) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->rank
    if(app_info_response->rank) {
    if(cJSON_AddStringToObject(item, "rank", app_info_response->rank) == NULL) {
    goto fail; //String
    }
    }


    // app_info_response->max_points
    if(app_info_response->max_points) {
    if(cJSON_AddNumberToObject(item, "maxPoints", app_info_response->max_points) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->max_tickets
    if(app_info_response->max_tickets) {
    if(cJSON_AddNumberToObject(item, "maxTickets", app_info_response->max_tickets) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->point_to_ticket_modifier
    if(app_info_response->point_to_ticket_modifier) {
    if(cJSON_AddNumberToObject(item, "pointToTicketModifier", app_info_response->point_to_ticket_modifier) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->scoring_type
    if(app_info_response->scoring_type != sirqul_iot_platform_app_info_response_SCORINGTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "scoringType", app_info_response_scoring_type_ToString(app_info_response->scoring_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // app_info_response->purchase_item_list_response
    if(app_info_response->purchase_item_list_response) {
    cJSON *purchase_item_list_response_local_JSON = purchase_item_list_response_convertToJSON(app_info_response->purchase_item_list_response);
    if(purchase_item_list_response_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "purchaseItemListResponse", purchase_item_list_response_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // app_info_response->terms_accepted_date
    if(app_info_response->terms_accepted_date) {
    if(cJSON_AddNumberToObject(item, "termsAcceptedDate", app_info_response->terms_accepted_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_info_response->requires_terms_acceptance
    if(app_info_response->requires_terms_acceptance) {
    if(cJSON_AddBoolToObject(item, "requiresTermsAcceptance", app_info_response->requires_terms_acceptance) == NULL) {
    goto fail; //Bool
    }
    }


    // app_info_response->completed_achievements
    if(app_info_response->completed_achievements) {
    cJSON *completed_achievements = cJSON_AddArrayToObject(item, "completedAchievements");
    if(completed_achievements == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *completed_achievementsListEntry;
    if (app_info_response->completed_achievements) {
    list_ForEach(completed_achievementsListEntry, app_info_response->completed_achievements) {
    cJSON *itemLocal = achievement_progress_response_convertToJSON(completed_achievementsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(completed_achievements, itemLocal);
    }
    }
    }


    // app_info_response->wip_achievements
    if(app_info_response->wip_achievements) {
    cJSON *wip_achievements = cJSON_AddArrayToObject(item, "wipAchievements");
    if(wip_achievements == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *wip_achievementsListEntry;
    if (app_info_response->wip_achievements) {
    list_ForEach(wip_achievementsListEntry, app_info_response->wip_achievements) {
    cJSON *itemLocal = achievement_progress_response_convertToJSON(wip_achievementsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(wip_achievements, itemLocal);
    }
    }
    }


    // app_info_response->app_blob
    if(app_info_response->app_blob) {
    if(cJSON_AddStringToObject(item, "appBlob", app_info_response->app_blob) == NULL) {
    goto fail; //String
    }
    }


    // app_info_response->enable_push
    if(app_info_response->enable_push) {
    if(cJSON_AddBoolToObject(item, "enablePush", app_info_response->enable_push) == NULL) {
    goto fail; //Bool
    }
    }


    // app_info_response->enable_sms
    if(app_info_response->enable_sms) {
    if(cJSON_AddBoolToObject(item, "enableSMS", app_info_response->enable_sms) == NULL) {
    goto fail; //Bool
    }
    }


    // app_info_response->enable_email
    if(app_info_response->enable_email) {
    if(cJSON_AddBoolToObject(item, "enableEmail", app_info_response->enable_email) == NULL) {
    goto fail; //Bool
    }
    }


    // app_info_response->ticket_counts
    if(app_info_response->ticket_counts) {
    cJSON *ticket_counts = cJSON_AddArrayToObject(item, "ticketCounts");
    if(ticket_counts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *ticket_countsListEntry;
    if (app_info_response->ticket_counts) {
    list_ForEach(ticket_countsListEntry, app_info_response->ticket_counts) {
    cJSON *itemLocal = ticket_count_response_convertToJSON(ticket_countsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(ticket_counts, itemLocal);
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

app_info_response_t *app_info_response_parseFromJSON(cJSON *app_info_responseJSON){

    app_info_response_t *app_info_response_local_var = NULL;

    // define the local variable for app_info_response->purchase_item_list_response
    purchase_item_list_response_t *purchase_item_list_response_local_nonprim = NULL;

    // define the local list for app_info_response->completed_achievements
    list_t *completed_achievementsList = NULL;

    // define the local list for app_info_response->wip_achievements
    list_t *wip_achievementsList = NULL;

    // define the local list for app_info_response->ticket_counts
    list_t *ticket_countsList = NULL;

    // app_info_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->tickets_available
    cJSON *tickets_available = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "ticketsAvailable");
    if (cJSON_IsNull(tickets_available)) {
        tickets_available = NULL;
    }
    if (tickets_available) { 
    if(!cJSON_IsNumber(tickets_available))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->tickets_purchased
    cJSON *tickets_purchased = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "ticketsPurchased");
    if (cJSON_IsNull(tickets_purchased)) {
        tickets_purchased = NULL;
    }
    if (tickets_purchased) { 
    if(!cJSON_IsNumber(tickets_purchased))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->tickets_used
    cJSON *tickets_used = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "ticketsUsed");
    if (cJSON_IsNull(tickets_used)) {
        tickets_used = NULL;
    }
    if (tickets_used) { 
    if(!cJSON_IsNumber(tickets_used))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->rank
    cJSON *rank = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "rank");
    if (cJSON_IsNull(rank)) {
        rank = NULL;
    }
    if (rank) { 
    if(!cJSON_IsString(rank) && !cJSON_IsNull(rank))
    {
    goto end; //String
    }
    }

    // app_info_response->max_points
    cJSON *max_points = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "maxPoints");
    if (cJSON_IsNull(max_points)) {
        max_points = NULL;
    }
    if (max_points) { 
    if(!cJSON_IsNumber(max_points))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->max_tickets
    cJSON *max_tickets = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "maxTickets");
    if (cJSON_IsNull(max_tickets)) {
        max_tickets = NULL;
    }
    if (max_tickets) { 
    if(!cJSON_IsNumber(max_tickets))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->point_to_ticket_modifier
    cJSON *point_to_ticket_modifier = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "pointToTicketModifier");
    if (cJSON_IsNull(point_to_ticket_modifier)) {
        point_to_ticket_modifier = NULL;
    }
    if (point_to_ticket_modifier) { 
    if(!cJSON_IsNumber(point_to_ticket_modifier))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->scoring_type
    cJSON *scoring_type = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "scoringType");
    if (cJSON_IsNull(scoring_type)) {
        scoring_type = NULL;
    }
    sirqul_iot_platform_app_info_response_SCORINGTYPE_e scoring_typeVariable;
    if (scoring_type) { 
    if(!cJSON_IsString(scoring_type))
    {
    goto end; //Enum
    }
    scoring_typeVariable = app_info_response_scoring_type_FromString(scoring_type->valuestring);
    }

    // app_info_response->purchase_item_list_response
    cJSON *purchase_item_list_response = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "purchaseItemListResponse");
    if (cJSON_IsNull(purchase_item_list_response)) {
        purchase_item_list_response = NULL;
    }
    if (purchase_item_list_response) { 
    purchase_item_list_response_local_nonprim = purchase_item_list_response_parseFromJSON(purchase_item_list_response); //nonprimitive
    }

    // app_info_response->terms_accepted_date
    cJSON *terms_accepted_date = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "termsAcceptedDate");
    if (cJSON_IsNull(terms_accepted_date)) {
        terms_accepted_date = NULL;
    }
    if (terms_accepted_date) { 
    if(!cJSON_IsNumber(terms_accepted_date))
    {
    goto end; //Numeric
    }
    }

    // app_info_response->requires_terms_acceptance
    cJSON *requires_terms_acceptance = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "requiresTermsAcceptance");
    if (cJSON_IsNull(requires_terms_acceptance)) {
        requires_terms_acceptance = NULL;
    }
    if (requires_terms_acceptance) { 
    if(!cJSON_IsBool(requires_terms_acceptance))
    {
    goto end; //Bool
    }
    }

    // app_info_response->completed_achievements
    cJSON *completed_achievements = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "completedAchievements");
    if (cJSON_IsNull(completed_achievements)) {
        completed_achievements = NULL;
    }
    if (completed_achievements) { 
    cJSON *completed_achievements_local_nonprimitive = NULL;
    if(!cJSON_IsArray(completed_achievements)){
        goto end; //nonprimitive container
    }

    completed_achievementsList = list_createList();

    cJSON_ArrayForEach(completed_achievements_local_nonprimitive,completed_achievements )
    {
        if(!cJSON_IsObject(completed_achievements_local_nonprimitive)){
            goto end;
        }
        achievement_progress_response_t *completed_achievementsItem = achievement_progress_response_parseFromJSON(completed_achievements_local_nonprimitive);

        list_addElement(completed_achievementsList, completed_achievementsItem);
    }
    }

    // app_info_response->wip_achievements
    cJSON *wip_achievements = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "wipAchievements");
    if (cJSON_IsNull(wip_achievements)) {
        wip_achievements = NULL;
    }
    if (wip_achievements) { 
    cJSON *wip_achievements_local_nonprimitive = NULL;
    if(!cJSON_IsArray(wip_achievements)){
        goto end; //nonprimitive container
    }

    wip_achievementsList = list_createList();

    cJSON_ArrayForEach(wip_achievements_local_nonprimitive,wip_achievements )
    {
        if(!cJSON_IsObject(wip_achievements_local_nonprimitive)){
            goto end;
        }
        achievement_progress_response_t *wip_achievementsItem = achievement_progress_response_parseFromJSON(wip_achievements_local_nonprimitive);

        list_addElement(wip_achievementsList, wip_achievementsItem);
    }
    }

    // app_info_response->app_blob
    cJSON *app_blob = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "appBlob");
    if (cJSON_IsNull(app_blob)) {
        app_blob = NULL;
    }
    if (app_blob) { 
    if(!cJSON_IsString(app_blob) && !cJSON_IsNull(app_blob))
    {
    goto end; //String
    }
    }

    // app_info_response->enable_push
    cJSON *enable_push = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "enablePush");
    if (cJSON_IsNull(enable_push)) {
        enable_push = NULL;
    }
    if (enable_push) { 
    if(!cJSON_IsBool(enable_push))
    {
    goto end; //Bool
    }
    }

    // app_info_response->enable_sms
    cJSON *enable_sms = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "enableSMS");
    if (cJSON_IsNull(enable_sms)) {
        enable_sms = NULL;
    }
    if (enable_sms) { 
    if(!cJSON_IsBool(enable_sms))
    {
    goto end; //Bool
    }
    }

    // app_info_response->enable_email
    cJSON *enable_email = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "enableEmail");
    if (cJSON_IsNull(enable_email)) {
        enable_email = NULL;
    }
    if (enable_email) { 
    if(!cJSON_IsBool(enable_email))
    {
    goto end; //Bool
    }
    }

    // app_info_response->ticket_counts
    cJSON *ticket_counts = cJSON_GetObjectItemCaseSensitive(app_info_responseJSON, "ticketCounts");
    if (cJSON_IsNull(ticket_counts)) {
        ticket_counts = NULL;
    }
    if (ticket_counts) { 
    cJSON *ticket_counts_local_nonprimitive = NULL;
    if(!cJSON_IsArray(ticket_counts)){
        goto end; //nonprimitive container
    }

    ticket_countsList = list_createList();

    cJSON_ArrayForEach(ticket_counts_local_nonprimitive,ticket_counts )
    {
        if(!cJSON_IsObject(ticket_counts_local_nonprimitive)){
            goto end;
        }
        ticket_count_response_t *ticket_countsItem = ticket_count_response_parseFromJSON(ticket_counts_local_nonprimitive);

        list_addElement(ticket_countsList, ticket_countsItem);
    }
    }


    app_info_response_local_var = app_info_response_create_internal (
        points ? points->valuedouble : 0,
        tickets_available ? tickets_available->valuedouble : 0,
        tickets_earned ? tickets_earned->valuedouble : 0,
        tickets_purchased ? tickets_purchased->valuedouble : 0,
        tickets_used ? tickets_used->valuedouble : 0,
        rank && !cJSON_IsNull(rank) ? strdup(rank->valuestring) : NULL,
        max_points ? max_points->valuedouble : 0,
        max_tickets ? max_tickets->valuedouble : 0,
        point_to_ticket_modifier ? point_to_ticket_modifier->valuedouble : 0,
        scoring_type ? scoring_typeVariable : sirqul_iot_platform_app_info_response_SCORINGTYPE_NULL,
        purchase_item_list_response ? purchase_item_list_response_local_nonprim : NULL,
        terms_accepted_date ? terms_accepted_date->valuedouble : 0,
        requires_terms_acceptance ? requires_terms_acceptance->valueint : 0,
        completed_achievements ? completed_achievementsList : NULL,
        wip_achievements ? wip_achievementsList : NULL,
        app_blob && !cJSON_IsNull(app_blob) ? strdup(app_blob->valuestring) : NULL,
        enable_push ? enable_push->valueint : 0,
        enable_sms ? enable_sms->valueint : 0,
        enable_email ? enable_email->valueint : 0,
        ticket_counts ? ticket_countsList : NULL
        );

    return app_info_response_local_var;
end:
    if (purchase_item_list_response_local_nonprim) {
        purchase_item_list_response_free(purchase_item_list_response_local_nonprim);
        purchase_item_list_response_local_nonprim = NULL;
    }
    if (completed_achievementsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, completed_achievementsList) {
            achievement_progress_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(completed_achievementsList);
        completed_achievementsList = NULL;
    }
    if (wip_achievementsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, wip_achievementsList) {
            achievement_progress_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(wip_achievementsList);
        wip_achievementsList = NULL;
    }
    if (ticket_countsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, ticket_countsList) {
            ticket_count_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(ticket_countsList);
        ticket_countsList = NULL;
    }
    return NULL;

}
