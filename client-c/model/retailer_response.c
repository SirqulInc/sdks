#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_response.h"



static retailer_response_t *retailer_response_create_internal(
    long retailer_id,
    char *name,
    char *facebook_url,
    char *twitter_url,
    int active,
    contact_info_response_t *contact,
    asset_short_response_t *logo,
    asset_short_response_t *picture1,
    asset_short_response_t *picture2,
    double latitude,
    double longitude,
    char *visibility,
    profile_short_response_t *responsible,
    profile_short_response_t *manager,
    billable_entity_response_t *billable_entity,
    retailer_count_response_t *counts
    ) {
    retailer_response_t *retailer_response_local_var = malloc(sizeof(retailer_response_t));
    if (!retailer_response_local_var) {
        return NULL;
    }
    retailer_response_local_var->retailer_id = retailer_id;
    retailer_response_local_var->name = name;
    retailer_response_local_var->facebook_url = facebook_url;
    retailer_response_local_var->twitter_url = twitter_url;
    retailer_response_local_var->active = active;
    retailer_response_local_var->contact = contact;
    retailer_response_local_var->logo = logo;
    retailer_response_local_var->picture1 = picture1;
    retailer_response_local_var->picture2 = picture2;
    retailer_response_local_var->latitude = latitude;
    retailer_response_local_var->longitude = longitude;
    retailer_response_local_var->visibility = visibility;
    retailer_response_local_var->responsible = responsible;
    retailer_response_local_var->manager = manager;
    retailer_response_local_var->billable_entity = billable_entity;
    retailer_response_local_var->counts = counts;

    retailer_response_local_var->_library_owned = 1;
    return retailer_response_local_var;
}

__attribute__((deprecated)) retailer_response_t *retailer_response_create(
    long retailer_id,
    char *name,
    char *facebook_url,
    char *twitter_url,
    int active,
    contact_info_response_t *contact,
    asset_short_response_t *logo,
    asset_short_response_t *picture1,
    asset_short_response_t *picture2,
    double latitude,
    double longitude,
    char *visibility,
    profile_short_response_t *responsible,
    profile_short_response_t *manager,
    billable_entity_response_t *billable_entity,
    retailer_count_response_t *counts
    ) {
    return retailer_response_create_internal (
        retailer_id,
        name,
        facebook_url,
        twitter_url,
        active,
        contact,
        logo,
        picture1,
        picture2,
        latitude,
        longitude,
        visibility,
        responsible,
        manager,
        billable_entity,
        counts
        );
}

void retailer_response_free(retailer_response_t *retailer_response) {
    if(NULL == retailer_response){
        return ;
    }
    if(retailer_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer_response->name) {
        free(retailer_response->name);
        retailer_response->name = NULL;
    }
    if (retailer_response->facebook_url) {
        free(retailer_response->facebook_url);
        retailer_response->facebook_url = NULL;
    }
    if (retailer_response->twitter_url) {
        free(retailer_response->twitter_url);
        retailer_response->twitter_url = NULL;
    }
    if (retailer_response->contact) {
        contact_info_response_free(retailer_response->contact);
        retailer_response->contact = NULL;
    }
    if (retailer_response->logo) {
        asset_short_response_free(retailer_response->logo);
        retailer_response->logo = NULL;
    }
    if (retailer_response->picture1) {
        asset_short_response_free(retailer_response->picture1);
        retailer_response->picture1 = NULL;
    }
    if (retailer_response->picture2) {
        asset_short_response_free(retailer_response->picture2);
        retailer_response->picture2 = NULL;
    }
    if (retailer_response->visibility) {
        free(retailer_response->visibility);
        retailer_response->visibility = NULL;
    }
    if (retailer_response->responsible) {
        profile_short_response_free(retailer_response->responsible);
        retailer_response->responsible = NULL;
    }
    if (retailer_response->manager) {
        profile_short_response_free(retailer_response->manager);
        retailer_response->manager = NULL;
    }
    if (retailer_response->billable_entity) {
        billable_entity_response_free(retailer_response->billable_entity);
        retailer_response->billable_entity = NULL;
    }
    if (retailer_response->counts) {
        retailer_count_response_free(retailer_response->counts);
        retailer_response->counts = NULL;
    }
    free(retailer_response);
}

