/*
 * flag_threshold.h
 *
 * 
 */

#ifndef _flag_threshold_H_
#define _flag_threshold_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct flag_threshold_t flag_threshold_t;

#include "application.h"



typedef struct flag_threshold_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    long threshold; //numeric
    char *flagable_object_type; // string
    struct application_t *application; //model

    int _library_owned; // Is the library responsible for freeing this object?
} flag_threshold_t;

__attribute__((deprecated)) flag_threshold_t *flag_threshold_create(
    long id,
    int active,
    int valid,
    long threshold,
    char *flagable_object_type,
    application_t *application
);

void flag_threshold_free(flag_threshold_t *flag_threshold);

flag_threshold_t *flag_threshold_parseFromJSON(cJSON *flag_thresholdJSON);

cJSON *flag_threshold_convertToJSON(flag_threshold_t *flag_threshold);

#endif /* _flag_threshold_H_ */

