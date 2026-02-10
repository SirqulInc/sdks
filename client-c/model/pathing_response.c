#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pathing_response.h"



static pathing_response_t *pathing_response_create_internal(
    node_request_t *start,
    node_request_t *end,
    list_t *waypoints,
    list_t *exclusions,
    int width,
    int height,
    node_request_t *southwest,
    node_request_t *northeast,
    double meters_per_x,
    double meters_per_y,
    list_t *path,
    int path_count,
    list_t *directions,
    int direction_count,
    node_request_t *swcalibration,
    double calibration_bearings,
    node_request_t *necalibration
    ) {
    pathing_response_t *pathing_response_local_var = malloc(sizeof(pathing_response_t));
    if (!pathing_response_local_var) {
        return NULL;
    }
    pathing_response_local_var->start = start;
    pathing_response_local_var->end = end;
    pathing_response_local_var->waypoints = waypoints;
    pathing_response_local_var->exclusions = exclusions;
    pathing_response_local_var->width = width;
    pathing_response_local_var->height = height;
    pathing_response_local_var->southwest = southwest;
    pathing_response_local_var->northeast = northeast;
    pathing_response_local_var->meters_per_x = meters_per_x;
    pathing_response_local_var->meters_per_y = meters_per_y;
    pathing_response_local_var->path = path;
    pathing_response_local_var->path_count = path_count;
    pathing_response_local_var->directions = directions;
    pathing_response_local_var->direction_count = direction_count;
    pathing_response_local_var->swcalibration = swcalibration;
    pathing_response_local_var->calibration_bearings = calibration_bearings;
    pathing_response_local_var->necalibration = necalibration;

    pathing_response_local_var->_library_owned = 1;
    return pathing_response_local_var;
}

__attribute__((deprecated)) pathing_response_t *pathing_response_create(
    node_request_t *start,
    node_request_t *end,
    list_t *waypoints,
    list_t *exclusions,
    int width,
    int height,
    node_request_t *southwest,
    node_request_t *northeast,
    double meters_per_x,
    double meters_per_y,
    list_t *path,
    int path_count,
    list_t *directions,
    int direction_count,
    node_request_t *swcalibration,
    double calibration_bearings,
    node_request_t *necalibration
    ) {
    return pathing_response_create_internal (
        start,
        end,
        waypoints,
        exclusions,
        width,
        height,
        southwest,
        northeast,
        meters_per_x,
        meters_per_y,
        path,
        path_count,
        directions,
        direction_count,
        swcalibration,
        calibration_bearings,
        necalibration
        );
}

void pathing_response_free(pathing_response_t *pathing_response) {
    if(NULL == pathing_response){
        return ;
    }
    if(pathing_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "pathing_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (pathing_response->start) {
        node_request_free(pathing_response->start);
        pathing_response->start = NULL;
    }
    if (pathing_response->end) {
        node_request_free(pathing_response->end);
        pathing_response->end = NULL;
    }
    if (pathing_response->waypoints) {
        list_ForEach(listEntry, pathing_response->waypoints) {
            node_request_free(listEntry->data);
        }
        list_freeList(pathing_response->waypoints);
        pathing_response->waypoints = NULL;
    }
    if (pathing_response->exclusions) {
        list_ForEach(listEntry, pathing_response->exclusions) {
            node_request_free(listEntry->data);
        }
        list_freeList(pathing_response->exclusions);
        pathing_response->exclusions = NULL;
    }
    if (pathing_response->southwest) {
        node_request_free(pathing_response->southwest);
        pathing_response->southwest = NULL;
    }
    if (pathing_response->northeast) {
        node_request_free(pathing_response->northeast);
        pathing_response->northeast = NULL;
    }
    if (pathing_response->path) {
        list_ForEach(listEntry, pathing_response->path) {
            node_request_free(listEntry->data);
        }
        list_freeList(pathing_response->path);
        pathing_response->path = NULL;
    }
    if (pathing_response->directions) {
        list_ForEach(listEntry, pathing_response->directions) {
            direction_response_free(listEntry->data);
        }
        list_freeList(pathing_response->directions);
        pathing_response->directions = NULL;
    }
    if (pathing_response->swcalibration) {
        node_request_free(pathing_response->swcalibration);
        pathing_response->swcalibration = NULL;
    }
    if (pathing_response->necalibration) {
        node_request_free(pathing_response->necalibration);
        pathing_response->necalibration = NULL;
    }
    free(pathing_response);
}

