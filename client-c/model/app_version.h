/*
 * app_version.h
 *
 * 
 */

#ifndef _app_version_H_
#define _app_version_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct app_version_t app_version_t;




typedef struct app_version_t {
    int minor_version; //numeric
    int major_version; //numeric
    int version_index; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} app_version_t;

__attribute__((deprecated)) app_version_t *app_version_create(
    int minor_version,
    int major_version,
    int version_index
);

void app_version_free(app_version_t *app_version);

app_version_t *app_version_parseFromJSON(cJSON *app_versionJSON);

cJSON *app_version_convertToJSON(app_version_t *app_version);

#endif /* _app_version_H_ */

