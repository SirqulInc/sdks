#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "node.h"



static node_t *node_create_internal(
    int x,
    int y,
    int z
    ) {
    node_t *node_local_var = malloc(sizeof(node_t));
    if (!node_local_var) {
        return NULL;
    }
    node_local_var->x = x;
    node_local_var->y = y;
    node_local_var->z = z;

    node_local_var->_library_owned = 1;
    return node_local_var;
}

__attribute__((deprecated)) node_t *node_create(
    int x,
    int y,
    int z
    ) {
    return node_create_internal (
        x,
        y,
        z
        );
}

void node_free(node_t *node) {
    if(NULL == node){
        return ;
    }
    if(node->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "node_free");
        return ;
    }
    listEntry_t *listEntry;
    free(node);
}

cJSON *node_convertToJSON(node_t *node) {
    cJSON *item = cJSON_CreateObject();

    // node->x
    if(node->x) {
    if(cJSON_AddNumberToObject(item, "x", node->x) == NULL) {
    goto fail; //Numeric
    }
    }


    // node->y
    if(node->y) {
    if(cJSON_AddNumberToObject(item, "y", node->y) == NULL) {
    goto fail; //Numeric
    }
    }


    // node->z
    if(node->z) {
    if(cJSON_AddNumberToObject(item, "z", node->z) == NULL) {
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

node_t *node_parseFromJSON(cJSON *nodeJSON){

    node_t *node_local_var = NULL;

    // node->x
    cJSON *x = cJSON_GetObjectItemCaseSensitive(nodeJSON, "x");
    if (cJSON_IsNull(x)) {
        x = NULL;
    }
    if (x) { 
    if(!cJSON_IsNumber(x))
    {
    goto end; //Numeric
    }
    }

    // node->y
    cJSON *y = cJSON_GetObjectItemCaseSensitive(nodeJSON, "y");
    if (cJSON_IsNull(y)) {
        y = NULL;
    }
    if (y) { 
    if(!cJSON_IsNumber(y))
    {
    goto end; //Numeric
    }
    }

    // node->z
    cJSON *z = cJSON_GetObjectItemCaseSensitive(nodeJSON, "z");
    if (cJSON_IsNull(z)) {
        z = NULL;
    }
    if (z) { 
    if(!cJSON_IsNumber(z))
    {
    goto end; //Numeric
    }
    }


    node_local_var = node_create_internal (
        x ? x->valuedouble : 0,
        y ? y->valuedouble : 0,
        z ? z->valuedouble : 0
        );

    return node_local_var;
end:
    return NULL;

}
