#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "listing.h"



static listing_t *listing_create_internal(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *name,
    char *description,
    char *start,
    char *end,
    char *location_name,
    char *location_description,
    list_t *participants,
    char *external_id,
    char *external_group_id,
    list_t *filters,
    int _private
    ) {
    listing_t *listing_local_var = malloc(sizeof(listing_t));
    if (!listing_local_var) {
        return NULL;
    }
    listing_local_var->id = id;
    listing_local_var->active = active;
    listing_local_var->valid = valid;
    listing_local_var->owner = owner;
    listing_local_var->name = name;
    listing_local_var->description = description;
    listing_local_var->start = start;
    listing_local_var->end = end;
    listing_local_var->location_name = location_name;
    listing_local_var->location_description = location_description;
    listing_local_var->participants = participants;
    listing_local_var->external_id = external_id;
    listing_local_var->external_group_id = external_group_id;
    listing_local_var->filters = filters;
    listing_local_var->_private = _private;

    listing_local_var->_library_owned = 1;
    return listing_local_var;
}

__attribute__((deprecated)) listing_t *listing_create(
    long id,
    int active,
    int valid,
    account_t *owner,
    char *name,
    char *description,
    char *start,
    char *end,
    char *location_name,
    char *location_description,
    list_t *participants,
    char *external_id,
    char *external_group_id,
    list_t *filters,
    int _private
    ) {
    return listing_create_internal (
        id,
        active,
        valid,
        owner,
        name,
        description,
        start,
        end,
        location_name,
        location_description,
        participants,
        external_id,
        external_group_id,
        filters,
        _private
        );
}

void listing_free(listing_t *listing) {
    if(NULL == listing){
        return ;
    }
    if(listing->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "listing_free");
        return ;
    }
    listEntry_t *listEntry;
    if (listing->owner) {
        account_free(listing->owner);
        listing->owner = NULL;
    }
    if (listing->name) {
        free(listing->name);
        listing->name = NULL;
    }
    if (listing->description) {
        free(listing->description);
        listing->description = NULL;
    }
    if (listing->start) {
        free(listing->start);
        listing->start = NULL;
    }
    if (listing->end) {
        free(listing->end);
        listing->end = NULL;
    }
    if (listing->location_name) {
        free(listing->location_name);
        listing->location_name = NULL;
    }
    if (listing->location_description) {
        free(listing->location_description);
        listing->location_description = NULL;
    }
    if (listing->participants) {
        list_ForEach(listEntry, listing->participants) {
            participant_free(listEntry->data);
        }
        list_freeList(listing->participants);
        listing->participants = NULL;
    }
    if (listing->external_id) {
        free(listing->external_id);
        listing->external_id = NULL;
    }
    if (listing->external_group_id) {
        free(listing->external_group_id);
        listing->external_group_id = NULL;
    }
    if (listing->filters) {
        list_ForEach(listEntry, listing->filters) {
            filter_free(listEntry->data);
        }
        list_freeList(listing->filters);
        listing->filters = NULL;
    }
    free(listing);
}

