#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "cell_carrier_response.h"



static cell_carrier_response_t *cell_carrier_response_create_internal(
    long id,
    char *uid,
    char *display
    ) {
    cell_carrier_response_t *cell_carrier_response_local_var = malloc(sizeof(cell_carrier_response_t));
    if (!cell_carrier_response_local_var) {
        return NULL;
    }
    cell_carrier_response_local_var->id = id;
    cell_carrier_response_local_var->uid = uid;
    cell_carrier_response_local_var->display = display;

    cell_carrier_response_local_var->_library_owned = 1;
    return cell_carrier_response_local_var;
}

__attribute__((deprecated)) cell_carrier_response_t *cell_carrier_response_create(
    long id,
    char *uid,
    char *display
    ) {
    return cell_carrier_response_create_internal (
        id,
        uid,
        display
        );
}

void cell_carrier_response_free(cell_carrier_response_t *cell_carrier_response) {
    if(NULL == cell_carrier_response){
        return ;
    }
    if(cell_carrier_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "cell_carrier_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (cell_carrier_response->uid) {
        free(cell_carrier_response->uid);
        cell_carrier_response->uid = NULL;
    }
    if (cell_carrier_response->display) {
        free(cell_carrier_response->display);
        cell_carrier_response->display = NULL;
    }
    free(cell_carrier_response);
}

cJSON *cell_carrier_response_convertToJSON(cell_carrier_response_t *cell_carrier_response) {
    cJSON *item = cJSON_CreateObject();

    // cell_carrier_response->id
    if(cell_carrier_response->id) {
    if(cJSON_AddNumberToObject(item, "id", cell_carrier_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // cell_carrier_response->uid
    if(cell_carrier_response->uid) {
    if(cJSON_AddStringToObject(item, "uid", cell_carrier_response->uid) == NULL) {
    goto fail; //String
    }
    }


    // cell_carrier_response->display
    if(cell_carrier_response->display) {
    if(cJSON_AddStringToObject(item, "display", cell_carrier_response->display) == NULL) {
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

cell_carrier_response_t *cell_carrier_response_parseFromJSON(cJSON *cell_carrier_responseJSON){

    cell_carrier_response_t *cell_carrier_response_local_var = NULL;

    // cell_carrier_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(cell_carrier_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // cell_carrier_response->uid
    cJSON *uid = cJSON_GetObjectItemCaseSensitive(cell_carrier_responseJSON, "uid");
    if (cJSON_IsNull(uid)) {
        uid = NULL;
    }
    if (uid) { 
    if(!cJSON_IsString(uid) && !cJSON_IsNull(uid))
    {
    goto end; //String
    }
    }

    // cell_carrier_response->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(cell_carrier_responseJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }


    cell_carrier_response_local_var = cell_carrier_response_create_internal (
        id ? id->valuedouble : 0,
        uid && !cJSON_IsNull(uid) ? strdup(uid->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL
        );

    return cell_carrier_response_local_var;
end:
    return NULL;

}
