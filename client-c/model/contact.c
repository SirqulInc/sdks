#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "contact.h"



static contact_t *contact_create_internal(
    char *first_name,
    char *middle_name,
    char *last_name,
    char *prefix,
    char *suffix,
    char *title,
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
    char *web,
    char *display
    ) {
    contact_t *contact_local_var = malloc(sizeof(contact_t));
    if (!contact_local_var) {
        return NULL;
    }
    contact_local_var->first_name = first_name;
    contact_local_var->middle_name = middle_name;
    contact_local_var->last_name = last_name;
    contact_local_var->prefix = prefix;
    contact_local_var->suffix = suffix;
    contact_local_var->title = title;
    contact_local_var->home_phone = home_phone;
    contact_local_var->cell_phone = cell_phone;
    contact_local_var->cell_carrier = cell_carrier;
    contact_local_var->business_phone = business_phone;
    contact_local_var->business_phone_ext = business_phone_ext;
    contact_local_var->fax_number = fax_number;
    contact_local_var->time_zone = time_zone;
    contact_local_var->utc_offset = utc_offset;
    contact_local_var->code501c3 = code501c3;
    contact_local_var->email_address = email_address;
    contact_local_var->address = address;
    contact_local_var->web = web;
    contact_local_var->display = display;

    contact_local_var->_library_owned = 1;
    return contact_local_var;
}

__attribute__((deprecated)) contact_t *contact_create(
    char *first_name,
    char *middle_name,
    char *last_name,
    char *prefix,
    char *suffix,
    char *title,
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
    char *web,
    char *display
    ) {
    return contact_create_internal (
        first_name,
        middle_name,
        last_name,
        prefix,
        suffix,
        title,
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
        web,
        display
        );
}

void contact_free(contact_t *contact) {
    if(NULL == contact){
        return ;
    }
    if(contact->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "contact_free");
        return ;
    }
    listEntry_t *listEntry;
    if (contact->first_name) {
        free(contact->first_name);
        contact->first_name = NULL;
    }
    if (contact->middle_name) {
        free(contact->middle_name);
        contact->middle_name = NULL;
    }
    if (contact->last_name) {
        free(contact->last_name);
        contact->last_name = NULL;
    }
    if (contact->prefix) {
        free(contact->prefix);
        contact->prefix = NULL;
    }
    if (contact->suffix) {
        free(contact->suffix);
        contact->suffix = NULL;
    }
    if (contact->title) {
        free(contact->title);
        contact->title = NULL;
    }
    if (contact->home_phone) {
        free(contact->home_phone);
        contact->home_phone = NULL;
    }
    if (contact->cell_phone) {
        free(contact->cell_phone);
        contact->cell_phone = NULL;
    }
    if (contact->cell_carrier) {
        cell_carrier_free(contact->cell_carrier);
        contact->cell_carrier = NULL;
    }
    if (contact->business_phone) {
        free(contact->business_phone);
        contact->business_phone = NULL;
    }
    if (contact->business_phone_ext) {
        free(contact->business_phone_ext);
        contact->business_phone_ext = NULL;
    }
    if (contact->fax_number) {
        free(contact->fax_number);
        contact->fax_number = NULL;
    }
    if (contact->time_zone) {
        free(contact->time_zone);
        contact->time_zone = NULL;
    }
    if (contact->utc_offset) {
        free(contact->utc_offset);
        contact->utc_offset = NULL;
    }
    if (contact->code501c3) {
        free(contact->code501c3);
        contact->code501c3 = NULL;
    }
    if (contact->email_address) {
        free(contact->email_address);
        contact->email_address = NULL;
    }
    if (contact->address) {
        address_free(contact->address);
        contact->address = NULL;
    }
    if (contact->web) {
        free(contact->web);
        contact->web = NULL;
    }
    if (contact->display) {
        free(contact->display);
        contact->display = NULL;
    }
    free(contact);
}

