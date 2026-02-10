#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "image_generation_response.h"



static image_generation_response_t *image_generation_response_create_internal(
    long created,
    list_t *data
    ) {
    image_generation_response_t *image_generation_response_local_var = malloc(sizeof(image_generation_response_t));
    if (!image_generation_response_local_var) {
        return NULL;
    }
    image_generation_response_local_var->created = created;
    image_generation_response_local_var->data = data;

    image_generation_response_local_var->_library_owned = 1;
    return image_generation_response_local_var;
}

__attribute__((deprecated)) image_generation_response_t *image_generation_response_create(
    long created,
    list_t *data
    ) {
    return image_generation_response_create_internal (
        created,
        data
        );
}

void image_generation_response_free(image_generation_response_t *image_generation_response) {
    if(NULL == image_generation_response){
        return ;
    }
    if(image_generation_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "image_generation_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (image_generation_response->data) {
        list_ForEach(listEntry, image_generation_response->data) {
            url_response_free(listEntry->data);
        }
        list_freeList(image_generation_response->data);
        image_generation_response->data = NULL;
    }
    free(image_generation_response);
}

cJSON *image_generation_response_convertToJSON(image_generation_response_t *image_generation_response) {
    cJSON *item = cJSON_CreateObject();

    // image_generation_response->created
    if(image_generation_response->created) {
    if(cJSON_AddNumberToObject(item, "created", image_generation_response->created) == NULL) {
    goto fail; //Numeric
    }
    }


    // image_generation_response->data
    if(image_generation_response->data) {
    cJSON *data = cJSON_AddArrayToObject(item, "data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (image_generation_response->data) {
    list_ForEach(dataListEntry, image_generation_response->data) {
    cJSON *itemLocal = url_response_convertToJSON(dataListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data, itemLocal);
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

image_generation_response_t *image_generation_response_parseFromJSON(cJSON *image_generation_responseJSON){

    image_generation_response_t *image_generation_response_local_var = NULL;

    // define the local list for image_generation_response->data
    list_t *dataList = NULL;

    // image_generation_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(image_generation_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }

    // image_generation_response->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(image_generation_responseJSON, "data");
    if (cJSON_IsNull(data)) {
        data = NULL;
    }
    if (data) { 
    cJSON *data_local_nonprimitive = NULL;
    if(!cJSON_IsArray(data)){
        goto end; //nonprimitive container
    }

    dataList = list_createList();

    cJSON_ArrayForEach(data_local_nonprimitive,data )
    {
        if(!cJSON_IsObject(data_local_nonprimitive)){
            goto end;
        }
        url_response_t *dataItem = url_response_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }


    image_generation_response_local_var = image_generation_response_create_internal (
        created ? created->valuedouble : 0,
        data ? dataList : NULL
        );

    return image_generation_response_local_var;
end:
    if (dataList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataList) {
            url_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataList);
        dataList = NULL;
    }
    return NULL;

}
