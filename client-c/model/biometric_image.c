#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "biometric_image.h"


char* biometric_image_position_ToString(sirqul_iot_platform_biometric_image_POSITION_e position) {
    char* positionArray[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    return positionArray[position];
}

sirqul_iot_platform_biometric_image_POSITION_e biometric_image_position_FromString(char* position){
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

static biometric_image_t *biometric_image_create_internal(
    sirqul_iot_platform_biometric_image_POSITION_e position,
    char *data
    ) {
    biometric_image_t *biometric_image_local_var = malloc(sizeof(biometric_image_t));
    if (!biometric_image_local_var) {
        return NULL;
    }
    biometric_image_local_var->position = position;
    biometric_image_local_var->data = data;

    biometric_image_local_var->_library_owned = 1;
    return biometric_image_local_var;
}

__attribute__((deprecated)) biometric_image_t *biometric_image_create(
    sirqul_iot_platform_biometric_image_POSITION_e position,
    char *data
    ) {
    return biometric_image_create_internal (
        position,
        data
        );
}

void biometric_image_free(biometric_image_t *biometric_image) {
    if(NULL == biometric_image){
        return ;
    }
    if(biometric_image->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "biometric_image_free");
        return ;
    }
    listEntry_t *listEntry;
    if (biometric_image->data) {
        free(biometric_image->data);
        biometric_image->data = NULL;
    }
    free(biometric_image);
}

cJSON *biometric_image_convertToJSON(biometric_image_t *biometric_image) {
    cJSON *item = cJSON_CreateObject();

    // biometric_image->position
    if(biometric_image->position != sirqul_iot_platform_biometric_image_POSITION_NULL) {
    if(cJSON_AddStringToObject(item, "position", biometric_image_position_ToString(biometric_image->position)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // biometric_image->data
    if(biometric_image->data) {
    if(cJSON_AddStringToObject(item, "data", biometric_image->data) == NULL) {
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

biometric_image_t *biometric_image_parseFromJSON(cJSON *biometric_imageJSON){

    biometric_image_t *biometric_image_local_var = NULL;

    // biometric_image->position
    cJSON *position = cJSON_GetObjectItemCaseSensitive(biometric_imageJSON, "position");
    if (cJSON_IsNull(position)) {
        position = NULL;
    }
    sirqul_iot_platform_biometric_image_POSITION_e positionVariable;
    if (position) { 
    if(!cJSON_IsString(position))
    {
    goto end; //Enum
    }
    positionVariable = biometric_image_position_FromString(position->valuestring);
    }

    // biometric_image->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(biometric_imageJSON, "data");
    if (cJSON_IsNull(data)) {
        data = NULL;
    }
    if (data) { 
    if(!cJSON_IsString(data) && !cJSON_IsNull(data))
    {
    goto end; //String
    }
    }


    biometric_image_local_var = biometric_image_create_internal (
        position ? positionVariable : sirqul_iot_platform_biometric_image_POSITION_NULL,
        data && !cJSON_IsNull(data) ? strdup(data->valuestring) : NULL
        );

    return biometric_image_local_var;
end:
    return NULL;

}
