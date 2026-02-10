#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_profile.h"



static retailer_profile_t *retailer_profile_create_internal(
    char *details_header,
    char *details_body,
    char *details_line_left1,
    char *details_line_left2,
    char *details_line_right1,
    char *meta_description,
    char *directions,
    char *hours,
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
    int featured,
    int listed
    ) {
    retailer_profile_t *retailer_profile_local_var = malloc(sizeof(retailer_profile_t));
    if (!retailer_profile_local_var) {
        return NULL;
    }
    retailer_profile_local_var->details_header = details_header;
    retailer_profile_local_var->details_body = details_body;
    retailer_profile_local_var->details_line_left1 = details_line_left1;
    retailer_profile_local_var->details_line_left2 = details_line_left2;
    retailer_profile_local_var->details_line_right1 = details_line_right1;
    retailer_profile_local_var->meta_description = meta_description;
    retailer_profile_local_var->directions = directions;
    retailer_profile_local_var->hours = hours;
    retailer_profile_local_var->home_phone = home_phone;
    retailer_profile_local_var->cell_phone = cell_phone;
    retailer_profile_local_var->cell_carrier = cell_carrier;
    retailer_profile_local_var->business_phone = business_phone;
    retailer_profile_local_var->business_phone_ext = business_phone_ext;
    retailer_profile_local_var->fax_number = fax_number;
    retailer_profile_local_var->time_zone = time_zone;
    retailer_profile_local_var->utc_offset = utc_offset;
    retailer_profile_local_var->code501c3 = code501c3;
    retailer_profile_local_var->email_address = email_address;
    retailer_profile_local_var->address = address;
    retailer_profile_local_var->web = web;
    retailer_profile_local_var->featured = featured;
    retailer_profile_local_var->listed = listed;

    retailer_profile_local_var->_library_owned = 1;
    return retailer_profile_local_var;
}

__attribute__((deprecated)) retailer_profile_t *retailer_profile_create(
    char *details_header,
    char *details_body,
    char *details_line_left1,
    char *details_line_left2,
    char *details_line_right1,
    char *meta_description,
    char *directions,
    char *hours,
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
    int featured,
    int listed
    ) {
    return retailer_profile_create_internal (
        details_header,
        details_body,
        details_line_left1,
        details_line_left2,
        details_line_right1,
        meta_description,
        directions,
        hours,
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
        featured,
        listed
        );
}

void retailer_profile_free(retailer_profile_t *retailer_profile) {
    if(NULL == retailer_profile){
        return ;
    }
    if(retailer_profile->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_profile_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer_profile->details_header) {
        free(retailer_profile->details_header);
        retailer_profile->details_header = NULL;
    }
    if (retailer_profile->details_body) {
        free(retailer_profile->details_body);
        retailer_profile->details_body = NULL;
    }
    if (retailer_profile->details_line_left1) {
        free(retailer_profile->details_line_left1);
        retailer_profile->details_line_left1 = NULL;
    }
    if (retailer_profile->details_line_left2) {
        free(retailer_profile->details_line_left2);
        retailer_profile->details_line_left2 = NULL;
    }
    if (retailer_profile->details_line_right1) {
        free(retailer_profile->details_line_right1);
        retailer_profile->details_line_right1 = NULL;
    }
    if (retailer_profile->meta_description) {
        free(retailer_profile->meta_description);
        retailer_profile->meta_description = NULL;
    }
    if (retailer_profile->directions) {
        free(retailer_profile->directions);
        retailer_profile->directions = NULL;
    }
    if (retailer_profile->hours) {
        free(retailer_profile->hours);
        retailer_profile->hours = NULL;
    }
    if (retailer_profile->home_phone) {
        free(retailer_profile->home_phone);
        retailer_profile->home_phone = NULL;
    }
    if (retailer_profile->cell_phone) {
        free(retailer_profile->cell_phone);
        retailer_profile->cell_phone = NULL;
    }
    if (retailer_profile->cell_carrier) {
        cell_carrier_free(retailer_profile->cell_carrier);
        retailer_profile->cell_carrier = NULL;
    }
    if (retailer_profile->business_phone) {
        free(retailer_profile->business_phone);
        retailer_profile->business_phone = NULL;
    }
    if (retailer_profile->business_phone_ext) {
        free(retailer_profile->business_phone_ext);
        retailer_profile->business_phone_ext = NULL;
    }
    if (retailer_profile->fax_number) {
        free(retailer_profile->fax_number);
        retailer_profile->fax_number = NULL;
    }
    if (retailer_profile->time_zone) {
        free(retailer_profile->time_zone);
        retailer_profile->time_zone = NULL;
    }
    if (retailer_profile->utc_offset) {
        free(retailer_profile->utc_offset);
        retailer_profile->utc_offset = NULL;
    }
    if (retailer_profile->code501c3) {
        free(retailer_profile->code501c3);
        retailer_profile->code501c3 = NULL;
    }
    if (retailer_profile->email_address) {
        free(retailer_profile->email_address);
        retailer_profile->email_address = NULL;
    }
    if (retailer_profile->address) {
        address_free(retailer_profile->address);
        retailer_profile->address = NULL;
    }
    if (retailer_profile->web) {
        free(retailer_profile->web);
        retailer_profile->web = NULL;
    }
    free(retailer_profile);
}

