#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "listing_response.h"



static listing_response_t *listing_response_create_internal(
    long id,
    char *name,
    char *description,
    long start,
    long end,
    char *location_name,
    char *location_description,
    int private_listing,
    int active,
    list_t *participants,
    account_short_response_t *owner
    ) {
    listing_response_t *listing_response_local_var = malloc(sizeof(listing_response_t));
    if (!listing_response_local_var) {
        return NULL;
    }
    listing_response_local_var->id = id;
    listing_response_local_var->name = name;
    listing_response_local_var->description = description;
    listing_response_local_var->start = start;
    listing_response_local_var->end = end;
    listing_response_local_var->location_name = location_name;
    listing_response_local_var->location_description = location_description;
    listing_response_local_var->private_listing = private_listing;
    listing_response_local_var->active = active;
    listing_response_local_var->participants = participants;
    listing_response_local_var->owner = owner;

    listing_response_local_var->_library_owned = 1;
    return listing_response_local_var;
}

__attribute__((deprecated)) listing_response_t *listing_response_create(
    long id,
    char *name,
    char *description,
    long start,
    long end,
    char *location_name,
    char *location_description,
    int private_listing,
    int active,
    list_t *participants,
    account_short_response_t *owner
    ) {
    return listing_response_create_internal (
        id,
        name,
        description,
        start,
        end,
        location_name,
        location_description,
        private_listing,
        active,
        participants,
        owner
        );
}

void listing_response_free(listing_response_t *listing_response) {
    if(NULL == listing_response){
        return ;
    }
    if(listing_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "listing_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (listing_response->name) {
        free(listing_response->name);
        listing_response->name = NULL;
    }
    if (listing_response->description) {
        free(listing_response->description);
        listing_response->description = NULL;
    }
    if (listing_response->location_name) {
        free(listing_response->location_name);
        listing_response->location_name = NULL;
    }
    if (listing_response->location_description) {
        free(listing_response->location_description);
        listing_response->location_description = NULL;
    }
    if (listing_response->participants) {
        list_ForEach(listEntry, listing_response->participants) {
            participant_response_free(listEntry->data);
        }
        list_freeList(listing_response->participants);
        listing_response->participants = NULL;
    }
    if (listing_response->owner) {
        account_short_response_free(listing_response->owner);
        listing_response->owner = NULL;
    }
    free(listing_response);
}

cJSON *listing_response_convertToJSON(listing_response_t *listing_response) {
    cJSON *item = cJSON_CreateObject();

    // listing_response->id
    if(listing_response->id) {
    if(cJSON_AddNumberToObject(item, "id", listing_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // listing_response->name
    if(listing_response->name) {
    if(cJSON_AddStringToObject(item, "name", listing_response->name) == NULL) {
    goto fail; //String
    }
    }


    // listing_response->description
    if(listing_response->description) {
    if(cJSON_AddStringToObject(item, "description", listing_response->description) == NULL) {
    goto fail; //String
    }
    }


    // listing_response->start
    if(listing_response->start) {
    if(cJSON_AddNumberToObject(item, "start", listing_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // listing_response->end
    if(listing_response->end) {
    if(cJSON_AddNumberToObject(item, "end", listing_response->end) == NULL) {
    goto fail; //Numeric
    }
    }


    // listing_response->location_name
    if(listing_response->location_name) {
    if(cJSON_AddStringToObject(item, "locationName", listing_response->location_name) == NULL) {
    goto fail; //String
    }
    }


    // listing_response->location_description
    if(listing_response->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", listing_response->location_description) == NULL) {
    goto fail; //String
    }
    }


    // listing_response->private_listing
    if(listing_response->private_listing) {
    if(cJSON_AddBoolToObject(item, "privateListing", listing_response->private_listing) == NULL) {
    goto fail; //Bool
    }
    }


    // listing_response->active
    if(listing_response->active) {
    if(cJSON_AddBoolToObject(item, "active", listing_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // listing_response->participants
    if(listing_response->participants) {
    cJSON *participants = cJSON_AddArrayToObject(item, "participants");
    if(participants == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *participantsListEntry;
    if (listing_response->participants) {
    list_ForEach(participantsListEntry, listing_response->participants) {
    cJSON *itemLocal = participant_response_convertToJSON(participantsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(participants, itemLocal);
    }
    }
    }


    // listing_response->owner
    if(listing_response->owner) {
    cJSON *owner_local_JSON = account_short_response_convertToJSON(listing_response->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
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

listing_response_t *listing_response_parseFromJSON(cJSON *listing_responseJSON){

    listing_response_t *listing_response_local_var = NULL;

    // define the local list for listing_response->participants
    list_t *participantsList = NULL;

    // define the local variable for listing_response->owner
    account_short_response_t *owner_local_nonprim = NULL;

    // listing_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // listing_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // listing_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // listing_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // listing_response->end
    cJSON *end = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "end");
    if (cJSON_IsNull(end)) {
        end = NULL;
    }
    if (end) { 
    if(!cJSON_IsNumber(end))
    {
    goto end; //Numeric
    }
    }

    // listing_response->location_name
    cJSON *location_name = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "locationName");
    if (cJSON_IsNull(location_name)) {
        location_name = NULL;
    }
    if (location_name) { 
    if(!cJSON_IsString(location_name) && !cJSON_IsNull(location_name))
    {
    goto end; //String
    }
    }

    // listing_response->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // listing_response->private_listing
    cJSON *private_listing = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "privateListing");
    if (cJSON_IsNull(private_listing)) {
        private_listing = NULL;
    }
    if (private_listing) { 
    if(!cJSON_IsBool(private_listing))
    {
    goto end; //Bool
    }
    }

    // listing_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // listing_response->participants
    cJSON *participants = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "participants");
    if (cJSON_IsNull(participants)) {
        participants = NULL;
    }
    if (participants) { 
    cJSON *participants_local_nonprimitive = NULL;
    if(!cJSON_IsArray(participants)){
        goto end; //nonprimitive container
    }

    participantsList = list_createList();

    cJSON_ArrayForEach(participants_local_nonprimitive,participants )
    {
        if(!cJSON_IsObject(participants_local_nonprimitive)){
            goto end;
        }
        participant_response_t *participantsItem = participant_response_parseFromJSON(participants_local_nonprimitive);

        list_addElement(participantsList, participantsItem);
    }
    }

    // listing_response->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(listing_responseJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_short_response_parseFromJSON(owner); //nonprimitive
    }


    listing_response_local_var = listing_response_create_internal (
        id ? id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        start ? start->valuedouble : 0,
        end ? end->valuedouble : 0,
        location_name && !cJSON_IsNull(location_name) ? strdup(location_name->valuestring) : NULL,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        private_listing ? private_listing->valueint : 0,
        active ? active->valueint : 0,
        participants ? participantsList : NULL,
        owner ? owner_local_nonprim : NULL
        );

    return listing_response_local_var;
end:
    if (participantsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, participantsList) {
            participant_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(participantsList);
        participantsList = NULL;
    }
    if (owner_local_nonprim) {
        account_short_response_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
