#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "event.h"



static event_t *event_create_internal(
    int sponsered,
    listing_t *listing
    ) {
    event_t *event_local_var = malloc(sizeof(event_t));
    if (!event_local_var) {
        return NULL;
    }
    event_local_var->sponsered = sponsered;
    event_local_var->listing = listing;

    event_local_var->_library_owned = 1;
    return event_local_var;
}

__attribute__((deprecated)) event_t *event_create(
    int sponsered,
    listing_t *listing
    ) {
    return event_create_internal (
        sponsered,
        listing
        );
}

void event_free(event_t *event) {
    if(NULL == event){
        return ;
    }
    if(event->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "event_free");
        return ;
    }
    listEntry_t *listEntry;
    if (event->listing) {
        listing_free(event->listing);
        event->listing = NULL;
    }
    free(event);
}

cJSON *event_convertToJSON(event_t *event) {
    cJSON *item = cJSON_CreateObject();

    // event->sponsered
    if(event->sponsered) {
    if(cJSON_AddBoolToObject(item, "sponsered", event->sponsered) == NULL) {
    goto fail; //Bool
    }
    }


    // event->listing
    if(event->listing) {
    cJSON *listing_local_JSON = listing_convertToJSON(event->listing);
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

event_t *event_parseFromJSON(cJSON *eventJSON){

    event_t *event_local_var = NULL;

    // define the local variable for event->listing
    listing_t *listing_local_nonprim = NULL;

    // event->sponsered
    cJSON *sponsered = cJSON_GetObjectItemCaseSensitive(eventJSON, "sponsered");
    if (cJSON_IsNull(sponsered)) {
        sponsered = NULL;
    }
    if (sponsered) { 
    if(!cJSON_IsBool(sponsered))
    {
    goto end; //Bool
    }
    }

    // event->listing
    cJSON *listing = cJSON_GetObjectItemCaseSensitive(eventJSON, "listing");
    if (cJSON_IsNull(listing)) {
        listing = NULL;
    }
    if (listing) { 
    listing_local_nonprim = listing_parseFromJSON(listing); //nonprimitive
    }


    event_local_var = event_create_internal (
        sponsered ? sponsered->valueint : 0,
        listing ? listing_local_nonprim : NULL
        );

    return event_local_var;
end:
    if (listing_local_nonprim) {
        listing_free(listing_local_nonprim);
        listing_local_nonprim = NULL;
    }
    return NULL;

}
