/*
 * dimensions.h
 *
 * 
 */

#ifndef _dimensions_H_
#define _dimensions_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct dimensions_t dimensions_t;




typedef struct dimensions_t {
    double width; //numeric
    double height; //numeric
    double depth; //numeric
    double volume; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} dimensions_t;

__attribute__((deprecated)) dimensions_t *dimensions_create(
    double width,
    double height,
    double depth,
    double volume
);

void dimensions_free(dimensions_t *dimensions);

dimensions_t *dimensions_parseFromJSON(cJSON *dimensionsJSON);

cJSON *dimensions_convertToJSON(dimensions_t *dimensions);

#endif /* _dimensions_H_ */

