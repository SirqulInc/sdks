#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "region_response.h"



static region_response_t *region_response_create_internal(
    long id,
    char *short_name,
    char *full_name,
    region_response_t *parent,
    list_t *children,
    list_t *postal_codes,
    double latitude,
    double longitude,
    int active,
    int root,
    char *region_class,
    long start,
    long end,
    char *polygon,
    char *meta_data,
    double distance,
    int version_code
    ) {
    region_response_t *region_response_local_var = malloc(sizeof(region_response_t));
    if (!region_response_local_var) {
        return NULL;
    }
    region_response_local_var->id = id;
    region_response_local_var->short_name = short_name;
    region_response_local_var->full_name = full_name;
    region_response_local_var->parent = parent;
    region_response_local_var->children = children;
    region_response_local_var->postal_codes = postal_codes;
    region_response_local_var->latitude = latitude;
    region_response_local_var->longitude = longitude;
    region_response_local_var->active = active;
    region_response_local_var->root = root;
    region_response_local_var->region_class = region_class;
    region_response_local_var->start = start;
    region_response_local_var->end = end;
    region_response_local_var->polygon = polygon;
    region_response_local_var->meta_data = meta_data;
    region_response_local_var->distance = distance;
    region_response_local_var->version_code = version_code;

    region_response_local_var->_library_owned = 1;
    return region_response_local_var;
}

__attribute__((deprecated)) region_response_t *region_response_create(
    long id,
    char *short_name,
    char *full_name,
    region_response_t *parent,
    list_t *children,
    list_t *postal_codes,
    double latitude,
    double longitude,
    int active,
    int root,
    char *region_class,
    long start,
    long end,
    char *polygon,
    char *meta_data,
    double distance,
    int version_code
    ) {
    return region_response_create_internal (
        id,
        short_name,
        full_name,
        parent,
        children,
        postal_codes,
        latitude,
        longitude,
        active,
        root,
        region_class,
        start,
        end,
        polygon,
        meta_data,
        distance,
        version_code
        );
}

void region_response_free(region_response_t *region_response) {
    if(NULL == region_response){
        return ;
    }
    if(region_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "region_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (region_response->short_name) {
        free(region_response->short_name);
        region_response->short_name = NULL;
    }
    if (region_response->full_name) {
        free(region_response->full_name);
        region_response->full_name = NULL;
    }
    if (region_response->parent) {
        region_response_free(region_response->parent);
        region_response->parent = NULL;
    }
    if (region_response->children) {
        list_ForEach(listEntry, region_response->children) {
            region_response_free(listEntry->data);
        }
        list_freeList(region_response->children);
        region_response->children = NULL;
    }
    if (region_response->postal_codes) {
        list_ForEach(listEntry, region_response->postal_codes) {
            postal_code_response_free(listEntry->data);
        }
        list_freeList(region_response->postal_codes);
        region_response->postal_codes = NULL;
    }
    if (region_response->region_class) {
        free(region_response->region_class);
        region_response->region_class = NULL;
    }
    if (region_response->polygon) {
        free(region_response->polygon);
        region_response->polygon = NULL;
    }
    if (region_response->meta_data) {
        free(region_response->meta_data);
        region_response->meta_data = NULL;
    }
    free(region_response);
}