cJSON *listing_convertToJSON(listing_t *listing) {
    cJSON *item = cJSON_CreateObject();

    // listing->id
    if(listing->id) {
    if(cJSON_AddNumberToObject(item, "id", listing->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // listing->active
    if(listing->active) {
    if(cJSON_AddBoolToObject(item, "active", listing->active) == NULL) {
    goto fail; //Bool
    }
    }


    // listing->valid
    if(listing->valid) {
    if(cJSON_AddBoolToObject(item, "valid", listing->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // listing->owner
    if(listing->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(listing->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // listing->name
    if(listing->name) {
    if(cJSON_AddStringToObject(item, "name", listing->name) == NULL) {
    goto fail; //String
    }
    }


    // listing->description
    if(listing->description) {
    if(cJSON_AddStringToObject(item, "description", listing->description) == NULL) {
    goto fail; //String
    }
    }


    // listing->start
    if(listing->start) {
    if(cJSON_AddStringToObject(item, "start", listing->start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // listing->end
    if(listing->end) {
    if(cJSON_AddStringToObject(item, "end", listing->end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // listing->location_name
    if(listing->location_name) {
    if(cJSON_AddStringToObject(item, "locationName", listing->location_name) == NULL) {
    goto fail; //String
    }
    }


    // listing->location_description
    if(listing->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", listing->location_description) == NULL) {
    goto fail; //String
    }
    }


    // listing->participants
    if(listing->participants) {
    cJSON *participants = cJSON_AddArrayToObject(item, "participants");
    if(participants == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *participantsListEntry;
    if (listing->participants) {
    list_ForEach(participantsListEntry, listing->participants) {
    cJSON *itemLocal = participant_convertToJSON(participantsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(participants, itemLocal);
    }
    }
    }


    // listing->external_id
    if(listing->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", listing->external_id) == NULL) {
    goto fail; //String
    }
    }


    // listing->external_group_id
    if(listing->external_group_id) {
    if(cJSON_AddStringToObject(item, "externalGroupId", listing->external_group_id) == NULL) {
    goto fail; //String
    }
    }


    // listing->filters
    if(listing->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (listing->filters) {
    list_ForEach(filtersListEntry, listing->filters) {
    cJSON *itemLocal = filter_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }


    // listing->_private
    if(listing->_private) {
    if(cJSON_AddBoolToObject(item, "private", listing->_private) == NULL) {
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

listing_t *listing_parseFromJSON(cJSON *listingJSON){

    listing_t *listing_local_var = NULL;

    // define the local variable for listing->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for listing->participants
    list_t *participantsList = NULL;

    // define the local list for listing->filters
    list_t *filtersList = NULL;

    // listing->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(listingJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // listing->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(listingJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // listing->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(listingJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // listing->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(listingJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // listing->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(listingJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // listing->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(listingJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // listing->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(listingJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsString(start) && !cJSON_IsNull(start))
    {
    goto end; //DateTime
    }
    }

    // listing->end
    cJSON *end = cJSON_GetObjectItemCaseSensitive(listingJSON, "end");
    if (cJSON_IsNull(end)) {
        end = NULL;
    }
    if (end) { 
    if(!cJSON_IsString(end) && !cJSON_IsNull(end))
    {
    goto end; //DateTime
    }
    }

    // listing->location_name
    cJSON *location_name = cJSON_GetObjectItemCaseSensitive(listingJSON, "locationName");
    if (cJSON_IsNull(location_name)) {
        location_name = NULL;
    }
    if (location_name) { 
    if(!cJSON_IsString(location_name) && !cJSON_IsNull(location_name))
    {
    goto end; //String
    }
    }

    // listing->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(listingJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // listing->participants
    cJSON *participants = cJSON_GetObjectItemCaseSensitive(listingJSON, "participants");
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
        participant_t *participantsItem = participant_parseFromJSON(participants_local_nonprimitive);

        list_addElement(participantsList, participantsItem);
    }
    }

    // listing->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(listingJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // listing->external_group_id
    cJSON *external_group_id = cJSON_GetObjectItemCaseSensitive(listingJSON, "externalGroupId");
    if (cJSON_IsNull(external_group_id)) {
        external_group_id = NULL;
    }
    if (external_group_id) { 
    if(!cJSON_IsString(external_group_id) && !cJSON_IsNull(external_group_id))
    {
    goto end; //String
    }
    }

    // listing->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(listingJSON, "filters");
    if (cJSON_IsNull(filters)) {
        filters = NULL;
    }
    if (filters) { 
    cJSON *filters_local_nonprimitive = NULL;
    if(!cJSON_IsArray(filters)){
        goto end; //nonprimitive container
    }

    filtersList = list_createList();

    cJSON_ArrayForEach(filters_local_nonprimitive,filters )
    {
        if(!cJSON_IsObject(filters_local_nonprimitive)){
            goto end;
        }
        filter_t *filtersItem = filter_parseFromJSON(filters_local_nonprimitive);

        list_addElement(filtersList, filtersItem);
    }
    }

    // listing->_private
    cJSON *_private = cJSON_GetObjectItemCaseSensitive(listingJSON, "private");
    if (cJSON_IsNull(_private)) {
        _private = NULL;
    }
    if (_private) { 
    if(!cJSON_IsBool(_private))
    {
    goto end; //Bool
    }
    }


    listing_local_var = listing_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        owner ? owner_local_nonprim : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        start && !cJSON_IsNull(start) ? strdup(start->valuestring) : NULL,
        end && !cJSON_IsNull(end) ? strdup(end->valuestring) : NULL,
        location_name && !cJSON_IsNull(location_name) ? strdup(location_name->valuestring) : NULL,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        participants ? participantsList : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        external_group_id && !cJSON_IsNull(external_group_id) ? strdup(external_group_id->valuestring) : NULL,
        filters ? filtersList : NULL,
        _private ? _private->valueint : 0
        );

    return listing_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (participantsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, participantsList) {
            participant_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(participantsList);
        participantsList = NULL;
    }
    if (filtersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, filtersList) {
            filter_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(filtersList);
        filtersList = NULL;
    }
    return NULL;

}
