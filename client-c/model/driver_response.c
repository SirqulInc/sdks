#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "driver_response.h"



static driver_response_t *driver_response_create_internal(
    char *id,
    char *name,
    location_response_t *depot,
    list_t *availability
    ) {
    driver_response_t *driver_response_local_var = malloc(sizeof(driver_response_t));
    if (!driver_response_local_var) {
        return NULL;
    }
    driver_response_local_var->id = id;
    driver_response_local_var->name = name;
    driver_response_local_var->depot = depot;
    driver_response_local_var->availability = availability;

    driver_response_local_var->_library_owned = 1;
    return driver_response_local_var;
}

__attribute__((deprecated)) driver_response_t *driver_response_create(
    char *id,
    char *name,
    location_response_t *depot,
    list_t *availability
    ) {
    return driver_response_create_internal (
        id,
        name,
        depot,
        availability
        );
}

void driver_response_free(driver_response_t *driver_response) {
    if(NULL == driver_response){
        return ;
    }
    if(driver_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "driver_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (driver_response->id) {
        free(driver_response->id);
        driver_response->id = NULL;
    }
    if (driver_response->name) {
        free(driver_response->name);
        driver_response->name = NULL;
    }
    if (driver_response->depot) {
        location_response_free(driver_response->depot);
        driver_response->depot = NULL;
    }
    if (driver_response->availability) {
        list_ForEach(listEntry, driver_response->availability) {
            availability_response_free(listEntry->data);
        }
        list_freeList(driver_response->availability);
        driver_response->availability = NULL;
    }
    free(driver_response);
}

cJSON *driver_response_convertToJSON(driver_response_t *driver_response) {
    cJSON *item = cJSON_CreateObject();

    // driver_response->id
    if(driver_response->id) {
    if(cJSON_AddStringToObject(item, "id", driver_response->id) == NULL) {
    goto fail; //String
    }
    }


    // driver_response->name
    if(driver_response->name) {
    if(cJSON_AddStringToObject(item, "name", driver_response->name) == NULL) {
    goto fail; //String
    }
    }


    // driver_response->depot
    if(driver_response->depot) {
    cJSON *depot_local_JSON = location_response_convertToJSON(driver_response->depot);
    if(depot_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "depot", depot_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // driver_response->availability
    if(driver_response->availability) {
    cJSON *availability = cJSON_AddArrayToObject(item, "availability");
    if(availability == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *availabilityListEntry;
    if (driver_response->availability) {
    list_ForEach(availabilityListEntry, driver_response->availability) {
    cJSON *itemLocal = availability_response_convertToJSON(availabilityListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(availability, itemLocal);
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

driver_response_t *driver_response_parseFromJSON(cJSON *driver_responseJSON){

    driver_response_t *driver_response_local_var = NULL;

    // define the local variable for driver_response->depot
    location_response_t *depot_local_nonprim = NULL;

    // define the local list for driver_response->availability
    list_t *availabilityList = NULL;

    // driver_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(driver_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // driver_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(driver_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // driver_response->depot
    cJSON *depot = cJSON_GetObjectItemCaseSensitive(driver_responseJSON, "depot");
    if (cJSON_IsNull(depot)) {
        depot = NULL;
    }
    if (depot) { 
    depot_local_nonprim = location_response_parseFromJSON(depot); //nonprimitive
    }

    // driver_response->availability
    cJSON *availability = cJSON_GetObjectItemCaseSensitive(driver_responseJSON, "availability");
    if (cJSON_IsNull(availability)) {
        availability = NULL;
    }
    if (availability) { 
    cJSON *availability_local_nonprimitive = NULL;
    if(!cJSON_IsArray(availability)){
        goto end; //nonprimitive container
    }

    availabilityList = list_createList();

    cJSON_ArrayForEach(availability_local_nonprimitive,availability )
    {
        if(!cJSON_IsObject(availability_local_nonprimitive)){
            goto end;
        }
        availability_response_t *availabilityItem = availability_response_parseFromJSON(availability_local_nonprimitive);

        list_addElement(availabilityList, availabilityItem);
    }
    }


    driver_response_local_var = driver_response_create_internal (
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        depot ? depot_local_nonprim : NULL,
        availability ? availabilityList : NULL
        );

    return driver_response_local_var;
end:
    if (depot_local_nonprim) {
        location_response_free(depot_local_nonprim);
        depot_local_nonprim = NULL;
    }
    if (availabilityList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, availabilityList) {
            availability_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(availabilityList);
        availabilityList = NULL;
    }
    return NULL;

}
