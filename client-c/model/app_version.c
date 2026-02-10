#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "app_version.h"



static app_version_t *app_version_create_internal(
    int minor_version,
    int major_version,
    int version_index
    ) {
    app_version_t *app_version_local_var = malloc(sizeof(app_version_t));
    if (!app_version_local_var) {
        return NULL;
    }
    app_version_local_var->minor_version = minor_version;
    app_version_local_var->major_version = major_version;
    app_version_local_var->version_index = version_index;

    app_version_local_var->_library_owned = 1;
    return app_version_local_var;
}

__attribute__((deprecated)) app_version_t *app_version_create(
    int minor_version,
    int major_version,
    int version_index
    ) {
    return app_version_create_internal (
        minor_version,
        major_version,
        version_index
        );
}

void app_version_free(app_version_t *app_version) {
    if(NULL == app_version){
        return ;
    }
    if(app_version->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "app_version_free");
        return ;
    }
    listEntry_t *listEntry;
    free(app_version);
}

cJSON *app_version_convertToJSON(app_version_t *app_version) {
    cJSON *item = cJSON_CreateObject();

    // app_version->minor_version
    if(app_version->minor_version) {
    if(cJSON_AddNumberToObject(item, "minorVersion", app_version->minor_version) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_version->major_version
    if(app_version->major_version) {
    if(cJSON_AddNumberToObject(item, "majorVersion", app_version->major_version) == NULL) {
    goto fail; //Numeric
    }
    }


    // app_version->version_index
    if(app_version->version_index) {
    if(cJSON_AddNumberToObject(item, "versionIndex", app_version->version_index) == NULL) {
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

app_version_t *app_version_parseFromJSON(cJSON *app_versionJSON){

    app_version_t *app_version_local_var = NULL;

    // app_version->minor_version
    cJSON *minor_version = cJSON_GetObjectItemCaseSensitive(app_versionJSON, "minorVersion");
    if (cJSON_IsNull(minor_version)) {
        minor_version = NULL;
    }
    if (minor_version) { 
    if(!cJSON_IsNumber(minor_version))
    {
    goto end; //Numeric
    }
    }

    // app_version->major_version
    cJSON *major_version = cJSON_GetObjectItemCaseSensitive(app_versionJSON, "majorVersion");
    if (cJSON_IsNull(major_version)) {
        major_version = NULL;
    }
    if (major_version) { 
    if(!cJSON_IsNumber(major_version))
    {
    goto end; //Numeric
    }
    }

    // app_version->version_index
    cJSON *version_index = cJSON_GetObjectItemCaseSensitive(app_versionJSON, "versionIndex");
    if (cJSON_IsNull(version_index)) {
        version_index = NULL;
    }
    if (version_index) { 
    if(!cJSON_IsNumber(version_index))
    {
    goto end; //Numeric
    }
    }


    app_version_local_var = app_version_create_internal (
        minor_version ? minor_version->valuedouble : 0,
        major_version ? major_version->valuedouble : 0,
        version_index ? version_index->valuedouble : 0
        );

    return app_version_local_var;
end:
    return NULL;

}
