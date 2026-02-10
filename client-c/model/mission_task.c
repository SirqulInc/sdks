#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mission_task.h"


char* mission_task_task_type_ToString(sirqul_iot_platform_mission_task_TASKTYPE_e task_type) {
    char* task_typeArray[] =  { "NULL", "PHOTO", "VOTE", "ASK", "ANSWER", "GROUP", "INVITE", "OFFER", "AD", "CUSTOM", "GAME" };
    return task_typeArray[task_type];
}

sirqul_iot_platform_mission_task_TASKTYPE_e mission_task_task_type_FromString(char* task_type){
    int stringToReturn = 0;
    char *task_typeArray[] =  { "NULL", "PHOTO", "VOTE", "ASK", "ANSWER", "GROUP", "INVITE", "OFFER", "AD", "CUSTOM", "GAME" };
    size_t sizeofArray = sizeof(task_typeArray) / sizeof(task_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(task_type, task_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static mission_task_t *mission_task_create_internal(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    char *format,
    char *suffix,
    sirqul_iot_platform_mission_task_TASKTYPE_e task_type
    ) {
    mission_task_t *mission_task_local_var = malloc(sizeof(mission_task_t));
    if (!mission_task_local_var) {
        return NULL;
    }
    mission_task_local_var->id = id;
    mission_task_local_var->active = active;
    mission_task_local_var->valid = valid;
    mission_task_local_var->name = name;
    mission_task_local_var->description = description;
    mission_task_local_var->format = format;
    mission_task_local_var->suffix = suffix;
    mission_task_local_var->task_type = task_type;

    mission_task_local_var->_library_owned = 1;
    return mission_task_local_var;
}

__attribute__((deprecated)) mission_task_t *mission_task_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    char *format,
    char *suffix,
    sirqul_iot_platform_mission_task_TASKTYPE_e task_type
    ) {
    return mission_task_create_internal (
        id,
        active,
        valid,
        name,
        description,
        format,
        suffix,
        task_type
        );
}

void mission_task_free(mission_task_t *mission_task) {
    if(NULL == mission_task){
        return ;
    }
    if(mission_task->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "mission_task_free");
        return ;
    }
    listEntry_t *listEntry;
    if (mission_task->name) {
        free(mission_task->name);
        mission_task->name = NULL;
    }
    if (mission_task->description) {
        free(mission_task->description);
        mission_task->description = NULL;
    }
    if (mission_task->format) {
        free(mission_task->format);
        mission_task->format = NULL;
    }
    if (mission_task->suffix) {
        free(mission_task->suffix);
        mission_task->suffix = NULL;
    }
    free(mission_task);
}

cJSON *mission_task_convertToJSON(mission_task_t *mission_task) {
    cJSON *item = cJSON_CreateObject();

    // mission_task->id
    if(mission_task->id) {
    if(cJSON_AddNumberToObject(item, "id", mission_task->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // mission_task->active
    if(mission_task->active) {
    if(cJSON_AddBoolToObject(item, "active", mission_task->active) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_task->valid
    if(mission_task->valid) {
    if(cJSON_AddBoolToObject(item, "valid", mission_task->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // mission_task->name
    if(mission_task->name) {
    if(cJSON_AddStringToObject(item, "name", mission_task->name) == NULL) {
    goto fail; //String
    }
    }


    // mission_task->description
    if(mission_task->description) {
    if(cJSON_AddStringToObject(item, "description", mission_task->description) == NULL) {
    goto fail; //String
    }
    }


    // mission_task->format
    if(mission_task->format) {
    if(cJSON_AddStringToObject(item, "format", mission_task->format) == NULL) {
    goto fail; //String
    }
    }


    // mission_task->suffix
    if(mission_task->suffix) {
    if(cJSON_AddStringToObject(item, "suffix", mission_task->suffix) == NULL) {
    goto fail; //String
    }
    }


    // mission_task->task_type
    if(mission_task->task_type != sirqul_iot_platform_mission_task_TASKTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "taskType", mission_task_task_type_ToString(mission_task->task_type)) == NULL)
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

mission_task_t *mission_task_parseFromJSON(cJSON *mission_taskJSON){

    mission_task_t *mission_task_local_var = NULL;

    // mission_task->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // mission_task->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // mission_task->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // mission_task->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // mission_task->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // mission_task->format
    cJSON *format = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "format");
    if (cJSON_IsNull(format)) {
        format = NULL;
    }
    if (format) { 
    if(!cJSON_IsString(format) && !cJSON_IsNull(format))
    {
    goto end; //String
    }
    }

    // mission_task->suffix
    cJSON *suffix = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "suffix");
    if (cJSON_IsNull(suffix)) {
        suffix = NULL;
    }
    if (suffix) { 
    if(!cJSON_IsString(suffix) && !cJSON_IsNull(suffix))
    {
    goto end; //String
    }
    }

    // mission_task->task_type
    cJSON *task_type = cJSON_GetObjectItemCaseSensitive(mission_taskJSON, "taskType");
    if (cJSON_IsNull(task_type)) {
        task_type = NULL;
    }
    sirqul_iot_platform_mission_task_TASKTYPE_e task_typeVariable;
    if (task_type) { 
    if(!cJSON_IsString(task_type))
    {
    goto end; //Enum
    }
    task_typeVariable = mission_task_task_type_FromString(task_type->valuestring);
    }


    mission_task_local_var = mission_task_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        format && !cJSON_IsNull(format) ? strdup(format->valuestring) : NULL,
        suffix && !cJSON_IsNull(suffix) ? strdup(suffix->valuestring) : NULL,
        task_type ? task_typeVariable : sirqul_iot_platform_mission_task_TASKTYPE_NULL
        );

    return mission_task_local_var;
end:
    return NULL;

}
