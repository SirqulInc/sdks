#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "chronology.h"



static chronology_t *chronology_create_internal(
    date_time_zone_t *zone
    ) {
    chronology_t *chronology_local_var = malloc(sizeof(chronology_t));
    if (!chronology_local_var) {
        return NULL;
    }
    chronology_local_var->zone = zone;

    chronology_local_var->_library_owned = 1;
    return chronology_local_var;
}

__attribute__((deprecated)) chronology_t *chronology_create(
    date_time_zone_t *zone
    ) {
    return chronology_create_internal (
        zone
        );
}

void chronology_free(chronology_t *chronology) {
    if(NULL == chronology){
        return ;
    }
    if(chronology->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "chronology_free");
        return ;
    }
    listEntry_t *listEntry;
    if (chronology->zone) {
        date_time_zone_free(chronology->zone);
        chronology->zone = NULL;
    }
    free(chronology);
}

cJSON *chronology_convertToJSON(chronology_t *chronology) {
    cJSON *item = cJSON_CreateObject();

    // chronology->zone
    if(chronology->zone) {
    cJSON *zone_local_JSON = date_time_zone_convertToJSON(chronology->zone);
    if(zone_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "zone", zone_local_JSON);
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

chronology_t *chronology_parseFromJSON(cJSON *chronologyJSON){

    chronology_t *chronology_local_var = NULL;

    // define the local variable for chronology->zone
    date_time_zone_t *zone_local_nonprim = NULL;

    // chronology->zone
    cJSON *zone = cJSON_GetObjectItemCaseSensitive(chronologyJSON, "zone");
    if (cJSON_IsNull(zone)) {
        zone = NULL;
    }
    if (zone) { 
    zone_local_nonprim = date_time_zone_parseFromJSON(zone); //nonprimitive
    }


    chronology_local_var = chronology_create_internal (
        zone ? zone_local_nonprim : NULL
        );

    return chronology_local_var;
end:
    if (zone_local_nonprim) {
        date_time_zone_free(zone_local_nonprim);
        zone_local_nonprim = NULL;
    }
    return NULL;

}
