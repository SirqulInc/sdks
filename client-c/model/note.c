#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "note.h"



static note_t *note_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *notable_type,
    long notable_id,
    char *note_tag,
    list_t *notes,
    list_t *likes,
    list_t *assets,
    char *note_description,
    long like_count,
    long dislike_count,
    long note_count,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    char *content_name,
    long default_threshold
    ) {
    note_t *note_local_var = malloc(sizeof(note_t));
    if (!note_local_var) {
        return NULL;
    }
    note_local_var->id = id;
    note_local_var->active = active;
    note_local_var->valid = valid;
    note_local_var->latitude = latitude;
    note_local_var->longitude = longitude;
    note_local_var->location_description = location_description;
    note_local_var->owner = owner;
    note_local_var->notable_type = notable_type;
    note_local_var->notable_id = notable_id;
    note_local_var->note_tag = note_tag;
    note_local_var->notes = notes;
    note_local_var->likes = likes;
    note_local_var->assets = assets;
    note_local_var->note_description = note_description;
    note_local_var->like_count = like_count;
    note_local_var->dislike_count = dislike_count;
    note_local_var->note_count = note_count;
    note_local_var->flags = flags;
    note_local_var->flag_count = flag_count;
    note_local_var->flag_threshold = flag_threshold;
    note_local_var->content_name = content_name;
    note_local_var->default_threshold = default_threshold;

    note_local_var->_library_owned = 1;
    return note_local_var;
}

__attribute__((deprecated)) note_t *note_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *notable_type,
    long notable_id,
    char *note_tag,
    list_t *notes,
    list_t *likes,
    list_t *assets,
    char *note_description,
    long like_count,
    long dislike_count,
    long note_count,
    list_t *flags,
    long flag_count,
    flag_threshold_t *flag_threshold,
    char *content_name,
    long default_threshold
    ) {
    return note_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        owner,
        notable_type,
        notable_id,
        note_tag,
        notes,
        likes,
        assets,
        note_description,
        like_count,
        dislike_count,
        note_count,
        flags,
        flag_count,
        flag_threshold,
        content_name,
        default_threshold
        );
}

void note_free(note_t *note) {
    if(NULL == note){
        return ;
    }
    if(note->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "note_free");
        return ;
    }
    listEntry_t *listEntry;
    if (note->location_description) {
        free(note->location_description);
        note->location_description = NULL;
    }
    if (note->owner) {
        account_free(note->owner);
        note->owner = NULL;
    }
    if (note->notable_type) {
        free(note->notable_type);
        note->notable_type = NULL;
    }
    if (note->note_tag) {
        free(note->note_tag);
        note->note_tag = NULL;
    }
    if (note->notes) {
        list_ForEach(listEntry, note->notes) {
            note_free(listEntry->data);
        }
        list_freeList(note->notes);
        note->notes = NULL;
    }
    if (note->likes) {
        list_ForEach(listEntry, note->likes) {
            yay_or_nay_free(listEntry->data);
        }
        list_freeList(note->likes);
        note->likes = NULL;
    }
    if (note->assets) {
        list_ForEach(listEntry, note->assets) {
            asset_free(listEntry->data);
        }
        list_freeList(note->assets);
        note->assets = NULL;
    }
    if (note->note_description) {
        free(note->note_description);
        note->note_description = NULL;
    }
    if (note->flags) {
        list_ForEach(listEntry, note->flags) {
            flag_free(listEntry->data);
        }
        list_freeList(note->flags);
        note->flags = NULL;
    }
    if (note->flag_threshold) {
        flag_threshold_free(note->flag_threshold);
        note->flag_threshold = NULL;
    }
    if (note->content_name) {
        free(note->content_name);
        note->content_name = NULL;
    }
    free(note);
}

