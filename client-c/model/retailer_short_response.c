#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "retailer_short_response.h"



static retailer_short_response_t *retailer_short_response_create_internal(
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
    char *visibility
    ) {
    retailer_short_response_t *retailer_short_response_local_var = malloc(sizeof(retailer_short_response_t));
    if (!retailer_short_response_local_var) {
        return NULL;
    }
    retailer_short_response_local_var->retailer_id = retailer_id;
    retailer_short_response_local_var->name = name;
    retailer_short_response_local_var->facebook_url = facebook_url;
    retailer_short_response_local_var->twitter_url = twitter_url;
    retailer_short_response_local_var->active = active;
    retailer_short_response_local_var->contact = contact;
    retailer_short_response_local_var->logo = logo;
    retailer_short_response_local_var->picture1 = picture1;
    retailer_short_response_local_var->picture2 = picture2;
    retailer_short_response_local_var->latitude = latitude;
    retailer_short_response_local_var->longitude = longitude;
    retailer_short_response_local_var->visibility = visibility;

    retailer_short_response_local_var->_library_owned = 1;
    return retailer_short_response_local_var;
}

__attribute__((deprecated)) retailer_short_response_t *retailer_short_response_create(
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
    char *visibility
    ) {
    return retailer_short_response_create_internal (
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
        visibility
        );
}

void retailer_short_response_free(retailer_short_response_t *retailer_short_response) {
    if(NULL == retailer_short_response){
        return ;
    }
    if(retailer_short_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "retailer_short_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (retailer_short_response->name) {
        free(retailer_short_response->name);
        retailer_short_response->name = NULL;
    }
    if (retailer_short_response->facebook_url) {
        free(retailer_short_response->facebook_url);
        retailer_short_response->facebook_url = NULL;
    }
    if (retailer_short_response->twitter_url) {
        free(retailer_short_response->twitter_url);
        retailer_short_response->twitter_url = NULL;
    }
    if (retailer_short_response->contact) {
        contact_info_response_free(retailer_short_response->contact);
        retailer_short_response->contact = NULL;
    }
    if (retailer_short_response->logo) {
        asset_short_response_free(retailer_short_response->logo);
        retailer_short_response->logo = NULL;
    }
    if (retailer_short_response->picture1) {
        asset_short_response_free(retailer_short_response->picture1);
        retailer_short_response->picture1 = NULL;
    }
    if (retailer_short_response->picture2) {
        asset_short_response_free(retailer_short_response->picture2);
        retailer_short_response->picture2 = NULL;
    }
    if (retailer_short_response->visibility) {
        free(retailer_short_response->visibility);
        retailer_short_response->visibility = NULL;
    }
    free(retailer_short_response);
}

