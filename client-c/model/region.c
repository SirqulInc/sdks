#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "region.h"


char* region_region_class_ToString(sirqul_iot_platform_region_REGIONCLASS_e region_class) {
    char* region_classArray[] =  { "NULL", "NATIONAL", "STATE", "COUNTY", "METRO_AREA", "CITY", "NEIGHBORHOOD", "TERRITORY", "CUSTOM", "ZONE" };
    return region_classArray[region_class];
}

sirqul_iot_platform_region_REGIONCLASS_e region_region_class_FromString(char* region_class){
    int stringToReturn = 0;
    char *region_classArray[] =  { "NULL", "NATIONAL", "STATE", "COUNTY", "METRO_AREA", "CITY", "NEIGHBORHOOD", "TERRITORY", "CUSTOM", "ZONE" };
    size_t sizeofArray = sizeof(region_classArray) / sizeof(region_classArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(region_class, region_classArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}
char* region_visibility_ToString(sirqul_iot_platform_region_VISIBILITY_e visibility) {
    char* visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    return visibilityArray[visibility];
}

sirqul_iot_platform_region_VISIBILITY_e region_visibility_FromString(char* visibility){
    int stringToReturn = 0;
    char *visibilityArray[] =  { "NULL", "PUBLIC", "PRIVATE", "FRIENDS" };
    size_t sizeofArray = sizeof(visibilityArray) / sizeof(visibilityArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(visibility, visibilityArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static region_t *region_create_internal(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *short_name,
    char *full_name,
    geo_box_t *bounds,
    char *start,
    char *end,
    char *polygon,
    char *meta_data,
    list_t *children,
    list_t *parents,
    list_t *postal_codes,
    sirqul_iot_platform_region_REGIONCLASS_e region_class,
    int root,
    int web_active,
    int admin_active,
    sirqul_iot_platform_region_VISIBILITY_e visibility,
    list_t *categories,
    list_t *filters,
    double truncated_latitude,
    double truncated_longitude,
    int version_code,
    char *display,
    char *content_name
    ) {
    region_t *region_local_var = malloc(sizeof(region_t));
    if (!region_local_var) {
        return NULL;
    }
    region_local_var->id = id;
    region_local_var->active = active;
    region_local_var->valid = valid;
    region_local_var->latitude = latitude;
    region_local_var->longitude = longitude;
    region_local_var->location_description = location_description;
    region_local_var->owner = owner;
    region_local_var->short_name = short_name;
    region_local_var->full_name = full_name;
    region_local_var->bounds = bounds;
    region_local_var->start = start;
    region_local_var->end = end;
    region_local_var->polygon = polygon;
    region_local_var->meta_data = meta_data;
    region_local_var->children = children;
    region_local_var->parents = parents;
    region_local_var->postal_codes = postal_codes;
    region_local_var->region_class = region_class;
    region_local_var->root = root;
    region_local_var->web_active = web_active;
    region_local_var->admin_active = admin_active;
    region_local_var->visibility = visibility;
    region_local_var->categories = categories;
    region_local_var->filters = filters;
    region_local_var->truncated_latitude = truncated_latitude;
    region_local_var->truncated_longitude = truncated_longitude;
    region_local_var->version_code = version_code;
    region_local_var->display = display;
    region_local_var->content_name = content_name;

    region_local_var->_library_owned = 1;
    return region_local_var;
}

__attribute__((deprecated)) region_t *region_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    account_t *owner,
    char *short_name,
    char *full_name,
    geo_box_t *bounds,
    char *start,
    char *end,
    char *polygon,
    char *meta_data,
    list_t *children,
    list_t *parents,
    list_t *postal_codes,
    sirqul_iot_platform_region_REGIONCLASS_e region_class,
    int root,
    int web_active,
    int admin_active,
    sirqul_iot_platform_region_VISIBILITY_e visibility,
    list_t *categories,
    list_t *filters,
    double truncated_latitude,
    double truncated_longitude,
    int version_code,
    char *display,
    char *content_name
    ) {
    return region_create_internal (
        id,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        owner,
        short_name,
        full_name,
        bounds,
        start,
        end,
        polygon,
        meta_data,
        children,
        parents,
        postal_codes,
        region_class,
        root,
        web_active,
        admin_active,
        visibility,
        categories,
        filters,
        truncated_latitude,
        truncated_longitude,
        version_code,
        display,
        content_name
        );
}

void region_free(region_t *region) {
    if(NULL == region){
        return ;
    }
    if(region->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "region_free");
        return ;
    }
    listEntry_t *listEntry;
    if (region->location_description) {
        free(region->location_description);
        region->location_description = NULL;
    }
    if (region->owner) {
        account_free(region->owner);
        region->owner = NULL;
    }
    if (region->short_name) {
        free(region->short_name);
        region->short_name = NULL;
    }
    if (region->full_name) {
        free(region->full_name);
        region->full_name = NULL;
    }
    if (region->bounds) {
        geo_box_free(region->bounds);
        region->bounds = NULL;
    }
    if (region->start) {
        free(region->start);
        region->start = NULL;
    }
    if (region->end) {
        free(region->end);
        region->end = NULL;
    }
    if (region->polygon) {
        free(region->polygon);
        region->polygon = NULL;
    }
    if (region->meta_data) {
        free(region->meta_data);
        region->meta_data = NULL;
    }
    if (region->children) {
        list_ForEach(listEntry, region->children) {
            region_free(listEntry->data);
        }
        list_freeList(region->children);
        region->children = NULL;
    }
    if (region->parents) {
        list_ForEach(listEntry, region->parents) {
            region_free(listEntry->data);
        }
        list_freeList(region->parents);
        region->parents = NULL;
    }
    if (region->postal_codes) {
        list_ForEach(listEntry, region->postal_codes) {
            postal_code_free(listEntry->data);
        }
        list_freeList(region->postal_codes);
        region->postal_codes = NULL;
    }
    if (region->categories) {
        list_ForEach(listEntry, region->categories) {
            category_free(listEntry->data);
        }
        list_freeList(region->categories);
        region->categories = NULL;
    }
    if (region->filters) {
        list_ForEach(listEntry, region->filters) {
            filter_free(listEntry->data);
        }
        list_freeList(region->filters);
        region->filters = NULL;
    }
    if (region->display) {
        free(region->display);
        region->display = NULL;
    }
    if (region->content_name) {
        free(region->content_name);
        region->content_name = NULL;
    }
    free(region);
}

cJSON *region_convertToJSON(region_t *region) {
    cJSON *item = cJSON_CreateObject();

    // region->id
    if(region->id) {
    if(cJSON_AddNumberToObject(item, "id", region->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // region->active
    if(region->active) {
    if(cJSON_AddBoolToObject(item, "active", region->active) == NULL) {
    goto fail; //Bool
    }
    }


    // region->valid
    if(region->valid) {
    if(cJSON_AddBoolToObject(item, "valid", region->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // region->latitude
    if(region->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", region->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // region->longitude
    if(region->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", region->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // region->location_description
    if(region->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", region->location_description) == NULL) {
    goto fail; //String
    }
    }


    // region->owner
    if(region->owner) {
    cJSON *owner_local_JSON = account_convertToJSON(region->owner);
    if(owner_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "owner", owner_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // region->short_name
    if(region->short_name) {
    if(cJSON_AddStringToObject(item, "shortName", region->short_name) == NULL) {
    goto fail; //String
    }
    }


    // region->full_name
    if(region->full_name) {
    if(cJSON_AddStringToObject(item, "fullName", region->full_name) == NULL) {
    goto fail; //String
    }
    }


    // region->bounds
    if(region->bounds) {
    cJSON *bounds_local_JSON = geo_box_convertToJSON(region->bounds);
    if(bounds_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "bounds", bounds_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // region->start
    if(region->start) {
    if(cJSON_AddStringToObject(item, "start", region->start) == NULL) {
    goto fail; //Date-Time
    }
    }


    // region->end
    if(region->end) {
    if(cJSON_AddStringToObject(item, "end", region->end) == NULL) {
    goto fail; //Date-Time
    }
    }


    // region->polygon
    if(region->polygon) {
    if(cJSON_AddStringToObject(item, "polygon", region->polygon) == NULL) {
    goto fail; //String
    }
    }


    // region->meta_data
    if(region->meta_data) {
    if(cJSON_AddStringToObject(item, "metaData", region->meta_data) == NULL) {
    goto fail; //String
    }
    }


    // region->children
    if(region->children) {
    cJSON *children = cJSON_AddArrayToObject(item, "children");
    if(children == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *childrenListEntry;
    if (region->children) {
    list_ForEach(childrenListEntry, region->children) {
    cJSON *itemLocal = region_convertToJSON(childrenListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(children, itemLocal);
    }
    }
    }


    // region->parents
    if(region->parents) {
    cJSON *parents = cJSON_AddArrayToObject(item, "parents");
    if(parents == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *parentsListEntry;
    if (region->parents) {
    list_ForEach(parentsListEntry, region->parents) {
    cJSON *itemLocal = region_convertToJSON(parentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(parents, itemLocal);
    }
    }
    }


    // region->postal_codes
    if(region->postal_codes) {
    cJSON *postal_codes = cJSON_AddArrayToObject(item, "postalCodes");
    if(postal_codes == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *postal_codesListEntry;
    if (region->postal_codes) {
    list_ForEach(postal_codesListEntry, region->postal_codes) {
    cJSON *itemLocal = postal_code_convertToJSON(postal_codesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(postal_codes, itemLocal);
    }
    }
    }


    // region->region_class
    if(region->region_class != sirqul_iot_platform_region_REGIONCLASS_NULL) {
    if(cJSON_AddStringToObject(item, "regionClass", region_region_class_ToString(region->region_class)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // region->root
    if(region->root) {
    if(cJSON_AddBoolToObject(item, "root", region->root) == NULL) {
    goto fail; //Bool
    }
    }


    // region->web_active
    if(region->web_active) {
    if(cJSON_AddBoolToObject(item, "webActive", region->web_active) == NULL) {
    goto fail; //Bool
    }
    }


    // region->admin_active
    if(region->admin_active) {
    if(cJSON_AddBoolToObject(item, "adminActive", region->admin_active) == NULL) {
    goto fail; //Bool
    }
    }


    // region->visibility
    if(region->visibility != sirqul_iot_platform_region_VISIBILITY_NULL) {
    if(cJSON_AddStringToObject(item, "visibility", region_visibility_ToString(region->visibility)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // region->categories
    if(region->categories) {
    cJSON *categories = cJSON_AddArrayToObject(item, "categories");
    if(categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *categoriesListEntry;
    if (region->categories) {
    list_ForEach(categoriesListEntry, region->categories) {
    cJSON *itemLocal = category_convertToJSON(categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(categories, itemLocal);
    }
    }
    }


    // region->filters
    if(region->filters) {
    cJSON *filters = cJSON_AddArrayToObject(item, "filters");
    if(filters == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *filtersListEntry;
    if (region->filters) {
    list_ForEach(filtersListEntry, region->filters) {
    cJSON *itemLocal = filter_convertToJSON(filtersListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(filters, itemLocal);
    }
    }
    }


    // region->truncated_latitude
    if(region->truncated_latitude) {
    if(cJSON_AddNumberToObject(item, "truncatedLatitude", region->truncated_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // region->truncated_longitude
    if(region->truncated_longitude) {
    if(cJSON_AddNumberToObject(item, "truncatedLongitude", region->truncated_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // region->version_code
    if(region->version_code) {
    if(cJSON_AddNumberToObject(item, "versionCode", region->version_code) == NULL) {
    goto fail; //Numeric
    }
    }


    // region->display
    if(region->display) {
    if(cJSON_AddStringToObject(item, "display", region->display) == NULL) {
    goto fail; //String
    }
    }


    // region->content_name
    if(region->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", region->content_name) == NULL) {
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

region_t *region_parseFromJSON(cJSON *regionJSON){

    region_t *region_local_var = NULL;

    // define the local variable for region->owner
    account_t *owner_local_nonprim = NULL;

    // define the local variable for region->bounds
    geo_box_t *bounds_local_nonprim = NULL;

    // define the local list for region->children
    list_t *childrenList = NULL;

    // define the local list for region->parents
    list_t *parentsList = NULL;

    // define the local list for region->postal_codes
    list_t *postal_codesList = NULL;

    // define the local list for region->categories
    list_t *categoriesList = NULL;

    // define the local list for region->filters
    list_t *filtersList = NULL;

    // region->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(regionJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // region->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(regionJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // region->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(regionJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // region->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(regionJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // region->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(regionJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // region->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(regionJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // region->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(regionJSON, "owner");
    if (cJSON_IsNull(owner)) {
        owner = NULL;
    }
    if (owner) { 
    owner_local_nonprim = account_parseFromJSON(owner); //nonprimitive
    }

    // region->short_name
    cJSON *short_name = cJSON_GetObjectItemCaseSensitive(regionJSON, "shortName");
    if (cJSON_IsNull(short_name)) {
        short_name = NULL;
    }
    if (short_name) { 
    if(!cJSON_IsString(short_name) && !cJSON_IsNull(short_name))
    {
    goto end; //String
    }
    }

    // region->full_name
    cJSON *full_name = cJSON_GetObjectItemCaseSensitive(regionJSON, "fullName");
    if (cJSON_IsNull(full_name)) {
        full_name = NULL;
    }
    if (full_name) { 
    if(!cJSON_IsString(full_name) && !cJSON_IsNull(full_name))
    {
    goto end; //String
    }
    }

    // region->bounds
    cJSON *bounds = cJSON_GetObjectItemCaseSensitive(regionJSON, "bounds");
    if (cJSON_IsNull(bounds)) {
        bounds = NULL;
    }
    if (bounds) { 
    bounds_local_nonprim = geo_box_parseFromJSON(bounds); //nonprimitive
    }

    // region->start
    cJSON *start = cJSON_GetObjectItemCaseSensitive(regionJSON, "start");
    if (cJSON_IsNull(start)) {
        start = NULL;
    }
    if (start) { 
    if(!cJSON_IsString(start) && !cJSON_IsNull(start))
    {
    goto end; //DateTime
    }
    }

    // region->end
    cJSON *end = cJSON_GetObjectItemCaseSensitive(regionJSON, "end");
    if (cJSON_IsNull(end)) {
        end = NULL;
    }
    if (end) { 
    if(!cJSON_IsString(end) && !cJSON_IsNull(end))
    {
    goto end; //DateTime
    }
    }

    // region->polygon
    cJSON *polygon = cJSON_GetObjectItemCaseSensitive(regionJSON, "polygon");
    if (cJSON_IsNull(polygon)) {
        polygon = NULL;
    }
    if (polygon) { 
    if(!cJSON_IsString(polygon) && !cJSON_IsNull(polygon))
    {
    goto end; //String
    }
    }

    // region->meta_data
    cJSON *meta_data = cJSON_GetObjectItemCaseSensitive(regionJSON, "metaData");
    if (cJSON_IsNull(meta_data)) {
        meta_data = NULL;
    }
    if (meta_data) { 
    if(!cJSON_IsString(meta_data) && !cJSON_IsNull(meta_data))
    {
    goto end; //String
    }
    }

    // region->children
    cJSON *children = cJSON_GetObjectItemCaseSensitive(regionJSON, "children");
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
        region_t *childrenItem = region_parseFromJSON(children_local_nonprimitive);

        list_addElement(childrenList, childrenItem);
    }
    }

    // region->parents
    cJSON *parents = cJSON_GetObjectItemCaseSensitive(regionJSON, "parents");
    if (cJSON_IsNull(parents)) {
        parents = NULL;
    }
    if (parents) { 
    cJSON *parents_local_nonprimitive = NULL;
    if(!cJSON_IsArray(parents)){
        goto end; //nonprimitive container
    }

    parentsList = list_createList();

    cJSON_ArrayForEach(parents_local_nonprimitive,parents )
    {
        if(!cJSON_IsObject(parents_local_nonprimitive)){
            goto end;
        }
        region_t *parentsItem = region_parseFromJSON(parents_local_nonprimitive);

        list_addElement(parentsList, parentsItem);
    }
    }

    // region->postal_codes
    cJSON *postal_codes = cJSON_GetObjectItemCaseSensitive(regionJSON, "postalCodes");
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
        postal_code_t *postal_codesItem = postal_code_parseFromJSON(postal_codes_local_nonprimitive);

        list_addElement(postal_codesList, postal_codesItem);
    }
    }

    // region->region_class
    cJSON *region_class = cJSON_GetObjectItemCaseSensitive(regionJSON, "regionClass");
    if (cJSON_IsNull(region_class)) {
        region_class = NULL;
    }
    sirqul_iot_platform_region_REGIONCLASS_e region_classVariable;
    if (region_class) { 
    if(!cJSON_IsString(region_class))
    {
    goto end; //Enum
    }
    region_classVariable = region_region_class_FromString(region_class->valuestring);
    }

    // region->root
    cJSON *root = cJSON_GetObjectItemCaseSensitive(regionJSON, "root");
    if (cJSON_IsNull(root)) {
        root = NULL;
    }
    if (root) { 
    if(!cJSON_IsBool(root))
    {
    goto end; //Bool
    }
    }

    // region->web_active
    cJSON *web_active = cJSON_GetObjectItemCaseSensitive(regionJSON, "webActive");
    if (cJSON_IsNull(web_active)) {
        web_active = NULL;
    }
    if (web_active) { 
    if(!cJSON_IsBool(web_active))
    {
    goto end; //Bool
    }
    }

    // region->admin_active
    cJSON *admin_active = cJSON_GetObjectItemCaseSensitive(regionJSON, "adminActive");
    if (cJSON_IsNull(admin_active)) {
        admin_active = NULL;
    }
    if (admin_active) { 
    if(!cJSON_IsBool(admin_active))
    {
    goto end; //Bool
    }
    }

    // region->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(regionJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    sirqul_iot_platform_region_VISIBILITY_e visibilityVariable;
    if (visibility) { 
    if(!cJSON_IsString(visibility))
    {
    goto end; //Enum
    }
    visibilityVariable = region_visibility_FromString(visibility->valuestring);
    }

    // region->categories
    cJSON *categories = cJSON_GetObjectItemCaseSensitive(regionJSON, "categories");
    if (cJSON_IsNull(categories)) {
        categories = NULL;
    }
    if (categories) { 
    cJSON *categories_local_nonprimitive = NULL;
    if(!cJSON_IsArray(categories)){
        goto end; //nonprimitive container
    }

    categoriesList = list_createList();

    cJSON_ArrayForEach(categories_local_nonprimitive,categories )
    {
        if(!cJSON_IsObject(categories_local_nonprimitive)){
            goto end;
        }
        category_t *categoriesItem = category_parseFromJSON(categories_local_nonprimitive);

        list_addElement(categoriesList, categoriesItem);
    }
    }

    // region->filters
    cJSON *filters = cJSON_GetObjectItemCaseSensitive(regionJSON, "filters");
    if (cJSON_IsNull(filters)) {
        filters = NULL;
    }
    if (filters) { 
    cJSON *filters_local_nonprimitive = NULL;
    if(!cJSON_IsArray(filters)){
        goto end; //nonprimitive container
    }

    filtersList = list_createList();

    cJSON_ArrayForEach(filters_local_nonprimitive,filters )
    {
        if(!cJSON_IsObject(filters_local_nonprimitive)){
            goto end;
        }
        filter_t *filtersItem = filter_parseFromJSON(filters_local_nonprimitive);

        list_addElement(filtersList, filtersItem);
    }
    }

    // region->truncated_latitude
    cJSON *truncated_latitude = cJSON_GetObjectItemCaseSensitive(regionJSON, "truncatedLatitude");
    if (cJSON_IsNull(truncated_latitude)) {
        truncated_latitude = NULL;
    }
    if (truncated_latitude) { 
    if(!cJSON_IsNumber(truncated_latitude))
    {
    goto end; //Numeric
    }
    }

    // region->truncated_longitude
    cJSON *truncated_longitude = cJSON_GetObjectItemCaseSensitive(regionJSON, "truncatedLongitude");
    if (cJSON_IsNull(truncated_longitude)) {
        truncated_longitude = NULL;
    }
    if (truncated_longitude) { 
    if(!cJSON_IsNumber(truncated_longitude))
    {
    goto end; //Numeric
    }
    }

    // region->version_code
    cJSON *version_code = cJSON_GetObjectItemCaseSensitive(regionJSON, "versionCode");
    if (cJSON_IsNull(version_code)) {
        version_code = NULL;
    }
    if (version_code) { 
    if(!cJSON_IsNumber(version_code))
    {
    goto end; //Numeric
    }
    }

    // region->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(regionJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // region->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(regionJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }


    region_local_var = region_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        owner ? owner_local_nonprim : NULL,
        short_name && !cJSON_IsNull(short_name) ? strdup(short_name->valuestring) : NULL,
        full_name && !cJSON_IsNull(full_name) ? strdup(full_name->valuestring) : NULL,
        bounds ? bounds_local_nonprim : NULL,
        start && !cJSON_IsNull(start) ? strdup(start->valuestring) : NULL,
        end && !cJSON_IsNull(end) ? strdup(end->valuestring) : NULL,
        polygon && !cJSON_IsNull(polygon) ? strdup(polygon->valuestring) : NULL,
        meta_data && !cJSON_IsNull(meta_data) ? strdup(meta_data->valuestring) : NULL,
        children ? childrenList : NULL,
        parents ? parentsList : NULL,
        postal_codes ? postal_codesList : NULL,
        region_class ? region_classVariable : sirqul_iot_platform_region_REGIONCLASS_NULL,
        root ? root->valueint : 0,
        web_active ? web_active->valueint : 0,
        admin_active ? admin_active->valueint : 0,
        visibility ? visibilityVariable : sirqul_iot_platform_region_VISIBILITY_NULL,
        categories ? categoriesList : NULL,
        filters ? filtersList : NULL,
        truncated_latitude ? truncated_latitude->valuedouble : 0,
        truncated_longitude ? truncated_longitude->valuedouble : 0,
        version_code ? version_code->valuedouble : 0,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL
        );

    return region_local_var;
end:
    if (owner_local_nonprim) {
        account_free(owner_local_nonprim);
        owner_local_nonprim = NULL;
    }
    if (bounds_local_nonprim) {
        geo_box_free(bounds_local_nonprim);
        bounds_local_nonprim = NULL;
    }
    if (childrenList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, childrenList) {
            region_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(childrenList);
        childrenList = NULL;
    }
    if (parentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, parentsList) {
            region_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(parentsList);
        parentsList = NULL;
    }
    if (postal_codesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, postal_codesList) {
            postal_code_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(postal_codesList);
        postal_codesList = NULL;
    }
    if (categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, categoriesList) {
            category_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(categoriesList);
        categoriesList = NULL;
    }
    if (filtersList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, filtersList) {
            filter_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(filtersList);
        filtersList = NULL;
    }
    return NULL;

}
