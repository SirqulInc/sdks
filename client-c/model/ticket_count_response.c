#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ticket_count_response.h"



static ticket_count_response_t *ticket_count_response_create_internal(
    long count,
    char *type
    ) {
    ticket_count_response_t *ticket_count_response_local_var = malloc(sizeof(ticket_count_response_t));
    if (!ticket_count_response_local_var) {
        return NULL;
    }
    ticket_count_response_local_var->count = count;
    ticket_count_response_local_var->type = type;

    ticket_count_response_local_var->_library_owned = 1;
    return ticket_count_response_local_var;
}

__attribute__((deprecated)) ticket_count_response_t *ticket_count_response_create(
    long count,
    char *type
    ) {
    return ticket_count_response_create_internal (
        count,
        type
        );
}

void ticket_count_response_free(ticket_count_response_t *ticket_count_response) {
    if(NULL == ticket_count_response){
        return ;
    }
    if(ticket_count_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ticket_count_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ticket_count_response->type) {
        free(ticket_count_response->type);
        ticket_count_response->type = NULL;
    }
    free(ticket_count_response);
}

cJSON *ticket_count_response_convertToJSON(ticket_count_response_t *ticket_count_response) {
    cJSON *item = cJSON_CreateObject();

    // ticket_count_response->count
    if(ticket_count_response->count) {
    if(cJSON_AddNumberToObject(item, "count", ticket_count_response->count) == NULL) {
    goto fail; //Numeric
    }
    }


    // ticket_count_response->type
    if(ticket_count_response->type) {
    if(cJSON_AddStringToObject(item, "type", ticket_count_response->type) == NULL) {
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

ticket_count_response_t *ticket_count_response_parseFromJSON(cJSON *ticket_count_responseJSON){

    ticket_count_response_t *ticket_count_response_local_var = NULL;

    // ticket_count_response->count
    cJSON *count = cJSON_GetObjectItemCaseSensitive(ticket_count_responseJSON, "count");
    if (cJSON_IsNull(count)) {
        count = NULL;
    }
    if (count) { 
    if(!cJSON_IsNumber(count))
    {
    goto end; //Numeric
    }
    }

    // ticket_count_response->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(ticket_count_responseJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    ticket_count_response_local_var = ticket_count_response_create_internal (
        count ? count->valuedouble : 0,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return ticket_count_response_local_var;
end:
    return NULL;

}