cJSON *contact_convertToJSON(contact_t *contact) {
    cJSON *item = cJSON_CreateObject();

    // contact->first_name
    if(contact->first_name) {
    if(cJSON_AddStringToObject(item, "firstName", contact->first_name) == NULL) {
    goto fail; //String
    }
    }


    // contact->middle_name
    if(contact->middle_name) {
    if(cJSON_AddStringToObject(item, "middleName", contact->middle_name) == NULL) {
    goto fail; //String
    }
    }


    // contact->last_name
    if(contact->last_name) {
    if(cJSON_AddStringToObject(item, "lastName", contact->last_name) == NULL) {
    goto fail; //String
    }
    }


    // contact->prefix
    if(contact->prefix) {
    if(cJSON_AddStringToObject(item, "prefix", contact->prefix) == NULL) {
    goto fail; //String
    }
    }


    // contact->suffix
    if(contact->suffix) {
    if(cJSON_AddStringToObject(item, "suffix", contact->suffix) == NULL) {
    goto fail; //String
    }
    }


    // contact->title
    if(contact->title) {
    if(cJSON_AddStringToObject(item, "title", contact->title) == NULL) {
    goto fail; //String
    }
    }


    // contact->home_phone
    if(contact->home_phone) {
    if(cJSON_AddStringToObject(item, "homePhone", contact->home_phone) == NULL) {
    goto fail; //String
    }
    }


    // contact->cell_phone
    if(contact->cell_phone) {
    if(cJSON_AddStringToObject(item, "cellPhone", contact->cell_phone) == NULL) {
    goto fail; //String
    }
    }


    // contact->cell_carrier
    if(contact->cell_carrier) {
    cJSON *cell_carrier_local_JSON = cell_carrier_convertToJSON(contact->cell_carrier);
    if(cell_carrier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cellCarrier", cell_carrier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // contact->business_phone
    if(contact->business_phone) {
    if(cJSON_AddStringToObject(item, "businessPhone", contact->business_phone) == NULL) {
    goto fail; //String
    }
    }


    // contact->business_phone_ext
    if(contact->business_phone_ext) {
    if(cJSON_AddStringToObject(item, "businessPhoneExt", contact->business_phone_ext) == NULL) {
    goto fail; //String
    }
    }


    // contact->fax_number
    if(contact->fax_number) {
    if(cJSON_AddStringToObject(item, "faxNumber", contact->fax_number) == NULL) {
    goto fail; //String
    }
    }


    // contact->time_zone
    if(contact->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", contact->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // contact->utc_offset
    if(contact->utc_offset) {
    if(cJSON_AddStringToObject(item, "utcOffset", contact->utc_offset) == NULL) {
    goto fail; //String
    }
    }


    // contact->code501c3
    if(contact->code501c3) {
    if(cJSON_AddStringToObject(item, "code501c3", contact->code501c3) == NULL) {
    goto fail; //String
    }
    }


    // contact->email_address
    if(contact->email_address) {
    if(cJSON_AddStringToObject(item, "emailAddress", contact->email_address) == NULL) {
    goto fail; //String
    }
    }


    // contact->address
    if(contact->address) {
    cJSON *address_local_JSON = address_convertToJSON(contact->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // contact->web
    if(contact->web) {
    if(cJSON_AddStringToObject(item, "web", contact->web) == NULL) {
    goto fail; //String
    }
    }


    // contact->display
    if(contact->display) {
    if(cJSON_AddStringToObject(item, "display", contact->display) == NULL) {
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

contact_t *contact_parseFromJSON(cJSON *contactJSON){

    contact_t *contact_local_var = NULL;

    // define the local variable for contact->cell_carrier
    cell_carrier_t *cell_carrier_local_nonprim = NULL;

    // define the local variable for contact->address
    address_t *address_local_nonprim = NULL;

    // contact->first_name
    cJSON *first_name = cJSON_GetObjectItemCaseSensitive(contactJSON, "firstName");
    if (cJSON_IsNull(first_name)) {
        first_name = NULL;
    }
    if (first_name) { 
    if(!cJSON_IsString(first_name) && !cJSON_IsNull(first_name))
    {
    goto end; //String
    }
    }

    // contact->middle_name
    cJSON *middle_name = cJSON_GetObjectItemCaseSensitive(contactJSON, "middleName");
    if (cJSON_IsNull(middle_name)) {
        middle_name = NULL;
    }
    if (middle_name) { 
    if(!cJSON_IsString(middle_name) && !cJSON_IsNull(middle_name))
    {
    goto end; //String
    }
    }

    // contact->last_name
    cJSON *last_name = cJSON_GetObjectItemCaseSensitive(contactJSON, "lastName");
    if (cJSON_IsNull(last_name)) {
        last_name = NULL;
    }
    if (last_name) { 
    if(!cJSON_IsString(last_name) && !cJSON_IsNull(last_name))
    {
    goto end; //String
    }
    }

    // contact->prefix
    cJSON *prefix = cJSON_GetObjectItemCaseSensitive(contactJSON, "prefix");
    if (cJSON_IsNull(prefix)) {
        prefix = NULL;
    }
    if (prefix) { 
    if(!cJSON_IsString(prefix) && !cJSON_IsNull(prefix))
    {
    goto end; //String
    }
    }

    // contact->suffix
    cJSON *suffix = cJSON_GetObjectItemCaseSensitive(contactJSON, "suffix");
    if (cJSON_IsNull(suffix)) {
        suffix = NULL;
    }
    if (suffix) { 
    if(!cJSON_IsString(suffix) && !cJSON_IsNull(suffix))
    {
    goto end; //String
    }
    }

    // contact->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(contactJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // contact->home_phone
    cJSON *home_phone = cJSON_GetObjectItemCaseSensitive(contactJSON, "homePhone");
    if (cJSON_IsNull(home_phone)) {
        home_phone = NULL;
    }
    if (home_phone) { 
    if(!cJSON_IsString(home_phone) && !cJSON_IsNull(home_phone))
    {
    goto end; //String
    }
    }

    // contact->cell_phone
    cJSON *cell_phone = cJSON_GetObjectItemCaseSensitive(contactJSON, "cellPhone");
    if (cJSON_IsNull(cell_phone)) {
        cell_phone = NULL;
    }
    if (cell_phone) { 
    if(!cJSON_IsString(cell_phone) && !cJSON_IsNull(cell_phone))
    {
    goto end; //String
    }
    }

    // contact->cell_carrier
    cJSON *cell_carrier = cJSON_GetObjectItemCaseSensitive(contactJSON, "cellCarrier");
    if (cJSON_IsNull(cell_carrier)) {
        cell_carrier = NULL;
    }
    if (cell_carrier) { 
    cell_carrier_local_nonprim = cell_carrier_parseFromJSON(cell_carrier); //nonprimitive
    }

    // contact->business_phone
    cJSON *business_phone = cJSON_GetObjectItemCaseSensitive(contactJSON, "businessPhone");
    if (cJSON_IsNull(business_phone)) {
        business_phone = NULL;
    }
    if (business_phone) { 
    if(!cJSON_IsString(business_phone) && !cJSON_IsNull(business_phone))
    {
    goto end; //String
    }
    }

    // contact->business_phone_ext
    cJSON *business_phone_ext = cJSON_GetObjectItemCaseSensitive(contactJSON, "businessPhoneExt");
    if (cJSON_IsNull(business_phone_ext)) {
        business_phone_ext = NULL;
    }
    if (business_phone_ext) { 
    if(!cJSON_IsString(business_phone_ext) && !cJSON_IsNull(business_phone_ext))
    {
    goto end; //String
    }
    }

    // contact->fax_number
    cJSON *fax_number = cJSON_GetObjectItemCaseSensitive(contactJSON, "faxNumber");
    if (cJSON_IsNull(fax_number)) {
        fax_number = NULL;
    }
    if (fax_number) { 
    if(!cJSON_IsString(fax_number) && !cJSON_IsNull(fax_number))
    {
    goto end; //String
    }
    }

    // contact->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(contactJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // contact->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(contactJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsString(utc_offset) && !cJSON_IsNull(utc_offset))
    {
    goto end; //String
    }
    }

    // contact->code501c3
    cJSON *code501c3 = cJSON_GetObjectItemCaseSensitive(contactJSON, "code501c3");
    if (cJSON_IsNull(code501c3)) {
        code501c3 = NULL;
    }
    if (code501c3) { 
    if(!cJSON_IsString(code501c3) && !cJSON_IsNull(code501c3))
    {
    goto end; //String
    }
    }

    // contact->email_address
    cJSON *email_address = cJSON_GetObjectItemCaseSensitive(contactJSON, "emailAddress");
    if (cJSON_IsNull(email_address)) {
        email_address = NULL;
    }
    if (email_address) { 
    if(!cJSON_IsString(email_address) && !cJSON_IsNull(email_address))
    {
    goto end; //String
    }
    }

    // contact->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(contactJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = address_parseFromJSON(address); //nonprimitive
    }

    // contact->web
    cJSON *web = cJSON_GetObjectItemCaseSensitive(contactJSON, "web");
    if (cJSON_IsNull(web)) {
        web = NULL;
    }
    if (web) { 
    if(!cJSON_IsString(web) && !cJSON_IsNull(web))
    {
    goto end; //String
    }
    }

    // contact->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(contactJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }


    contact_local_var = contact_create_internal (
        first_name && !cJSON_IsNull(first_name) ? strdup(first_name->valuestring) : NULL,
        middle_name && !cJSON_IsNull(middle_name) ? strdup(middle_name->valuestring) : NULL,
        last_name && !cJSON_IsNull(last_name) ? strdup(last_name->valuestring) : NULL,
        prefix && !cJSON_IsNull(prefix) ? strdup(prefix->valuestring) : NULL,
        suffix && !cJSON_IsNull(suffix) ? strdup(suffix->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
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
        web && !cJSON_IsNull(web) ? strdup(web->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL
        );

    return contact_local_var;
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
