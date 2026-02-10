#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "assignment.h"


char* assignment_current_status_type_ToString(sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e current_status_type) {
    char* current_status_typeArray[] =  { "NULL", "NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED" };
    return current_status_typeArray[current_status_type];
}

sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e assignment_current_status_type_FromString(char* current_status_type){
    int stringToReturn = 0;
    char *current_status_typeArray[] =  { "NULL", "NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED" };
    size_t sizeofArray = sizeof(current_status_typeArray) / sizeof(current_status_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(current_status_type, current_status_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* assignment_visibility_ToString(sirqul_iot_platform_assignment_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_assignment_VISIBILITY_e assignment_visibility_FromString(char* visibility){
    int stringToReturn = 0;
    char *visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(visibilityArray) / sizeof(visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(visibility, visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* assignment_approval_status_ToString(sirqul_iot_platform_assignment_APPROVALSTATUS_e approval_status) {
    char* approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return approval_statusArray[approval_status];
}

sirqul_iot_platform_assignment_APPROVALSTATUS_e assignment_approval_status_FromString(char* approval_status){
    int stringToReturn = 0;
    char *approval_statusArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    size_t sizeofArray = sizeof(approval_statusArray) / sizeof(approval_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(approval_status, approval_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static assignment_t *assignment_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    account_t *assignee,
    retailer_location_t *retailer_location,
    account_t *creator,
    account_t *last_updated_by,
    assignment_status_t *current_status,
    sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e current_status_type,
    list_t *assets,
    list_t *notes,
    permissions_t *public_permissions,
    list_t *user_permissions,
    sirqul_iot_platform_assignment_VISIBILITY_e visibility,
    list_t *statuses,
    application_t *application,
    sirqul_iot_platform_assignment_APPROVALSTATUS_e approval_status,
    char *content_name,
    asset_t *content_asset,
    account_t *owner,
    long note_count
    ) {
    assignment_t *assignment_local_var = malloc(sizeof(assignment_t));
    if (!assignment_local_var) {
        return NULL;
    }
    assignment_local_var->id = id;
    assignment_local_var->active = active;
    assignment_local_var->valid = valid;
    assignment_local_var->name = name;
    assignment_local_var->description = description;
    assignment_local_var->assignee = assignee;
    assignment_local_var->retailer_location = retailer_location;
    assignment_local_var->creator = creator;
    assignment_local_var->last_updated_by = last_updated_by;
    assignment_local_var->current_status = current_status;
    assignment_local_var->current_status_type = current_status_type;
    assignment_local_var->assets = assets;
    assignment_local_var->notes = notes;
    assignment_local_var->public_permissions = public_permissions;
    assignment_local_var->user_permissions = user_permissions;
    assignment_local_var->visibility = visibility;
    assignment_local_var->statuses = statuses;
    assignment_local_var->application = application;
    assignment_local_var->approval_status = approval_status;
    assignment_local_var->content_name = content_name;
    assignment_local_var->content_asset = content_asset;
    assignment_local_var->owner = owner;
    assignment_local_var->note_count = note_count;

    assignment_local_var->_library_owned = 1;
    return assignment_local_var;
}

__attribute__((deprecated)) assignment_t *assignment_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    account_t *assignee,
    retailer_location_t *retailer_location,
    account_t *creator,
    account_t *last_updated_by,
    assignment_status_t *current_status,
    sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e current_status_type,
    list_t *assets,
    list_t *notes,
    permissions_t *public_permissions,
    list_t *user_permissions,
    sirqul_iot_platform_assignment_VISIBILITY_e visibility,
    list_t *statuses,
    application_t *application,
    sirqul_iot_platform_assignment_APPROVALSTATUS_e approval_status,
    char *content_name,
    asset_t *content_asset,
    account_t *owner,
    long note_count
    ) {
    return assignment_create_internal (
        id,
        active,
        valid,
        name,
        description,
        assignee,
        retailer_location,
        creator,
        last_updated_by,
        current_status,
        current_status_type,
        assets,
        notes,
        public_permissions,
        user_permissions,
        visibility,
        statuses,
        application,
        approval_status,
        content_name,
        content_asset,
        owner,
        note_count
        );
}

void assignment_free(assignment_t *assignment) {
    if(NULL == assignment){
        return ;
    }
    if(assignment->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "assignment_free");
        return ;
    }
    listEntry_t *listEntry;
    if (assignment->name) {
        free(assignment->name);
        assignment->name = NULL;
    }
    if (assignment->description) {
        free(assignment->description);
        assignment->description = NULL;
    }
    if (assignment->assignee) {
        account_free(assignment->assignee);
        assignment->assignee = NULL;
    }
    if (assignment->retailer_location) {
        retailer_location_free(assignment->retailer_location);
        assignment->retailer_location = NULL;
    }
    if (assignment->creator) {
        account_free(assignment->creator);
        assignment->creator = NULL;
    }
    if (assignment->last_updated_by) {
        account_free(assignment->last_updated_by);
        assignment->last_updated_by = NULL;
    }
    if (assignment->current_status) {
        assignment_status_free(assignment->current_status);
        assignment->current_status = NULL;
    }
    if (assignment->assets) {
        list_ForEach(listEntry, assignment->assets) {
            asset_free(listEntry->data);
        }
        list_freeList(assignment->assets);
        assignment->assets = NULL;
    }
    if (assignment->notes) {
        list_ForEach(listEntry, assignment->notes) {
            note_free(listEntry->data);
        }
        list_freeList(assignment->notes);
        assignment->notes = NULL;
    }
    if (assignment->public_permissions) {
        permissions_free(assignment->public_permissions);
        assignment->public_permissions = NULL;
    }
    if (assignment->user_permissions) {
        list_ForEach(listEntry, assignment->user_permissions) {
            user_permissions_free(listEntry->data);
        }
        list_freeList(assignment->user_permissions);
        assignment->user_permissions = NULL;
    }
    if (assignment->statuses) {
        list_ForEach(listEntry, assignment->statuses) {
            assignment_status_free(listEntry->data);
        }
        list_freeList(assignment->statuses);
        assignment->statuses = NULL;
    }
    if (assignment->application) {
        application_free(assignment->application);
        assignment->application = NULL;
    }
    if (assignment->content_name) {
        free(assignment->content_name);
        assignment->content_name = NULL;
    }
    if (assignment->content_asset) {
        asset_free(assignment->content_asset);
        assignment->content_asset = NULL;
    }
    if (assignment->owner) {
        account_free(assignment->owner);
        assignment->owner = NULL;
    }
    free(assignment);
}

cJSON *assignment_convertToJSON(assignment_t *assignment) {
    cJSON *item = cJSON_CreateObject();

    // assignment->id
    if(assignment->id) {
    if(cJSON_AddNumberToObject(item, "id", assignment->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment->active
    if(assignment->active) {
    if(cJSON_AddBoolToObject(item, "active", assignment->active) == NULL) {
    goto fail; //Bool
    }
    }


    // assignment->valid
    if(assignment->valid) {
    if(cJSON_AddBoolToObject(item, "valid", assignment->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // assignment->name
    if(assignment->name) {
    if(cJSON_AddStringToObject(item, "name", assignment->name) == NULL) {
    goto fail; //String
    }
    }


    // assignment->description
    if(assignment->description) {
    if(cJSON_AddStringToObject(item, "description", assignment->description) == NULL) {
    goto fail; //String
    }
    }


    // assignment->assignee
    if(assignment->assignee) {
    cJSON *assignee_local_JSON = account_convertToJSON(assignment->assignee);
    if(assignee_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "assignee", assignee_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->retailer_location
    if(assignment->retailer_location) {
    cJSON *retailer_location_local_JSON = retailer_location_convertToJSON(assignment->retailer_location);
    if(retailer_location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retailerLocation", retailer_location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->creator
    if(assignment->creator) {
    cJSON *creator_local_JSON = account_convertToJSON(assignment->creator);
    if(creator_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "creator", creator_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->last_updated_by
    if(assignment->last_updated_by) {
    cJSON *last_updated_by_local_JSON = account_convertToJSON(assignment->last_updated_by);
    if(last_updated_by_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "lastUpdatedBy", last_updated_by_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->current_status
    if(assignment->current_status) {
    cJSON *current_status_local_JSON = assignment_status_convertToJSON(assignment->current_status);
    if(current_status_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "currentStatus", current_status_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->current_status_type
    if(assignment->current_status_type != sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "currentStatusType", assignment_current_status_type_ToString(assignment->current_status_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment->assets
    if(assignment->assets) {
    cJSON *assets = cJSON_AddArrayToObject(item, "assets");
    if(assets == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *assetsListEntry;
    if (assignment->assets) {
    list_ForEach(assetsListEntry, assignment->assets) {
    cJSON *itemLocal = asset_convertToJSON(assetsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(assets, itemLocal);
    }
    }
    }


    // assignment->notes
    if(assignment->notes) {
    cJSON *notes = cJSON_AddArrayToObject(item, "notes");
    if(notes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *notesListEntry;
    if (assignment->notes) {
    list_ForEach(notesListEntry, assignment->notes) {
    cJSON *itemLocal = note_convertToJSON(notesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(notes, itemLocal);
    }
    }
    }


    // assignment->public_permissions
    if(assignment->public_permissions) {
    cJSON *public_permissions_local_JSON = permissions_convertToJSON(assignment->public_permissions);
    if(public_permissions_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "publicPermissions", public_permissions_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->user_permissions
    if(assignment->user_permissions) {
    cJSON *user_permissions = cJSON_AddArrayToObject(item, "userPermissions");
    if(user_permissions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *user_permissionsListEntry;
    if (assignment->user_permissions) {
    list_ForEach(user_permissionsListEntry, assignment->user_permissions) {
    cJSON *itemLocal = user_permissions_convertToJSON(user_permissionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(user_permissions, itemLocal);
    }
    }
    }


    // assignment->visibility
    if(assignment->visibility != sirqul_iot_platform_assignment_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", assignment_visibility_ToString(assignment->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment->statuses
    if(assignment->statuses) {
    cJSON *statuses = cJSON_AddArrayToObject(item, "statuses");
    if(statuses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *statusesListEntry;
    if (assignment->statuses) {
    list_ForEach(statusesListEntry, assignment->statuses) {
    cJSON *itemLocal = assignment_status_convertToJSON(statusesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(statuses, itemLocal);
    }
    }
    }


    // assignment->application
    if(assignment->application) {
    cJSON *application_local_JSON = application_convertToJSON(assignment->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->approval_status
    if(assignment->approval_status != sirqul_iot_platform_assignment_APPROVALSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "approvalStatus", assignment_approval_status_ToString(assignment->approval_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // assignment->content_name
    if(assignment->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", assignment->content_name) == NULL) {
    goto fail; //String
    }
    }


    // assignment->content_asset
    if(assignment->content_asset) {
    cJSON *content_asset_local_JSON = asset_convertToJSON(assignment->content_asset);
    if(content_asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contentAsset", content_asset_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->owner
    if(assignment->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(assignment->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment->note_count
    if(assignment->note_count) {
    if(cJSON_AddNumberToObject(item, "noteCount", assignment->note_count) == NULL) {
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

assignment_t *assignment_parseFromJSON(cJSON *assignmentJSON){

    assignment_t *assignment_local_var = NULL;

    // define the local variable for assignment->assignee
    account_t *assignee_local_nonprim = NULL;

    // define the local variable for assignment->retailer_location
    retailer_location_t *retailer_location_local_nonprim = NULL;

    // define the local variable for assignment->creator
    account_t *creator_local_nonprim = NULL;

    // define the local variable for assignment->last_updated_by
    account_t *last_updated_by_local_nonprim = NULL;

    // define the local variable for assignment->current_status
    assignment_status_t *current_status_local_nonprim = NULL;

    // define the local list for assignment->assets
    list_t *assetsList = NULL;

    // define the local list for assignment->notes
    list_t *notesList = NULL;

    // define the local variable for assignment->public_permissions
    permissions_t *public_permissions_local_nonprim = NULL;

    // define the local list for assignment->user_permissions
    list_t *user_permissionsList = NULL;

    // define the local list for assignment->statuses
    list_t *statusesList = NULL;

    // define the local variable for assignment->application
    application_t *application_local_nonprim = NULL;

    // define the local variable for assignment->content_asset
    asset_t *content_asset_local_nonprim = NULL;

    // define the local variable for assignment->owner
    account_t *owner_local_nonprim = NULL;

    // assignment->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // assignment->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // assignment->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // assignment->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // assignment->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // assignment->assignee
    cJSON *assignee = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "assignee");
    if (cJSON_IsNull(assignee)) {
        assignee = NULL;
    }
    if (assignee) { 
    assignee_local_nonprim = account_parseFromJSON(assignee); //nonprimitive
    }

    // assignment->retailer_location
    cJSON *retailer_location = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "retailerLocation");
    if (cJSON_IsNull(retailer_location)) {
        retailer_location = NULL;
    }
    if (retailer_location) { 
    retailer_location_local_nonprim = retailer_location_parseFromJSON(retailer_location); //nonprimitive
    }

    // assignment->creator
    cJSON *creator = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "creator");
    if (cJSON_IsNull(creator)) {
        creator = NULL;
    }
    if (creator) { 
    creator_local_nonprim = account_parseFromJSON(creator); //nonprimitive
    }

    // assignment->last_updated_by
    cJSON *last_updated_by = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "lastUpdatedBy");
    if (cJSON_IsNull(last_updated_by)) {
        last_updated_by = NULL;
    }
    if (last_updated_by) { 
    last_updated_by_local_nonprim = account_parseFromJSON(last_updated_by); //nonprimitive
    }

    // assignment->current_status
    cJSON *current_status = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "currentStatus");
    if (cJSON_IsNull(current_status)) {
        current_status = NULL;
    }
    if (current_status) { 
    current_status_local_nonprim = assignment_status_parseFromJSON(current_status); //nonprimitive
    }

    // assignment->current_status_type
    cJSON *current_status_type = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "currentStatusType");
    if (cJSON_IsNull(current_status_type)) {
        current_status_type = NULL;
    }
    sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e current_status_typeVariable;
    if (current_status_type) { 
    if(!cJSON_IsString(current_status_type))
    {
    goto end; //Enum
    }
    current_status_typeVariable = assignment_current_status_type_FromString(current_status_type->valuestring);
    }

    // assignment->assets
    cJSON *assets = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "assets");
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

    // assignment->notes
    cJSON *notes = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "notes");
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

    // assignment->public_permissions
    cJSON *public_permissions = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "publicPermissions");
    if (cJSON_IsNull(public_permissions)) {
        public_permissions = NULL;
    }
    if (public_permissions) { 
    public_permissions_local_nonprim = permissions_parseFromJSON(public_permissions); //nonprimitive
    }

    // assignment->user_permissions
    cJSON *user_permissions = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "userPermissions");
    if (cJSON_IsNull(user_permissions)) {
        user_permissions = NULL;
    }
    if (user_permissions) { 
    cJSON *user_permissions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(user_permissions)){
        goto end; //nonprimitive container
    }

    user_permissionsList = list_createList();

    cJSON_ArrayForEach(user_permissions_local_nonprimitive,user_permissions )
    {
        if(!cJSON_IsObject(user_permissions_local_nonprimitive)){
            goto end;
        }
        user_permissions_t *user_permissionsItem = user_permissions_parseFromJSON(user_permissions_local_nonprimitive);

        list_addElement(user_permissionsList, user_permissionsItem);
    }
    }

    // assignment->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_assignment_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = assignment_visibility_FromString(visibility->valuestring);
    }

    // assignment->statuses
    cJSON *statuses = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "statuses");
    if (cJSON_IsNull(statuses)) {
        statuses = NULL;
    }
    if (statuses) { 
    cJSON *statuses_local_nonprimitive = NULL;
    if(!cJSON_IsArray(statuses)){
        goto end; //nonprimitive container
    }

    statusesList = list_createList();

    cJSON_ArrayForEach(statuses_local_nonprimitive,statuses )
    {
        if(!cJSON_IsObject(statuses_local_nonprimitive)){
            goto end;
        }
        assignment_status_t *statusesItem = assignment_status_parseFromJSON(statuses_local_nonprimitive);

        list_addElement(statusesList, statusesItem);
    }
    }

    // assignment->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_parseFromJSON(application); //nonprimitive
    }

    // assignment->approval_status
    cJSON *approval_status = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "approvalStatus");
    if (cJSON_IsNull(approval_status)) {
        approval_status = NULL;
    }
    sirqul_iot_platform_assignment_APPROVALSTATUS_e approval_statusVariable;
    if (approval_status) { 
    if(!cJSON_IsString(approval_status))
    {
    goto end; //Enum
    }
    approval_statusVariable = assignment_approval_status_FromString(approval_status->valuestring);
    }

    // assignment->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // assignment->content_asset
    cJSON *content_asset = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "contentAsset");
    if (cJSON_IsNull(content_asset)) {
        content_asset = NULL;
    }
    if (content_asset) { 
    content_asset_local_nonprim = asset_parseFromJSON(content_asset); //nonprimitive
    }

    // assignment->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // assignment->note_count
    cJSON *note_count = cJSON_GetObjectItemCaseSensitive(assignmentJSON, "noteCount");
    if (cJSON_IsNull(note_count)) {
        note_count = NULL;
    }
    if (note_count) { 
    if(!cJSON_IsNumber(note_count))
    {
    goto end; //Numeric
    }
    }


    assignment_local_var = assignment_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        assignee ? assignee_local_nonprim : NULL,
        retailer_location ? retailer_location_local_nonprim : NULL,
        creator ? creator_local_nonprim : NULL,
        last_updated_by ? last_updated_by_local_nonprim : NULL,
        current_status ? current_status_local_nonprim : NULL,
        current_status_type ? current_status_typeVariable : sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_NULL,
        assets ? assetsList : NULL,
        notes ? notesList : NULL,
        public_permissions ? public_permissions_local_nonprim : NULL,
        user_permissions ? user_permissionsList : NULL,
        visibility ? visibilityVariable : sirqul_iot_platform_assignment_VISIBILITY_NULL,
        statuses ? statusesList : NULL,
        application ? application_local_nonprim : NULL,
        approval_status ? approval_statusVariable : sirqul_iot_platform_assignment_APPROVALSTATUS_NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        content_asset ? content_asset_local_nonprim : NULL,
        owner ? owner_local_nonprim : NULL,
        note_count ? note_count->valuedouble : 0
        );

    return assignment_local_var;
end:
    if (assignee_local_nonprim) {
        account_free(assignee_local_nonprim);
        assignee_local_nonprim = NULL;
    }
    if (retailer_location_local_nonprim) {
        retailer_location_free(retailer_location_local_nonprim);
        retailer_location_local_nonprim = NULL;
    }
    if (creator_local_nonprim) {
        account_free(creator_local_nonprim);
        creator_local_nonprim = NULL;
    }
    if (last_updated_by_local_nonprim) {
        account_free(last_updated_by_local_nonprim);
        last_updated_by_local_nonprim = NULL;
    }
    if (current_status_local_nonprim) {
        assignment_status_free(current_status_local_nonprim);
        current_status_local_nonprim = NULL;
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
    if (notesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, notesList) {
            note_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(notesList);
        notesList = NULL;
    }
    if (public_permissions_local_nonprim) {
        permissions_free(public_permissions_local_nonprim);
        public_permissions_local_nonprim = NULL;
    }
    if (user_permissionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, user_permissionsList) {
            user_permissions_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(user_permissionsList);
        user_permissionsList = NULL;
    }
    if (statusesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, statusesList) {
            assignment_status_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(statusesList);
        statusesList = NULL;
    }
    if (application_local_nonprim) {
        application_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    if (content_asset_local_nonprim) {
        asset_free(content_asset_local_nonprim);
        content_asset_local_nonprim = NULL;
    }
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    return NULL;

}
