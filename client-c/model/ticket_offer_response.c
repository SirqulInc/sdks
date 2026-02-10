#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ticket_offer_response.h"



static ticket_offer_response_t *ticket_offer_response_create_internal(
    long id,
    char *title,
    char *description,
    char *image_url,
    char *retailer
    ) {
    ticket_offer_response_t *ticket_offer_response_local_var = malloc(sizeof(ticket_offer_response_t));
    if (!ticket_offer_response_local_var) {
        return NULL;
    }
    ticket_offer_response_local_var->id = id;
    ticket_offer_response_local_var->title = title;
    ticket_offer_response_local_var->description = description;
    ticket_offer_response_local_var->image_url = image_url;
    ticket_offer_response_local_var->retailer = retailer;

    ticket_offer_response_local_var->_library_owned = 1;
    return ticket_offer_response_local_var;
}

__attribute__((deprecated)) ticket_offer_response_t *ticket_offer_response_create(
    long id,
    char *title,
    char *description,
    char *image_url,
    char *retailer
    ) {
    return ticket_offer_response_create_internal (
        id,
        title,
        description,
        image_url,
        retailer
        );
}

void ticket_offer_response_free(ticket_offer_response_t *ticket_offer_response) {
    if(NULL == ticket_offer_response){
        return ;
    }
    if(ticket_offer_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ticket_offer_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ticket_offer_response->title) {
        free(ticket_offer_response->title);
        ticket_offer_response->title = NULL;
    }
    if (ticket_offer_response->description) {
        free(ticket_offer_response->description);
        ticket_offer_response->description = NULL;
    }
    if (ticket_offer_response->image_url) {
        free(ticket_offer_response->image_url);
        ticket_offer_response->image_url = NULL;
    }
    if (ticket_offer_response->retailer) {
        free(ticket_offer_response->retailer);
        ticket_offer_response->retailer = NULL;
    }
    free(ticket_offer_response);
}

cJSON *ticket_offer_response_convertToJSON(ticket_offer_response_t *ticket_offer_response) {
    cJSON *item = cJSON_CreateObject();

    // ticket_offer_response->id
    if(ticket_offer_response->id) {
    if(cJSON_AddNumberToObject(item, "id", ticket_offer_response->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_offer_response->title
    if(ticket_offer_response->title) {
    if(cJSON_AddStringToObject(item, "title", ticket_offer_response->title) == NULL) {
    goto fail; //String
    }
    }


    // ticket_offer_response->description
    if(ticket_offer_response->description) {
    if(cJSON_AddStringToObject(item, "description", ticket_offer_response->description) == NULL) {
    goto fail; //String
    }
    }


    // ticket_offer_response->image_url
    if(ticket_offer_response->image_url) {
    if(cJSON_AddStringToObject(item, "imageURL", ticket_offer_response->image_url) == NULL) {
    goto fail; //String
    }
    }


    // ticket_offer_response->retailer
    if(ticket_offer_response->retailer) {
    if(cJSON_AddStringToObject(item, "retailer", ticket_offer_response->retailer) == NULL) {
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

ticket_offer_response_t *ticket_offer_response_parseFromJSON(cJSON *ticket_offer_responseJSON){

    ticket_offer_response_t *ticket_offer_response_local_var = NULL;

    // ticket_offer_response->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(ticket_offer_responseJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // ticket_offer_response->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(ticket_offer_responseJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // ticket_offer_response->description
    cJSON *description = cJSON_GetObjectItemCaseSensitive(ticket_offer_responseJSON, "description");
    if (cJSON_IsNull(description)) {
        description = NULL;
    }
    if (description) { 
    if(!cJSON_IsString(description) && !cJSON_IsNull(description))
    {
    goto end; //String
    }
    }

    // ticket_offer_response->image_url
    cJSON *image_url = cJSON_GetObjectItemCaseSensitive(ticket_offer_responseJSON, "imageURL");
    if (cJSON_IsNull(image_url)) {
        image_url = NULL;
    }
    if (image_url) { 
    if(!cJSON_IsString(image_url) && !cJSON_IsNull(image_url))
    {
    goto end; //String
    }
    }

    // ticket_offer_response->retailer
    cJSON *retailer = cJSON_GetObjectItemCaseSensitive(ticket_offer_responseJSON, "retailer");
    if (cJSON_IsNull(retailer)) {
        retailer = NULL;
    }
    if (retailer) { 
    if(!cJSON_IsString(retailer) && !cJSON_IsNull(retailer))
    {
    goto end; //String
    }
    }


    ticket_offer_response_local_var = ticket_offer_response_create_internal (
        id ? id->valuedouble : 0,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        description && !cJSON_IsNull(description) ? strdup(description->valuestring) : NULL,
        image_url && !cJSON_IsNull(image_url) ? strdup(image_url->valuestring) : NULL,
        retailer && !cJSON_IsNull(retailer) ? strdup(retailer->valuestring) : NULL
        );

    return ticket_offer_response_local_var;
end:
    return NULL;

}
