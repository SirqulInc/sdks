#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mission_invite_response.h"


char* mission_invite_response_status_ToString(sirqul_iot_platform_mission_invite_response_STATUS_e status) {
    char* statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    return statusArray[status];
}

sirqul_iot_platform_mission_invite_response_STATUS_e mission_invite_response_status_FromString(char* status){
    int stringToReturn = 0;
    char *statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    size_t sizeofArray = sizeof(statusArray) / sizeof(statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(status, statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* mission_invite_response_invite_status_ToString(sirqul_iot_platform_mission_invite_response_INVITESTATUS_e invite_status) {
    char* invite_statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    return invite_statusArray[invite_status];
}

sirqul_iot_platform_mission_invite_response_INVITESTATUS_e mission_invite_response_invite_status_FromString(char* invite_status){
    int stringToReturn = 0;
    char *invite_statusArray[] =  { "NULL", "AVAILABLE", "PENDING", "UPDATED", "ACCEPTED", "ACTIVE", "BUY_BACK", "FAILED", "QUIT", "COMPLETED", "PENDING_REVIEW", "REJECTED" };
    size_t sizeofArray = sizeof(invite_statusArray) / sizeof(invite_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(invite_status, invite_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static mission_invite_response_t *mission_invite_response_create_internal(
    long id,
    sirqul_iot_platform_mission_invite_response_STATUS_e status,
    char *title,
    char *description,
    account_short_response_t *owner,
    long permissionable_id,
    char *permissionable_type,
    int ranked,
    int rewarded,
    long start_date,
    long end_date,
    long updated,
    int buy_back_available,
    sirqul_iot_platform_mission_invite_response_INVITESTATUS_e invite_status
    ) {
    mission_invite_response_t *mission_invite_response_local_var = malloc(sizeof(mission_invite_response_t));
    if (!mission_invite_response_local_var) {
        return NULL;
    }
    mission_invite_response_local_var->id = id;
    mission_invite_response_local_var->status = status;
    mission_invite_response_local_var->title = title;
    mission_invite_response_local_var->description = description;
    mission_invite_response_local_var->owner = owner;
    mission_invite_response_local_var->permissionable_id = permissionable_id;
    mission_invite_response_local_var->permissionable_type = permissionable_type;
    mission_invite_response_local_var->ranked = ranked;
    mission_invite_response_local_var->rewarded = rewarded;
    mission_invite_response_local_var->start_date = start_date;
    mission_invite_response_local_var->end_date = end_date;
    mission_invite_response_local_var->updated = updated;
    mission_invite_response_local_var->buy_back_available = buy_back_available;
    mission_invite_response_local_var->invite_status = invite_status;

    mission_invite_response_local_var->_library_owned = 1;
    return mission_invite_response_local_var;
}

__attribute__((deprecated)) mission_invite_response_t *mission_invite_response_create(
    long id,
    sirqul_iot_platform_mission_invite_response_STATUS_e status,
    char *title,
    char *description,
    account_short_response_t *owner,
    long permissionable_id,
    char *permissionable_type,
    int ranked,
    int rewarded,
    long start_date,
    long end_date,
    long updated,
    int buy_back_available,
    sirqul_iot_platform_mission_invite_response_INVITESTATUS_e invite_status
    ) {
    return mission_invite_response_create_internal (
        id,
        status,
        title,
        description,
        owner,
        permissionable_id,
        permissionable_type,
        ranked,
        rewarded,
        start_date,
        end_date,
        updated,
        buy_back_available,
        invite_status
        );
}

void mission_invite_response_free(mission_invite_response_t *mission_invite_response) {
    if(NULL == mission_invite_response){
        return ;
    }
    if(mission_invite_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mission_invite_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mission_invite_response->title) {
        free(mission_invite_response->title);
        mission_invite_response->title = NULL;
    }
    if (mission_invite_response->description) {
        free(mission_invite_response->description);
        mission_invite_response->description = NULL;
    }
    if (mission_invite_response->owner) {
        account_short_response_free(mission_invite_response->owner);
        mission_invite_response->owner = NULL;
    }
    if (mission_invite_response->permissionable_type) {
        free(mission_invite_response->permissionable_type);
        mission_invite_response->permissionable_type = NULL;
    }
    free(mission_invite_response);
}

cJSON *mission_invite_response_convertToJSON(mission_invite_response_t *mission_invite_response) {
    cJSON *item = cJSON_CreateObject();

    // mission_invite_response->id
    if(mission_invite_response->id) {
    if(cJSON_AddNumberToObject(item, "id", mission_invite_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_invite_response->status
    if(mission_invite_response->status != sirqul_iot_platform_mission_invite_response_STATUS_NULL) {
    if(cJSON_AddStringToObject(item, "status", mission_invite_response_status_ToString(mission_invite_response->status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // mission_invite_response->title
    if(mission_invite_response->title) {
    if(cJSON_AddStringToObject(item, "title", mission_invite_response->title) == NULL) {
    goto fail; //String
    }
    }


    // mission_invite_response->description
    if(mission_invite_response->description) {
    if(cJSON_AddStringToObject(item, "description", mission_invite_response->description) == NULL) {
    goto fail; //String
    }
    }


    // mission_invite_response->owner
    if(mission_invite_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(mission_invite_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // mission_invite_response->permissionable_id
    if(mission_invite_response->permissionable_id) {
    if(cJSON_AddNumberToObject(item, "permissionableId", mission_invite_response->permissionable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_invite_response->permissionable_type
    if(mission_invite_response->permissionable_type) {
    if(cJSON_AddStringToObject(item, "permissionableType", mission_invite_response->permissionable_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_invite_response->ranked
    if(mission_invite_response->ranked) {
    if(cJSON_AddBoolToObject(item, "ranked", mission_invite_response->ranked) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_invite_response->rewarded
    if(mission_invite_response->rewarded) {
    if(cJSON_AddBoolToObject(item, "rewarded", mission_invite_response->rewarded) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_invite_response->start_date
    if(mission_invite_response->start_date) {
    if(cJSON_AddNumberToObject(item, "startDate", mission_invite_response->start_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_invite_response->end_date
    if(mission_invite_response->end_date) {
    if(cJSON_AddNumberToObject(item, "endDate", mission_invite_response->end_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_invite_response->updated
    if(mission_invite_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", mission_invite_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_invite_response->buy_back_available
    if(mission_invite_response->buy_back_available) {
    if(cJSON_AddBoolToObject(item, "buyBackAvailable", mission_invite_response->buy_back_available) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_invite_response->invite_status
    if(mission_invite_response->invite_status != sirqul_iot_platform_mission_invite_response_INVITESTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "inviteStatus", mission_invite_response_invite_status_ToString(mission_invite_response->invite_status)) == NULL)
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

mission_invite_response_t *mission_invite_response_parseFromJSON(cJSON *mission_invite_responseJSON){

    mission_invite_response_t *mission_invite_response_local_var = NULL;

    // define the local variable for mission_invite_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // mission_invite_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // mission_invite_response->status
    cJSON *status = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "status");
    if (cJSON_IsNull(status)) {
        status = NULL;
    }
    sirqul_iot_platform_mission_invite_response_STATUS_e statusVariable;
    if (status) { 
    if(!cJSON_IsString(status))
    {
    goto end; //Enum
    }
    statusVariable = mission_invite_response_status_FromString(status->valuestring);
    }

    // mission_invite_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // mission_invite_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // mission_invite_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }

    // mission_invite_response->permissionable_id
    cJSON *permissionable_id = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "permissionableId");
    if (cJSON_IsNull(permissionable_id)) {
        permissionable_id = NULL;
    }
    if (permissionable_id) { 
    if(!cJSON_IsNumber(permissionable_id))
    {
    goto end; //Numeric
    }
    }

    // mission_invite_response->permissionable_type
    cJSON *permissionable_type = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "permissionableType");
    if (cJSON_IsNull(permissionable_type)) {
        permissionable_type = NULL;
    }
    if (permissionable_type) { 
    if(!cJSON_IsString(permissionable_type) && !cJSON_IsNull(permissionable_type))
    {
    goto end; //String
    }
    }

    // mission_invite_response->ranked
    cJSON *ranked = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "ranked");
    if (cJSON_IsNull(ranked)) {
        ranked = NULL;
    }
    if (ranked) { 
    if(!cJSON_IsBool(ranked))
    {
    goto end; //Bool
    }
    }

    // mission_invite_response->rewarded
    cJSON *rewarded = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "rewarded");
    if (cJSON_IsNull(rewarded)) {
        rewarded = NULL;
    }
    if (rewarded) { 
    if(!cJSON_IsBool(rewarded))
    {
    goto end; //Bool
    }
    }

    // mission_invite_response->start_date
    cJSON *start_date = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "startDate");
    if (cJSON_IsNull(start_date)) {
        start_date = NULL;
    }
    if (start_date) { 
    if(!cJSON_IsNumber(start_date))
    {
    goto end; //Numeric
    }
    }

    // mission_invite_response->end_date
    cJSON *end_date = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "endDate");
    if (cJSON_IsNull(end_date)) {
        end_date = NULL;
    }
    if (end_date) { 
    if(!cJSON_IsNumber(end_date))
    {
    goto end; //Numeric
    }
    }

    // mission_invite_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // mission_invite_response->buy_back_available
    cJSON *buy_back_available = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "buyBackAvailable");
    if (cJSON_IsNull(buy_back_available)) {
        buy_back_available = NULL;
    }
    if (buy_back_available) { 
    if(!cJSON_IsBool(buy_back_available))
    {
    goto end; //Bool
    }
    }

    // mission_invite_response->invite_status
    cJSON *invite_status = cJSON_GetObjectItemCaseSensitive(mission_invite_responseJSON, "inviteStatus");
    if (cJSON_IsNull(invite_status)) {
        invite_status = NULL;
    }
    sirqul_iot_platform_mission_invite_response_INVITESTATUS_e invite_statusVariable;
    if (invite_status) { 
    if(!cJSON_IsString(invite_status))
    {
    goto end; //Enum
    }
    invite_statusVariable = mission_invite_response_invite_status_FromString(invite_status->valuestring);
    }


    mission_invite_response_local_var = mission_invite_response_create_internal (
        id ? id->valuedouble : 0,
        status ? statusVariable : sirqul_iot_platform_mission_invite_response_STATUS_NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        permissionable_id ? permissionable_id->valuedouble : 0,
        permissionable_type && !cJSON_IsNull(permissionable_type) ? strdup(permissionable_type->valuestring) : NULL,
        ranked ? ranked->valueint : 0,
        rewarded ? rewarded->valueint : 0,
        start_date ? start_date->valuedouble : 0,
        end_date ? end_date->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        buy_back_available ? buy_back_available->valueint : 0,
        invite_status ? invite_statusVariable : sirqul_iot_platform_mission_invite_response_INVITESTATUS_NULL
        );

    return mission_invite_response_local_var;
end:
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
