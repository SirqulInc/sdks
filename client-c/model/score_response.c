#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "score_response.h"


char* score_response_action_ToString(sirqul_iot_platform_score_response_ACTION_e action) {
    char* actionArray[] =  { "NULL", "DATA", "SAVE", "DELETE", "GET" };
    return actionArray[action];
}

sirqul_iot_platform_score_response_ACTION_e score_response_action_FromString(char* action){
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
char* score_response_status_ToString(sirqul_iot_platform_score_response_STATUS_e status) {
    char* statusArray[] =  { "NULL", "COMPLETED", "OWNER_CREDIT", "SUMMATION", "TOURNAMENT" };
    return statusArray[status];
}

sirqul_iot_platform_score_response_STATUS_e score_response_status_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "COMPLETED", "OWNER_CREDIT", "SUMMATION", "TOURNAMENT" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static score_response_t *score_response_create_internal(
    sirqul_iot_platform_score_response_ACTION_e action,
    long score_id,
    sirqul_iot_platform_score_response_STATUS_e status,
    int points,
    int time_taken,
    long tickets_earned,
    char *game_type,
    long account_id,
    char *account_display
    ) {
    score_response_t *score_response_local_var = malloc(sizeof(score_response_t));
    if (!score_response_local_var) {
        return NULL;
    }
    score_response_local_var->action = action;
    score_response_local_var->score_id = score_id;
    score_response_local_var->status = status;
    score_response_local_var->points = points;
    score_response_local_var->time_taken = time_taken;
    score_response_local_var->tickets_earned = tickets_earned;
    score_response_local_var->game_type = game_type;
    score_response_local_var->account_id = account_id;
    score_response_local_var->account_display = account_display;

    score_response_local_var->_library_owned = 1;
    return score_response_local_var;
}

__attribute__((deprecated)) score_response_t *score_response_create(
    sirqul_iot_platform_score_response_ACTION_e action,
    long score_id,
    sirqul_iot_platform_score_response_STATUS_e status,
    int points,
    int time_taken,
    long tickets_earned,
    char *game_type,
    long account_id,
    char *account_display
    ) {
    return score_response_create_internal (
        action,
        score_id,
        status,
        points,
        time_taken,
        tickets_earned,
        game_type,
        account_id,
        account_display
        );
}

void score_response_free(score_response_t *score_response) {
    if(NULL == score_response){
        return ;
    }
    if(score_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "score_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (score_response->game_type) {
        free(score_response->game_type);
        score_response->game_type = NULL;
    }
    if (score_response->account_display) {
        free(score_response->account_display);
        score_response->account_display = NULL;
    }
    free(score_response);
}

cJSON *score_response_convertToJSON(score_response_t *score_response) {
    cJSON *item = cJSON_CreateObject();

    // score_response->action
    if(score_response->action != sirqul_iot_platform_score_response_ACTION_NULL) {
    if(cJSON_AddStringToObject(item, "action", score_response_action_ToString(score_response->action)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // score_response->score_id
    if(score_response->score_id) {
    if(cJSON_AddNumberToObject(item, "scoreId", score_response->score_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_response->status
    if(score_response->status != sirqul_iot_platform_score_response_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", score_response_status_ToString(score_response->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // score_response->points
    if(score_response->points) {
    if(cJSON_AddNumberToObject(item, "points", score_response->points) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_response->time_taken
    if(score_response->time_taken) {
    if(cJSON_AddNumberToObject(item, "timeTaken", score_response->time_taken) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_response->tickets_earned
    if(score_response->tickets_earned) {
    if(cJSON_AddNumberToObject(item, "ticketsEarned", score_response->tickets_earned) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_response->game_type
    if(score_response->game_type) {
    if(cJSON_AddStringToObject(item, "gameType", score_response->game_type) == NULL) {
    goto fail; //String
    }
    }


    // score_response->account_id
    if(score_response->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", score_response->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // score_response->account_display
    if(score_response->account_display) {
    if(cJSON_AddStringToObject(item, "accountDisplay", score_response->account_display) == NULL) {
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

score_response_t *score_response_parseFromJSON(cJSON *score_responseJSON){

    score_response_t *score_response_local_var = NULL;

    // score_response->action
    cJSON *action = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "action");
    if (cJSON_IsNull(action)) {
        action = NULL;
    }
    sirqul_iot_platform_score_response_ACTION_e actionVariable;
    if (action) { 
    if(!cJSON_IsString(action))
    {
    goto end; //Enum
    }
    actionVariable = score_response_action_FromString(action->valuestring);
    }

    // score_response->score_id
    cJSON *score_id = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "scoreId");
    if (cJSON_IsNull(score_id)) {
        score_id = NULL;
    }
    if (score_id) { 
    if(!cJSON_IsNumber(score_id))
    {
    goto end; //Numeric
    }
    }

    // score_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_score_response_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = score_response_status_FromString(status->valuestring);
    }

    // score_response->points
    cJSON *points = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "points");
    if (cJSON_IsNull(points)) {
        points = NULL;
    }
    if (points) { 
    if(!cJSON_IsNumber(points))
    {
    goto end; //Numeric
    }
    }

    // score_response->time_taken
    cJSON *time_taken = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "timeTaken");
    if (cJSON_IsNull(time_taken)) {
        time_taken = NULL;
    }
    if (time_taken) { 
    if(!cJSON_IsNumber(time_taken))
    {
    goto end; //Numeric
    }
    }

    // score_response->tickets_earned
    cJSON *tickets_earned = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "ticketsEarned");
    if (cJSON_IsNull(tickets_earned)) {
        tickets_earned = NULL;
    }
    if (tickets_earned) { 
    if(!cJSON_IsNumber(tickets_earned))
    {
    goto end; //Numeric
    }
    }

    // score_response->game_type
    cJSON *game_type = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "gameType");
    if (cJSON_IsNull(game_type)) {
        game_type = NULL;
    }
    if (game_type) { 
    if(!cJSON_IsString(game_type) && !cJSON_IsNull(game_type))
    {
    goto end; //String
    }
    }

    // score_response->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // score_response->account_display
    cJSON *account_display = cJSON_GetObjectItemCaseSensitive(score_responseJSON, "accountDisplay");
    if (cJSON_IsNull(account_display)) {
        account_display = NULL;
    }
    if (account_display) { 
    if(!cJSON_IsString(account_display) && !cJSON_IsNull(account_display))
    {
    goto end; //String
    }
    }


    score_response_local_var = score_response_create_internal (
        action ? actionVariable : sirqul_iot_platform_score_response_ACTION_NULL,
        score_id ? score_id->valuedouble : 0,
        status ? statusVariable : sirqul_iot_platform_score_response_STATUS_NULL,
        points ? points->valuedouble : 0,
        time_taken ? time_taken->valuedouble : 0,
        tickets_earned ? tickets_earned->valuedouble : 0,
        game_type && !cJSON_IsNull(game_type) ? strdup(game_type->valuestring) : NULL,
        account_id ? account_id->valuedouble : 0,
        account_display && !cJSON_IsNull(account_display) ? strdup(account_display->valuestring) : NULL
        );

    return score_response_local_var;
end:
    return NULL;

}
