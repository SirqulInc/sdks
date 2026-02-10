#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "preview_persona_response.h"



static preview_persona_response_t *preview_persona_response_create_internal(
    long persona_id,
    char *title,
    list_t *preview_accounts,
    int active,
    long date,
    int age,
    char *gender,
    char *game_experience_level,
    double latitude,
    double longitude
    ) {
    preview_persona_response_t *preview_persona_response_local_var = malloc(sizeof(preview_persona_response_t));
    if (!preview_persona_response_local_var) {
        return NULL;
    }
    preview_persona_response_local_var->persona_id = persona_id;
    preview_persona_response_local_var->title = title;
    preview_persona_response_local_var->preview_accounts = preview_accounts;
    preview_persona_response_local_var->active = active;
    preview_persona_response_local_var->date = date;
    preview_persona_response_local_var->age = age;
    preview_persona_response_local_var->gender = gender;
    preview_persona_response_local_var->game_experience_level = game_experience_level;
    preview_persona_response_local_var->latitude = latitude;
    preview_persona_response_local_var->longitude = longitude;

    preview_persona_response_local_var->_library_owned = 1;
    return preview_persona_response_local_var;
}

__attribute__((deprecated)) preview_persona_response_t *preview_persona_response_create(
    long persona_id,
    char *title,
    list_t *preview_accounts,
    int active,
    long date,
    int age,
    char *gender,
    char *game_experience_level,
    double latitude,
    double longitude
    ) {
    return preview_persona_response_create_internal (
        persona_id,
        title,
        preview_accounts,
        active,
        date,
        age,
        gender,
        game_experience_level,
        latitude,
        longitude
        );
}

void preview_persona_response_free(preview_persona_response_t *preview_persona_response) {
    if(NULL == preview_persona_response){
        return ;
    }
    if(preview_persona_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "preview_persona_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (preview_persona_response->title) {
        free(preview_persona_response->title);
        preview_persona_response->title = NULL;
    }
    if (preview_persona_response->preview_accounts) {
        list_ForEach(listEntry, preview_persona_response->preview_accounts) {
            account_mini_response_free(listEntry->data);
        }
        list_freeList(preview_persona_response->preview_accounts);
        preview_persona_response->preview_accounts = NULL;
    }
    if (preview_persona_response->gender) {
        free(preview_persona_response->gender);
        preview_persona_response->gender = NULL;
    }
    if (preview_persona_response->game_experience_level) {
        free(preview_persona_response->game_experience_level);
        preview_persona_response->game_experience_level = NULL;
    }
    free(preview_persona_response);
}

