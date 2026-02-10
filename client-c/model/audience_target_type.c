#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "audience_target_type.h"


char* audience_target_type_target_type_ToString(sirqul_iot_platform_audience_target_type_TARGETTYPE_e target_type) {
    char* target_typeArray[] =  { "NULL", "RETAILER_LOCATION", "OFFER_LOCATION", "ACCOUNT", "REGION" };
    return target_typeArray[target_type];
}

sirqul_iot_platform_audience_target_type_TARGETTYPE_e audience_target_type_target_type_FromString(char* target_type){
    int stringToReturn = 0;
    char *target_typeArray[] =  { "NULL", "RETAILER_LOCATION", "OFFER_LOCATION", "ACCOUNT", "REGION" };
    size_t sizeofArray = sizeof(target_typeArray) / sizeof(target_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(target_type, target_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static audience_target_type_t *audience_target_type_create_internal(
    sirqul_iot_platform_audience_target_type_TARGETTYPE_e target_type,
    char *target_description,
    retailer_location_t *retailer_location,
    offer_location_t *offer_location,
    account_t *account,
    region_t *region
    ) {
    audience_target_type_t *audience_target_type_local_var = malloc(sizeof(audience_target_type_t));
    if (!audience_target_type_local_var) {
        return NULL;
    }
    audience_target_type_local_var->target_type = target_type;
    audience_target_type_local_var->target_description = target_description;
    audience_target_type_local_var->retailer_location = retailer_location;
    audience_target_type_local_var->offer_location = offer_location;
    audience_target_type_local_var->account = account;
    audience_target_type_local_var->region = region;

    audience_target_type_local_var->_library_owned = 1;
    return audience_target_type_local_var;
}

__attribute__((deprecated)) audience_target_type_t *audience_target_type_create(
    sirqul_iot_platform_audience_target_type_TARGETTYPE_e target_type,
    char *target_description,
    retailer_location_t *retailer_location,
    offer_location_t *offer_location,
    account_t *account,
    region_t *region
    ) {
    return audience_target_type_create_internal (
        target_type,
        target_description,
        retailer_location,
        offer_location,
        account,
        region
        );
}

void audience_target_type_free(audience_target_type_t *audience_target_type) {
    if(NULL == audience_target_type){
        return ;
    }
    if(audience_target_type->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "audience_target_type_free");
        return ;
    }
    listEntry_t *listEntry;
    if (audience_target_type->target_description) {
        free(audience_target_type->target_description);
        audience_target_type->target_description = NULL;
    }
    if (audience_target_type->retailer_location) {
        retailer_location_free(audience_target_type->retailer_location);
        audience_target_type->retailer_location = NULL;
    }
    if (audience_target_type->offer_location) {
        offer_location_free(audience_target_type->offer_location);
        audience_target_type->offer_location = NULL;
    }
    if (audience_target_type->account) {
        account_free(audience_target_type->account);
        audience_target_type->account = NULL;
    }
    if (audience_target_type->region) {
        region_free(audience_target_type->region);
        audience_target_type->region = NULL;
    }
    free(audience_target_type);
}

cJSON *audience_target_type_convertToJSON(audience_target_type_t *audience_target_type) {
    cJSON *item = cJSON_CreateObject();

    // audience_target_type->target_type
    if(audience_target_type->target_type != sirqul_iot_platform_audience_target_type_TARGETTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "targetType", audience_target_type_target_type_ToString(audience_target_type->target_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // audience_target_type->target_description
    if(audience_target_type->target_description) {
    if(cJSON_AddStringToObject(item, "targetDescription", audience_target_type->target_description) == NULL) {
    goto fail; //String
    }
    }


    // audience_target_type->retailer_location
    if(audience_target_type->retailer_location) {
    cJSON *retailer_location_local_JSON = retailer_location_convertToJSON(audience_target_type->retailer_location);
    if(retailer_location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retailerLocation", retailer_location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // audience_target_type->offer_location
    if(audience_target_type->offer_location) {
    cJSON *offer_location_local_JSON = offer_location_convertToJSON(audience_target_type->offer_location);
    if(offer_location_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "offerLocation", offer_location_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // audience_target_type->account
    if(audience_target_type->account) {
    cJSON *account_local_JSON = account_convertToJSON(audience_target_type->account);
    if(account_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "account", account_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // audience_target_type->region
    if(audience_target_type->region) {
    cJSON *region_local_JSON = region_convertToJSON(audience_target_type->region);
    if(region_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "region", region_local_JSON);
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

audience_target_type_t *audience_target_type_parseFromJSON(cJSON *audience_target_typeJSON){

    audience_target_type_t *audience_target_type_local_var = NULL;

    // define the local variable for audience_target_type->retailer_location
    retailer_location_t *retailer_location_local_nonprim = NULL;

    // define the local variable for audience_target_type->offer_location
    offer_location_t *offer_location_local_nonprim = NULL;

    // define the local variable for audience_target_type->account
    account_t *account_local_nonprim = NULL;

    // define the local variable for audience_target_type->region
    region_t *region_local_nonprim = NULL;

    // audience_target_type->target_type
    cJSON *target_type = cJSON_GetObjectItemCaseSensitive(audience_target_typeJSON, "targetType");
    if (cJSON_IsNull(target_type)) {
        target_type = NULL;
    }
    sirqul_iot_platform_audience_target_type_TARGETTYPE_e target_typeVariable;
    if (target_type) { 
    if(!cJSON_IsString(target_type))
    {
    goto end; //Enum
    }
    target_typeVariable = audience_target_type_target_type_FromString(target_type->valuestring);
    }

    // audience_target_type->target_description
    cJSON *target_description = cJSON_GetObjectItemCaseSensitive(audience_target_typeJSON, "targetDescription");
    if (cJSON_IsNull(target_description)) {
        target_description = NULL;
    }
    if (target_description) { 
    if(!cJSON_IsString(target_description) && !cJSON_IsNull(target_description))
    {
    goto end; //String
    }
    }

    // audience_target_type->retailer_location
    cJSON *retailer_location = cJSON_GetObjectItemCaseSensitive(audience_target_typeJSON, "retailerLocation");
    if (cJSON_IsNull(retailer_location)) {
        retailer_location = NULL;
    }
    if (retailer_location) { 
    retailer_location_local_nonprim = retailer_location_parseFromJSON(retailer_location); //nonprimitive
    }

    // audience_target_type->offer_location
    cJSON *offer_location = cJSON_GetObjectItemCaseSensitive(audience_target_typeJSON, "offerLocation");
    if (cJSON_IsNull(offer_location)) {
        offer_location = NULL;
    }
    if (offer_location) { 
    offer_location_local_nonprim = offer_location_parseFromJSON(offer_location); //nonprimitive
    }

    // audience_target_type->account
    cJSON *account = cJSON_GetObjectItemCaseSensitive(audience_target_typeJSON, "account");
    if (cJSON_IsNull(account)) {
        account = NULL;
    }
    if (account) { 
    account_local_nonprim = account_parseFromJSON(account); //nonprimitive
    }

    // audience_target_type->region
    cJSON *region = cJSON_GetObjectItemCaseSensitive(audience_target_typeJSON, "region");
    if (cJSON_IsNull(region)) {
        region = NULL;
    }
    if (region) { 
    region_local_nonprim = region_parseFromJSON(region); //nonprimitive
    }


    audience_target_type_local_var = audience_target_type_create_internal (
        target_type ? target_typeVariable : sirqul_iot_platform_audience_target_type_TARGETTYPE_NULL,
        target_description && !cJSON_IsNull(target_description) ? strdup(target_description->valuestring) : NULL,
        retailer_location ? retailer_location_local_nonprim : NULL,
        offer_location ? offer_location_local_nonprim : NULL,
        account ? account_local_nonprim : NULL,
        region ? region_local_nonprim : NULL
        );

    return audience_target_type_local_var;
end:
    if (retailer_location_local_nonprim) {
        retailer_location_free(retailer_location_local_nonprim);
        retailer_location_local_nonprim = NULL;
    }
    if (offer_location_local_nonprim) {
        offer_location_free(offer_location_local_nonprim);
        offer_location_local_nonprim = NULL;
    }
    if (account_local_nonprim) {
        account_free(account_local_nonprim);
        account_local_nonprim = NULL;
    }
    if (region_local_nonprim) {
        region_free(region_local_nonprim);
        region_local_nonprim = NULL;
    }
    return NULL;

}