cJSON *retailer_short_response_convertToJSON(retailer_short_response_t *retailer_short_response) {
    cJSON *item = cJSON_CreateObject();

    // retailer_short_response->retailer_id
    if(retailer_short_response->retailer_id) {
    if(cJSON_AddNumberToObject(item, "retailerId", retailer_short_response->retailer_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_short_response->name
    if(retailer_short_response->name) {
    if(cJSON_AddStringToObject(item, "name", retailer_short_response->name) == NULL) {
    goto fail; //String
    }
    }


    // retailer_short_response->facebook_url
    if(retailer_short_response->facebook_url) {
    if(cJSON_AddStringToObject(item, "facebookUrl", retailer_short_response->facebook_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_short_response->twitter_url
    if(retailer_short_response->twitter_url) {
    if(cJSON_AddStringToObject(item, "twitterUrl", retailer_short_response->twitter_url) == NULL) {
    goto fail; //String
    }
    }


    // retailer_short_response->active
    if(retailer_short_response->active) {
    if(cJSON_AddBoolToObject(item, "active", retailer_short_response->active) == NULL) {
    goto fail; //Bool
    }
    }


    // retailer_short_response->contact
    if(retailer_short_response->contact) {
    cJSON *contact_local_JSON = contact_info_response_convertToJSON(retailer_short_response->contact);
    if(contact_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "contact", contact_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_short_response->logo
    if(retailer_short_response->logo) {
    cJSON *logo_local_JSON = asset_short_response_convertToJSON(retailer_short_response->logo);
    if(logo_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "logo", logo_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_short_response->picture1
    if(retailer_short_response->picture1) {
    cJSON *picture1_local_JSON = asset_short_response_convertToJSON(retailer_short_response->picture1);
    if(picture1_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture1", picture1_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_short_response->picture2
    if(retailer_short_response->picture2) {
    cJSON *picture2_local_JSON = asset_short_response_convertToJSON(retailer_short_response->picture2);
    if(picture2_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture2", picture2_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // retailer_short_response->latitude
    if(retailer_short_response->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", retailer_short_response->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_short_response->longitude
    if(retailer_short_response->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", retailer_short_response->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // retailer_short_response->visibility
    if(retailer_short_response->visibility) {
    if(cJSON_AddStringToObject(item, "visibility", retailer_short_response->visibility) == NULL) {
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

retailer_short_response_t *retailer_short_response_parseFromJSON(cJSON *retailer_short_responseJSON){

    retailer_short_response_t *retailer_short_response_local_var = NULL;

    // define the local variable for retailer_short_response->contact
    contact_info_response_t *contact_local_nonprim = NULL;

    // define the local variable for retailer_short_response->logo
    asset_short_response_t *logo_local_nonprim = NULL;

    // define the local variable for retailer_short_response->picture1
    asset_short_response_t *picture1_local_nonprim = NULL;

    // define the local variable for retailer_short_response->picture2
    asset_short_response_t *picture2_local_nonprim = NULL;

    // retailer_short_response->retailer_id
    cJSON *retailer_id = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "retailerId");
    if (cJSON_IsNull(retailer_id)) {
        retailer_id = NULL;
    }
    if (retailer_id) { 
    if(!cJSON_IsNumber(retailer_id))
    {
    goto end; //Numeric
    }
    }

    // retailer_short_response->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "name");
    if (cJSON_IsNull(name)) {
        name = NULL;
    }
    if (name) { 
    if(!cJSON_IsString(name) && !cJSON_IsNull(name))
    {
    goto end; //String
    }
    }

    // retailer_short_response->facebook_url
    cJSON *facebook_url = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "facebookUrl");
    if (cJSON_IsNull(facebook_url)) {
        facebook_url = NULL;
    }
    if (facebook_url) { 
    if(!cJSON_IsString(facebook_url) && !cJSON_IsNull(facebook_url))
    {
    goto end; //String
    }
    }

    // retailer_short_response->twitter_url
    cJSON *twitter_url = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "twitterUrl");
    if (cJSON_IsNull(twitter_url)) {
        twitter_url = NULL;
    }
    if (twitter_url) { 
    if(!cJSON_IsString(twitter_url) && !cJSON_IsNull(twitter_url))
    {
    goto end; //String
    }
    }

    // retailer_short_response->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // retailer_short_response->contact
    cJSON *contact = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "contact");
    if (cJSON_IsNull(contact)) {
        contact = NULL;
    }
    if (contact) { 
    contact_local_nonprim = contact_info_response_parseFromJSON(contact); //nonprimitive
    }

    // retailer_short_response->logo
    cJSON *logo = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "logo");
    if (cJSON_IsNull(logo)) {
        logo = NULL;
    }
    if (logo) { 
    logo_local_nonprim = asset_short_response_parseFromJSON(logo); //nonprimitive
    }

    // retailer_short_response->picture1
    cJSON *picture1 = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "picture1");
    if (cJSON_IsNull(picture1)) {
        picture1 = NULL;
    }
    if (picture1) { 
    picture1_local_nonprim = asset_short_response_parseFromJSON(picture1); //nonprimitive
    }

    // retailer_short_response->picture2
    cJSON *picture2 = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "picture2");
    if (cJSON_IsNull(picture2)) {
        picture2 = NULL;
    }
    if (picture2) { 
    picture2_local_nonprim = asset_short_response_parseFromJSON(picture2); //nonprimitive
    }

    // retailer_short_response->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_short_response->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // retailer_short_response->visibility
    cJSON *visibility = cJSON_GetObjectItemCaseSensitive(retailer_short_responseJSON, "visibility");
    if (cJSON_IsNull(visibility)) {
        visibility = NULL;
    }
    if (visibility) { 
    if(!cJSON_IsString(visibility) && !cJSON_IsNull(visibility))
    {
    goto end; //String
    }
    }


    retailer_short_response_local_var = retailer_short_response_create_internal (
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
        visibility && !cJSON_IsNull(visibility) ? strdup(visibility->valuestring) : NULL
        );

    return retailer_short_response_local_var;
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
    return NULL;

}