cJSON *retailer_profile_convertToJSON(retailer_profile_t *retailer_profile) {
    cJSON *item = cJSON_CreateObject();

    // retailer_profile->details_header
    if(retailer_profile->details_header) {
    if(cJSON_AddStringToObject(item, "detailsHeader", retailer_profile->details_header) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->details_body
    if(retailer_profile->details_body) {
    if(cJSON_AddStringToObject(item, "detailsBody", retailer_profile->details_body) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->details_line_left1
    if(retailer_profile->details_line_left1) {
    if(cJSON_AddStringToObject(item, "detailsLineLeft1", retailer_profile->details_line_left1) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->details_line_left2
    if(retailer_profile->details_line_left2) {
    if(cJSON_AddStringToObject(item, "detailsLineLeft2", retailer_profile->details_line_left2) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->details_line_right1
    if(retailer_profile->details_line_right1) {
    if(cJSON_AddStringToObject(item, "detailsLineRight1", retailer_profile->details_line_right1) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->meta_description
    if(retailer_profile->meta_description) {
    if(cJSON_AddStringToObject(item, "metaDescription", retailer_profile->meta_description) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->directions
    if(retailer_profile->directions) {
    if(cJSON_AddStringToObject(item, "directions", retailer_profile->directions) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->hours
    if(retailer_profile->hours) {
    if(cJSON_AddStringToObject(item, "hours", retailer_profile->hours) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->home_phone
    if(retailer_profile->home_phone) {
    if(cJSON_AddStringToObject(item, "homePhone", retailer_profile->home_phone) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->cell_phone
    if(retailer_profile->cell_phone) {
    if(cJSON_AddStringToObject(item, "cellPhone", retailer_profile->cell_phone) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->cell_carrier
    if(retailer_profile->cell_carrier) {
    cJSON *cell_carrier_local_JSON = cell_carrier_convertToJSON(retailer_profile->cell_carrier);
    if(cell_carrier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cellCarrier", cell_carrier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_profile->business_phone
    if(retailer_profile->business_phone) {
    if(cJSON_AddStringToObject(item, "businessPhone", retailer_profile->business_phone) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->business_phone_ext
    if(retailer_profile->business_phone_ext) {
    if(cJSON_AddStringToObject(item, "businessPhoneExt", retailer_profile->business_phone_ext) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->fax_number
    if(retailer_profile->fax_number) {
    if(cJSON_AddStringToObject(item, "faxNumber", retailer_profile->fax_number) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->time_zone
    if(retailer_profile->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", retailer_profile->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->utc_offset
    if(retailer_profile->utc_offset) {
    if(cJSON_AddStringToObject(item, "utcOffset", retailer_profile->utc_offset) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->code501c3
    if(retailer_profile->code501c3) {
    if(cJSON_AddStringToObject(item, "code501c3", retailer_profile->code501c3) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->email_address
    if(retailer_profile->email_address) {
    if(cJSON_AddStringToObject(item, "emailAddress", retailer_profile->email_address) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->address
    if(retailer_profile->address) {
    cJSON *address_local_JSON = address_convertToJSON(retailer_profile->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_profile->web
    if(retailer_profile->web) {
    if(cJSON_AddStringToObject(item, "web", retailer_profile->web) == NULL) {
    goto fail; //String
    }
    }


    // retailer_profile->featured
    if(retailer_profile->featured) {
    if(cJSON_AddBoolToObject(item, "featured", retailer_profile->featured) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_profile->listed
    if(retailer_profile->listed) {
    if(cJSON_AddBoolToObject(item, "listed", retailer_profile->listed) == NULL) {
    goto fail; //Bool
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

retailer_profile_t *retailer_profile_parseFromJSON(cJSON *retailer_profileJSON){

    retailer_profile_t *retailer_profile_local_var = NULL;

    // define the local variable for retailer_profile->cell_carrier
    cell_carrier_t *cell_carrier_local_nonprim = NULL;

    // define the local variable for retailer_profile->address
    address_t *address_local_nonprim = NULL;

    // retailer_profile->details_header
    cJSON *details_header = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "detailsHeader");
    if (cJSON_IsNull(details_header)) {
        details_header = NULL;
    }
    if (details_header) { 
    if(!cJSON_IsString(details_header) && !cJSON_IsNull(details_header))
    {
    goto end; //String
    }
    }

    // retailer_profile->details_body
    cJSON *details_body = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "detailsBody");
    if (cJSON_IsNull(details_body)) {
        details_body = NULL;
    }
    if (details_body) { 
    if(!cJSON_IsString(details_body) && !cJSON_IsNull(details_body))
    {
    goto end; //String
    }
    }

    // retailer_profile->details_line_left1
    cJSON *details_line_left1 = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "detailsLineLeft1");
    if (cJSON_IsNull(details_line_left1)) {
        details_line_left1 = NULL;
    }
    if (details_line_left1) { 
    if(!cJSON_IsString(details_line_left1) && !cJSON_IsNull(details_line_left1))
    {
    goto end; //String
    }
    }

    // retailer_profile->details_line_left2
    cJSON *details_line_left2 = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "detailsLineLeft2");
    if (cJSON_IsNull(details_line_left2)) {
        details_line_left2 = NULL;
    }
    if (details_line_left2) { 
    if(!cJSON_IsString(details_line_left2) && !cJSON_IsNull(details_line_left2))
    {
    goto end; //String
    }
    }

    // retailer_profile->details_line_right1
    cJSON *details_line_right1 = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "detailsLineRight1");
    if (cJSON_IsNull(details_line_right1)) {
        details_line_right1 = NULL;
    }
    if (details_line_right1) { 
    if(!cJSON_IsString(details_line_right1) && !cJSON_IsNull(details_line_right1))
    {
    goto end; //String
    }
    }

    // retailer_profile->meta_description
    cJSON *meta_description = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "metaDescription");
    if (cJSON_IsNull(meta_description)) {
        meta_description = NULL;
    }
    if (meta_description) { 
    if(!cJSON_IsString(meta_description) && !cJSON_IsNull(meta_description))
    {
    goto end; //String
    }
    }

    // retailer_profile->directions
    cJSON *directions = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "directions");
    if (cJSON_IsNull(directions)) {
        directions = NULL;
    }
    if (directions) { 
    if(!cJSON_IsString(directions) && !cJSON_IsNull(directions))
    {
    goto end; //String
    }
    }

    // retailer_profile->hours
    cJSON *hours = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "hours");
    if (cJSON_IsNull(hours)) {
        hours = NULL;
    }
    if (hours) { 
    if(!cJSON_IsString(hours) && !cJSON_IsNull(hours))
    {
    goto end; //String
    }
    }

    // retailer_profile->home_phone
    cJSON *home_phone = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "homePhone");
    if (cJSON_IsNull(home_phone)) {
        home_phone = NULL;
    }
    if (home_phone) { 
    if(!cJSON_IsString(home_phone) && !cJSON_IsNull(home_phone))
    {
    goto end; //String
    }
    }

    // retailer_profile->cell_phone
    cJSON *cell_phone = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "cellPhone");
    if (cJSON_IsNull(cell_phone)) {
        cell_phone = NULL;
    }
    if (cell_phone) { 
    if(!cJSON_IsString(cell_phone) && !cJSON_IsNull(cell_phone))
    {
    goto end; //String
    }
    }

    // retailer_profile->cell_carrier
    cJSON *cell_carrier = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "cellCarrier");
    if (cJSON_IsNull(cell_carrier)) {
        cell_carrier = NULL;
    }
    if (cell_carrier) { 
    cell_carrier_local_nonprim = cell_carrier_parseFromJSON(cell_carrier); //nonprimitive
    }

    // retailer_profile->business_phone
    cJSON *business_phone = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "businessPhone");
    if (cJSON_IsNull(business_phone)) {
        business_phone = NULL;
    }
    if (business_phone) { 
    if(!cJSON_IsString(business_phone) && !cJSON_IsNull(business_phone))
    {
    goto end; //String
    }
    }

    // retailer_profile->business_phone_ext
    cJSON *business_phone_ext = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "businessPhoneExt");
    if (cJSON_IsNull(business_phone_ext)) {
        business_phone_ext = NULL;
    }
    if (business_phone_ext) { 
    if(!cJSON_IsString(business_phone_ext) && !cJSON_IsNull(business_phone_ext))
    {
    goto end; //String
    }
    }

    // retailer_profile->fax_number
    cJSON *fax_number = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "faxNumber");
    if (cJSON_IsNull(fax_number)) {
        fax_number = NULL;
    }
    if (fax_number) { 
    if(!cJSON_IsString(fax_number) && !cJSON_IsNull(fax_number))
    {
    goto end; //String
    }
    }

    // retailer_profile->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // retailer_profile->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsString(utc_offset) && !cJSON_IsNull(utc_offset))
    {
    goto end; //String
    }
    }

    // retailer_profile->code501c3
    cJSON *code501c3 = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "code501c3");
    if (cJSON_IsNull(code501c3)) {
        code501c3 = NULL;
    }
    if (code501c3) { 
    if(!cJSON_IsString(code501c3) && !cJSON_IsNull(code501c3))
    {
    goto end; //String
    }
    }

    // retailer_profile->email_address
    cJSON *email_address = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "emailAddress");
    if (cJSON_IsNull(email_address)) {
        email_address = NULL;
    }
    if (email_address) { 
    if(!cJSON_IsString(email_address) && !cJSON_IsNull(email_address))
    {
    goto end; //String
    }
    }

    // retailer_profile->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = address_parseFromJSON(address); //nonprimitive
    }

    // retailer_profile->web
    cJSON *web = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "web");
    if (cJSON_IsNull(web)) {
        web = NULL;
    }
    if (web) { 
    if(!cJSON_IsString(web) && !cJSON_IsNull(web))
    {
    goto end; //String
    }
    }

    // retailer_profile->featured
    cJSON *featured = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "featured");
    if (cJSON_IsNull(featured)) {
        featured = NULL;
    }
    if (featured) { 
    if(!cJSON_IsBool(featured))
    {
    goto end; //Bool
    }
    }

    // retailer_profile->listed
    cJSON *listed = cJSON_GetObjectItemCaseSensitive(retailer_profileJSON, "listed");
    if (cJSON_IsNull(listed)) {
        listed = NULL;
    }
    if (listed) { 
    if(!cJSON_IsBool(listed))
    {
    goto end; //Bool
    }
    }


    retailer_profile_local_var = retailer_profile_create_internal (
        details_header && !cJSON_IsNull(details_header) ? strdup(details_header->valuestring) : NULL,
        details_body && !cJSON_IsNull(details_body) ? strdup(details_body->valuestring) : NULL,
        details_line_left1 && !cJSON_IsNull(details_line_left1) ? strdup(details_line_left1->valuestring) : NULL,
        details_line_left2 && !cJSON_IsNull(details_line_left2) ? strdup(details_line_left2->valuestring) : NULL,
        details_line_right1 && !cJSON_IsNull(details_line_right1) ? strdup(details_line_right1->valuestring) : NULL,
        meta_description && !cJSON_IsNull(meta_description) ? strdup(meta_description->valuestring) : NULL,
        directions && !cJSON_IsNull(directions) ? strdup(directions->valuestring) : NULL,
        hours && !cJSON_IsNull(hours) ? strdup(hours->valuestring) : NULL,
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
        featured ? featured->valueint : 0,
        listed ? listed->valueint : 0
        );

    return retailer_profile_local_var;
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
