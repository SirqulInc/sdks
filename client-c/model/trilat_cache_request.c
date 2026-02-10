#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "trilat_cache_request.h"



static trilat_cache_request_t *trilat_cache_request_create_internal(
    char *udid,
    long source_time,
    int minimum_sample_size,
    list_t *samples
    ) {
    trilat_cache_request_t *trilat_cache_request_local_var = malloc(sizeof(trilat_cache_request_t));
    if (!trilat_cache_request_local_var) {
        return NULL;
    }
    trilat_cache_request_local_var->udid = udid;
    trilat_cache_request_local_var->source_time = source_time;
    trilat_cache_request_local_var->minimum_sample_size = minimum_sample_size;
    trilat_cache_request_local_var->samples = samples;

    trilat_cache_request_local_var->_library_owned = 1;
    return trilat_cache_request_local_var;
}

__attribute__((deprecated)) trilat_cache_request_t *trilat_cache_request_create(
    char *udid,
    long source_time,
    int minimum_sample_size,
    list_t *samples
    ) {
    return trilat_cache_request_create_internal (
        udid,
        source_time,
        minimum_sample_size,
        samples
        );
}

void trilat_cache_request_free(trilat_cache_request_t *trilat_cache_request) {
    if(NULL == trilat_cache_request){
        return ;
    }
    if(trilat_cache_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "trilat_cache_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (trilat_cache_request->udid) {
        free(trilat_cache_request->udid);
        trilat_cache_request->udid = NULL;
    }
    if (trilat_cache_request->samples) {
        list_ForEach(listEntry, trilat_cache_request->samples) {
            trilat_cache_sample_free(listEntry->data);
        }
        list_freeList(trilat_cache_request->samples);
        trilat_cache_request->samples = NULL;
    }
    free(trilat_cache_request);
}

cJSON *trilat_cache_request_convertToJSON(trilat_cache_request_t *trilat_cache_request) {
    cJSON *item = cJSON_CreateObject();

    // trilat_cache_request->udid
    if(trilat_cache_request->udid) {
    if(cJSON_AddStringToObject(item, "udid", trilat_cache_request->udid) == NULL) {
    goto fail; //String
    }
    }


    // trilat_cache_request->source_time
    if(trilat_cache_request->source_time) {
    if(cJSON_AddNumberToObject(item, "sourceTime", trilat_cache_request->source_time) == NULL) {
    goto fail; //Numeric
    }
    }


    // trilat_cache_request->minimum_sample_size
    if(trilat_cache_request->minimum_sample_size) {
    if(cJSON_AddNumberToObject(item, "minimumSampleSize", trilat_cache_request->minimum_sample_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // trilat_cache_request->samples
    if(trilat_cache_request->samples) {
    cJSON *samples = cJSON_AddArrayToObject(item, "samples");
    if(samples == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *samplesListEntry;
    if (trilat_cache_request->samples) {
    list_ForEach(samplesListEntry, trilat_cache_request->samples) {
    cJSON *itemLocal = trilat_cache_sample_convertToJSON(samplesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(samples, itemLocal);
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

trilat_cache_request_t *trilat_cache_request_parseFromJSON(cJSON *trilat_cache_requestJSON){

    trilat_cache_request_t *trilat_cache_request_local_var = NULL;

    // define the local list for trilat_cache_request->samples
    list_t *samplesList = NULL;

    // trilat_cache_request->udid
    cJSON *udid = cJSON_GetObjectItemCaseSensitive(trilat_cache_requestJSON, "udid");
    if (cJSON_IsNull(udid)) {
        udid = NULL;
    }
    if (udid) { 
    if(!cJSON_IsString(udid) && !cJSON_IsNull(udid))
    {
    goto end; //String
    }
    }

    // trilat_cache_request->source_time
    cJSON *source_time = cJSON_GetObjectItemCaseSensitive(trilat_cache_requestJSON, "sourceTime");
    if (cJSON_IsNull(source_time)) {
        source_time = NULL;
    }
    if (source_time) { 
    if(!cJSON_IsNumber(source_time))
    {
    goto end; //Numeric
    }
    }

    // trilat_cache_request->minimum_sample_size
    cJSON *minimum_sample_size = cJSON_GetObjectItemCaseSensitive(trilat_cache_requestJSON, "minimumSampleSize");
    if (cJSON_IsNull(minimum_sample_size)) {
        minimum_sample_size = NULL;
    }
    if (minimum_sample_size) { 
    if(!cJSON_IsNumber(minimum_sample_size))
    {
    goto end; //Numeric
    }
    }

    // trilat_cache_request->samples
    cJSON *samples = cJSON_GetObjectItemCaseSensitive(trilat_cache_requestJSON, "samples");
    if (cJSON_IsNull(samples)) {
        samples = NULL;
    }
    if (samples) { 
    cJSON *samples_local_nonprimitive = NULL;
    if(!cJSON_IsArray(samples)){
        goto end; //nonprimitive container
    }

    samplesList = list_createList();

    cJSON_ArrayForEach(samples_local_nonprimitive,samples )
    {
        if(!cJSON_IsObject(samples_local_nonprimitive)){
            goto end;
        }
        trilat_cache_sample_t *samplesItem = trilat_cache_sample_parseFromJSON(samples_local_nonprimitive);

        list_addElement(samplesList, samplesItem);
    }
    }


    trilat_cache_request_local_var = trilat_cache_request_create_internal (
        udid && !cJSON_IsNull(udid) ? strdup(udid->valuestring) : NULL,
        source_time ? source_time->valuedouble : 0,
        minimum_sample_size ? minimum_sample_size->valuedouble : 0,
        samples ? samplesList : NULL
        );

    return trilat_cache_request_local_var;
end:
    if (samplesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, samplesList) {
            trilat_cache_sample_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(samplesList);
        samplesList = NULL;
    }
    return NULL;

}
