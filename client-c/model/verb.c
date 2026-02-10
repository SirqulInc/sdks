#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "verb.h"



static verb_t *verb_create_internal(
    char *tag,
    char *body,
    list_t* attributes,
    list_t *children
    ) {
    verb_t *verb_local_var = malloc(sizeof(verb_t));
    if (!verb_local_var) {
        return NULL;
    }
    verb_local_var->tag = tag;
    verb_local_var->body = body;
    verb_local_var->attributes = attributes;
    verb_local_var->children = children;

    verb_local_var->_library_owned = 1;
    return verb_local_var;
}

__attribute__((deprecated)) verb_t *verb_create(
    char *tag,
    char *body,
    list_t* attributes,
    list_t *children
    ) {
    return verb_create_internal (
        tag,
        body,
        attributes,
        children
        );
}

void verb_free(verb_t *verb) {
    if(NULL == verb){
        return ;
    }
    if(verb->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "verb_free");
        return ;
    }
    listEntry_t *listEntry;
    if (verb->tag) {
        free(verb->tag);
        verb->tag = NULL;
    }
    if (verb->body) {
        free(verb->body);
        verb->body = NULL;
    }
    if (verb->attributes) {
        list_ForEach(listEntry, verb->attributes) {
            keyValuePair_t *localKeyValue = listEntry->data;
            free (localKeyValue->key);
            free (localKeyValue->value);
            keyValuePair_free(localKeyValue);
        }
        list_freeList(verb->attributes);
        verb->attributes = NULL;
    }
    if (verb->children) {
        list_ForEach(listEntry, verb->children) {
            verb_free(listEntry->data);
        }
        list_freeList(verb->children);
        verb->children = NULL;
    }
    free(verb);
}

cJSON *verb_convertToJSON(verb_t *verb) {
    cJSON *item = cJSON_CreateObject();

    // verb->tag
    if(verb->tag) {
    if(cJSON_AddStringToObject(item, "tag", verb->tag) == NULL) {
    goto fail; //String
    }
    }


    // verb->body
    if(verb->body) {
    if(cJSON_AddStringToObject(item, "body", verb->body) == NULL) {
    goto fail; //String
    }
    }


    // verb->attributes
    if(verb->attributes) {
    cJSON *attributes = cJSON_AddObjectToObject(item, "attributes");
    if(attributes == NULL) {
        goto fail; //primitive map container
    }
    cJSON *localMapObject = attributes;
    listEntry_t *attributesListEntry;
    if (verb->attributes) {
    list_ForEach(attributesListEntry, verb->attributes) {
        keyValuePair_t *localKeyValue = attributesListEntry->data;
        if(cJSON_AddStringToObject(localMapObject, localKeyValue->key, localKeyValue->value) == NULL)
        {
            goto fail;
        }
    }
    }
    }


    // verb->children
    if(verb->children) {
    cJSON *children = cJSON_AddArrayToObject(item, "children");
    if(children == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *childrenListEntry;
    if (verb->children) {
    list_ForEach(childrenListEntry, verb->children) {
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

verb_t *verb_parseFromJSON(cJSON *verbJSON){

    verb_t *verb_local_var = NULL;

    // define the local map for verb->attributes
    list_t *attributesList = NULL;

    // define the local list for verb->children
    list_t *childrenList = NULL;

    // verb->tag
    cJSON *tag = cJSON_GetObjectItemCaseSensitive(verbJSON, "tag");
    if (cJSON_IsNull(tag)) {
        tag = NULL;
    }
    if (tag) { 
    if(!cJSON_IsString(tag) && !cJSON_IsNull(tag))
    {
    goto end; //String
    }
    }

    // verb->body
    cJSON *body = cJSON_GetObjectItemCaseSensitive(verbJSON, "body");
    if (cJSON_IsNull(body)) {
        body = NULL;
    }
    if (body) { 
    if(!cJSON_IsString(body) && !cJSON_IsNull(body))
    {
    goto end; //String
    }
    }

    // verb->attributes
    cJSON *attributes = cJSON_GetObjectItemCaseSensitive(verbJSON, "attributes");
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

    // verb->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(verbJSON, "children");
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


    verb_local_var = verb_create_internal (
        tag && !cJSON_IsNull(tag) ? strdup(tag->valuestring) : NULL,
        body && !cJSON_IsNull(body) ? strdup(body->valuestring) : NULL,
        attributes ? attributesList : NULL,
        children ? childrenList : NULL
        );

    return verb_local_var;
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