cJSON *note_convertToJSON(note_t *note) {
    cJSON *item = cJSON_CreateObject();

    // note->id
    if(note->id) {
    if(cJSON_AddNumberToObject(item, "id", note->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->active
    if(note->active) {
    if(cJSON_AddBoolToObject(item, "active", note->active) == NULL) {
    goto fail; //Bool
    }
    }


    // note->valid
    if(note->valid) {
    if(cJSON_AddBoolToObject(item, "valid", note->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // note->latitude
    if(note->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", note->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->longitude
    if(note->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", note->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->location_description
    if(note->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", note->location_description) == NULL) {
    goto fail; //String
    }
    }


    // note->owner
    if(note->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(note->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // note->notable_type
    if(note->notable_type) {
    if(cJSON_AddStringToObject(item, "notableType", note->notable_type) == NULL) {
    goto fail; //String
    }
    }


    // note->notable_id
    if(note->notable_id) {
    if(cJSON_AddNumberToObject(item, "notableId", note->notable_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->note_tag
    if(note->note_tag) {
    if(cJSON_AddStringToObject(item, "noteTag", note->note_tag) == NULL) {
    goto fail; //String
    }
    }


    // note->notes
    if(note->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (note->notes) {
    list_ForEach(notesListEntry, note->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // note->likes
    if(note->likes) {
    cJSON *likes = cJSON_AddArrayToObject(item, "likes");
    if(likes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *likesListEntry;
    if (note->likes) {
    list_ForEach(likesListEntry, note->likes) {
    cJSON *itemLocal = yay_or_nay_convertToJSON(likesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(likes, itemLocal);
    }
    }
    }


    // note->assets
    if(note->assets) {
    cJSON *assets = cJSON_AddArrayToObject(item, "assets");
    if(assets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *assetsListEntry;
    if (note->assets) {
    list_ForEach(assetsListEntry, note->assets) {
    cJSON *itemLocal = asset_convertToJSON(assetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(assets, itemLocal);
    }
    }
    }


    // note->note_description
    if(note->note_description) {
    if(cJSON_AddStringToObject(item, "noteDescription", note->note_description) == NULL) {
    goto fail; //String
    }
    }


    // note->like_count
    if(note->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", note->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->dislike_count
    if(note->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", note->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->note_count
    if(note->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", note->note_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->flags
    if(note->flags) {
    cJSON *flags = cJSON_AddArrayToObject(item, "flags");
    if(flags == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *flagsListEntry;
    if (note->flags) {
    list_ForEach(flagsListEntry, note->flags) {
    cJSON *itemLocal = flag_convertToJSON(flagsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(flags, itemLocal);
    }
    }
    }


    // note->flag_count
    if(note->flag_count) {
    if(cJSON_AddNumberToObject(item, "flagCount", note->flag_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // note->flag_threshold
    if(note->flag_threshold) {
    cJSON *flag_threshold_local_JSON = flag_threshold_convertToJSON(note->flag_threshold);
    if(flag_threshold_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "flagThreshold", flag_threshold_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // note->content_name
    if(note->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", note->content_name) == NULL) {
    goto fail; //String
    }
    }


    // note->default_threshold
    if(note->default_threshold) {
    if(cJSON_AddNumberToObject(item, "defaultThreshold", note->default_threshold) == NULL) {
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

note_t *note_parseFromJSON(cJSON *noteJSON){

    note_t *note_local_var = NULL;

    // define the local variable for note->owner
    account_t *owner_local_nonprim = NULL;

    // define the local list for note->notes
    list_t *notesList = NULL;

    // define the local list for note->likes
    list_t *likesList = NULL;

    // define the local list for note->assets
    list_t *assetsList = NULL;

    // define the local list for note->flags
    list_t *flagsList = NULL;

    // define the local variable for note->flag_threshold
    flag_threshold_t *flag_threshold_local_nonprim = NULL;

    // note->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(noteJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // note->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(noteJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // note->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(noteJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // note->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(noteJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // note->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(noteJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // note->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(noteJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // note->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(noteJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // note->notable_type
    cJSON *notable_type = cJSON_GetObjectItemCaseSensitive(noteJSON, "notableType");
    if (cJSON_IsNull(notable_type)) {
        notable_type = NULL;
    }
    if (notable_type) { 
    if(!cJSON_IsString(notable_type) && !cJSON_IsNull(notable_type))
    {
    goto end; //String
    }
    }

    // note->notable_id
    cJSON *notable_id = cJSON_GetObjectItemCaseSensitive(noteJSON, "notableId");
    if (cJSON_IsNull(notable_id)) {
        notable_id = NULL;
    }
    if (notable_id) { 
    if(!cJSON_IsNumber(notable_id))
    {
    goto end; //Numeric
    }
    }

    // note->note_tag
    cJSON *note_tag = cJSON_GetObjectItemCaseSensitive(noteJSON, "noteTag");
    if (cJSON_IsNull(note_tag)) {
        note_tag = NULL;
    }
    if (note_tag) { 
    if(!cJSON_IsString(note_tag) && !cJSON_IsNull(note_tag))
    {
    goto end; //String
    }
    }

    // note->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(noteJSON, "notes");
    if (cJSON_IsNull(notes)) {
        notes = NULL;
    }
    if (notes) { 
    cJSON *notes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(notes)){
        goto end; //nonprimitive container
    }

    notesList = list_createList();

    cJSON_ArrayForEach(notes_local_nonprimitive,notes )
    {
        if(!cJSON_IsObject(notes_local_nonprimitive)){
            goto end;
        }
        note_t *notesItem = note_parseFromJSON(notes_local_nonprimitive);

        list_addElement(notesList, notesItem);
    }
    }

    // note->likes
    cJSON *likes = cJSON_GetObjectItemCaseSensitive(noteJSON, "likes");
    if (cJSON_IsNull(likes)) {
        likes = NULL;
    }
    if (likes) { 
    cJSON *likes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(likes)){
        goto end; //nonprimitive container
    }

    likesList = list_createList();

    cJSON_ArrayForEach(likes_local_nonprimitive,likes )
    {
        if(!cJSON_IsObject(likes_local_nonprimitive)){
            goto end;
        }
        yay_or_nay_t *likesItem = yay_or_nay_parseFromJSON(likes_local_nonprimitive);

        list_addElement(likesList, likesItem);
    }
    }

    // note->assets
    cJSON *assets = cJSON_GetObjectItemCaseSensitive(noteJSON, "assets");
    if (cJSON_IsNull(assets)) {
        assets = NULL;
    }
    if (assets) { 
    cJSON *assets_local_nonprimitive = NULL;
    if(!cJSON_IsArray(assets)){
        goto end; //nonprimitive container
    }

    assetsList = list_createList();

    cJSON_ArrayForEach(assets_local_nonprimitive,assets )
    {
        if(!cJSON_IsObject(assets_local_nonprimitive)){
            goto end;
        }
        asset_t *assetsItem = asset_parseFromJSON(assets_local_nonprimitive);

        list_addElement(assetsList, assetsItem);
    }
    }

    // note->note_description
    cJSON *note_description = cJSON_GetObjectItemCaseSensitive(noteJSON, "noteDescription");
    if (cJSON_IsNull(note_description)) {
        note_description = NULL;
    }
    if (note_description) { 
    if(!cJSON_IsString(note_description) && !cJSON_IsNull(note_description))
    {
    goto end; //String
    }
    }

    // note->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(noteJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // note->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(noteJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // note->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(noteJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }

    // note->flags
    cJSON *flags = cJSON_GetObjectItemCaseSensitive(noteJSON, "flags");
    if (cJSON_IsNull(flags)) {
        flags = NULL;
    }
    if (flags) { 
    cJSON *flags_local_nonprimitive = NULL;
    if(!cJSON_IsArray(flags)){
        goto end; //nonprimitive container
    }

    flagsList = list_createList();

    cJSON_ArrayForEach(flags_local_nonprimitive,flags )
    {
        if(!cJSON_IsObject(flags_local_nonprimitive)){
            goto end;
        }
        flag_t *flagsItem = flag_parseFromJSON(flags_local_nonprimitive);

        list_addElement(flagsList, flagsItem);
    }
    }

    // note->flag_count
    cJSON *flag_count = cJSON_GetObjectItemCaseSensitive(noteJSON, "flagCount");
    if (cJSON_IsNull(flag_count)) {
        flag_count = NULL;
    }
    if (flag_count) { 
    if(!cJSON_IsNumber(flag_count))
    {
    goto end; //Numeric
    }
    }

    // note->flag_threshold
    cJSON *flag_threshold = cJSON_GetObjectItemCaseSensitive(noteJSON, "flagThreshold");
    if (cJSON_IsNull(flag_threshold)) {
        flag_threshold = NULL;
    }
    if (flag_threshold) { 
    flag_threshold_local_nonprim = flag_threshold_parseFromJSON(flag_threshold); //nonprimitive
    }

    // note->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(noteJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // note->default_threshold
    cJSON *default_threshold = cJSON_GetObjectItemCaseSensitive(noteJSON, "defaultThreshold");
    if (cJSON_IsNull(default_threshold)) {
        default_threshold = NULL;
    }
    if (default_threshold) { 
    if(!cJSON_IsNumber(default_threshold))
    {
    goto end; //Numeric
    }
    }


    note_local_var = note_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        notable_type && !cJSON_IsNull(notable_type) ? strdup(notable_type->valuestring) : NULL,
        notable_id ? notable_id->valuedouble : 0,
        note_tag && !cJSON_IsNull(note_tag) ? strdup(note_tag->valuestring) : NULL,
        notes ? notesList : NULL,
        likes ? likesList : NULL,
        assets ? assetsList : NULL,
        note_description && !cJSON_IsNull(note_description) ? strdup(note_description->valuestring) : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        note_count ? note_count->valuedouble : 0,
        flags ? flagsList : NULL,
        flag_count ? flag_count->valuedouble : 0,
        flag_threshold ? flag_threshold_local_nonprim : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        default_threshold ? default_threshold->valuedouble : 0
        );

    return note_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (notesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, notesList) {
            note_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(notesList);
        notesList = NULL;
    }
    if (likesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, likesList) {
            yay_or_nay_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(likesList);
        likesList = NULL;
    }
    if (assetsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, assetsList) {
            asset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(assetsList);
        assetsList = NULL;
    }
    if (flagsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, flagsList) {
            flag_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(flagsList);
        flagsList = NULL;
    }
    if (flag_threshold_local_nonprim) {
        flag_threshold_free(flag_threshold_local_nonprim);
        flag_threshold_local_nonprim = NULL;
    }
    return NULL;

}
