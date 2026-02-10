#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "object_store_response.h"



static object_store_response_t *object_store_response_create_internal(
    json_object_t *json_object,
    list_t *request
    ) {
    object_store_response_t *object_store_response_local_var = malloc(sizeof(object_store_response_t));
    if (!object_store_response_local_var) {
        return NULL;
    }
    object_store_response_local_var->json_object = json_object;
    object_store_response_local_var->request = request;

    object_store_response_local_var->_library_owned = 1;
    return object_store_response_local_var;
}

__attribute__((deprecated)) object_store_response_t *object_store_response_create(
    json_object_t *json_object,
    list_t *request
    ) {
    return object_store_response_create_internal (
        json_object,
        request
        );
}

void object_store_response_free(object_store_response_t *object_store_response) {
    if(NULL == object_store_response){
        return ;
    }
    if(object_store_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "object_store_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (object_store_response->json_object) {
        json_object_free(object_store_response->json_object);
        object_store_response->json_object = NULL;
    }
    if (object_store_response->request) {
        list_ForEach(listEntry, object_store_response->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(object_store_response->request);
        object_store_response->request = NULL;
    }
    free(object_store_response);
}

cJSON *object_store_response_convertToJSON(object_store_response_t *object_store_response) {
    cJSON *item = cJSON_CreateObject();

    // object_store_response->json_object
    if(object_store_response->json_object) {
    cJSON *json_object_local_JSON = json_object_convertToJSON(object_store_response->json_object);
    if(json_object_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "jsonObject", json_object_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // object_store_response->request
    if(object_store_response->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (object_store_response->request) {
    list_ForEach(requestListEntry, object_store_response->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
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

object_store_response_t *object_store_response_parseFromJSON(cJSON *object_store_responseJSON){

    object_store_response_t *object_store_response_local_var = NULL;

    // define the local variable for object_store_response->json_object
    json_object_t *json_object_local_nonprim = NULL;

    // define the local list for object_store_response->request
    list_t *requestList = NULL;

    // object_store_response->json_object
    cJSON *json_object = cJSON_GetObjectItemCaseSensitive(object_store_responseJSON, "jsonObject");
    if (cJSON_IsNull(json_object)) {
        json_object = NULL;
    }
    if (json_object) { 
    json_object_local_nonprim = json_object_parseFromJSON(json_object); //nonprimitive
    }

    // object_store_response->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(object_store_responseJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }


    object_store_response_local_var = object_store_response_create_internal (
        json_object ? json_object_local_nonprim : NULL,
        request ? requestList : NULL
        );

    return object_store_response_local_var;
end:
    if (json_object_local_nonprim) {
        json_object_free(json_object_local_nonprim);
        json_object_local_nonprim = NULL;
    }
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    return NULL;

}