cJSON *region_response_convertToJSON(region_response_t *region_response) {
    cJSON *item = cJSON_CreateObject();

    // region_response->id
    if(region_response->id) {
    if(cJSON_AddNumberToObject(item, "id", region_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_response->short_name
    if(region_response->short_name) {
    if(cJSON_AddStringToObject(item, "shortName", region_response->short_name) == NULL) {
    goto fail; //String
    }
    }


    // region_response->full_name
    if(region_response->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", region_response->full_name) == NULL) {
    goto fail; //String
    }
    }


    // region_response->parent
    if(region_response->parent) {
    cJSON *parent_local_JSON = region_response_convertToJSON(region_response->parent);
    if(parent_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "parent", parent_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // region_response->children
    if(region_response->children) {
    cJSON *children = cJSON_AddArrayToObject(item, "children");
    if(children == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *childrenListEntry;
    if (region_response->children) {
    list_ForEach(childrenListEntry, region_response->children) {
    cJSON *itemLocal = region_response_convertToJSON(childrenListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(children, itemLocal);
    }
    }
    }


    // region_response->postal_codes
    if(region_response->postal_codes) {
    cJSON *postal_codes = cJSON_AddArrayToObject(item, "postalCodes");
    if(postal_codes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *postal_codesListEntry;
    if (region_response->postal_codes) {
    list_ForEach(postal_codesListEntry, region_response->postal_codes) {
    cJSON *itemLocal = postal_code_response_convertToJSON(postal_codesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(postal_codes, itemLocal);
    }
    }
    }


    // region_response->latitude
    if(region_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", region_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_response->longitude
    if(region_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", region_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_response->active
    if(region_response->active) {
    if(cJSON_AddBoolToObject(item, "active", region_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // region_response->root
    if(region_response->root) {
    if(cJSON_AddBoolToObject(item, "root", region_response->root) == NULL) {
    goto fail; //Bool
    }
    }


    // region_response->region_class
    if(region_response->region_class) {
    if(cJSON_AddStringToObject(item, "regionClass", region_response->region_class) == NULL) {
    goto fail; //String
    }
    }


    // region_response->start
    if(region_response->start) {
    if(cJSON_AddNumberToObject(item, "start", region_response->start) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_response->end
    if(region_response->end) {
    if(cJSON_AddNumberToObject(item, "end", region_response->end) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_response->polygon
    if(region_response->polygon) {
    if(cJSON_AddStringToObject(item, "polygon", region_response->polygon) == NULL) {
    goto fail; //String
    }
    }


    // region_response->meta_data
    if(region_response->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", region_response->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // region_response->distance
    if(region_response->distance) {
    if(cJSON_AddNumberToObject(item, "distance", region_response->distance) == NULL) {
    goto fail; //Numeric
    }
    }


    // region_response->version_code
    if(region_response->version_code) {
    if(cJSON_AddNumberToObject(item, "versionCode", region_response->version_code) == NULL) {
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

region_response_t *region_response_parseFromJSON(cJSON *region_responseJSON){

    region_response_t *region_response_local_var = NULL;

    // define the local variable for region_response->parent
    region_response_t *parent_local_nonprim = NULL;

    // define the local list for region_response->children
    list_t *childrenList = NULL;

    // define the local list for region_response->postal_codes
    list_t *postal_codesList = NULL;

    // region_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // region_response->short_name
    cJSON *short_name = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "shortName");
    if (cJSON_IsNull(short_name)) {
        short_name = NULL;
    }
    if (short_name) { 
    if(!cJSON_IsString(short_name) && !cJSON_IsNull(short_name))
    {
    goto end; //String
    }
    }

    // region_response->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // region_response->parent
    cJSON *parent = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "parent");
    if (cJSON_IsNull(parent)) {
        parent = NULL;
    }
    if (parent) { 
    parent_local_nonprim = region_response_parseFromJSON(parent); //nonprimitive
    }

    // region_response->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "children");
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
        region_response_t *childrenItem = region_response_parseFromJSON(children_local_nonprimitive);

        list_addElement(childrenList, childrenItem);
    }
    }

    // region_response->postal_codes
    cJSON *postal_codes = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "postalCodes");
    if (cJSON_IsNull(postal_codes)) {
        postal_codes = NULL;
    }
    if (postal_codes) { 
    cJSON *postal_codes_local_nonprimitive = NULL;
    if(!cJSON_IsArray(postal_codes)){
        goto end; //nonprimitive container
    }

    postal_codesList = list_createList();

    cJSON_ArrayForEach(postal_codes_local_nonprimitive,postal_codes )
    {
        if(!cJSON_IsObject(postal_codes_local_nonprimitive)){
            goto end;
        }
        postal_code_response_t *postal_codesItem = postal_code_response_parseFromJSON(postal_codes_local_nonprimitive);

        list_addElement(postal_codesList, postal_codesItem);
    }
    }

    // region_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // region_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // region_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // region_response->root
    cJSON *root = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "root");
    if (cJSON_IsNull(root)) {
        root = NULL;
    }
    if (root) { 
    if(!cJSON_IsBool(root))
    {
    goto end; //Bool
    }
    }

    // region_response->region_class
    cJSON *region_class = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "regionClass");
    if (cJSON_IsNull(region_class)) {
        region_class = NULL;
    }
    if (region_class) { 
    if(!cJSON_IsString(region_class) && !cJSON_IsNull(region_class))
    {
    goto end; //String
    }
    }

    // region_response->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsNumber(start))
    {
    goto end; //Numeric
    }
    }

    // region_response->end
    cJSON *end = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "end");
    if (cJSON_IsNull(end)) {
        end = NULL;
    }
    if (end) { 
    if(!cJSON_IsNumber(end))
    {
    goto end; //Numeric
    }
    }

    // region_response->polygon
    cJSON *polygon = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "polygon");
    if (cJSON_IsNull(polygon)) {
        polygon = NULL;
    }
    if (polygon) { 
    if(!cJSON_IsString(polygon) && !cJSON_IsNull(polygon))
    {
    goto end; //String
    }
    }

    // region_response->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // region_response->distance
    cJSON *distance = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "distance");
    if (cJSON_IsNull(distance)) {
        distance = NULL;
    }
    if (distance) { 
    if(!cJSON_IsNumber(distance))
    {
    goto end; //Numeric
    }
    }

    // region_response->version_code
    cJSON *version_code = cJSON_GetObjectItemCaseSensitive(region_responseJSON, "versionCode");
    if (cJSON_IsNull(version_code)) {
        version_code = NULL;
    }
    if (version_code) { 
    if(!cJSON_IsNumber(version_code))
    {
    goto end; //Numeric
    }
    }


    region_response_local_var = region_response_create_internal (
        id ? id->valuedouble : 0,
        short_name && !cJSON_IsNull(short_name) ? strdup(short_name->valuestring) : NULL,
        full_name && !cJSON_IsNull(full_name) ? strdup(full_name->valuestring) : NULL,
        parent ? parent_local_nonprim : NULL,
        children ? childrenList : NULL,
        postal_codes ? postal_codesList : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        active ? active->valueint : 0,
        root ? root->valueint : 0,
        region_class && !cJSON_IsNull(region_class) ? strdup(region_class->valuestring) : NULL,
        start ? start->valuedouble : 0,
        end ? end->valuedouble : 0,
        polygon && !cJSON_IsNull(polygon) ? strdup(polygon->valuestring) : NULL,
        meta_data && !cJSON_IsNull(meta_data) ? strdup(meta_data->valuestring) : NULL,
        distance ? distance->valuedouble : 0,
        version_code ? version_code->valuedouble : 0
        );

    return region_response_local_var;
end:
    if (parent_local_nonprim) {
        region_response_free(parent_local_nonprim);
        parent_local_nonprim = NULL;
    }
    if (childrenList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, childrenList) {
            region_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(childrenList);
        childrenList = NULL;
    }
    if (postal_codesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, postal_codesList) {
            postal_code_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(postal_codesList);
        postal_codesList = NULL;
    }
    return NULL;

}
