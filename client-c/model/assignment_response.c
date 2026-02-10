#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "assignment_response.h"


char* assignment_response_current_status_type_ToString(sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e current_status_type) {
    char* current_status_typeArray[] =  { "NULL", "NEW", "IN_PROGRESS", "SUBSCRIBED", "ARCHIVED" };
    return current_status_typeArray[current_status_type];
}

sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e assignment_response_current_status_type_FromString(char* current_status_type){
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

static assignment_response_t *assignment_response_create_internal(
    long assignment_id,
    char *name,
    char *description,
    int active,
    long created,
    long updated,
    account_short_response_t *assignee,
    account_short_response_t *creator,
    account_short_response_t *last_reported_by,
    retailer_location_short_response_t *location,
    assignment_status_response_t *current_status,
    sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e current_status_type
    ) {
    assignment_response_t *assignment_response_local_var = malloc(sizeof(assignment_response_t));
    if (!assignment_response_local_var) {
        return NULL;
    }
    assignment_response_local_var->assignment_id = assignment_id;
    assignment_response_local_var->name = name;
    assignment_response_local_var->description = description;
    assignment_response_local_var->active = active;
    assignment_response_local_var->created = created;
    assignment_response_local_var->updated = updated;
    assignment_response_local_var->assignee = assignee;
    assignment_response_local_var->creator = creator;
    assignment_response_local_var->last_reported_by = last_reported_by;
    assignment_response_local_var->location = location;
    assignment_response_local_var->current_status = current_status;
    assignment_response_local_var->current_status_type = current_status_type;

    assignment_response_local_var->_library_owned = 1;
    return assignment_response_local_var;
}

__attribute__((deprecated)) assignment_response_t *assignment_response_create(
    long assignment_id,
    char *name,
    char *description,
    int active,
    long created,
    long updated,
    account_short_response_t *assignee,
    account_short_response_t *creator,
    account_short_response_t *last_reported_by,
    retailer_location_short_response_t *location,
    assignment_status_response_t *current_status,
    sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e current_status_type
    ) {
    return assignment_response_create_internal (
        assignment_id,
        name,
        description,
        active,
        created,
        updated,
        assignee,
        creator,
        last_reported_by,
        location,
        current_status,
        current_status_type
        );
}

void assignment_response_free(assignment_response_t *assignment_response) {
    if(NULL == assignment_response){
        return ;
    }
    if(assignment_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "assignment_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (assignment_response->name) {
        free(assignment_response->name);
        assignment_response->name = NULL;
    }
    if (assignment_response->description) {
        free(assignment_response->description);
        assignment_response->description = NULL;
    }
    if (assignment_response->assignee) {
        account_short_response_free(assignment_response->assignee);
        assignment_response->assignee = NULL;
    }
    if (assignment_response->creator) {
        account_short_response_free(assignment_response->creator);
        assignment_response->creator = NULL;
    }
    if (assignment_response->last_reported_by) {
        account_short_response_free(assignment_response->last_reported_by);
        assignment_response->last_reported_by = NULL;
    }
    if (assignment_response->location) {
        retailer_location_short_response_free(assignment_response->location);
        assignment_response->location = NULL;
    }
    if (assignment_response->current_status) {
        assignment_status_response_free(assignment_response->current_status);
        assignment_response->current_status = NULL;
    }
    free(assignment_response);
}

cJSON *assignment_response_convertToJSON(assignment_response_t *assignment_response) {
    cJSON *item = cJSON_CreateObject();

    // assignment_response->assignment_id
    if(assignment_response->assignment_id) {
    if(cJSON_AddNumberToObject(item, "assignmentId", assignment_response->assignment_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_response->name
    if(assignment_response->name) {
    if(cJSON_AddStringToObject(item, "name", assignment_response->name) == NULL) {
    goto fail; //String
    }
    }


    // assignment_response->description
    if(assignment_response->description) {
    if(cJSON_AddStringToObject(item, "description", assignment_response->description) == NULL) {
    goto fail; //String
    }
    }


    // assignment_response->active
    if(assignment_response->active) {
    if(cJSON_AddBoolToObject(item, "active", assignment_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // assignment_response->created
    if(assignment_response->created) {
    if(cJSON_AddNumberToObject(item, "created", assignment_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_response->updated
    if(assignment_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", assignment_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // assignment_response->assignee
    if(assignment_response->assignee) {
    cJSON *assignee_local_JSON = account_short_response_convertToJSON(assignment_response->assignee);
    if(assignee_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "assignee", assignee_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment_response->creator
    if(assignment_response->creator) {
    cJSON *creator_local_JSON = account_short_response_convertToJSON(assignment_response->creator);
    if(creator_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "creator", creator_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment_response->last_reported_by
    if(assignment_response->last_reported_by) {
    cJSON *last_reported_by_local_JSON = account_short_response_convertToJSON(assignment_response->last_reported_by);
    if(last_reported_by_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "lastReportedBy", last_reported_by_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment_response->location
    if(assignment_response->location) {
    cJSON *location_local_JSON = retailer_location_short_response_convertToJSON(assignment_response->location);
    if(location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "location", location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment_response->current_status
    if(assignment_response->current_status) {
    cJSON *current_status_local_JSON = assignment_status_response_convertToJSON(assignment_response->current_status);
    if(current_status_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "currentStatus", current_status_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // assignment_response->current_status_type
    if(assignment_response->current_status_type != sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "currentStatusType", assignment_response_current_status_type_ToString(assignment_response->current_status_type)) == NULL)
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

assignment_response_t *assignment_response_parseFromJSON(cJSON *assignment_responseJSON){

    assignment_response_t *assignment_response_local_var = NULL;

    // define the local variable for assignment_response->assignee
    account_short_response_t *assignee_local_nonprim = NULL;

    // define the local variable for assignment_response->creator
    account_short_response_t *creator_local_nonprim = NULL;

    // define the local variable for assignment_response->last_reported_by
    account_short_response_t *last_reported_by_local_nonprim = NULL;

    // define the local variable for assignment_response->location
    retailer_location_short_response_t *location_local_nonprim = NULL;

    // define the local variable for assignment_response->current_status
    assignment_status_response_t *current_status_local_nonprim = NULL;

    // assignment_response->assignment_id
    cJSON *assignment_id = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "assignmentId");
    if (cJSON_IsNull(assignment_id)) {
        assignment_id = NULL;
    }
    if (assignment_id) { 
    if(!cJSON_IsNumber(assignment_id))
    {
    goto end; //Numeric
    }
    }

    // assignment_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // assignment_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // assignment_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // assignment_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // assignment_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // assignment_response->assignee
    cJSON *assignee = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "assignee");
    if (cJSON_IsNull(assignee)) {
        assignee = NULL;
    }
    if (assignee) { 
    assignee_local_nonprim = account_short_response_parseFromJSON(assignee); //nonprimitive
    }

    // assignment_response->creator
    cJSON *creator = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "creator");
    if (cJSON_IsNull(creator)) {
        creator = NULL;
    }
    if (creator) { 
    creator_local_nonprim = account_short_response_parseFromJSON(creator); //nonprimitive
    }

    // assignment_response->last_reported_by
    cJSON *last_reported_by = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "lastReportedBy");
    if (cJSON_IsNull(last_reported_by)) {
        last_reported_by = NULL;
    }
    if (last_reported_by) { 
    last_reported_by_local_nonprim = account_short_response_parseFromJSON(last_reported_by); //nonprimitive
    }

    // assignment_response->location
    cJSON *location = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "location");
    if (cJSON_IsNull(location)) {
        location = NULL;
    }
    if (location) { 
    location_local_nonprim = retailer_location_short_response_parseFromJSON(location); //nonprimitive
    }

    // assignment_response->current_status
    cJSON *current_status = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "currentStatus");
    if (cJSON_IsNull(current_status)) {
        current_status = NULL;
    }
    if (current_status) { 
    current_status_local_nonprim = assignment_status_response_parseFromJSON(current_status); //nonprimitive
    }

    // assignment_response->current_status_type
    cJSON *current_status_type = cJSON_GetObjectItemCaseSensitive(assignment_responseJSON, "currentStatusType");
    if (cJSON_IsNull(current_status_type)) {
        current_status_type = NULL;
    }
    sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_e current_status_typeVariable;
    if (current_status_type) { 
    if(!cJSON_IsString(current_status_type))
    {
    goto end; //Enum
    }
    current_status_typeVariable = assignment_response_current_status_type_FromString(current_status_type->valuestring);
    }


    assignment_response_local_var = assignment_response_create_internal (
        assignment_id ? assignment_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        active ? active->valueint : 0,
        created ? created->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        assignee ? assignee_local_nonprim : NULL,
        creator ? creator_local_nonprim : NULL,
        last_reported_by ? last_reported_by_local_nonprim : NULL,
        location ? location_local_nonprim : NULL,
        current_status ? current_status_local_nonprim : NULL,
        current_status_type ? current_status_typeVariable : sirqul_iot_platform_assignment_response_CURRENTSTATUSTYPE_NULL
        );

    return assignment_response_local_var;
end:
    if (assignee_local_nonprim) {
        account_short_response_free(assignee_local_nonprim);
        assignee_local_nonprim = NULL;
    }
    if (creator_local_nonprim) {
        account_short_response_free(creator_local_nonprim);
        creator_local_nonprim = NULL;
    }
    if (last_reported_by_local_nonprim) {
        account_short_response_free(last_reported_by_local_nonprim);
        last_reported_by_local_nonprim = NULL;
    }
    if (location_local_nonprim) {
        retailer_location_short_response_free(location_local_nonprim);
        location_local_nonprim = NULL;
    }
    if (current_status_local_nonprim) {
        assignment_status_response_free(current_status_local_nonprim);
        current_status_local_nonprim = NULL;
    }
    return NULL;

}
