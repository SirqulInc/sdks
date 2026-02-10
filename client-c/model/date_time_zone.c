#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "date_time_zone.h"



static date_time_zone_t *date_time_zone_create_internal(
    char *id,
    int fixed
    ) {
    date_time_zone_t *date_time_zone_local_var = malloc(sizeof(date_time_zone_t));
    if (!date_time_zone_local_var) {
        return NULL;
    }
    date_time_zone_local_var->id = id;
    date_time_zone_local_var->fixed = fixed;

    date_time_zone_local_var->_library_owned = 1;
    return date_time_zone_local_var;
}

__attribute__((deprecated)) date_time_zone_t *date_time_zone_create(
    char *id,
    int fixed
    ) {
    return date_time_zone_create_internal (
        id,
        fixed
        );
}

void date_time_zone_free(date_time_zone_t *date_time_zone) {
    if(NULL == date_time_zone){
        return ;
    }
    if(date_time_zone->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "date_time_zone_free");
        return ;
    }
    listEntry_t *listEntry;
    if (date_time_zone->id) {
        free(date_time_zone->id);
        date_time_zone->id = NULL;
    }
    free(date_time_zone);
}

cJSON *date_time_zone_convertToJSON(date_time_zone_t *date_time_zone) {
    cJSON *item = cJSON_CreateObject();

    // date_time_zone->id
    if(date_time_zone->id) {
    if(cJSON_AddStringToObject(item, "id", date_time_zone->id) == NULL) {
    goto fail; //String
    }
    }


    // date_time_zone->fixed
    if(date_time_zone->fixed) {
    if(cJSON_AddBoolToObject(item, "fixed", date_time_zone->fixed) == NULL) {
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

date_time_zone_t *date_time_zone_parseFromJSON(cJSON *date_time_zoneJSON){

    date_time_zone_t *date_time_zone_local_var = NULL;

    // date_time_zone->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(date_time_zoneJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // date_time_zone->fixed
    cJSON *fixed = cJSON_GetObjectItemCaseSensitive(date_time_zoneJSON, "fixed");
    if (cJSON_IsNull(fixed)) {
        fixed = NULL;
    }
    if (fixed) { 
    if(!cJSON_IsBool(fixed))
    {
    goto end; //Bool
    }
    }


    date_time_zone_local_var = date_time_zone_create_internal (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        fixed ? fixed->valueint : 0
        );

    return date_time_zone_local_var;
end:
    return NULL;

}
