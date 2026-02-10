#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_video_response.h"



static orson_video_response_t *orson_video_response_create_internal(
    char *uri,
    char *expires
    ) {
    orson_video_response_t *orson_video_response_local_var = malloc(sizeof(orson_video_response_t));
    if (!orson_video_response_local_var) {
        return NULL;
    }
    orson_video_response_local_var->uri = uri;
    orson_video_response_local_var->expires = expires;

    orson_video_response_local_var->_library_owned = 1;
    return orson_video_response_local_var;
}

__attribute__((deprecated)) orson_video_response_t *orson_video_response_create(
    char *uri,
    char *expires
    ) {
    return orson_video_response_create_internal (
        uri,
        expires
        );
}

void orson_video_response_free(orson_video_response_t *orson_video_response) {
    if(NULL == orson_video_response){
        return ;
    }
    if(orson_video_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_video_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_video_response->uri) {
        free(orson_video_response->uri);
        orson_video_response->uri = NULL;
    }
    if (orson_video_response->expires) {
        free(orson_video_response->expires);
        orson_video_response->expires = NULL;
    }
    free(orson_video_response);
}

cJSON *orson_video_response_convertToJSON(orson_video_response_t *orson_video_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_video_response->uri
    if(orson_video_response->uri) {
    if(cJSON_AddStringToObject(item, "uri", orson_video_response->uri) == NULL) {
    goto fail; //String
    }
    }


    // orson_video_response->expires
    if(orson_video_response->expires) {
    if(cJSON_AddStringToObject(item, "expires", orson_video_response->expires) == NULL) {
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

orson_video_response_t *orson_video_response_parseFromJSON(cJSON *orson_video_responseJSON){

    orson_video_response_t *orson_video_response_local_var = NULL;

    // orson_video_response->uri
    cJSON *uri = cJSON_GetObjectItemCaseSensitive(orson_video_responseJSON, "uri");
    if (cJSON_IsNull(uri)) {
        uri = NULL;
    }
    if (uri) { 
    if(!cJSON_IsString(uri) && !cJSON_IsNull(uri))
    {
    goto end; //String
    }
    }

    // orson_video_response->expires
    cJSON *expires = cJSON_GetObjectItemCaseSensitive(orson_video_responseJSON, "expires");
    if (cJSON_IsNull(expires)) {
        expires = NULL;
    }
    if (expires) { 
    if(!cJSON_IsString(expires) && !cJSON_IsNull(expires))
    {
    goto end; //String
    }
    }


    orson_video_response_local_var = orson_video_response_create_internal (
        uri && !cJSON_IsNull(uri) ? strdup(uri->valuestring) : NULL,
        expires && !cJSON_IsNull(expires) ? strdup(expires->valuestring) : NULL
        );

    return orson_video_response_local_var;
end:
    return NULL;

}
