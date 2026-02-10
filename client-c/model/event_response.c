#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "event_response.h"



static event_response_t *event_response_create_internal(
    listing_response_t *listing
    ) {
    event_response_t *event_response_local_var = malloc(sizeof(event_response_t));
    if (!event_response_local_var) {
        return NULL;
    }
    event_response_local_var->listing = listing;

    event_response_local_var->_library_owned = 1;
    return event_response_local_var;
}

__attribute__((deprecated)) event_response_t *event_response_create(
    listing_response_t *listing
    ) {
    return event_response_create_internal (
        listing
        );
}

void event_response_free(event_response_t *event_response) {
    if(NULL == event_response){
        return ;
    }
    if(event_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "event_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (event_response->listing) {
        listing_response_free(event_response->listing);
        event_response->listing = NULL;
    }
    free(event_response);
}

cJSON *event_response_convertToJSON(event_response_t *event_response) {
    cJSON *item = cJSON_CreateObject();

    // event_response->listing
    if(event_response->listing) {
    cJSON *listing_local_JSON = listing_response_convertToJSON(event_response->listing);
    if(listing_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "listing", listing_local_JSON);
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

event_response_t *event_response_parseFromJSON(cJSON *event_responseJSON){

    event_response_t *event_response_local_var = NULL;

    // define the local variable for event_response->listing
    listing_response_t *listing_local_nonprim = NULL;

    // event_response->listing
    cJSON *listing = cJSON_GetObjectItemCaseSensitive(event_responseJSON, "listing");
    if (cJSON_IsNull(listing)) {
        listing = NULL;
    }
    if (listing) { 
    listing_local_nonprim = listing_response_parseFromJSON(listing); //nonprimitive
    }


    event_response_local_var = event_response_create_internal (
        listing ? listing_local_nonprim : NULL
        );

    return event_response_local_var;
end:
    if (listing_local_nonprim) {
        listing_response_free(listing_local_nonprim);
        listing_local_nonprim = NULL;
    }
    return NULL;

}
