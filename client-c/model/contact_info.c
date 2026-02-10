#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "contact_info.h"



static contact_info_t *contact_info_create_internal(
    char *home_phone,
    char *cell_phone,
    cell_carrier_t *cell_carrier,
    char *business_phone,
    char *business_phone_ext,
    char *fax_number,
    char *time_zone,
    char *utc_offset,
    char *code501c3,
    char *email_address,
    address_t *address,
    char *web
    ) {
    contact_info_t *contact_info_local_var = malloc(sizeof(contact_info_t));
    if (!contact_info_local_var) {
        return NULL;
    }
    contact_info_local_var->home_phone = home_phone;
    contact_info_local_var->cell_phone = cell_phone;
    contact_info_local_var->cell_carrier = cell_carrier;
    contact_info_local_var->business_phone = business_phone;
    contact_info_local_var->business_phone_ext = business_phone_ext;
    contact_info_local_var->fax_number = fax_number;
    contact_info_local_var->time_zone = time_zone;
    contact_info_local_var->utc_offset = utc_offset;
    contact_info_local_var->code501c3 = code501c3;
    contact_info_local_var->email_address = email_address;
    contact_info_local_var->address = address;
    contact_info_local_var->web = web;

    contact_info_local_var->_library_owned = 1;
    return contact_info_local_var;
}

__attribute__((deprecated)) contact_info_t *contact_info_create(
    char *home_phone,
    char *cell_phone,
    cell_carrier_t *cell_carrier,
    char *business_phone,
    char *business_phone_ext,
    char *fax_number,
    char *time_zone,
    char *utc_offset,
    char *code501c3,
    char *email_address,
    address_t *address,
    char *web
    ) {
    return contact_info_create_internal (
        home_phone,
        cell_phone,
        cell_carrier,
        business_phone,
        business_phone_ext,
        fax_number,
        time_zone,
        utc_offset,
        code501c3,
        email_address,
        address,
        web
        );
}

void contact_info_free(contact_info_t *contact_info) {
    if(NULL == contact_info){
        return ;
    }
    if(contact_info->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "contact_info_free");
        return ;
    }
    listEntry_t *listEntry;
    if (contact_info->home_phone) {
        free(contact_info->home_phone);
        contact_info->home_phone = NULL;
    }
    if (contact_info->cell_phone) {
        free(contact_info->cell_phone);
        contact_info->cell_phone = NULL;
    }
    if (contact_info->cell_carrier) {
        cell_carrier_free(contact_info->cell_carrier);
        contact_info->cell_carrier = NULL;
    }
    if (contact_info->business_phone) {
        free(contact_info->business_phone);
        contact_info->business_phone = NULL;
    }
    if (contact_info->business_phone_ext) {
        free(contact_info->business_phone_ext);
        contact_info->business_phone_ext = NULL;
    }
    if (contact_info->fax_number) {
        free(contact_info->fax_number);
        contact_info->fax_number = NULL;
    }
    if (contact_info->time_zone) {
        free(contact_info->time_zone);
        contact_info->time_zone = NULL;
    }
    if (contact_info->utc_offset) {
        free(contact_info->utc_offset);
        contact_info->utc_offset = NULL;
    }
    if (contact_info->code501c3) {
        free(contact_info->code501c3);
        contact_info->code501c3 = NULL;
    }
    if (contact_info->email_address) {
        free(contact_info->email_address);
        contact_info->email_address = NULL;
    }
    if (contact_info->address) {
        address_free(contact_info->address);
        contact_info->address = NULL;
    }
    if (contact_info->web) {
        free(contact_info->web);
        contact_info->web = NULL;
    }
    free(contact_info);
}

