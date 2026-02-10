#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "application_settings_response.h"



static application_settings_response_t *application_settings_response_create_internal(
    application_mini_response_t *application,
    long terms_accepted_date,
    long updated,
    long created
    ) {
    application_settings_response_t *application_settings_response_local_var = malloc(sizeof(application_settings_response_t));
    if (!application_settings_response_local_var) {
        return NULL;
    }
    application_settings_response_local_var->application = application;
    application_settings_response_local_var->terms_accepted_date = terms_accepted_date;
    application_settings_response_local_var->updated = updated;
    application_settings_response_local_var->created = created;

    application_settings_response_local_var->_library_owned = 1;
    return application_settings_response_local_var;
}

__attribute__((deprecated)) application_settings_response_t *application_settings_response_create(
    application_mini_response_t *application,
    long terms_accepted_date,
    long updated,
    long created
    ) {
    return application_settings_response_create_internal (
        application,
        terms_accepted_date,
        updated,
        created
        );
}

void application_settings_response_free(application_settings_response_t *application_settings_response) {
    if(NULL == application_settings_response){
        return ;
    }
    if(application_settings_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "application_settings_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (application_settings_response->application) {
        application_mini_response_free(application_settings_response->application);
        application_settings_response->application = NULL;
    }
    free(application_settings_response);
}

cJSON *application_settings_response_convertToJSON(application_settings_response_t *application_settings_response) {
    cJSON *item = cJSON_CreateObject();

    // application_settings_response->application
    if(application_settings_response->application) {
    cJSON *application_local_JSON = application_mini_response_convertToJSON(application_settings_response->application);
    if(application_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "application", application_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // application_settings_response->terms_accepted_date
    if(application_settings_response->terms_accepted_date) {
    if(cJSON_AddNumberToObject(item, "termsAcceptedDate", application_settings_response->terms_accepted_date) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_settings_response->updated
    if(application_settings_response->updated) {
    if(cJSON_AddNumberToObject(item, "updated", application_settings_response->updated) == NULL) {
    goto fail; //Numeric
    }
    }


    // application_settings_response->created
    if(application_settings_response->created) {
    if(cJSON_AddNumberToObject(item, "created", application_settings_response->created) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

application_settings_response_t *application_settings_response_parseFromJSON(cJSON *application_settings_responseJSON){

    application_settings_response_t *application_settings_response_local_var = NULL;

    // define the local variable for application_settings_response->application
    application_mini_response_t *application_local_nonprim = NULL;

    // application_settings_response->application
    cJSON *application = cJSON_GetObjectItemCaseSensitive(application_settings_responseJSON, "application");
    if (cJSON_IsNull(application)) {
        application = NULL;
    }
    if (application) { 
    application_local_nonprim = application_mini_response_parseFromJSON(application); //nonprimitive
    }

    // application_settings_response->terms_accepted_date
    cJSON *terms_accepted_date = cJSON_GetObjectItemCaseSensitive(application_settings_responseJSON, "termsAcceptedDate");
    if (cJSON_IsNull(terms_accepted_date)) {
        terms_accepted_date = NULL;
    }
    if (terms_accepted_date) { 
    if(!cJSON_IsNumber(terms_accepted_date))
    {
    goto end; //Numeric
    }
    }

    // application_settings_response->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(application_settings_responseJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsNumber(updated))
    {
    goto end; //Numeric
    }
    }

    // application_settings_response->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(application_settings_responseJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsNumber(created))
    {
    goto end; //Numeric
    }
    }


    application_settings_response_local_var = application_settings_response_create_internal (
        application ? application_local_nonprim : NULL,
        terms_accepted_date ? terms_accepted_date->valuedouble : 0,
        updated ? updated->valuedouble : 0,
        created ? created->valuedouble : 0
        );

    return application_settings_response_local_var;
end:
    if (application_local_nonprim) {
        application_mini_response_free(application_local_nonprim);
        application_local_nonprim = NULL;
    }
    return NULL;

}