cJSON *preview_persona_response_convertToJSON(preview_persona_response_t *preview_persona_response) {
    cJSON *item = cJSON_CreateObject();

    // preview_persona_response->persona_id
    if(preview_persona_response->persona_id) {
    if(cJSON_AddNumberToObject(item, "personaId", preview_persona_response->persona_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // preview_persona_response->title
    if(preview_persona_response->title) {
    if(cJSON_AddStringToObject(item, "title", preview_persona_response->title) == NULL) {
    goto fail; //String
    }
    }


    // preview_persona_response->preview_accounts
    if(preview_persona_response->preview_accounts) {
    cJSON *preview_accounts = cJSON_AddArrayToObject(item, "previewAccounts");
    if(preview_accounts == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *preview_accountsListEntry;
    if (preview_persona_response->preview_accounts) {
    list_ForEach(preview_accountsListEntry, preview_persona_response->preview_accounts) {
    cJSON *itemLocal = account_mini_response_convertToJSON(preview_accountsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(preview_accounts, itemLocal);
    }
    }
    }


    // preview_persona_response->active
    if(preview_persona_response->active) {
    if(cJSON_AddBoolToObject(item, "active", preview_persona_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // preview_persona_response->date
    if(preview_persona_response->date) {
    if(cJSON_AddNumberToObject(item, "date", preview_persona_response->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // preview_persona_response->age
    if(preview_persona_response->age) {
    if(cJSON_AddNumberToObject(item, "age", preview_persona_response->age) == NULL) {
    goto fail; //Numeric
    }
    }


    // preview_persona_response->gender
    if(preview_persona_response->gender) {
    if(cJSON_AddStringToObject(item, "gender", preview_persona_response->gender) == NULL) {
    goto fail; //String
    }
    }


    // preview_persona_response->game_experience_level
    if(preview_persona_response->game_experience_level) {
    if(cJSON_AddStringToObject(item, "gameExperienceLevel", preview_persona_response->game_experience_level) == NULL) {
    goto fail; //String
    }
    }


    // preview_persona_response->latitude
    if(preview_persona_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", preview_persona_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // preview_persona_response->longitude
    if(preview_persona_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", preview_persona_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

preview_persona_response_t *preview_persona_response_parseFromJSON(cJSON *preview_persona_responseJSON){

    preview_persona_response_t *preview_persona_response_local_var = NULL;

    // define the local list for preview_persona_response->preview_accounts
    list_t *preview_accountsList = NULL;

    // preview_persona_response->persona_id
    cJSON *persona_id = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "personaId");
    if (cJSON_IsNull(persona_id)) {
        persona_id = NULL;
    }
    if (persona_id) { 
    if(!cJSON_IsNumber(persona_id))
    {
    goto end; //Numeric
    }
    }

    // preview_persona_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // preview_persona_response->preview_accounts
    cJSON *preview_accounts = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "previewAccounts");
    if (cJSON_IsNull(preview_accounts)) {
        preview_accounts = NULL;
    }
    if (preview_accounts) { 
    cJSON *preview_accounts_local_nonprimitive = NULL;
    if(!cJSON_IsArray(preview_accounts)){
        goto end; //nonprimitive container
    }

    preview_accountsList = list_createList();

    cJSON_ArrayForEach(preview_accounts_local_nonprimitive,preview_accounts )
    {
        if(!cJSON_IsObject(preview_accounts_local_nonprimitive)){
            goto end;
        }
        account_mini_response_t *preview_accountsItem = account_mini_response_parseFromJSON(preview_accounts_local_nonprimitive);

        list_addElement(preview_accountsList, preview_accountsItem);
    }
    }

    // preview_persona_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // preview_persona_response->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "date");
    if (cJSON_IsNull(date)) {
        date = NULL;
    }
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // preview_persona_response->age
    cJSON *age = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "age");
    if (cJSON_IsNull(age)) {
        age = NULL;
    }
    if (age) { 
    if(!cJSON_IsNumber(age))
    {
    goto end; //Numeric
    }
    }

    // preview_persona_response->gender
    cJSON *gender = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "gender");
    if (cJSON_IsNull(gender)) {
        gender = NULL;
    }
    if (gender) { 
    if(!cJSON_IsString(gender) && !cJSON_IsNull(gender))
    {
    goto end; //String
    }
    }

    // preview_persona_response->game_experience_level
    cJSON *game_experience_level = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "gameExperienceLevel");
    if (cJSON_IsNull(game_experience_level)) {
        game_experience_level = NULL;
    }
    if (game_experience_level) { 
    if(!cJSON_IsString(game_experience_level) && !cJSON_IsNull(game_experience_level))
    {
    goto end; //String
    }
    }

    // preview_persona_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // preview_persona_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(preview_persona_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }


    preview_persona_response_local_var = preview_persona_response_create_internal (
        persona_id ? persona_id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        preview_accounts ? preview_accountsList : NULL,
        active ? active->valueint : 0,
        date ? date->valuedouble : 0,
        age ? age->valuedouble : 0,
        gender && !cJSON_IsNull(gender) ? strdup(gender->valuestring) : NULL,
        game_experience_level && !cJSON_IsNull(game_experience_level) ? strdup(game_experience_level->valuestring) : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0
        );

    return preview_persona_response_local_var;
end:
    if (preview_accountsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, preview_accountsList) {
            account_mini_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(preview_accountsList);
        preview_accountsList = NULL;
    }
    return NULL;

}
