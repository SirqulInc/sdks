#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mission_format_response.h"



static mission_format_response_t *mission_format_response_create_internal(
    long mission_format_id,
    char *format_type,
    int active,
    char *name,
    char *description,
    char *format,
    char *suffix
    ) {
    mission_format_response_t *mission_format_response_local_var = malloc(sizeof(mission_format_response_t));
    if (!mission_format_response_local_var) {
        return NULL;
    }
    mission_format_response_local_var->mission_format_id = mission_format_id;
    mission_format_response_local_var->format_type = format_type;
    mission_format_response_local_var->active = active;
    mission_format_response_local_var->name = name;
    mission_format_response_local_var->description = description;
    mission_format_response_local_var->format = format;
    mission_format_response_local_var->suffix = suffix;

    mission_format_response_local_var->_library_owned = 1;
    return mission_format_response_local_var;
}

__attribute__((deprecated)) mission_format_response_t *mission_format_response_create(
    long mission_format_id,
    char *format_type,
    int active,
    char *name,
    char *description,
    char *format,
    char *suffix
    ) {
    return mission_format_response_create_internal (
        mission_format_id,
        format_type,
        active,
        name,
        description,
        format,
        suffix
        );
}

void mission_format_response_free(mission_format_response_t *mission_format_response) {
    if(NULL == mission_format_response){
        return ;
    }
    if(mission_format_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mission_format_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mission_format_response->format_type) {
        free(mission_format_response->format_type);
        mission_format_response->format_type = NULL;
    }
    if (mission_format_response->name) {
        free(mission_format_response->name);
        mission_format_response->name = NULL;
    }
    if (mission_format_response->description) {
        free(mission_format_response->description);
        mission_format_response->description = NULL;
    }
    if (mission_format_response->format) {
        free(mission_format_response->format);
        mission_format_response->format = NULL;
    }
    if (mission_format_response->suffix) {
        free(mission_format_response->suffix);
        mission_format_response->suffix = NULL;
    }
    free(mission_format_response);
}

cJSON *mission_format_response_convertToJSON(mission_format_response_t *mission_format_response) {
    cJSON *item = cJSON_CreateObject();

    // mission_format_response->mission_format_id
    if(mission_format_response->mission_format_id) {
    if(cJSON_AddNumberToObject(item, "missionFormatId", mission_format_response->mission_format_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_format_response->format_type
    if(mission_format_response->format_type) {
    if(cJSON_AddStringToObject(item, "formatType", mission_format_response->format_type) == NULL) {
    goto fail; //String
    }
    }


    // mission_format_response->active
    if(mission_format_response->active) {
    if(cJSON_AddBoolToObject(item, "active", mission_format_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_format_response->name
    if(mission_format_response->name) {
    if(cJSON_AddStringToObject(item, "name", mission_format_response->name) == NULL) {
    goto fail; //String
    }
    }


    // mission_format_response->description
    if(mission_format_response->description) {
    if(cJSON_AddStringToObject(item, "description", mission_format_response->description) == NULL) {
    goto fail; //String
    }
    }


    // mission_format_response->format
    if(mission_format_response->format) {
    if(cJSON_AddStringToObject(item, "format", mission_format_response->format) == NULL) {
    goto fail; //String
    }
    }


    // mission_format_response->suffix
    if(mission_format_response->suffix) {
    if(cJSON_AddStringToObject(item, "suffix", mission_format_response->suffix) == NULL) {
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

mission_format_response_t *mission_format_response_parseFromJSON(cJSON *mission_format_responseJSON){

    mission_format_response_t *mission_format_response_local_var = NULL;

    // mission_format_response->mission_format_id
    cJSON *mission_format_id = cJSON_GetObjectItemCaseSensitive(mission_format_responseJSON, "missionFormatId");
    if (cJSON_IsNull(mission_format_id)) {
        mission_format_id = NULL;
    }
    if (mission_format_id) { 
    if(!cJSON_IsNumber(mission_format_id))
    {
    goto end; //Numeric
    }
    }

    // mission_format_response->format_type
    cJSON *format_type = cJSON_GetObjectItemCaseSensitive(mission_format_responseJSON, "formatType");
    if (cJSON_IsNull(format_type)) {
        format_type = NULL;
    }
    if (format_type) { 
    if(!cJSON_IsString(format_type) && !cJSON_IsNull(format_type))
    {
    goto end; //String
    }
    }

    // mission_format_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(mission_format_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // mission_format_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(mission_format_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // mission_format_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(mission_format_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // mission_format_response->format
    cJSON *format = cJSON_GetObjectItemCaseSensitive(mission_format_responseJSON, "format");
    if (cJSON_IsNull(format)) {
        format = NULL;
    }
    if (format) { 
    if(!cJSON_IsString(format) && !cJSON_IsNull(format))
    {
    goto end; //String
    }
    }

    // mission_format_response->suffix
    cJSON *suffix = cJSON_GetObjectItemCaseSensitive(mission_format_responseJSON, "suffix");
    if (cJSON_IsNull(suffix)) {
        suffix = NULL;
    }
    if (suffix) { 
    if(!cJSON_IsString(suffix) && !cJSON_IsNull(suffix))
    {
    goto end; //String
    }
    }


    mission_format_response_local_var = mission_format_response_create_internal (
        mission_format_id ? mission_format_id->valuedouble : 0,
        format_type && !cJSON_IsNull(format_type) ? strdup(format_type->valuestring) : NULL,
        active ? active->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        format && !cJSON_IsNull(format) ? strdup(format->valuestring) : NULL,
        suffix && !cJSON_IsNull(suffix) ? strdup(suffix->valuestring) : NULL
        );

    return mission_format_response_local_var;
end:
    return NULL;

}
