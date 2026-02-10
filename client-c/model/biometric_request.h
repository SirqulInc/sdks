/*
 * biometric_request.h
 *
 * 
 */

#ifndef _biometric_request_H_
#define _biometric_request_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct biometric_request_t biometric_request_t;

#include "biometric_image.h"
#include "fingerprint_biometric_image.h"



typedef struct biometric_request_t {
    struct biometric_image_t *face; //model
    list_t *fingerprints; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} biometric_request_t;

__attribute__((deprecated)) biometric_request_t *biometric_request_create(
    biometric_image_t *face,
    list_t *fingerprints
);

void biometric_request_free(biometric_request_t *biometric_request);

biometric_request_t *biometric_request_parseFromJSON(cJSON *biometric_requestJSON);

cJSON *biometric_request_convertToJSON(biometric_request_t *biometric_request);

#endif /* _biometric_request_H_ */

