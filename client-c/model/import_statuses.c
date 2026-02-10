#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "import_statuses.h"



static import_statuses_t *import_statuses_create_internal(
    list_t *statuses
    ) {
    import_statuses_t *import_statuses_local_var = malloc(sizeof(import_statuses_t));
    if (!import_statuses_local_var) {
        return NULL;
    }
    import_statuses_local_var->statuses = statuses;

    import_statuses_local_var->_library_owned = 1;
    return import_statuses_local_var;
}

__attribute__((deprecated)) import_statuses_t *import_statuses_create(
    list_t *statuses
    ) {
    return import_statuses_create_internal (
        statuses
        );
}

void import_statuses_free(import_statuses_t *import_statuses) {
    if(NULL == import_statuses){
        return ;
    }
    if(import_statuses->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "import_statuses_free");
        return ;
    }
    listEntry_t *listEntry;
    if (import_statuses->statuses) {
        list_ForEach(listEntry, import_statuses->statuses) {
            shipment_import_status_free(listEntry->data);
        }
        list_freeList(import_statuses->statuses);
        import_statuses->statuses = NULL;
    }
    free(import_statuses);
}

cJSON *import_statuses_convertToJSON(import_statuses_t *import_statuses) {
    cJSON *item = cJSON_CreateObject();

    // import_statuses->statuses
    if(import_statuses->statuses) {
    cJSON *statuses = cJSON_AddArrayToObject(item, "statuses");
    if(statuses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *statusesListEntry;
    if (import_statuses->statuses) {
    list_ForEach(statusesListEntry, import_statuses->statuses) {
    cJSON *itemLocal = shipment_import_status_convertToJSON(statusesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(statuses, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

import_statuses_t *import_statuses_parseFromJSON(cJSON *import_statusesJSON){

    import_statuses_t *import_statuses_local_var = NULL;

    // define the local list for import_statuses->statuses
    list_t *statusesList = NULL;

    // import_statuses->statuses
    cJSON *statuses = cJSON_GetObjectItemCaseSensitive(import_statusesJSON, "statuses");
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
        shipment_import_status_t *statusesItem = shipment_import_status_parseFromJSON(statuses_local_nonprimitive);

        list_addElement(statusesList, statusesItem);
    }
    }


    import_statuses_local_var = import_statuses_create_internal (
        statuses ? statusesList : NULL
        );

    return import_statuses_local_var;
end:
    if (statusesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, statusesList) {
            shipment_import_status_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(statusesList);
        statusesList = NULL;
    }
    return NULL;

}
