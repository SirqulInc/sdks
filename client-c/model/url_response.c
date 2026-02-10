#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "url_response.h"



static url_response_t *url_response_create_internal(
    char *url,
    asset_short_response_t *asset
    ) {
    url_response_t *url_response_local_var = malloc(sizeof(url_response_t));
    if (!url_response_local_var) {
        return NULL;
    }
    url_response_local_var->url = url;
    url_response_local_var->asset = asset;

    url_response_local_var->_library_owned = 1;
    return url_response_local_var;
}

__attribute__((deprecated)) url_response_t *url_response_create(
    char *url,
    asset_short_response_t *asset
    ) {
    return url_response_create_internal (
        url,
        asset
        );
}

void url_response_free(url_response_t *url_response) {
    if(NULL == url_response){
        return ;
    }
    if(url_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "url_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (url_response->url) {
        free(url_response->url);
        url_response->url = NULL;
    }
    if (url_response->asset) {
        asset_short_response_free(url_response->asset);
        url_response->asset = NULL;
    }
    free(url_response);
}

cJSON *url_response_convertToJSON(url_response_t *url_response) {
    cJSON *item = cJSON_CreateObject();

    // url_response->url
    if(url_response->url) {
    if(cJSON_AddStringToObject(item, "url", url_response->url) == NULL) {
    goto fail; //String
    }
    }


    // url_response->asset
    if(url_response->asset) {
    cJSON *asset_local_JSON = asset_short_response_convertToJSON(url_response->asset);
    if(asset_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "asset", asset_local_JSON);
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

url_response_t *url_response_parseFromJSON(cJSON *url_responseJSON){

    url_response_t *url_response_local_var = NULL;

    // define the local variable for url_response->asset
    asset_short_response_t *asset_local_nonprim = NULL;

    // url_response->url
    cJSON *url = cJSON_GetObjectItemCaseSensitive(url_responseJSON, "url");
    if (cJSON_IsNull(url)) {
        url = NULL;
    }
    if (url) { 
    if(!cJSON_IsString(url) && !cJSON_IsNull(url))
    {
    goto end; //String
    }
    }

    // url_response->asset
    cJSON *asset = cJSON_GetObjectItemCaseSensitive(url_responseJSON, "asset");
    if (cJSON_IsNull(asset)) {
        asset = NULL;
    }
    if (asset) { 
    asset_local_nonprim = asset_short_response_parseFromJSON(asset); //nonprimitive
    }


    url_response_local_var = url_response_create_internal (
        url && !cJSON_IsNull(url) ? strdup(url->valuestring) : NULL,
        asset ? asset_local_nonprim : NULL
        );

    return url_response_local_var;
end:
    if (asset_local_nonprim) {
        asset_short_response_free(asset_local_nonprim);
        asset_local_nonprim = NULL;
    }
    return NULL;

}
