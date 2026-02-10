#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "node_request.h"



static node_request_t *node_request_create_internal(
    int x,
    int y,
    int z,
    double latitude,
    double longitude,
    double altitude,
    long date,
    int is_waypoint,
    long account_id,
    node_t *node
    ) {
    node_request_t *node_request_local_var = malloc(sizeof(node_request_t));
    if (!node_request_local_var) {
        return NULL;
    }
    node_request_local_var->x = x;
    node_request_local_var->y = y;
    node_request_local_var->z = z;
    node_request_local_var->latitude = latitude;
    node_request_local_var->longitude = longitude;
    node_request_local_var->altitude = altitude;
    node_request_local_var->date = date;
    node_request_local_var->is_waypoint = is_waypoint;
    node_request_local_var->account_id = account_id;
    node_request_local_var->node = node;

    node_request_local_var->_library_owned = 1;
    return node_request_local_var;
}

__attribute__((deprecated)) node_request_t *node_request_create(
    int x,
    int y,
    int z,
    double latitude,
    double longitude,
    double altitude,
    long date,
    int is_waypoint,
    long account_id,
    node_t *node
    ) {
    return node_request_create_internal (
        x,
        y,
        z,
        latitude,
        longitude,
        altitude,
        date,
        is_waypoint,
        account_id,
        node
        );
}

void node_request_free(node_request_t *node_request) {
    if(NULL == node_request){
        return ;
    }
    if(node_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "node_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (node_request->node) {
        node_free(node_request->node);
        node_request->node = NULL;
    }
    free(node_request);
}

cJSON *node_request_convertToJSON(node_request_t *node_request) {
    cJSON *item = cJSON_CreateObject();

    // node_request->x
    if(node_request->x) {
    if(cJSON_AddNumberToObject(item, "x", node_request->x) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->y
    if(node_request->y) {
    if(cJSON_AddNumberToObject(item, "y", node_request->y) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->z
    if(node_request->z) {
    if(cJSON_AddNumberToObject(item, "z", node_request->z) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->latitude
    if(node_request->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", node_request->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->longitude
    if(node_request->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", node_request->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->altitude
    if(node_request->altitude) {
    if(cJSON_AddNumberToObject(item, "altitude", node_request->altitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->date
    if(node_request->date) {
    if(cJSON_AddNumberToObject(item, "date", node_request->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->is_waypoint
    if(node_request->is_waypoint) {
    if(cJSON_AddBoolToObject(item, "isWaypoint", node_request->is_waypoint) == NULL) {
    goto fail; //Bool
    }
    }


    // node_request->account_id
    if(node_request->account_id) {
    if(cJSON_AddNumberToObject(item, "accountId", node_request->account_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // node_request->node
    if(node_request->node) {
    cJSON *node_local_JSON = node_convertToJSON(node_request->node);
    if(node_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "node", node_local_JSON);
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

node_request_t *node_request_parseFromJSON(cJSON *node_requestJSON){

    node_request_t *node_request_local_var = NULL;

    // define the local variable for node_request->node
    node_t *node_local_nonprim = NULL;

    // node_request->x
    cJSON *x = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "x");
    if (cJSON_IsNull(x)) {
        x = NULL;
    }
    if (x) { 
    if(!cJSON_IsNumber(x))
    {
    goto end; //Numeric
    }
    }

    // node_request->y
    cJSON *y = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "y");
    if (cJSON_IsNull(y)) {
        y = NULL;
    }
    if (y) { 
    if(!cJSON_IsNumber(y))
    {
    goto end; //Numeric
    }
    }

    // node_request->z
    cJSON *z = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "z");
    if (cJSON_IsNull(z)) {
        z = NULL;
    }
    if (z) { 
    if(!cJSON_IsNumber(z))
    {
    goto end; //Numeric
    }
    }

    // node_request->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // node_request->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // node_request->altitude
    cJSON *altitude = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "altitude");
    if (cJSON_IsNull(altitude)) {
        altitude = NULL;
    }
    if (altitude) { 
    if(!cJSON_IsNumber(altitude))
    {
    goto end; //Numeric
    }
    }

    // node_request->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "date");
    if (cJSON_IsNull(date)) {
        date = NULL;
    }
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // node_request->is_waypoint
    cJSON *is_waypoint = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "isWaypoint");
    if (cJSON_IsNull(is_waypoint)) {
        is_waypoint = NULL;
    }
    if (is_waypoint) { 
    if(!cJSON_IsBool(is_waypoint))
    {
    goto end; //Bool
    }
    }

    // node_request->account_id
    cJSON *account_id = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "accountId");
    if (cJSON_IsNull(account_id)) {
        account_id = NULL;
    }
    if (account_id) { 
    if(!cJSON_IsNumber(account_id))
    {
    goto end; //Numeric
    }
    }

    // node_request->node
    cJSON *node = cJSON_GetObjectItemCaseSensitive(node_requestJSON, "node");
    if (cJSON_IsNull(node)) {
        node = NULL;
    }
    if (node) { 
    node_local_nonprim = node_parseFromJSON(node); //nonprimitive
    }


    node_request_local_var = node_request_create_internal (
        x ? x->valuedouble : 0,
        y ? y->valuedouble : 0,
        z ? z->valuedouble : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        altitude ? altitude->valuedouble : 0,
        date ? date->valuedouble : 0,
        is_waypoint ? is_waypoint->valueint : 0,
        account_id ? account_id->valuedouble : 0,
        node ? node_local_nonprim : NULL
        );

    return node_request_local_var;
end:
    if (node_local_nonprim) {
        node_free(node_local_nonprim);
        node_local_nonprim = NULL;
    }
    return NULL;

}
