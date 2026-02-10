#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "listing_group_response.h"



static listing_group_response_t *listing_group_response_create_internal(
    category_response_t *category,
    list_t *listings
    ) {
    listing_group_response_t *listing_group_response_local_var = malloc(sizeof(listing_group_response_t));
    if (!listing_group_response_local_var) {
        return NULL;
    }
    listing_group_response_local_var->category = category;
    listing_group_response_local_var->listings = listings;

    listing_group_response_local_var->_library_owned = 1;
    return listing_group_response_local_var;
}

__attribute__((deprecated)) listing_group_response_t *listing_group_response_create(
    category_response_t *category,
    list_t *listings
    ) {
    return listing_group_response_create_internal (
        category,
        listings
        );
}

void listing_group_response_free(listing_group_response_t *listing_group_response) {
    if(NULL == listing_group_response){
        return ;
    }
    if(listing_group_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "listing_group_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (listing_group_response->category) {
        category_response_free(listing_group_response->category);
        listing_group_response->category = NULL;
    }
    if (listing_group_response->listings) {
        list_ForEach(listEntry, listing_group_response->listings) {
            listing_response_free(listEntry->data);
        }
        list_freeList(listing_group_response->listings);
        listing_group_response->listings = NULL;
    }
    free(listing_group_response);
}

cJSON *listing_group_response_convertToJSON(listing_group_response_t *listing_group_response) {
    cJSON *item = cJSON_CreateObject();

    // listing_group_response->category
    if(listing_group_response->category) {
    cJSON *category_local_JSON = category_response_convertToJSON(listing_group_response->category);
    if(category_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "category", category_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // listing_group_response->listings
    if(listing_group_response->listings) {
    cJSON *listings = cJSON_AddArrayToObject(item, "listings");
    if(listings == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *listingsListEntry;
    if (listing_group_response->listings) {
    list_ForEach(listingsListEntry, listing_group_response->listings) {
    cJSON *itemLocal = listing_response_convertToJSON(listingsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(listings, itemLocal);
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

listing_group_response_t *listing_group_response_parseFromJSON(cJSON *listing_group_responseJSON){

    listing_group_response_t *listing_group_response_local_var = NULL;

    // define the local variable for listing_group_response->category
    category_response_t *category_local_nonprim = NULL;

    // define the local list for listing_group_response->listings
    list_t *listingsList = NULL;

    // listing_group_response->category
    cJSON *category = cJSON_GetObjectItemCaseSensitive(listing_group_responseJSON, "category");
    if (cJSON_IsNull(category)) {
        category = NULL;
    }
    if (category) { 
    category_local_nonprim = category_response_parseFromJSON(category); //nonprimitive
    }

    // listing_group_response->listings
    cJSON *listings = cJSON_GetObjectItemCaseSensitive(listing_group_responseJSON, "listings");
    if (cJSON_IsNull(listings)) {
        listings = NULL;
    }
    if (listings) { 
    cJSON *listings_local_nonprimitive = NULL;
    if(!cJSON_IsArray(listings)){
        goto end; //nonprimitive container
    }

    listingsList = list_createList();

    cJSON_ArrayForEach(listings_local_nonprimitive,listings )
    {
        if(!cJSON_IsObject(listings_local_nonprimitive)){
            goto end;
        }
        listing_response_t *listingsItem = listing_response_parseFromJSON(listings_local_nonprimitive);

        list_addElement(listingsList, listingsItem);
    }
    }


    listing_group_response_local_var = listing_group_response_create_internal (
        category ? category_local_nonprim : NULL,
        listings ? listingsList : NULL
        );

    return listing_group_response_local_var;
end:
    if (category_local_nonprim) {
        category_response_free(category_local_nonprim);
        category_local_nonprim = NULL;
    }
    if (listingsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, listingsList) {
            listing_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(listingsList);
        listingsList = NULL;
    }
    return NULL;

}
