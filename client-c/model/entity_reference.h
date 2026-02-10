/*
 * entity_reference.h
 *
 * 
 */

#ifndef _entity_reference_H_
#define _entity_reference_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct entity_reference_t entity_reference_t;




typedef struct entity_reference_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *entity_type; // string
    long master_entity_id; //numeric
    char *slave_uid; // string
    long slave_entity_id; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} entity_reference_t;

__attribute__((deprecated)) entity_reference_t *entity_reference_create(
    long id,
    int active,
    int valid,
    char *entity_type,
    long master_entity_id,
    char *slave_uid,
    long slave_entity_id
);

void entity_reference_free(entity_reference_t *entity_reference);

entity_reference_t *entity_reference_parseFromJSON(cJSON *entity_referenceJSON);

cJSON *entity_reference_convertToJSON(entity_reference_t *entity_reference);

#endif /* _entity_reference_H_ */