cJSON *retailer_response_convertToJSON(retailer_response_t *retailer_response) {
    cJSON *item = cJSON_CreateObject();

    // retailer_response->retailer_id
    if(retailer_response->retailer_id) {
    if(cJSON_AddNumberToObject(item, "retailerId", retailer_response->retailer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_response->name
    if(retailer_response->name) {
    if(cJSON_AddStringToObject(item, "name", retailer_response->name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_response->facebook_url
    if(retailer_response->facebook_url) {
    if(cJSON_AddStringToObject(item, "facebookUrl", retailer_response->facebook_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_response->twitter_url
    if(retailer_response->twitter_url) {
    if(cJSON_AddStringToObject(item, "twitterUrl", retailer_response->twitter_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_response->active
    if(retailer_response->active) {
    if(cJSON_AddBoolToObject(item, "active", retailer_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_response->contact
    if(retailer_response->contact) {
    cJSON *contact_local_JSON = contact_info_response_convertToJSON(retailer_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_response->logo
    if(retailer_response->logo) {
    cJSON *logo_local_JSON = asset_short_response_convertToJSON(retailer_response->logo);
    if(logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "logo", logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_response->picture1
    if(retailer_response->picture1) {
    cJSON *picture1_local_JSON = asset_short_response_convertToJSON(retailer_response->picture1);
    if(picture1_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture1", picture1_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_response->picture2
    if(retailer_response->picture2) {
    cJSON *picture2_local_JSON = asset_short_response_convertToJSON(retailer_response->picture2);
    if(picture2_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture2", picture2_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_response->latitude
    if(retailer_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", retailer_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_response->longitude
    if(retailer_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", retailer_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_response->visibility
    if(retailer_response->visibility) {
    if(cJSON_AddStringToObject(item, "visibility", retailer_response->visibility) == NULL) {
    goto fail; //String
    }
    }


    // retailer_response->responsible
    if(retailer_response->responsible) {
    cJSON *responsible_local_JSON = profile_short_response_convertToJSON(retailer_response->responsible);
    if(responsible_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "responsible", responsible_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_response->manager
    if(retailer_response->manager) {
    cJSON *manager_local_JSON = profile_short_response_convertToJSON(retailer_response->manager);
    if(manager_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "manager", manager_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_response->billable_entity
    if(retailer_response->billable_entity) {
    cJSON *billable_entity_local_JSON = billable_entity_response_convertToJSON(retailer_response->billable_entity);
    if(billable_entity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "billableEntity", billable_entity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_response->counts
    if(retailer_response->counts) {
    cJSON *counts_local_JSON = retailer_count_response_convertToJSON(retailer_response->counts);
    if(counts_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "counts", counts_local_JSON);
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

retailer_response_t *retailer_response_parseFromJSON(cJSON *retailer_responseJSON){

    retailer_response_t *retailer_response_local_var = NULL;

    // define the local variable for retailer_response->contact
    contact_info_response_t *contact_local_nonprim = NULL;

    // define the local variable for retailer_response->logo
    asset_short_response_t *logo_local_nonprim = NULL;

    // define the local variable for retailer_response->picture1
    asset_short_response_t *picture1_local_nonprim = NULL;

    // define the local variable for retailer_response->picture2
    asset_short_response_t *picture2_local_nonprim = NULL;

    // define the local variable for retailer_response->responsible
    profile_short_response_t *responsible_local_nonprim = NULL;

    // define the local variable for retailer_response->manager
    profile_short_response_t *manager_local_nonprim = NULL;

    // define the local variable for retailer_response->billable_entity
    billable_entity_response_t *billable_entity_local_nonprim = NULL;

    // define the local variable for retailer_response->counts
    retailer_count_response_t *counts_local_nonprim = NULL;

    // retailer_response->retailer_id
    cJSON *retailer_id = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "retailerId");
    if (cJSON_IsNull(retailer_id)) {
        retailer_id = NULL;
    }
    if (retailer_id) { 
    if(!cJSON_IsNumber(retailer_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // retailer_response->facebook_url
    cJSON *facebook_url = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "facebookUrl");
    if (cJSON_IsNull(facebook_url)) {
        facebook_url = NULL;
    }
    if (facebook_url) { 
    if(!cJSON_IsString(facebook_url) && !cJSON_IsNull(facebook_url))
    {
    goto end; //String
    }
    }

    // retailer_response->twitter_url
    cJSON *twitter_url = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "twitterUrl");
    if (cJSON_IsNull(twitter_url)) {
        twitter_url = NULL;
    }
    if (twitter_url) { 
    if(!cJSON_IsString(twitter_url) && !cJSON_IsNull(twitter_url))
    {
    goto end; //String
    }
    }

    // retailer_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // retailer_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_info_response_parseFromJSON(contact); //nonprimitive
    }

    // retailer_response->logo
    cJSON *logo = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "logo");
    if (cJSON_IsNull(logo)) {
        logo = NULL;
    }
    if (logo) { 
    logo_local_nonprim = asset_short_response_parseFromJSON(logo); //nonprimitive
    }

    // retailer_response->picture1
    cJSON *picture1 = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "picture1");
    if (cJSON_IsNull(picture1)) {
        picture1 = NULL;
    }
    if (picture1) { 
    picture1_local_nonprim = asset_short_response_parseFromJSON(picture1); //nonprimitive
    }

    // retailer_response->picture2
    cJSON *picture2 = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "picture2");
    if (cJSON_IsNull(picture2)) {
        picture2 = NULL;
    }
    if (picture2) { 
    picture2_local_nonprim = asset_short_response_parseFromJSON(picture2); //nonprimitive
    }

    // retailer_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_response->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    if (visibility) { 
    if(!cJSON_IsString(visibility) && !cJSON_IsNull(visibility))
    {
    goto end; //String
    }
    }

    // retailer_response->responsible
    cJSON *responsible = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "responsible");
    if (cJSON_IsNull(responsible)) {
        responsible = NULL;
    }
    if (responsible) { 
    responsible_local_nonprim = profile_short_response_parseFromJSON(responsible); //nonprimitive
    }

    // retailer_response->manager
    cJSON *manager = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "manager");
    if (cJSON_IsNull(manager)) {
        manager = NULL;
    }
    if (manager) { 
    manager_local_nonprim = profile_short_response_parseFromJSON(manager); //nonprimitive
    }

    // retailer_response->billable_entity
    cJSON *billable_entity = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "billableEntity");
    if (cJSON_IsNull(billable_entity)) {
        billable_entity = NULL;
    }
    if (billable_entity) { 
    billable_entity_local_nonprim = billable_entity_response_parseFromJSON(billable_entity); //nonprimitive
    }

    // retailer_response->counts
    cJSON *counts = cJSON_GetObjectItemCaseSensitive(retailer_responseJSON, "counts");
    if (cJSON_IsNull(counts)) {
        counts = NULL;
    }
    if (counts) { 
    counts_local_nonprim = retailer_count_response_parseFromJSON(counts); //nonprimitive
    }


    retailer_response_local_var = retailer_response_create_internal (
        retailer_id ? retailer_id->valuedouble : 0,
        name && !cJSON_IsNull(name) ? strdup(name->valuestring) : NULL,
        facebook_url && !cJSON_IsNull(facebook_url) ? strdup(facebook_url->valuestring) : NULL,
        twitter_url && !cJSON_IsNull(twitter_url) ? strdup(twitter_url->valuestring) : NULL,
        active ? active->valueint : 0,
        contact ? contact_local_nonprim : NULL,
        logo ? logo_local_nonprim : NULL,
        picture1 ? picture1_local_nonprim : NULL,
        picture2 ? picture2_local_nonprim : NULL,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        visibility && !cJSON_IsNull(visibility) ? strdup(visibility->valuestring) : NULL,
        responsible ? responsible_local_nonprim : NULL,
        manager ? manager_local_nonprim : NULL,
        billable_entity ? billable_entity_local_nonprim : NULL,
        counts ? counts_local_nonprim : NULL
        );

    return retailer_response_local_var;
end:
    if (contact_local_nonprim) {
        contact_info_response_free(contact_local_nonprim);
        contact_local_nonprim = NULL;
    }
    if (logo_local_nonprim) {
        asset_short_response_free(logo_local_nonprim);
        logo_local_nonprim = NULL;
    }
    if (picture1_local_nonprim) {
        asset_short_response_free(picture1_local_nonprim);
        picture1_local_nonprim = NULL;
    }
    if (picture2_local_nonprim) {
        asset_short_response_free(picture2_local_nonprim);
        picture2_local_nonprim = NULL;
    }
    if (responsible_local_nonprim) {
        profile_short_response_free(responsible_local_nonprim);
        responsible_local_nonprim = NULL;
    }
    if (manager_local_nonprim) {
        profile_short_response_free(manager_local_nonprim);
        manager_local_nonprim = NULL;
    }
    if (billable_entity_local_nonprim) {
        billable_entity_response_free(billable_entity_local_nonprim);
        billable_entity_local_nonprim = NULL;
    }
    if (counts_local_nonprim) {
        retailer_count_response_free(counts_local_nonprim);
        counts_local_nonprim = NULL;
    }
    return NULL;

}
