#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "fingerprint_biometric_image.h"


char* fingerprint_biometric_image_position_ToString(sirqul_iot_platform_fingerprint_biometric_image_POSITION_e position) {
    char* positionArray[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    return positionArray[position];
}

sirqul_iot_platform_fingerprint_biometric_image_POSITION_e fingerprint_biometric_image_position_FromString(char* position){
    int stringToReturn = 0;
    char *positionArray[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    size_t sizeofArray = sizeof(positionArray) / sizeof(positionArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(position, positionArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static fingerprint_biometric_image_t *fingerprint_biometric_image_create_internal(
    sirqul_iot_platform_fingerprint_biometric_image_POSITION_e position,
    char *data,
    char *image_format
    ) {
    fingerprint_biometric_image_t *fingerprint_biometric_image_local_var = malloc(sizeof(fingerprint_biometric_image_t));
    if (!fingerprint_biometric_image_local_var) {
        return NULL;
    }
    fingerprint_biometric_image_local_var->position = position;
    fingerprint_biometric_image_local_var->data = data;
    fingerprint_biometric_image_local_var->image_format = image_format;

    fingerprint_biometric_image_local_var->_library_owned = 1;
    return fingerprint_biometric_image_local_var;
}

__attribute__((deprecated)) fingerprint_biometric_image_t *fingerprint_biometric_image_create(
    sirqul_iot_platform_fingerprint_biometric_image_POSITION_e position,
    char *data,
    char *image_format
    ) {
    return fingerprint_biometric_image_create_internal (
        position,
        data,
        image_format
        );
}

void fingerprint_biometric_image_free(fingerprint_biometric_image_t *fingerprint_biometric_image) {
    if(NULL == fingerprint_biometric_image){
        return ;
    }
    if(fingerprint_biometric_image->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "fingerprint_biometric_image_free");
        return ;
    }
    listEntry_t *listEntry;
    if (fingerprint_biometric_image->data) {
        free(fingerprint_biometric_image->data);
        fingerprint_biometric_image->data = NULL;
    }
    if (fingerprint_biometric_image->image_format) {
        free(fingerprint_biometric_image->image_format);
        fingerprint_biometric_image->image_format = NULL;
    }
    free(fingerprint_biometric_image);
}

cJSON *fingerprint_biometric_image_convertToJSON(fingerprint_biometric_image_t *fingerprint_biometric_image) {
    cJSON *item = cJSON_CreateObject();

    // fingerprint_biometric_image->position
    if(fingerprint_biometric_image->position != sirqul_iot_platform_fingerprint_biometric_image_POSITION_NULL) {
    if(cJSON_AddStringToObject(item, "position", fingerprint_biometric_image_position_ToString(fingerprint_biometric_image->position)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // fingerprint_biometric_image->data
    if(fingerprint_biometric_image->data) {
    if(cJSON_AddStringToObject(item, "data", fingerprint_biometric_image->data) == NULL) {
    goto fail; //String
    }
    }


    // fingerprint_biometric_image->image_format
    if(fingerprint_biometric_image->image_format) {
    if(cJSON_AddStringToObject(item, "imageFormat", fingerprint_biometric_image->image_format) == NULL) {
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

fingerprint_biometric_image_t *fingerprint_biometric_image_parseFromJSON(cJSON *fingerprint_biometric_imageJSON){

    fingerprint_biometric_image_t *fingerprint_biometric_image_local_var = NULL;

    // fingerprint_biometric_image->position
    cJSON *position = cJSON_GetObjectItemCaseSensitive(fingerprint_biometric_imageJSON, "position");
    if (cJSON_IsNull(position)) {
        position = NULL;
    }
    sirqul_iot_platform_fingerprint_biometric_image_POSITION_e positionVariable;
    if (position) { 
    if(!cJSON_IsString(position))
    {
    goto end; //Enum
    }
    positionVariable = fingerprint_biometric_image_position_FromString(position->valuestring);
    }

    // fingerprint_biometric_image->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(fingerprint_biometric_imageJSON, "data");
    if (cJSON_IsNull(data)) {
        data = NULL;
    }
    if (data) { 
    if(!cJSON_IsString(data) && !cJSON_IsNull(data))
    {
    goto end; //String
    }
    }

    // fingerprint_biometric_image->image_format
    cJSON *image_format = cJSON_GetObjectItemCaseSensitive(fingerprint_biometric_imageJSON, "imageFormat");
    if (cJSON_IsNull(image_format)) {
        image_format = NULL;
    }
    if (image_format) { 
    if(!cJSON_IsString(image_format) && !cJSON_IsNull(image_format))
    {
    goto end; //String
    }
    }


    fingerprint_biometric_image_local_var = fingerprint_biometric_image_create_internal (
        position ? positionVariable : sirqul_iot_platform_fingerprint_biometric_image_POSITION_NULL,
        data && !cJSON_IsNull(data) ? strdup(data->valuestring) : NULL,
        image_format && !cJSON_IsNull(image_format) ? strdup(image_format->valuestring) : NULL
        );

    return fingerprint_biometric_image_local_var;
end:
    return NULL;

}
