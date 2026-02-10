#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "trilat_app_settings.h"


char* trilat_app_settings_processing_type_ToString(sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e processing_type) {
    char* processing_typeArray[] =  { "NULL", "DEFAULT", "FINGERPRINT", "FINGERPRINT_V2" };
    return processing_typeArray[processing_type];
}

sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e trilat_app_settings_processing_type_FromString(char* processing_type){
    int stringToReturn = 0;
    char *processing_typeArray[] =  { "NULL", "DEFAULT", "FINGERPRINT", "FINGERPRINT_V2" };
    size_t sizeofArray = sizeof(processing_typeArray) / sizeof(processing_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(processing_type, processing_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static trilat_app_settings_t *trilat_app_settings_create_internal(
    sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e processing_type,
    int max_sample_size,
    double min_rssi
    ) {
    trilat_app_settings_t *trilat_app_settings_local_var = malloc(sizeof(trilat_app_settings_t));
    if (!trilat_app_settings_local_var) {
        return NULL;
    }
    trilat_app_settings_local_var->processing_type = processing_type;
    trilat_app_settings_local_var->max_sample_size = max_sample_size;
    trilat_app_settings_local_var->min_rssi = min_rssi;

    trilat_app_settings_local_var->_library_owned = 1;
    return trilat_app_settings_local_var;
}

__attribute__((deprecated)) trilat_app_settings_t *trilat_app_settings_create(
    sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e processing_type,
    int max_sample_size,
    double min_rssi
    ) {
    return trilat_app_settings_create_internal (
        processing_type,
        max_sample_size,
        min_rssi
        );
}

void trilat_app_settings_free(trilat_app_settings_t *trilat_app_settings) {
    if(NULL == trilat_app_settings){
        return ;
    }
    if(trilat_app_settings->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "trilat_app_settings_free");
        return ;
    }
    listEntry_t *listEntry;
    free(trilat_app_settings);
}

cJSON *trilat_app_settings_convertToJSON(trilat_app_settings_t *trilat_app_settings) {
    cJSON *item = cJSON_CreateObject();

    // trilat_app_settings->processing_type
    if(trilat_app_settings->processing_type != sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "processingType", trilat_app_settings_processing_type_ToString(trilat_app_settings->processing_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // trilat_app_settings->max_sample_size
    if(trilat_app_settings->max_sample_size) {
    if(cJSON_AddNumberToObject(item, "maxSampleSize", trilat_app_settings->max_sample_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // trilat_app_settings->min_rssi
    if(trilat_app_settings->min_rssi) {
    if(cJSON_AddNumberToObject(item, "minRSSI", trilat_app_settings->min_rssi) == NULL) {
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

trilat_app_settings_t *trilat_app_settings_parseFromJSON(cJSON *trilat_app_settingsJSON){

    trilat_app_settings_t *trilat_app_settings_local_var = NULL;

    // trilat_app_settings->processing_type
    cJSON *processing_type = cJSON_GetObjectItemCaseSensitive(trilat_app_settingsJSON, "processingType");
    if (cJSON_IsNull(processing_type)) {
        processing_type = NULL;
    }
    sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_e processing_typeVariable;
    if (processing_type) { 
    if(!cJSON_IsString(processing_type))
    {
    goto end; //Enum
    }
    processing_typeVariable = trilat_app_settings_processing_type_FromString(processing_type->valuestring);
    }

    // trilat_app_settings->max_sample_size
    cJSON *max_sample_size = cJSON_GetObjectItemCaseSensitive(trilat_app_settingsJSON, "maxSampleSize");
    if (cJSON_IsNull(max_sample_size)) {
        max_sample_size = NULL;
    }
    if (max_sample_size) { 
    if(!cJSON_IsNumber(max_sample_size))
    {
    goto end; //Numeric
    }
    }

    // trilat_app_settings->min_rssi
    cJSON *min_rssi = cJSON_GetObjectItemCaseSensitive(trilat_app_settingsJSON, "minRSSI");
    if (cJSON_IsNull(min_rssi)) {
        min_rssi = NULL;
    }
    if (min_rssi) { 
    if(!cJSON_IsNumber(min_rssi))
    {
    goto end; //Numeric
    }
    }


    trilat_app_settings_local_var = trilat_app_settings_create_internal (
        processing_type ? processing_typeVariable : sirqul_iot_platform_trilat_app_settings_PROCESSINGTYPE_NULL,
        max_sample_size ? max_sample_size->valuedouble : 0,
        min_rssi ? min_rssi->valuedouble : 0
        );

    return trilat_app_settings_local_var;
end:
    return NULL;

}
