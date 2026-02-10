#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "twi_ml_response.h"



static twi_ml_response_t *twi_ml_response_create_internal(
    char *tag,
    char *body,
    list_t* attributes,
    list_t *children
    ) {
    twi_ml_response_t *twi_ml_response_local_var = malloc(sizeof(twi_ml_response_t));
    if (!twi_ml_response_local_var) {
        return NULL;
    }
    twi_ml_response_local_var->tag = tag;
    twi_ml_response_local_var->body = body;
    twi_ml_response_local_var->attributes = attributes;
    twi_ml_response_local_var->children = children;

    twi_ml_response_local_var->_library_owned = 1;
    return twi_ml_response_local_var;
}

__attribute__((deprecated)) twi_ml_response_t *twi_ml_response_create(
    char *tag,
    char *body,
    list_t* attributes,
    list_t *children
    ) {
    return twi_ml_response_create_internal (
        tag,
        body,
        attributes,
        children
        );
}

void twi_ml_response_free(twi_ml_response_t *twi_ml_response) {
    if(NULL == twi_ml_response){
        return ;
    }
    if(twi_ml_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "twi_ml_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (twi_ml_response->tag) {
        free(twi_ml_response->tag);
        twi_ml_response->tag = NULL;
    }
    if (twi_ml_response->body) {
        free(twi_ml_response->body);
        twi_ml_response->body = NULL;
    }
    if (twi_ml_response->attributes) {
        list_ForEach(listEntry, twi_ml_response->attributes) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free (localKeyValue->key);
            free (localKeyValue->value);
            keyValuePair_free(localKeyValue);
        }
        list_freeList(twi_ml_response->attributes);
        twi_ml_response->attributes = NULL;
    }
    if (twi_ml_response->children) {
        list_ForEach(listEntry, twi_ml_response->children) {
            verb_free(listEntry->data);
        }
        list_freeList(twi_ml_response->children);
        twi_ml_response->children = NULL;
    }
    free(twi_ml_response);
}

cJSON *twi_ml_response_convertToJSON(twi_ml_response_t *twi_ml_response) {
    cJSON *item = cJSON_CreateObject();

    // twi_ml_response->tag
    if(twi_ml_response->tag) {
    if(cJSON_AddStringToObject(item, "tag", twi_ml_response->tag) == NULL) {
    goto fail; //String
    }
    }


    // twi_ml_response->body
    if(twi_ml_response->body) {
    if(cJSON_AddStringToObject(item, "body", twi_ml_response->body) == NULL) {
    goto fail; //String
    }
    }


    // twi_ml_response->attributes
    if(twi_ml_response->attributes) {
    cJSON *attributes = cJSON_AddObjectToObject(item, "attributes");
    if(attributes == NULL) {
        goto fail; //primitive map container
    }
    cJSON *localMapObject = attributes;
    listEntry_t *attributesListEntry;
    if (twi_ml_response->attributes) {
    list_ForEach(attributesListEntry, twi_ml_response->attributes) {
        keyValuePair_t *localKeyValue = attributesListEntry->data;
        if(cJSON_AddStringToObject(localMapObject, localKeyValue->key, localKeyValue->value) == NULL)
        {
            goto fail;
        }
    }
    }
    }


    // twi_ml_response->children
    if(twi_ml_response->children) {
    cJSON *children = cJSON_AddArrayToObject(item, "children");
    if(children == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *childrenListEntry;
    if (twi_ml_response->children) {
    list_ForEach(childrenListEntry, twi_ml_response->children) {
    cJSON *itemLocal = verb_convertToJSON(childrenListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(children, itemLocal);
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

twi_ml_response_t *twi_ml_response_parseFromJSON(cJSON *twi_ml_responseJSON){

    twi_ml_response_t *twi_ml_response_local_var = NULL;

    // define the local map for twi_ml_response->attributes
    list_t *attributesList = NULL;

    // define the local list for twi_ml_response->children
    list_t *childrenList = NULL;

    // twi_ml_response->tag
    cJSON *tag = cJSON_GetObjectItemCaseSensitive(twi_ml_responseJSON, "tag");
    if (cJSON_IsNull(tag)) {
        tag = NULL;
    }
    if (tag) { 
    if(!cJSON_IsString(tag) && !cJSON_IsNull(tag))
    {
    goto end; //String
    }
    }

    // twi_ml_response->body
    cJSON *body = cJSON_GetObjectItemCaseSensitive(twi_ml_responseJSON, "body");
    if (cJSON_IsNull(body)) {
        body = NULL;
    }
    if (body) { 
    if(!cJSON_IsString(body) && !cJSON_IsNull(body))
    {
    goto end; //String
    }
    }

    // twi_ml_response->attributes
    cJSON *attributes = cJSON_GetObjectItemCaseSensitive(twi_ml_responseJSON, "attributes");
    if (cJSON_IsNull(attributes)) {
        attributes = NULL;
    }
    if (attributes) { 
    cJSON *attributes_local_map = NULL;
    if(!cJSON_IsObject(attributes) && !cJSON_IsNull(attributes))
    {
        goto end;//primitive map container
    }
    if(cJSON_IsObject(attributes))
    {
        attributesList = list_createList();
        keyValuePair_t *localMapKeyPair;
        cJSON_ArrayForEach(attributes_local_map, attributes)
        {
            cJSON *localMapObject = attributes_local_map;
            if(!cJSON_IsString(localMapObject))
            {
                goto end;
            }
            localMapKeyPair = keyValuePair_create(strdup(localMapObject->string),strdup(localMapObject->valuestring));
            list_addElement(attributesList , localMapKeyPair);
        }
    }
    }

    // twi_ml_response->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(twi_ml_responseJSON, "children");
    if (cJSON_IsNull(children)) {
        children = NULL;
    }
    if (children) { 
    cJSON *children_local_nonprimitive = NULL;
    if(!cJSON_IsArray(children)){
        goto end; //nonprimitive container
    }

    childrenList = list_createList();

    cJSON_ArrayForEach(children_local_nonprimitive,children )
    {
        if(!cJSON_IsObject(children_local_nonprimitive)){
            goto end;
        }
        verb_t *childrenItem = verb_parseFromJSON(children_local_nonprimitive);

        list_addElement(childrenList, childrenItem);
    }
    }


    twi_ml_response_local_var = twi_ml_response_create_internal (
        tag && !cJSON_IsNull(tag) ? strdup(tag->valuestring) : NULL,
        body && !cJSON_IsNull(body) ? strdup(body->valuestring) : NULL,
        attributes ? attributesList : NULL,
        children ? childrenList : NULL
        );

    return twi_ml_response_local_var;
end:
    if (attributesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, attributesList) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free(localKeyValue->key);
            localKeyValue->key = NULL;
            free(localKeyValue->value);
            localKeyValue->value = NULL;
            keyValuePair_free(localKeyValue);
            localKeyValue = NULL;
        }
        list_freeList(attributesList);
        attributesList = NULL;
    }
    if (childrenList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, childrenList) {
            verb_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(childrenList);
        childrenList = NULL;
    }
    return NULL;

}
