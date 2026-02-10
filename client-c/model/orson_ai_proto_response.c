#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "orson_ai_proto_response.h"



static orson_ai_proto_response_t *orson_ai_proto_response_create_internal(
    char *raw_response,
    asset_short_response_t *asset_response
    ) {
    orson_ai_proto_response_t *orson_ai_proto_response_local_var = malloc(sizeof(orson_ai_proto_response_t));
    if (!orson_ai_proto_response_local_var) {
        return NULL;
    }
    orson_ai_proto_response_local_var->raw_response = raw_response;
    orson_ai_proto_response_local_var->asset_response = asset_response;

    orson_ai_proto_response_local_var->_library_owned = 1;
    return orson_ai_proto_response_local_var;
}

__attribute__((deprecated)) orson_ai_proto_response_t *orson_ai_proto_response_create(
    char *raw_response,
    asset_short_response_t *asset_response
    ) {
    return orson_ai_proto_response_create_internal (
        raw_response,
        asset_response
        );
}

void orson_ai_proto_response_free(orson_ai_proto_response_t *orson_ai_proto_response) {
    if(NULL == orson_ai_proto_response){
        return ;
    }
    if(orson_ai_proto_response->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "orson_ai_proto_response_free");
        return ;
    }
    listEntry_t *listEntry;
    if (orson_ai_proto_response->raw_response) {
        free(orson_ai_proto_response->raw_response);
        orson_ai_proto_response->raw_response = NULL;
    }
    if (orson_ai_proto_response->asset_response) {
        asset_short_response_free(orson_ai_proto_response->asset_response);
        orson_ai_proto_response->asset_response = NULL;
    }
    free(orson_ai_proto_response);
}

cJSON *orson_ai_proto_response_convertToJSON(orson_ai_proto_response_t *orson_ai_proto_response) {
    cJSON *item = cJSON_CreateObject();

    // orson_ai_proto_response->raw_response
    if(orson_ai_proto_response->raw_response) {
    if(cJSON_AddStringToObject(item, "rawResponse", orson_ai_proto_response->raw_response) == NULL) {
    goto fail; //String
    }
    }


    // orson_ai_proto_response->asset_response
    if(orson_ai_proto_response->asset_response) {
    cJSON *asset_response_local_JSON = asset_short_response_convertToJSON(orson_ai_proto_response->asset_response);
    if(asset_response_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "assetResponse", asset_response_local_JSON);
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

orson_ai_proto_response_t *orson_ai_proto_response_parseFromJSON(cJSON *orson_ai_proto_responseJSON){

    orson_ai_proto_response_t *orson_ai_proto_response_local_var = NULL;

    // define the local variable for orson_ai_proto_response->asset_response
    asset_short_response_t *asset_response_local_nonprim = NULL;

    // orson_ai_proto_response->raw_response
    cJSON *raw_response = cJSON_GetObjectItemCaseSensitive(orson_ai_proto_responseJSON, "rawResponse");
    if (cJSON_IsNull(raw_response)) {
        raw_response = NULL;
    }
    if (raw_response) { 
    if(!cJSON_IsString(raw_response) && !cJSON_IsNull(raw_response))
    {
    goto end; //String
    }
    }

    // orson_ai_proto_response->asset_response
    cJSON *asset_response = cJSON_GetObjectItemCaseSensitive(orson_ai_proto_responseJSON, "assetResponse");
    if (cJSON_IsNull(asset_response)) {
        asset_response = NULL;
    }
    if (asset_response) { 
    asset_response_local_nonprim = asset_short_response_parseFromJSON(asset_response); //nonprimitive
    }


    orson_ai_proto_response_local_var = orson_ai_proto_response_create_internal (
        raw_response && !cJSON_IsNull(raw_response) ? strdup(raw_response->valuestring) : NULL,
        asset_response ? asset_response_local_nonprim : NULL
        );

    return orson_ai_proto_response_local_var;
end:
    if (asset_response_local_nonprim) {
        asset_short_response_free(asset_response_local_nonprim);
        asset_response_local_nonprim = NULL;
    }
    return NULL;

}
