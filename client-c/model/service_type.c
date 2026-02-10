#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "service_type.h"


char* service_type_date_override_ToString(sirqul_iot_platform_service_type_DATEOVERRIDE_e date_override) {
    char* date_overrideArray[] =  { "NULL", "NONE", "PICKUP_START", "PICKUP_END", "DROPOFF_START", "DROPOFF_END" };
    return date_overrideArray[date_override];
}

sirqul_iot_platform_service_type_DATEOVERRIDE_e service_type_date_override_FromString(char* date_override){
    int stringToReturn = 0;
    char *date_overrideArray[] =  { "NULL", "NONE", "PICKUP_START", "PICKUP_END", "DROPOFF_START", "DROPOFF_END" };
    size_t sizeofArray = sizeof(date_overrideArray) / sizeof(date_overrideArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(date_override, date_overrideArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static service_type_t *service_type_create_internal(
    long id,
    int active,
    int valid,
    retailer_t *business,
    service_hub_t *hub,
    char *name,
    long additional_load_time,
    address_t *pickup_address_override,
    address_t *dropoff_address_override,
    local_time_t *pickup_start_time_override,
    local_time_t *pickup_end_time_override,
    local_time_t *dropoff_start_time_override,
    local_time_t *dropoff_end_time_override,
    sirqul_iot_platform_service_type_DATEOVERRIDE_e date_override
    ) {
    service_type_t *service_type_local_var = malloc(sizeof(service_type_t));
    if (!service_type_local_var) {
        return NULL;
    }
    service_type_local_var->id = id;
    service_type_local_var->active = active;
    service_type_local_var->valid = valid;
    service_type_local_var->business = business;
    service_type_local_var->hub = hub;
    service_type_local_var->name = name;
    service_type_local_var->additional_load_time = additional_load_time;
    service_type_local_var->pickup_address_override = pickup_address_override;
    service_type_local_var->dropoff_address_override = dropoff_address_override;
    service_type_local_var->pickup_start_time_override = pickup_start_time_override;
    service_type_local_var->pickup_end_time_override = pickup_end_time_override;
    service_type_local_var->dropoff_start_time_override = dropoff_start_time_override;
    service_type_local_var->dropoff_end_time_override = dropoff_end_time_override;
    service_type_local_var->date_override = date_override;

    service_type_local_var->_library_owned = 1;
    return service_type_local_var;
}

__attribute__((deprecated)) service_type_t *service_type_create(
    long id,
    int active,
    int valid,
    retailer_t *business,
    service_hub_t *hub,
    char *name,
    long additional_load_time,
    address_t *pickup_address_override,
    address_t *dropoff_address_override,
    local_time_t *pickup_start_time_override,
    local_time_t *pickup_end_time_override,
    local_time_t *dropoff_start_time_override,
    local_time_t *dropoff_end_time_override,
    sirqul_iot_platform_service_type_DATEOVERRIDE_e date_override
    ) {
    return service_type_create_internal (
        id,
        active,
        valid,
        business,
        hub,
        name,
        additional_load_time,
        pickup_address_override,
        dropoff_address_override,
        pickup_start_time_override,
        pickup_end_time_override,
        dropoff_start_time_override,
        dropoff_end_time_override,
        date_override
        );
}

void service_type_free(service_type_t *service_type) {
    if(NULL == service_type){
        return ;
    }
    if(service_type->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "service_type_free");
        return ;
    }
    listEntry_t *listEntry;
    if (service_type->business) {
        retailer_free(service_type->business);
        service_type->business = NULL;
    }
    if (service_type->hub) {
        service_hub_free(service_type->hub);
        service_type->hub = NULL;
    }
    if (service_type->name) {
        free(service_type->name);
        service_type->name = NULL;
    }
    if (service_type->pickup_address_override) {
        address_free(service_type->pickup_address_override);
        service_type->pickup_address_override = NULL;
    }
    if (service_type->dropoff_address_override) {
        address_free(service_type->dropoff_address_override);
        service_type->dropoff_address_override = NULL;
    }
    if (service_type->pickup_start_time_override) {
        local_time_free(service_type->pickup_start_time_override);
        service_type->pickup_start_time_override = NULL;
    }
    if (service_type->pickup_end_time_override) {
        local_time_free(service_type->pickup_end_time_override);
        service_type->pickup_end_time_override = NULL;
    }
    if (service_type->dropoff_start_time_override) {
        local_time_free(service_type->dropoff_start_time_override);
        service_type->dropoff_start_time_override = NULL;
    }
    if (service_type->dropoff_end_time_override) {
        local_time_free(service_type->dropoff_end_time_override);
        service_type->dropoff_end_time_override = NULL;
    }
    free(service_type);
}

cJSON *service_type_convertToJSON(service_type_t *service_type) {
    cJSON *item = cJSON_CreateObject();

    // service_type->id
    if(service_type->id) {
    if(cJSON_AddNumberToObject(item, "id", service_type->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // service_type->active
    if(service_type->active) {
    if(cJSON_AddBoolToObject(item, "active", service_type->active) == NULL) {
    goto fail; //Bool
    }
    }


    // service_type->valid
    if(service_type->valid) {
    if(cJSON_AddBoolToObject(item, "valid", service_type->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // service_type->business
    if(service_type->business) {
    cJSON *business_local_JSON = retailer_convertToJSON(service_type->business);
    if(business_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "business", business_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->hub
    if(service_type->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(service_type->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->name
    if(service_type->name) {
    if(cJSON_AddStringToObject(item, "name", service_type->name) == NULL) {
    goto fail; //String
    }
    }


    // service_type->additional_load_time
    if(service_type->additional_load_time) {
    if(cJSON_AddNumberToObject(item, "additionalLoadTime", service_type->additional_load_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // service_type->pickup_address_override
    if(service_type->pickup_address_override) {
    cJSON *pickup_address_override_local_JSON = address_convertToJSON(service_type->pickup_address_override);
    if(pickup_address_override_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pickupAddressOverride", pickup_address_override_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->dropoff_address_override
    if(service_type->dropoff_address_override) {
    cJSON *dropoff_address_override_local_JSON = address_convertToJSON(service_type->dropoff_address_override);
    if(dropoff_address_override_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "dropoffAddressOverride", dropoff_address_override_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->pickup_start_time_override
    if(service_type->pickup_start_time_override) {
    cJSON *pickup_start_time_override_local_JSON = local_time_convertToJSON(service_type->pickup_start_time_override);
    if(pickup_start_time_override_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pickupStartTimeOverride", pickup_start_time_override_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->pickup_end_time_override
    if(service_type->pickup_end_time_override) {
    cJSON *pickup_end_time_override_local_JSON = local_time_convertToJSON(service_type->pickup_end_time_override);
    if(pickup_end_time_override_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pickupEndTimeOverride", pickup_end_time_override_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->dropoff_start_time_override
    if(service_type->dropoff_start_time_override) {
    cJSON *dropoff_start_time_override_local_JSON = local_time_convertToJSON(service_type->dropoff_start_time_override);
    if(dropoff_start_time_override_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "dropoffStartTimeOverride", dropoff_start_time_override_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->dropoff_end_time_override
    if(service_type->dropoff_end_time_override) {
    cJSON *dropoff_end_time_override_local_JSON = local_time_convertToJSON(service_type->dropoff_end_time_override);
    if(dropoff_end_time_override_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "dropoffEndTimeOverride", dropoff_end_time_override_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // service_type->date_override
    if(service_type->date_override != sirqul_iot_platform_service_type_DATEOVERRIDE_NULL) {
    if(cJSON_AddStringToObject(item, "dateOverride", service_type_date_override_ToString(service_type->date_override)) == NULL)
    {
    goto fail; //Enum
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

service_type_t *service_type_parseFromJSON(cJSON *service_typeJSON){

    service_type_t *service_type_local_var = NULL;

    // define the local variable for service_type->business
    retailer_t *business_local_nonprim = NULL;

    // define the local variable for service_type->hub
    service_hub_t *hub_local_nonprim = NULL;

    // define the local variable for service_type->pickup_address_override
    address_t *pickup_address_override_local_nonprim = NULL;

    // define the local variable for service_type->dropoff_address_override
    address_t *dropoff_address_override_local_nonprim = NULL;

    // define the local variable for service_type->pickup_start_time_override
    local_time_t *pickup_start_time_override_local_nonprim = NULL;

    // define the local variable for service_type->pickup_end_time_override
    local_time_t *pickup_end_time_override_local_nonprim = NULL;

    // define the local variable for service_type->dropoff_start_time_override
    local_time_t *dropoff_start_time_override_local_nonprim = NULL;

    // define the local variable for service_type->dropoff_end_time_override
    local_time_t *dropoff_end_time_override_local_nonprim = NULL;

    // service_type->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // service_type->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // service_type->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // service_type->business
    cJSON *business = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "business");
    if (cJSON_IsNull(business)) {
        business = NULL;
    }
    if (business) { 
    business_local_nonprim = retailer_parseFromJSON(business); //nonprimitive
    }

    // service_type->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }

    // service_type->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // service_type->additional_load_time
    cJSON *additional_load_time = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "additionalLoadTime");
    if (cJSON_IsNull(additional_load_time)) {
        additional_load_time = NULL;
    }
    if (additional_load_time) { 
    if(!cJSON_IsNumber(additional_load_time))
    {
    goto end; //Numeric
    }
    }

    // service_type->pickup_address_override
    cJSON *pickup_address_override = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "pickupAddressOverride");
    if (cJSON_IsNull(pickup_address_override)) {
        pickup_address_override = NULL;
    }
    if (pickup_address_override) { 
    pickup_address_override_local_nonprim = address_parseFromJSON(pickup_address_override); //nonprimitive
    }

    // service_type->dropoff_address_override
    cJSON *dropoff_address_override = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "dropoffAddressOverride");
    if (cJSON_IsNull(dropoff_address_override)) {
        dropoff_address_override = NULL;
    }
    if (dropoff_address_override) { 
    dropoff_address_override_local_nonprim = address_parseFromJSON(dropoff_address_override); //nonprimitive
    }

    // service_type->pickup_start_time_override
    cJSON *pickup_start_time_override = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "pickupStartTimeOverride");
    if (cJSON_IsNull(pickup_start_time_override)) {
        pickup_start_time_override = NULL;
    }
    if (pickup_start_time_override) { 
    pickup_start_time_override_local_nonprim = local_time_parseFromJSON(pickup_start_time_override); //nonprimitive
    }

    // service_type->pickup_end_time_override
    cJSON *pickup_end_time_override = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "pickupEndTimeOverride");
    if (cJSON_IsNull(pickup_end_time_override)) {
        pickup_end_time_override = NULL;
    }
    if (pickup_end_time_override) { 
    pickup_end_time_override_local_nonprim = local_time_parseFromJSON(pickup_end_time_override); //nonprimitive
    }

    // service_type->dropoff_start_time_override
    cJSON *dropoff_start_time_override = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "dropoffStartTimeOverride");
    if (cJSON_IsNull(dropoff_start_time_override)) {
        dropoff_start_time_override = NULL;
    }
    if (dropoff_start_time_override) { 
    dropoff_start_time_override_local_nonprim = local_time_parseFromJSON(dropoff_start_time_override); //nonprimitive
    }

    // service_type->dropoff_end_time_override
    cJSON *dropoff_end_time_override = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "dropoffEndTimeOverride");
    if (cJSON_IsNull(dropoff_end_time_override)) {
        dropoff_end_time_override = NULL;
    }
    if (dropoff_end_time_override) { 
    dropoff_end_time_override_local_nonprim = local_time_parseFromJSON(dropoff_end_time_override); //nonprimitive
    }

    // service_type->date_override
    cJSON *date_override = cJSON_GetObjectItemCaseSensitive(service_typeJSON, "dateOverride");
    if (cJSON_IsNull(date_override)) {
        date_override = NULL;
    }
    sirqul_iot_platform_service_type_DATEOVERRIDE_e date_overrideVariable;
    if (date_override) { 
    if(!cJSON_IsString(date_override))
    {
    goto end; //Enum
    }
    date_overrideVariable = service_type_date_override_FromString(date_override->valuestring);
    }


    service_type_local_var = service_type_create_internal (
        id ? id->valuedouble : 0,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        business ? business_local_nonprim : NULL,
        hub ? hub_local_nonprim : NULL,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        additional_load_time ? additional_load_time->valuedouble : 0,
        pickup_address_override ? pickup_address_override_local_nonprim : NULL,
        dropoff_address_override ? dropoff_address_override_local_nonprim : NULL,
        pickup_start_time_override ? pickup_start_time_override_local_nonprim : NULL,
        pickup_end_time_override ? pickup_end_time_override_local_nonprim : NULL,
        dropoff_start_time_override ? dropoff_start_time_override_local_nonprim : NULL,
        dropoff_end_time_override ? dropoff_end_time_override_local_nonprim : NULL,
        date_override ? date_overrideVariable : sirqul_iot_platform_service_type_DATEOVERRIDE_NULL
        );

    return service_type_local_var;
end:
    if (business_local_nonprim) {
        retailer_free(business_local_nonprim);
        business_local_nonprim = NULL;
    }
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    if (pickup_address_override_local_nonprim) {
        address_free(pickup_address_override_local_nonprim);
        pickup_address_override_local_nonprim = NULL;
    }
    if (dropoff_address_override_local_nonprim) {
        address_free(dropoff_address_override_local_nonprim);
        dropoff_address_override_local_nonprim = NULL;
    }
    if (pickup_start_time_override_local_nonprim) {
        local_time_free(pickup_start_time_override_local_nonprim);
        pickup_start_time_override_local_nonprim = NULL;
    }
    if (pickup_end_time_override_local_nonprim) {
        local_time_free(pickup_end_time_override_local_nonprim);
        pickup_end_time_override_local_nonprim = NULL;
    }
    if (dropoff_start_time_override_local_nonprim) {
        local_time_free(dropoff_start_time_override_local_nonprim);
        dropoff_start_time_override_local_nonprim = NULL;
    }
    if (dropoff_end_time_override_local_nonprim) {
        local_time_free(dropoff_end_time_override_local_nonprim);
        dropoff_end_time_override_local_nonprim = NULL;
    }
    return NULL;

}
