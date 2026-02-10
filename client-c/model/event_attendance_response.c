#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "event_attendance_response.h"



static event_attendance_response_t *event_attendance_response_create_internal(
    offer_short_response_t *event,
    list_t *affiliated_categories,
    account_short_response_t *attendee,
    int _friend
    ) {
    event_attendance_response_t *event_attendance_response_local_var = malloc(sizeof(event_attendance_response_t));
    if (!event_attendance_response_local_var) {
        return NULL;
    }
    event_attendance_response_local_var->event = event;
    event_attendance_response_local_var->affiliated_categories = affiliated_categories;
    event_attendance_response_local_var->attendee = attendee;
    event_attendance_response_local_var->_friend = _friend;

    event_attendance_response_local_var->_library_owned = 1;
    return event_attendance_response_local_var;
}

__attribute__((deprecated)) event_attendance_response_t *event_attendance_response_create(
    offer_short_response_t *event,
    list_t *affiliated_categories,
    account_short_response_t *attendee,
    int _friend
    ) {
    return event_attendance_response_create_internal (
        event,
        affiliated_categories,
        attendee,
        _friend
        );
}

void event_attendance_response_free(event_attendance_response_t *event_attendance_response) {
    if(NULL == event_attendance_response){
        return ;
    }
    if(event_attendance_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "event_attendance_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (event_attendance_response->event) {
        offer_short_response_free(event_attendance_response->event);
        event_attendance_response->event = NULL;
    }
    if (event_attendance_response->affiliated_categories) {
        list_ForEach(listEntry, event_attendance_response->affiliated_categories) {
            category_response_free(listEntry->data);
        }
        list_freeList(event_attendance_response->affiliated_categories);
        event_attendance_response->affiliated_categories = NULL;
    }
    if (event_attendance_response->attendee) {
        account_short_response_free(event_attendance_response->attendee);
        event_attendance_response->attendee = NULL;
    }
    free(event_attendance_response);
}

cJSON *event_attendance_response_convertToJSON(event_attendance_response_t *event_attendance_response) {
    cJSON *item = cJSON_CreateObject();

    // event_attendance_response->event
    if(event_attendance_response->event) {
    cJSON *event_local_JSON = offer_short_response_convertToJSON(event_attendance_response->event);
    if(event_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "event", event_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // event_attendance_response->affiliated_categories
    if(event_attendance_response->affiliated_categories) {
    cJSON *affiliated_categories = cJSON_AddArrayToObject(item, "affiliatedCategories");
    if(affiliated_categories == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *affiliated_categoriesListEntry;
    if (event_attendance_response->affiliated_categories) {
    list_ForEach(affiliated_categoriesListEntry, event_attendance_response->affiliated_categories) {
    cJSON *itemLocal = category_response_convertToJSON(affiliated_categoriesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(affiliated_categories, itemLocal);
    }
    }
    }


    // event_attendance_response->attendee
    if(event_attendance_response->attendee) {
    cJSON *attendee_local_JSON = account_short_response_convertToJSON(event_attendance_response->attendee);
    if(attendee_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "attendee", attendee_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // event_attendance_response->_friend
    if(event_attendance_response->_friend) {
    if(cJSON_AddBoolToObject(item, "friend", event_attendance_response->_friend) == NULL) {
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

event_attendance_response_t *event_attendance_response_parseFromJSON(cJSON *event_attendance_responseJSON){

    event_attendance_response_t *event_attendance_response_local_var = NULL;

    // define the local variable for event_attendance_response->event
    offer_short_response_t *event_local_nonprim = NULL;

    // define the local list for event_attendance_response->affiliated_categories
    list_t *affiliated_categoriesList = NULL;

    // define the local variable for event_attendance_response->attendee
    account_short_response_t *attendee_local_nonprim = NULL;

    // event_attendance_response->event
    cJSON *event = cJSON_GetObjectItemCaseSensitive(event_attendance_responseJSON, "event");
    if (cJSON_IsNull(event)) {
        event = NULL;
    }
    if (event) { 
    event_local_nonprim = offer_short_response_parseFromJSON(event); //nonprimitive
    }

    // event_attendance_response->affiliated_categories
    cJSON *affiliated_categories = cJSON_GetObjectItemCaseSensitive(event_attendance_responseJSON, "affiliatedCategories");
    if (cJSON_IsNull(affiliated_categories)) {
        affiliated_categories = NULL;
    }
    if (affiliated_categories) { 
    cJSON *affiliated_categories_local_nonprimitive = NULL;
    if(!cJSON_IsArray(affiliated_categories)){
        goto end; //nonprimitive container
    }

    affiliated_categoriesList = list_createList();

    cJSON_ArrayForEach(affiliated_categories_local_nonprimitive,affiliated_categories )
    {
        if(!cJSON_IsObject(affiliated_categories_local_nonprimitive)){
            goto end;
        }
        category_response_t *affiliated_categoriesItem = category_response_parseFromJSON(affiliated_categories_local_nonprimitive);

        list_addElement(affiliated_categoriesList, affiliated_categoriesItem);
    }
    }

    // event_attendance_response->attendee
    cJSON *attendee = cJSON_GetObjectItemCaseSensitive(event_attendance_responseJSON, "attendee");
    if (cJSON_IsNull(attendee)) {
        attendee = NULL;
    }
    if (attendee) { 
    attendee_local_nonprim = account_short_response_parseFromJSON(attendee); //nonprimitive
    }

    // event_attendance_response->_friend
    cJSON *_friend = cJSON_GetObjectItemCaseSensitive(event_attendance_responseJSON, "friend");
    if (cJSON_IsNull(_friend)) {
        _friend = NULL;
    }
    if (_friend) { 
    if(!cJSON_IsBool(_friend))
    {
    goto end; //Bool
    }
    }


    event_attendance_response_local_var = event_attendance_response_create_internal (
        event ? event_local_nonprim : NULL,
        affiliated_categories ? affiliated_categoriesList : NULL,
        attendee ? attendee_local_nonprim : NULL,
        _friend ? _friend->valueint : 0
        );

    return event_attendance_response_local_var;
end:
    if (event_local_nonprim) {
        offer_short_response_free(event_local_nonprim);
        event_local_nonprim = NULL;
    }
    if (affiliated_categoriesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, affiliated_categoriesList) {
            category_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(affiliated_categoriesList);
        affiliated_categoriesList = NULL;
    }
    if (attendee_local_nonprim) {
        account_short_response_free(attendee_local_nonprim);
        attendee_local_nonprim = NULL;
    }
    return NULL;

}
