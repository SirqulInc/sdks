#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "trilat_cache_sample.h"


char* trilat_cache_sample_probe_type_ToString(sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e probe_type) {
    char* probe_typeArray[] =  { "NULL", "WIFI_PROBE_REQUEST", "IBEACON", "BLE", "UNKNOWN" };
    return probe_typeArray[probe_type];
}

sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e trilat_cache_sample_probe_type_FromString(char* probe_type){
    int stringToReturn = 0;
    char *probe_typeArray[] =  { "NULL", "WIFI_PROBE_REQUEST", "IBEACON", "BLE", "UNKNOWN" };
    size_t sizeofArray = sizeof(probe_typeArray) / sizeof(probe_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(probe_type, probe_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static trilat_cache_sample_t *trilat_cache_sample_create_internal(
    char *avatar_id,
    char *device_id,
    list_t *rssi,
    double filtered_rssi,
    long time,
    char *network_name,
    int randomized_id,
    char *device_signature,
    char *alternate_id,
    char *type,
    sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e probe_type,
    double avg_rssi
    ) {
    trilat_cache_sample_t *trilat_cache_sample_local_var = malloc(sizeof(trilat_cache_sample_t));
    if (!trilat_cache_sample_local_var) {
        return NULL;
    }
    trilat_cache_sample_local_var->avatar_id = avatar_id;
    trilat_cache_sample_local_var->device_id = device_id;
    trilat_cache_sample_local_var->rssi = rssi;
    trilat_cache_sample_local_var->filtered_rssi = filtered_rssi;
    trilat_cache_sample_local_var->time = time;
    trilat_cache_sample_local_var->network_name = network_name;
    trilat_cache_sample_local_var->randomized_id = randomized_id;
    trilat_cache_sample_local_var->device_signature = device_signature;
    trilat_cache_sample_local_var->alternate_id = alternate_id;
    trilat_cache_sample_local_var->type = type;
    trilat_cache_sample_local_var->probe_type = probe_type;
    trilat_cache_sample_local_var->avg_rssi = avg_rssi;

    trilat_cache_sample_local_var->_library_owned = 1;
    return trilat_cache_sample_local_var;
}

__attribute__((deprecated)) trilat_cache_sample_t *trilat_cache_sample_create(
    char *avatar_id,
    char *device_id,
    list_t *rssi,
    double filtered_rssi,
    long time,
    char *network_name,
    int randomized_id,
    char *device_signature,
    char *alternate_id,
    char *type,
    sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e probe_type,
    double avg_rssi
    ) {
    return trilat_cache_sample_create_internal (
        avatar_id,
        device_id,
        rssi,
        filtered_rssi,
        time,
        network_name,
        randomized_id,
        device_signature,
        alternate_id,
        type,
        probe_type,
        avg_rssi
        );
}

void trilat_cache_sample_free(trilat_cache_sample_t *trilat_cache_sample) {
    if(NULL == trilat_cache_sample){
        return ;
    }
    if(trilat_cache_sample->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "trilat_cache_sample_free");
        return ;
    }
    listEntry_t *listEntry;
    if (trilat_cache_sample->avatar_id) {
        free(trilat_cache_sample->avatar_id);
        trilat_cache_sample->avatar_id = NULL;
    }
    if (trilat_cache_sample->device_id) {
        free(trilat_cache_sample->device_id);
        trilat_cache_sample->device_id = NULL;
    }
    if (trilat_cache_sample->rssi) {
        list_ForEach(listEntry, trilat_cache_sample->rssi) {
            free(listEntry->data);
        }
        list_freeList(trilat_cache_sample->rssi);
        trilat_cache_sample->rssi = NULL;
    }
    if (trilat_cache_sample->network_name) {
        free(trilat_cache_sample->network_name);
        trilat_cache_sample->network_name = NULL;
    }
    if (trilat_cache_sample->device_signature) {
        free(trilat_cache_sample->device_signature);
        trilat_cache_sample->device_signature = NULL;
    }
    if (trilat_cache_sample->alternate_id) {
        free(trilat_cache_sample->alternate_id);
        trilat_cache_sample->alternate_id = NULL;
    }
    if (trilat_cache_sample->type) {
        free(trilat_cache_sample->type);
        trilat_cache_sample->type = NULL;
    }
    free(trilat_cache_sample);
}

cJSON *trilat_cache_sample_convertToJSON(trilat_cache_sample_t *trilat_cache_sample) {
    cJSON *item = cJSON_CreateObject();

    // trilat_cache_sample->avatar_id
    if(trilat_cache_sample->avatar_id) {
    if(cJSON_AddStringToObject(item, "avatarId", trilat_cache_sample->avatar_id) == NULL) {
    goto fail; //String
    }
    }


    // trilat_cache_sample->device_id
    if(trilat_cache_sample->device_id) {
    if(cJSON_AddStringToObject(item, "deviceId", trilat_cache_sample->device_id) == NULL) {
    goto fail; //String
    }
    }


    // trilat_cache_sample->rssi
    if(trilat_cache_sample->rssi) {
    cJSON *rssi = cJSON_AddArrayToObject(item, "rssi");
    if(rssi == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *rssiListEntry;
    list_ForEach(rssiListEntry, trilat_cache_sample->rssi) {
    if(cJSON_AddNumberToObject(rssi, "", *(double *)rssiListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // trilat_cache_sample->filtered_rssi
    if(trilat_cache_sample->filtered_rssi) {
    if(cJSON_AddNumberToObject(item, "filteredRssi", trilat_cache_sample->filtered_rssi) == NULL) {
    goto fail; //Numeric
    }
    }


    // trilat_cache_sample->time
    if(trilat_cache_sample->time) {
    if(cJSON_AddNumberToObject(item, "time", trilat_cache_sample->time) == NULL) {
    goto fail; //Numeric
    }
    }


    // trilat_cache_sample->network_name
    if(trilat_cache_sample->network_name) {
    if(cJSON_AddStringToObject(item, "networkName", trilat_cache_sample->network_name) == NULL) {
    goto fail; //String
    }
    }


    // trilat_cache_sample->randomized_id
    if(trilat_cache_sample->randomized_id) {
    if(cJSON_AddBoolToObject(item, "randomizedId", trilat_cache_sample->randomized_id) == NULL) {
    goto fail; //Bool
    }
    }


    // trilat_cache_sample->device_signature
    if(trilat_cache_sample->device_signature) {
    if(cJSON_AddStringToObject(item, "deviceSignature", trilat_cache_sample->device_signature) == NULL) {
    goto fail; //String
    }
    }


    // trilat_cache_sample->alternate_id
    if(trilat_cache_sample->alternate_id) {
    if(cJSON_AddStringToObject(item, "alternateId", trilat_cache_sample->alternate_id) == NULL) {
    goto fail; //String
    }
    }


    // trilat_cache_sample->type
    if(trilat_cache_sample->type) {
    if(cJSON_AddStringToObject(item, "type", trilat_cache_sample->type) == NULL) {
    goto fail; //String
    }
    }


    // trilat_cache_sample->probe_type
    if(trilat_cache_sample->probe_type != sirqul_iot_platform_trilat_cache_sample_PROBETYPE_NULL) {
    if(cJSON_AddStringToObject(item, "probeType", trilat_cache_sample_probe_type_ToString(trilat_cache_sample->probe_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // trilat_cache_sample->avg_rssi
    if(trilat_cache_sample->avg_rssi) {
    if(cJSON_AddNumberToObject(item, "avgRssi", trilat_cache_sample->avg_rssi) == NULL) {
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

trilat_cache_sample_t *trilat_cache_sample_parseFromJSON(cJSON *trilat_cache_sampleJSON){

    trilat_cache_sample_t *trilat_cache_sample_local_var = NULL;

    // define the local list for trilat_cache_sample->rssi
    list_t *rssiList = NULL;

    // trilat_cache_sample->avatar_id
    cJSON *avatar_id = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "avatarId");
    if (cJSON_IsNull(avatar_id)) {
        avatar_id = NULL;
    }
    if (avatar_id) { 
    if(!cJSON_IsString(avatar_id) && !cJSON_IsNull(avatar_id))
    {
    goto end; //String
    }
    }

    // trilat_cache_sample->device_id
    cJSON *device_id = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "deviceId");
    if (cJSON_IsNull(device_id)) {
        device_id = NULL;
    }
    if (device_id) { 
    if(!cJSON_IsString(device_id) && !cJSON_IsNull(device_id))
    {
    goto end; //String
    }
    }

    // trilat_cache_sample->rssi
    cJSON *rssi = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "rssi");
    if (cJSON_IsNull(rssi)) {
        rssi = NULL;
    }
    if (rssi) { 
    cJSON *rssi_local = NULL;
    if(!cJSON_IsArray(rssi)) {
        goto end;//primitive container
    }
    rssiList = list_createList();

    cJSON_ArrayForEach(rssi_local, rssi)
    {
        if(!cJSON_IsNumber(rssi_local))
        {
            goto end;
        }
        double *rssi_local_value = calloc(1, sizeof(double));
        if(!rssi_local_value)
        {
            goto end;
        }
        *rssi_local_value = rssi_local->valuedouble;
        list_addElement(rssiList , rssi_local_value);
    }
    }

    // trilat_cache_sample->filtered_rssi
    cJSON *filtered_rssi = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "filteredRssi");
    if (cJSON_IsNull(filtered_rssi)) {
        filtered_rssi = NULL;
    }
    if (filtered_rssi) { 
    if(!cJSON_IsNumber(filtered_rssi))
    {
    goto end; //Numeric
    }
    }

    // trilat_cache_sample->time
    cJSON *time = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "time");
    if (cJSON_IsNull(time)) {
        time = NULL;
    }
    if (time) { 
    if(!cJSON_IsNumber(time))
    {
    goto end; //Numeric
    }
    }

    // trilat_cache_sample->network_name
    cJSON *network_name = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "networkName");
    if (cJSON_IsNull(network_name)) {
        network_name = NULL;
    }
    if (network_name) { 
    if(!cJSON_IsString(network_name) && !cJSON_IsNull(network_name))
    {
    goto end; //String
    }
    }

    // trilat_cache_sample->randomized_id
    cJSON *randomized_id = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "randomizedId");
    if (cJSON_IsNull(randomized_id)) {
        randomized_id = NULL;
    }
    if (randomized_id) { 
    if(!cJSON_IsBool(randomized_id))
    {
    goto end; //Bool
    }
    }

    // trilat_cache_sample->device_signature
    cJSON *device_signature = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "deviceSignature");
    if (cJSON_IsNull(device_signature)) {
        device_signature = NULL;
    }
    if (device_signature) { 
    if(!cJSON_IsString(device_signature) && !cJSON_IsNull(device_signature))
    {
    goto end; //String
    }
    }

    // trilat_cache_sample->alternate_id
    cJSON *alternate_id = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "alternateId");
    if (cJSON_IsNull(alternate_id)) {
        alternate_id = NULL;
    }
    if (alternate_id) { 
    if(!cJSON_IsString(alternate_id) && !cJSON_IsNull(alternate_id))
    {
    goto end; //String
    }
    }

    // trilat_cache_sample->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "type");
    if (cJSON_IsNull(type)) {
        type = NULL;
    }
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // trilat_cache_sample->probe_type
    cJSON *probe_type = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "probeType");
    if (cJSON_IsNull(probe_type)) {
        probe_type = NULL;
    }
    sirqul_iot_platform_trilat_cache_sample_PROBETYPE_e probe_typeVariable;
    if (probe_type) { 
    if(!cJSON_IsString(probe_type))
    {
    goto end; //Enum
    }
    probe_typeVariable = trilat_cache_sample_probe_type_FromString(probe_type->valuestring);
    }

    // trilat_cache_sample->avg_rssi
    cJSON *avg_rssi = cJSON_GetObjectItemCaseSensitive(trilat_cache_sampleJSON, "avgRssi");
    if (cJSON_IsNull(avg_rssi)) {
        avg_rssi = NULL;
    }
    if (avg_rssi) { 
    if(!cJSON_IsNumber(avg_rssi))
    {
    goto end; //Numeric
    }
    }


    trilat_cache_sample_local_var = trilat_cache_sample_create_internal (
        avatar_id && !cJSON_IsNull(avatar_id) ? strdup(avatar_id->valuestring) : NULL,
        device_id && !cJSON_IsNull(device_id) ? strdup(device_id->valuestring) : NULL,
        rssi ? rssiList : NULL,
        filtered_rssi ? filtered_rssi->valuedouble : 0,
        time ? time->valuedouble : 0,
        network_name && !cJSON_IsNull(network_name) ? strdup(network_name->valuestring) : NULL,
        randomized_id ? randomized_id->valueint : 0,
        device_signature && !cJSON_IsNull(device_signature) ? strdup(device_signature->valuestring) : NULL,
        alternate_id && !cJSON_IsNull(alternate_id) ? strdup(alternate_id->valuestring) : NULL,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        probe_type ? probe_typeVariable : sirqul_iot_platform_trilat_cache_sample_PROBETYPE_NULL,
        avg_rssi ? avg_rssi->valuedouble : 0
        );

    return trilat_cache_sample_local_var;
end:
    if (rssiList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, rssiList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(rssiList);
        rssiList = NULL;
    }
    return NULL;

}
