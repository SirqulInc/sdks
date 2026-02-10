#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "biometric_request.h"



static biometric_request_t *biometric_request_create_internal(
    biometric_image_t *face,
    list_t *fingerprints
    ) {
    biometric_request_t *biometric_request_local_var = malloc(sizeof(biometric_request_t));
    if (!biometric_request_local_var) {
        return NULL;
    }
    biometric_request_local_var->face = face;
    biometric_request_local_var->fingerprints = fingerprints;

    biometric_request_local_var->_library_owned = 1;
    return biometric_request_local_var;
}

__attribute__((deprecated)) biometric_request_t *biometric_request_create(
    biometric_image_t *face,
    list_t *fingerprints
    ) {
    return biometric_request_create_internal (
        face,
        fingerprints
        );
}

void biometric_request_free(biometric_request_t *biometric_request) {
    if(NULL == biometric_request){
        return ;
    }
    if(biometric_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "biometric_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (biometric_request->face) {
        biometric_image_free(biometric_request->face);
        biometric_request->face = NULL;
    }
    if (biometric_request->fingerprints) {
        list_ForEach(listEntry, biometric_request->fingerprints) {
            fingerprint_biometric_image_free(listEntry->data);
        }
        list_freeList(biometric_request->fingerprints);
        biometric_request->fingerprints = NULL;
    }
    free(biometric_request);
}

cJSON *biometric_request_convertToJSON(biometric_request_t *biometric_request) {
    cJSON *item = cJSON_CreateObject();

    // biometric_request->face
    if(biometric_request->face) {
    cJSON *face_local_JSON = biometric_image_convertToJSON(biometric_request->face);
    if(face_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "face", face_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // biometric_request->fingerprints
    if(biometric_request->fingerprints) {
    cJSON *fingerprints = cJSON_AddArrayToObject(item, "fingerprints");
    if(fingerprints == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *fingerprintsListEntry;
    if (biometric_request->fingerprints) {
    list_ForEach(fingerprintsListEntry, biometric_request->fingerprints) {
    cJSON *itemLocal = fingerprint_biometric_image_convertToJSON(fingerprintsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(fingerprints, itemLocal);
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

biometric_request_t *biometric_request_parseFromJSON(cJSON *biometric_requestJSON){

    biometric_request_t *biometric_request_local_var = NULL;

    // define the local variable for biometric_request->face
    biometric_image_t *face_local_nonprim = NULL;

    // define the local list for biometric_request->fingerprints
    list_t *fingerprintsList = NULL;

    // biometric_request->face
    cJSON *face = cJSON_GetObjectItemCaseSensitive(biometric_requestJSON, "face");
    if (cJSON_IsNull(face)) {
        face = NULL;
    }
    if (face) { 
    face_local_nonprim = biometric_image_parseFromJSON(face); //nonprimitive
    }

    // biometric_request->fingerprints
    cJSON *fingerprints = cJSON_GetObjectItemCaseSensitive(biometric_requestJSON, "fingerprints");
    if (cJSON_IsNull(fingerprints)) {
        fingerprints = NULL;
    }
    if (fingerprints) { 
    cJSON *fingerprints_local_nonprimitive = NULL;
    if(!cJSON_IsArray(fingerprints)){
        goto end; //nonprimitive container
    }

    fingerprintsList = list_createList();

    cJSON_ArrayForEach(fingerprints_local_nonprimitive,fingerprints )
    {
        if(!cJSON_IsObject(fingerprints_local_nonprimitive)){
            goto end;
        }
        fingerprint_biometric_image_t *fingerprintsItem = fingerprint_biometric_image_parseFromJSON(fingerprints_local_nonprimitive);

        list_addElement(fingerprintsList, fingerprintsItem);
    }
    }


    biometric_request_local_var = biometric_request_create_internal (
        face ? face_local_nonprim : NULL,
        fingerprints ? fingerprintsList : NULL
        );

    return biometric_request_local_var;
end:
    if (face_local_nonprim) {
        biometric_image_free(face_local_nonprim);
        face_local_nonprim = NULL;
    }
    if (fingerprintsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, fingerprintsList) {
            fingerprint_biometric_image_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(fingerprintsList);
        fingerprintsList = NULL;
    }
    return NULL;

}