cJSON *pathing_response_convertToJSON(pathing_response_t *pathing_response) {
    cJSON *item = cJSON_CreateObject();

    // pathing_response->start
    if(pathing_response->start) {
    cJSON *start_local_JSON = node_request_convertToJSON(pathing_response->start);
    if(start_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "start", start_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pathing_response->end
    if(pathing_response->end) {
    cJSON *end_local_JSON = node_request_convertToJSON(pathing_response->end);
    if(end_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "end", end_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pathing_response->waypoints
    if(pathing_response->waypoints) {
    cJSON *waypoints = cJSON_AddArrayToObject(item, "waypoints");
    if(waypoints == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *waypointsListEntry;
    if (pathing_response->waypoints) {
    list_ForEach(waypointsListEntry, pathing_response->waypoints) {
    cJSON *itemLocal = node_request_convertToJSON(waypointsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(waypoints, itemLocal);
    }
    }
    }


    // pathing_response->exclusions
    if(pathing_response->exclusions) {
    cJSON *exclusions = cJSON_AddArrayToObject(item, "exclusions");
    if(exclusions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *exclusionsListEntry;
    if (pathing_response->exclusions) {
    list_ForEach(exclusionsListEntry, pathing_response->exclusions) {
    cJSON *itemLocal = node_request_convertToJSON(exclusionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(exclusions, itemLocal);
    }
    }
    }


    // pathing_response->width
    if(pathing_response->width) {
    if(cJSON_AddNumberToObject(item, "width", pathing_response->width) == NULL) {
    goto fail; //Numeric
    }
    }


    // pathing_response->height
    if(pathing_response->height) {
    if(cJSON_AddNumberToObject(item, "height", pathing_response->height) == NULL) {
    goto fail; //Numeric
    }
    }


    // pathing_response->southwest
    if(pathing_response->southwest) {
    cJSON *southwest_local_JSON = node_request_convertToJSON(pathing_response->southwest);
    if(southwest_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "southwest", southwest_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pathing_response->northeast
    if(pathing_response->northeast) {
    cJSON *northeast_local_JSON = node_request_convertToJSON(pathing_response->northeast);
    if(northeast_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "northeast", northeast_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pathing_response->meters_per_x
    if(pathing_response->meters_per_x) {
    if(cJSON_AddNumberToObject(item, "metersPerX", pathing_response->meters_per_x) == NULL) {
    goto fail; //Numeric
    }
    }


    // pathing_response->meters_per_y
    if(pathing_response->meters_per_y) {
    if(cJSON_AddNumberToObject(item, "metersPerY", pathing_response->meters_per_y) == NULL) {
    goto fail; //Numeric
    }
    }


    // pathing_response->path
    if(pathing_response->path) {
    cJSON *path = cJSON_AddArrayToObject(item, "path");
    if(path == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *pathListEntry;
    if (pathing_response->path) {
    list_ForEach(pathListEntry, pathing_response->path) {
    cJSON *itemLocal = node_request_convertToJSON(pathListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(path, itemLocal);
    }
    }
    }


    // pathing_response->path_count
    if(pathing_response->path_count) {
    if(cJSON_AddNumberToObject(item, "pathCount", pathing_response->path_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // pathing_response->directions
    if(pathing_response->directions) {
    cJSON *directions = cJSON_AddArrayToObject(item, "directions");
    if(directions == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *directionsListEntry;
    if (pathing_response->directions) {
    list_ForEach(directionsListEntry, pathing_response->directions) {
    cJSON *itemLocal = direction_response_convertToJSON(directionsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(directions, itemLocal);
    }
    }
    }


    // pathing_response->direction_count
    if(pathing_response->direction_count) {
    if(cJSON_AddNumberToObject(item, "directionCount", pathing_response->direction_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // pathing_response->swcalibration
    if(pathing_response->swcalibration) {
    cJSON *swcalibration_local_JSON = node_request_convertToJSON(pathing_response->swcalibration);
    if(swcalibration_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "swcalibration", swcalibration_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pathing_response->calibration_bearings
    if(pathing_response->calibration_bearings) {
    if(cJSON_AddNumberToObject(item, "calibrationBearings", pathing_response->calibration_bearings) == NULL) {
    goto fail; //Numeric
    }
    }


    // pathing_response->necalibration
    if(pathing_response->necalibration) {
    cJSON *necalibration_local_JSON = node_request_convertToJSON(pathing_response->necalibration);
    if(necalibration_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "necalibration", necalibration_local_JSON);
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

pathing_response_t *pathing_response_parseFromJSON(cJSON *pathing_responseJSON){

    pathing_response_t *pathing_response_local_var = NULL;

    // define the local variable for pathing_response->start
    node_request_t *start_local_nonprim = NULL;

    // define the local variable for pathing_response->end
    node_request_t *end_local_nonprim = NULL;

    // define the local list for pathing_response->waypoints
    list_t *waypointsList = NULL;

    // define the local list for pathing_response->exclusions
    list_t *exclusionsList = NULL;

    // define the local variable for pathing_response->southwest
    node_request_t *southwest_local_nonprim = NULL;

    // define the local variable for pathing_response->northeast
    node_request_t *northeast_local_nonprim = NULL;

    // define the local list for pathing_response->path
    list_t *pathList = NULL;

    // define the local list for pathing_response->directions
    list_t *directionsList = NULL;

    // define the local variable for pathing_response->swcalibration
    node_request_t *swcalibration_local_nonprim = NULL;

    // define the local variable for pathing_response->necalibration
    node_request_t *necalibration_local_nonprim = NULL;

    // pathing_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    start_local_nonprim = node_request_parseFromJSON(start); //nonprimitive
    }

    // pathing_response->end
    cJSON *end = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "end");
    if (cJSON_IsNull(end)) {
        end = NULL;
    }
    if (end) { 
    end_local_nonprim = node_request_parseFromJSON(end); //nonprimitive
    }

    // pathing_response->waypoints
    cJSON *waypoints = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "waypoints");
    if (cJSON_IsNull(waypoints)) {
        waypoints = NULL;
    }
    if (waypoints) { 
    cJSON *waypoints_local_nonprimitive = NULL;
    if(!cJSON_IsArray(waypoints)){
        goto end; //nonprimitive container
    }

    waypointsList = list_createList();

    cJSON_ArrayForEach(waypoints_local_nonprimitive,waypoints )
    {
        if(!cJSON_IsObject(waypoints_local_nonprimitive)){
            goto end;
        }
        node_request_t *waypointsItem = node_request_parseFromJSON(waypoints_local_nonprimitive);

        list_addElement(waypointsList, waypointsItem);
    }
    }

    // pathing_response->exclusions
    cJSON *exclusions = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "exclusions");
    if (cJSON_IsNull(exclusions)) {
        exclusions = NULL;
    }
    if (exclusions) { 
    cJSON *exclusions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(exclusions)){
        goto end; //nonprimitive container
    }

    exclusionsList = list_createList();

    cJSON_ArrayForEach(exclusions_local_nonprimitive,exclusions )
    {
        if(!cJSON_IsObject(exclusions_local_nonprimitive)){
            goto end;
        }
        node_request_t *exclusionsItem = node_request_parseFromJSON(exclusions_local_nonprimitive);

        list_addElement(exclusionsList, exclusionsItem);
    }
    }

    // pathing_response->width
    cJSON *width = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "width");
    if (cJSON_IsNull(width)) {
        width = NULL;
    }
    if (width) { 
    if(!cJSON_IsNumber(width))
    {
    goto end; //Numeric
    }
    }

    // pathing_response->height
    cJSON *height = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "height");
    if (cJSON_IsNull(height)) {
        height = NULL;
    }
    if (height) { 
    if(!cJSON_IsNumber(height))
    {
    goto end; //Numeric
    }
    }

    // pathing_response->southwest
    cJSON *southwest = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "southwest");
    if (cJSON_IsNull(southwest)) {
        southwest = NULL;
    }
    if (southwest) { 
    southwest_local_nonprim = node_request_parseFromJSON(southwest); //nonprimitive
    }

    // pathing_response->northeast
    cJSON *northeast = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "northeast");
    if (cJSON_IsNull(northeast)) {
        northeast = NULL;
    }
    if (northeast) { 
    northeast_local_nonprim = node_request_parseFromJSON(northeast); //nonprimitive
    }

    // pathing_response->meters_per_x
    cJSON *meters_per_x = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "metersPerX");
    if (cJSON_IsNull(meters_per_x)) {
        meters_per_x = NULL;
    }
    if (meters_per_x) { 
    if(!cJSON_IsNumber(meters_per_x))
    {
    goto end; //Numeric
    }
    }

    // pathing_response->meters_per_y
    cJSON *meters_per_y = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "metersPerY");
    if (cJSON_IsNull(meters_per_y)) {
        meters_per_y = NULL;
    }
    if (meters_per_y) { 
    if(!cJSON_IsNumber(meters_per_y))
    {
    goto end; //Numeric
    }
    }

    // pathing_response->path
    cJSON *path = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "path");
    if (cJSON_IsNull(path)) {
        path = NULL;
    }
    if (path) { 
    cJSON *path_local_nonprimitive = NULL;
    if(!cJSON_IsArray(path)){
        goto end; //nonprimitive container
    }

    pathList = list_createList();

    cJSON_ArrayForEach(path_local_nonprimitive,path )
    {
        if(!cJSON_IsObject(path_local_nonprimitive)){
            goto end;
        }
        node_request_t *pathItem = node_request_parseFromJSON(path_local_nonprimitive);

        list_addElement(pathList, pathItem);
    }
    }

    // pathing_response->path_count
    cJSON *path_count = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "pathCount");
    if (cJSON_IsNull(path_count)) {
        path_count = NULL;
    }
    if (path_count) { 
    if(!cJSON_IsNumber(path_count))
    {
    goto end; //Numeric
    }
    }

    // pathing_response->directions
    cJSON *directions = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "directions");
    if (cJSON_IsNull(directions)) {
        directions = NULL;
    }
    if (directions) { 
    cJSON *directions_local_nonprimitive = NULL;
    if(!cJSON_IsArray(directions)){
        goto end; //nonprimitive container
    }

    directionsList = list_createList();

    cJSON_ArrayForEach(directions_local_nonprimitive,directions )
    {
        if(!cJSON_IsObject(directions_local_nonprimitive)){
            goto end;
        }
        direction_response_t *directionsItem = direction_response_parseFromJSON(directions_local_nonprimitive);

        list_addElement(directionsList, directionsItem);
    }
    }

    // pathing_response->direction_count
    cJSON *direction_count = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "directionCount");
    if (cJSON_IsNull(direction_count)) {
        direction_count = NULL;
    }
    if (direction_count) { 
    if(!cJSON_IsNumber(direction_count))
    {
    goto end; //Numeric
    }
    }

    // pathing_response->swcalibration
    cJSON *swcalibration = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "swcalibration");
    if (cJSON_IsNull(swcalibration)) {
        swcalibration = NULL;
    }
    if (swcalibration) { 
    swcalibration_local_nonprim = node_request_parseFromJSON(swcalibration); //nonprimitive
    }

    // pathing_response->calibration_bearings
    cJSON *calibration_bearings = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "calibrationBearings");
    if (cJSON_IsNull(calibration_bearings)) {
        calibration_bearings = NULL;
    }
    if (calibration_bearings) { 
    if(!cJSON_IsNumber(calibration_bearings))
    {
    goto end; //Numeric
    }
    }

    // pathing_response->necalibration
    cJSON *necalibration = cJSON_GetObjectItemCaseSensitive(pathing_responseJSON, "necalibration");
    if (cJSON_IsNull(necalibration)) {
        necalibration = NULL;
    }
    if (necalibration) { 
    necalibration_local_nonprim = node_request_parseFromJSON(necalibration); //nonprimitive
    }


    pathing_response_local_var = pathing_response_create_internal (
        start ? start_local_nonprim : NULL,
        end ? end_local_nonprim : NULL,
        waypoints ? waypointsList : NULL,
        exclusions ? exclusionsList : NULL,
        width ? width->valuedouble : 0,
        height ? height->valuedouble : 0,
        southwest ? southwest_local_nonprim : NULL,
        northeast ? northeast_local_nonprim : NULL,
        meters_per_x ? meters_per_x->valuedouble : 0,
        meters_per_y ? meters_per_y->valuedouble : 0,
        path ? pathList : NULL,
        path_count ? path_count->valuedouble : 0,
        directions ? directionsList : NULL,
        direction_count ? direction_count->valuedouble : 0,
        swcalibration ? swcalibration_local_nonprim : NULL,
        calibration_bearings ? calibration_bearings->valuedouble : 0,
        necalibration ? necalibration_local_nonprim : NULL
        );

    return pathing_response_local_var;
end:
    if (start_local_nonprim) {
        node_request_free(start_local_nonprim);
        start_local_nonprim = NULL;
    }
    if (end_local_nonprim) {
        node_request_free(end_local_nonprim);
        end_local_nonprim = NULL;
    }
    if (waypointsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, waypointsList) {
            node_request_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(waypointsList);
        waypointsList = NULL;
    }
    if (exclusionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, exclusionsList) {
            node_request_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(exclusionsList);
        exclusionsList = NULL;
    }
    if (southwest_local_nonprim) {
        node_request_free(southwest_local_nonprim);
        southwest_local_nonprim = NULL;
    }
    if (northeast_local_nonprim) {
        node_request_free(northeast_local_nonprim);
        northeast_local_nonprim = NULL;
    }
    if (pathList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, pathList) {
            node_request_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(pathList);
        pathList = NULL;
    }
    if (directionsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, directionsList) {
            direction_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(directionsList);
        directionsList = NULL;
    }
    if (swcalibration_local_nonprim) {
        node_request_free(swcalibration_local_nonprim);
        swcalibration_local_nonprim = NULL;
    }
    if (necalibration_local_nonprim) {
        node_request_free(necalibration_local_nonprim);
        necalibration_local_nonprim = NULL;
    }
    return NULL;

}
