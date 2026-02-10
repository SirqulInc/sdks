#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "media_response.h"



static media_response_t *media_response_create_internal(
    char *media_type,
    int duration,
    char *author,
    long release_date
    ) {
    media_response_t *media_response_local_var = malloc(sizeof(media_response_t));
    if (!media_response_local_var) {
        return NULL;
    }
    media_response_local_var->media_type = media_type;
    media_response_local_var->duration = duration;
    media_response_local_var->author = author;
    media_response_local_var->release_date = release_date;

    media_response_local_var->_library_owned = 1;
    return media_response_local_var;
}

__attribute__((deprecated)) media_response_t *media_response_create(
    char *media_type,
    int duration,
    char *author,
    long release_date
    ) {
    return media_response_create_internal (
        media_type,
        duration,
        author,
        release_date
        );
}

void media_response_free(media_response_t *media_response) {
    if(NULL == media_response){
        return ;
    }
    if(media_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "media_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (media_response->media_type) {
        free(media_response->media_type);
        media_response->media_type = NULL;
    }
    if (media_response->author) {
        free(media_response->author);
        media_response->author = NULL;
    }
    free(media_response);
}

cJSON *media_response_convertToJSON(media_response_t *media_response) {
    cJSON *item = cJSON_CreateObject();

    // media_response->media_type
    if(media_response->media_type) {
    if(cJSON_AddStringToObject(item, "mediaType", media_response->media_type) == NULL) {
    goto fail; //String
    }
    }


    // media_response->duration
    if(media_response->duration) {
    if(cJSON_AddNumberToObject(item, "duration", media_response->duration) == NULL) {
    goto fail; //Numeric
    }
    }


    // media_response->author
    if(media_response->author) {
    if(cJSON_AddStringToObject(item, "author", media_response->author) == NULL) {
    goto fail; //String
    }
    }


    // media_response->release_date
    if(media_response->release_date) {
    if(cJSON_AddNumberToObject(item, "releaseDate", media_response->release_date) == NULL) {
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

media_response_t *media_response_parseFromJSON(cJSON *media_responseJSON){

    media_response_t *media_response_local_var = NULL;

    // media_response->media_type
    cJSON *media_type = cJSON_GetObjectItemCaseSensitive(media_responseJSON, "mediaType");
    if (cJSON_IsNull(media_type)) {
        media_type = NULL;
    }
    if (media_type) { 
    if(!cJSON_IsString(media_type) && !cJSON_IsNull(media_type))
    {
    goto end; //String
    }
    }

    // media_response->duration
    cJSON *duration = cJSON_GetObjectItemCaseSensitive(media_responseJSON, "duration");
    if (cJSON_IsNull(duration)) {
        duration = NULL;
    }
    if (duration) { 
    if(!cJSON_IsNumber(duration))
    {
    goto end; //Numeric
    }
    }

    // media_response->author
    cJSON *author = cJSON_GetObjectItemCaseSensitive(media_responseJSON, "author");
    if (cJSON_IsNull(author)) {
        author = NULL;
    }
    if (author) { 
    if(!cJSON_IsString(author) && !cJSON_IsNull(author))
    {
    goto end; //String
    }
    }

    // media_response->release_date
    cJSON *release_date = cJSON_GetObjectItemCaseSensitive(media_responseJSON, "releaseDate");
    if (cJSON_IsNull(release_date)) {
        release_date = NULL;
    }
    if (release_date) { 
    if(!cJSON_IsNumber(release_date))
    {
    goto end; //Numeric
    }
    }


    media_response_local_var = media_response_create_internal (
        media_type && !cJSON_IsNull(media_type) ? strdup(media_type->valuestring) : NULL,
        duration ? duration->valuedouble : 0,
        author && !cJSON_IsNull(author) ? strdup(author->valuestring) : NULL,
        release_date ? release_date->valuedouble : 0
        );

    return media_response_local_var;
end:
    return NULL;

}
