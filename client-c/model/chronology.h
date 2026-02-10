/*
 * chronology.h
 *
 * 
 */

#ifndef _chronology_H_
#define _chronology_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct chronology_t chronology_t;

#include "date_time_zone.h"



typedef struct chronology_t {
    struct date_time_zone_t *zone; //model

    int _library_owned; // Is the library responsible for freeing this object?
} chronology_t;

__attribute__((deprecated)) chronology_t *chronology_create(
    date_time_zone_t *zone
);

void chronology_free(chronology_t *chronology);

chronology_t *chronology_parseFromJSON(cJSON *chronologyJSON);

cJSON *chronology_convertToJSON(chronology_t *chronology);

#endif /* _chronology_H_ */

