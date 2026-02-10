#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "offer_transaction_status_response.h"



static offer_transaction_status_response_t *offer_transaction_status_response_create_internal(
    long id,
    int active,
    char *name,
    char *description,
    int code,
    char *role,
    list_t *applications
    ) {
    offer_transaction_status_response_t *offer_transaction_status_response_local_var = malloc(sizeof(offer_transaction_status_response_t));
    if (!offer_transaction_status_response_local_var) {
        return NULL;
    }
    offer_transaction_status_response_local_var->id = id;
    offer_transaction_status_response_local_var->active = active;
    offer_transaction_status_response_local_var->name = name;
    offer_transaction_status_response_local_var->description = description;
    offer_transaction_status_response_local_var->code = code;
    offer_transaction_status_response_local_var->role = role;
    offer_transaction_status_response_local_var->applications = applications;

    offer_transaction_status_response_local_var->_library_owned = 1;
    return offer_transaction_status_response_local_var;
}

__attribute__((deprecated)) offer_transaction_status_response_t *offer_transaction_status_response_create(
    long id,
    int active,
    char *name,
    char *description,
    int code,
    char *role,
    list_t *applications
    ) {
    return offer_transaction_status_response_create_internal (
        id,
        active,
        name,
        description,
        code,
        role,
        applications
        );
}

void offer_transaction_status_response_free(offer_transaction_status_response_t *offer_transaction_status_response) {
    if(NULL == offer_transaction_status_response){
        return ;
    }
    if(offer_transaction_status_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "offer_transaction_status_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (offer_transaction_status_response->name) {
        free(offer_transaction_status_response->name);
        offer_transaction_status_response->name = NULL;
    }
    if (offer_transaction_status_response->description) {
        free(offer_transaction_status_response->description);
        offer_transaction_status_response->description = NULL;
    }
    if (offer_transaction_status_response->role) {
        free(offer_transaction_status_response->role);
        offer_transaction_status_response->role = NULL;
    }
    if (offer_transaction_status_response->applications) {
        list_ForEach(listEntry, offer_transaction_status_response->applications) {
            application_short_response_free(listEntry->data);
        }
        list_freeList(offer_transaction_status_response->applications);
        offer_transaction_status_response->applications = NULL;
    }
    free(offer_transaction_status_response);
}

cJSON *offer_transaction_status_response_convertToJSON(offer_transaction_status_response_t *offer_transaction_status_response) {
    cJSON *item = cJSON_CreateObject();

    // offer_transaction_status_response->id
    if(offer_transaction_status_response->id) {
    if(cJSON_AddNumberToObject(item, "id", offer_transaction_status_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_transaction_status_response->active
    if(offer_transaction_status_response->active) {
    if(cJSON_AddBoolToObject(item, "active", offer_transaction_status_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // offer_transaction_status_response->name
    if(offer_transaction_status_response->name) {
    if(cJSON_AddStringToObject(item, "name", offer_transaction_status_response->name) == NULL) {
    goto fail; //String
    }
    }


    // offer_transaction_status_response->description
    if(offer_transaction_status_response->description) {
    if(cJSON_AddStringToObject(item, "description", offer_transaction_status_response->description) == NULL) {
    goto fail; //String
    }
    }


    // offer_transaction_status_response->code
    if(offer_transaction_status_response->code) {
    if(cJSON_AddNumberToObject(item, "code", offer_transaction_status_response->code) == NULL) {
    goto fail; //Numeric
    }
    }


    // offer_transaction_status_response->role
    if(offer_transaction_status_response->role) {
    if(cJSON_AddStringToObject(item, "role", offer_transaction_status_response->role) == NULL) {
    goto fail; //String
    }
    }


    // offer_transaction_status_response->applications
    if(offer_transaction_status_response->applications) {
    cJSON *applications = cJSON_AddArrayToObject(item, "applications");
    if(applications == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *applicationsListEntry;
    if (offer_transaction_status_response->applications) {
    list_ForEach(applicationsListEntry, offer_transaction_status_response->applications) {
    cJSON *itemLocal = application_short_response_convertToJSON(applicationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(applications, itemLocal);
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

offer_transaction_status_response_t *offer_transaction_status_response_parseFromJSON(cJSON *offer_transaction_status_responseJSON){

    offer_transaction_status_response_t *offer_transaction_status_response_local_var = NULL;

    // define the local list for offer_transaction_status_response->applications
    list_t *applicationsList = NULL;

    // offer_transaction_status_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(offer_transaction_status_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // offer_transaction_status_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(offer_transaction_status_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // offer_transaction_status_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(offer_transaction_status_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // offer_transaction_status_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(offer_transaction_status_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // offer_transaction_status_response->code
    cJSON *code = cJSON_GetObjectItemCaseSensitive(offer_transaction_status_responseJSON, "code");
    if (cJSON_IsNull(code)) {
        code = NULL;
    }
    if (code) { 
    if(!cJSON_IsNumber(code))
    {
    goto end; //Numeric
    }
    }

    // offer_transaction_status_response->role
    cJSON *role = cJSON_GetObjectItemCaseSensitive(offer_transaction_status_responseJSON, "role");
    if (cJSON_IsNull(role)) {
        role = NULL;
    }
    if (role) { 
    if(!cJSON_IsString(role) && !cJSON_IsNull(role))
    {
    goto end; //String
    }
    }

    // offer_transaction_status_response->applications
    cJSON *applications = cJSON_GetObjectItemCaseSensitive(offer_transaction_status_responseJSON, "applications");
    if (cJSON_IsNull(applications)) {
        applications = NULL;
    }
    if (applications) { 
    cJSON *applications_local_nonprimitive = NULL;
    if(!cJSON_IsArray(applications)){
        goto end; //nonprimitive container
    }

    applicationsList = list_createList();

    cJSON_ArrayForEach(applications_local_nonprimitive,applications )
    {
        if(!cJSON_IsObject(applications_local_nonprimitive)){
            goto end;
        }
        application_short_response_t *applicationsItem = application_short_response_parseFromJSON(applications_local_nonprimitive);

        list_addElement(applicationsList, applicationsItem);
    }
    }


    offer_transaction_status_response_local_var = offer_transaction_status_response_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        code ? code->valuedouble : 0,
        role && !cJSON_IsNull(role) ? strdup(role->valuestring) : NULL,
        applications ? applicationsList : NULL
        );

    return offer_transaction_status_response_local_var;
end:
    if (applicationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, applicationsList) {
            application_short_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(applicationsList);
        applicationsList = NULL;
    }
    return NULL;

}
