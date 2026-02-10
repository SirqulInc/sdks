#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "participant.h"


char* participant_type_ToString(sirqul_iot_platform_participant_TYPE_e type) {
    char* typeArray[] =  { "NULL", "TEAM", "LEAGUE", "SPORT" };
    return typeArray[type];
}

sirqul_iot_platform_participant_TYPE_e participant_type_FromString(char* type){
    int stringToReturn = 0;
    char *typeArray[] =  { "NULL", "TEAM", "LEAGUE", "SPORT" };
    size_t sizeofArray = sizeof(typeArray) / sizeof(typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(type, typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static participant_t *participant_create_internal(
    long id,
    int active,
    int valid,
    account_t *account,
    char *available_start,
    char *available_end,
    char *color1,
    char *color2,
    sirqul_iot_platform_participant_TYPE_e type
    ) {
    participant_t *participant_local_var = malloc(sizeof(participant_t));
    if (!participant_local_var) {
        return NULL;
    }
    participant_local_var->id = id;
    participant_local_var->active = active;
    participant_local_var->valid = valid;
    participant_local_var->account = account;
    participant_local_var->available_start = available_start;
    participant_local_var->available_end = available_end;
    participant_local_var->color1 = color1;
    participant_local_var->color2 = color2;
    participant_local_var->type = type;

    participant_local_var->_library_owned = 1;
    return participant_local_var;
}

__attribute__((deprecated)) participant_t *participant_create(
    long id,
    int active,
    int valid,
    account_t *account,
    char *available_start,
    char *available_end,
    char *color1,
    char *color2,
    sirqul_iot_platform_participant_TYPE_e type
    ) {
    return participant_create_internal (
        id,
        active,
        valid,
        account,
        available_start,
        available_end,
        color1,
        color2,
        type
        );
}

void participant_free(participant_t *participant) {
    if(NULL == participant){
        return ;
    }
    if(participant->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "participant_free");
        return ;
    }
    listEntry_t *listEntry;
    if (participant->account) {
        account_free(participant->account);
        participant->account = NULL;
    }
    if (participant->available_start) {
        free(participant->available_start);
        participant->available_start = NULL;
    }
    if (participant->available_end) {
        free(participant->available_end);
        participant->available_end = NULL;
    }
    if (participant->color1) {
        free(participant->color1);
        participant->color1 = NULL;
    }
    if (participant->color2) {
        free(participant->color2);
        participant->color2 = NULL;
    }
    free(participant);
}

cJSON *participant_convertToJSON(participant_t *participant) {
    cJSON *item = cJSON_CreateObject();

    // participant->id
    if(participant->id) {
    if(cJSON_AddNumberToObject(item, "id", participant->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // participant->active
    if(participant->active) {
    if(cJSON_AddBoolToObject(item, "active", participant->active) == NULL) {
    goto fail; //Bool
    }
    }


    // participant->valid
    if(participant->valid) {
    if(cJSON_AddBoolToObject(item, "valid", participant->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // participant->account
    if(participant->account) {
    cJSON *account_local_JSON = account_convertToJSON(participant->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // participant->available_start
    if(participant->available_start) {
    if(cJSON_AddStringToObject(item, "availableStart", participant->available_start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // participant->available_end
    if(participant->available_end) {
    if(cJSON_AddStringToObject(item, "availableEnd", participant->available_end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // participant->color1
    if(participant->color1) {
    if(cJSON_AddStringToObject(item, "color1", participant->color1) == NULL) {
    goto fail; //String
    }
    }


    // participant->color2
    if(participant->color2) {
    if(cJSON_AddStringToObject(item, "color2", participant->color2) == NULL) {
    goto fail; //String
    }
    }


    // participant->type
    if(participant->type != sirqul_iot_platform_participant_TYPE_NULL) {
    if(cJSON_AddStringToObject(item, "type", participant_type_ToString(participant->type)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

participant_t *participant_parseFromJSON(cJSON *participantJSON){

    participant_t *participant_local_var = NULL;

    // define the local variable for participant->account
    account_t *account_local_nonprim = NULL;

    // participant->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(participantJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // participant->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(participantJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // participant->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(participantJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // participant->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(participantJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_parseFromJSON(account); //nonprimitive
    }

    // participant->available_start
    cJSON *available_start = cJSON_GetObjectItemCaseSensitive(participantJSON, "availableStart");
    if (cJSON_IsNull(available_start)) {
        available_start = NULL;
    }
    if (available_start) { 
    if(!cJSON_IsString(available_start) && !cJSON_IsNull(available_start))
    {
    goto end; //DateTime
    }
    }

    // participant->available_end
    cJSON *available_end = cJSON_GetObjectItemCaseSensitive(participantJSON, "availableEnd");
    if (cJSON_IsNull(available_end)) {
        available_end = NULL;
    }
    if (available_end) { 
    if(!cJSON_IsString(available_end) && !cJSON_IsNull(available_end))
    {
    goto end; //DateTime
    }
    }

    // participant->color1
    cJSON *color1 = cJSON_GetObjectItemCaseSensitive(participantJSON, "color1");
    if (cJSON_IsNull(color1)) {
        color1 = NULL;
    }
    if (color1) { 
    if(!cJSON_IsString(color1) && !cJSON_IsNull(color1))
    {
    goto end; //String
    }
    }

    // participant->color2
    cJSON *color2 = cJSON_GetObjectItemCaseSensitive(participantJSON, "color2");
    if (cJSON_IsNull(color2)) {
        color2 = NULL;
    }
    if (color2) { 
    if(!cJSON_IsString(color2) && !cJSON_IsNull(color2))
    {
    goto end; //String
    }
    }

    // participant->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(participantJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    sirqul_iot_platform_participant_TYPE_e typeVariable;
    if (type) { 
    if(!cJSON_IsString(type))
    {
    goto end; //Enum
    }
    typeVariable = participant_type_FromString(type->valuestring);
    }


    participant_local_var = participant_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        account ? account_local_nonprim : NULL,
        available_start && !cJSON_IsNull(available_start) ? strdup(available_start->valuestring) : NULL,
        available_end && !cJSON_IsNull(available_end) ? strdup(available_end->valuestring) : NULL,
        color1 && !cJSON_IsNull(color1) ? strdup(color1->valuestring) : NULL,
        color2 && !cJSON_IsNull(color2) ? strdup(color2->valuestring) : NULL,
        type ? typeVariable : sirqul_iot_platform_participant_TYPE_NULL
        );

    return participant_local_var;
end:
    if (account_local_nonprim) {
        account_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    return NULL;

}