cJSON *contact_info_convertToJSON(contact_info_t *contact_info) {
    cJSON *item = cJSON_CreateObject();

    // contact_info->home_phone
    if(contact_info->home_phone) {
    if(cJSON_AddStringToObject(item, "homePhone", contact_info->home_phone) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->cell_phone
    if(contact_info->cell_phone) {
    if(cJSON_AddStringToObject(item, "cellPhone", contact_info->cell_phone) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->cell_carrier
    if(contact_info->cell_carrier) {
    cJSON *cell_carrier_local_JSON = cell_carrier_convertToJSON(contact_info->cell_carrier);
    if(cell_carrier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cellCarrier", cell_carrier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // contact_info->business_phone
    if(contact_info->business_phone) {
    if(cJSON_AddStringToObject(item, "businessPhone", contact_info->business_phone) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->business_phone_ext
    if(contact_info->business_phone_ext) {
    if(cJSON_AddStringToObject(item, "businessPhoneExt", contact_info->business_phone_ext) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->fax_number
    if(contact_info->fax_number) {
    if(cJSON_AddStringToObject(item, "faxNumber", contact_info->fax_number) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->time_zone
    if(contact_info->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", contact_info->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->utc_offset
    if(contact_info->utc_offset) {
    if(cJSON_AddStringToObject(item, "utcOffset", contact_info->utc_offset) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->code501c3
    if(contact_info->code501c3) {
    if(cJSON_AddStringToObject(item, "code501c3", contact_info->code501c3) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->email_address
    if(contact_info->email_address) {
    if(cJSON_AddStringToObject(item, "emailAddress", contact_info->email_address) == NULL) {
    goto fail; //String
    }
    }


    // contact_info->address
    if(contact_info->address) {
    cJSON *address_local_JSON = address_convertToJSON(contact_info->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // contact_info->web
    if(contact_info->web) {
    if(cJSON_AddStringToObject(item, "web", contact_info->web) == NULL) {
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

contact_info_t *contact_info_parseFromJSON(cJSON *contact_infoJSON){

    contact_info_t *contact_info_local_var = NULL;

    // define the local variable for contact_info->cell_carrier
    cell_carrier_t *cell_carrier_local_nonprim = NULL;

    // define the local variable for contact_info->address
    address_t *address_local_nonprim = NULL;

    // contact_info->home_phone
    cJSON *home_phone = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "homePhone");
    if (cJSON_IsNull(home_phone)) {
        home_phone = NULL;
    }
    if (home_phone) { 
    if(!cJSON_IsString(home_phone) && !cJSON_IsNull(home_phone))
    {
    goto end; //String
    }
    }

    // contact_info->cell_phone
    cJSON *cell_phone = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "cellPhone");
    if (cJSON_IsNull(cell_phone)) {
        cell_phone = NULL;
    }
    if (cell_phone) { 
    if(!cJSON_IsString(cell_phone) && !cJSON_IsNull(cell_phone))
    {
    goto end; //String
    }
    }

    // contact_info->cell_carrier
    cJSON *cell_carrier = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "cellCarrier");
    if (cJSON_IsNull(cell_carrier)) {
        cell_carrier = NULL;
    }
    if (cell_carrier) { 
    cell_carrier_local_nonprim = cell_carrier_parseFromJSON(cell_carrier); //nonprimitive
    }

    // contact_info->business_phone
    cJSON *business_phone = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "businessPhone");
    if (cJSON_IsNull(business_phone)) {
        business_phone = NULL;
    }
    if (business_phone) { 
    if(!cJSON_IsString(business_phone) && !cJSON_IsNull(business_phone))
    {
    goto end; //String
    }
    }

    // contact_info->business_phone_ext
    cJSON *business_phone_ext = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "businessPhoneExt");
    if (cJSON_IsNull(business_phone_ext)) {
        business_phone_ext = NULL;
    }
    if (business_phone_ext) { 
    if(!cJSON_IsString(business_phone_ext) && !cJSON_IsNull(business_phone_ext))
    {
    goto end; //String
    }
    }

    // contact_info->fax_number
    cJSON *fax_number = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "faxNumber");
    if (cJSON_IsNull(fax_number)) {
        fax_number = NULL;
    }
    if (fax_number) { 
    if(!cJSON_IsString(fax_number) && !cJSON_IsNull(fax_number))
    {
    goto end; //String
    }
    }

    // contact_info->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // contact_info->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsString(utc_offset) && !cJSON_IsNull(utc_offset))
    {
    goto end; //String
    }
    }

    // contact_info->code501c3
    cJSON *code501c3 = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "code501c3");
    if (cJSON_IsNull(code501c3)) {
        code501c3 = NULL;
    }
    if (code501c3) { 
    if(!cJSON_IsString(code501c3) && !cJSON_IsNull(code501c3))
    {
    goto end; //String
    }
    }

    // contact_info->email_address
    cJSON *email_address = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "emailAddress");
    if (cJSON_IsNull(email_address)) {
        email_address = NULL;
    }
    if (email_address) { 
    if(!cJSON_IsString(email_address) && !cJSON_IsNull(email_address))
    {
    goto end; //String
    }
    }

    // contact_info->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = address_parseFromJSON(address); //nonprimitive
    }

    // contact_info->web
    cJSON *web = cJSON_GetObjectItemCaseSensitive(contact_infoJSON, "web");
    if (cJSON_IsNull(web)) {
        web = NULL;
    }
    if (web) { 
    if(!cJSON_IsString(web) && !cJSON_IsNull(web))
    {
    goto end; //String
    }
    }


    contact_info_local_var = contact_info_create_internal (
        home_phone && !cJSON_IsNull(home_phone) ? strdup(home_phone->valuestring) : NULL,
        cell_phone && !cJSON_IsNull(cell_phone) ? strdup(cell_phone->valuestring) : NULL,
        cell_carrier ? cell_carrier_local_nonprim : NULL,
        business_phone && !cJSON_IsNull(business_phone) ? strdup(business_phone->valuestring) : NULL,
        business_phone_ext && !cJSON_IsNull(business_phone_ext) ? strdup(business_phone_ext->valuestring) : NULL,
        fax_number && !cJSON_IsNull(fax_number) ? strdup(fax_number->valuestring) : NULL,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL,
        utc_offset && !cJSON_IsNull(utc_offset) ? strdup(utc_offset->valuestring) : NULL,
        code501c3 && !cJSON_IsNull(code501c3) ? strdup(code501c3->valuestring) : NULL,
        email_address && !cJSON_IsNull(email_address) ? strdup(email_address->valuestring) : NULL,
        address ? address_local_nonprim : NULL,
        web && !cJSON_IsNull(web) ? strdup(web->valuestring) : NULL
        );

    return contact_info_local_var;
end:
    if (cell_carrier_local_nonprim) {
        cell_carrier_free(cell_carrier_local_nonprim);
        cell_carrier_local_nonprim = NULL;
    }
    if (address_local_nonprim) {
        address_free(address_local_nonprim);
        address_local_nonprim = NULL;
    }
    return NULL;

}
