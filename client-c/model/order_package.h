/*
 * order_package.h
 *
 * 
 */

#ifndef _order_package_H_
#define _order_package_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct order_package_t order_package_t;




typedef struct order_package_t {
    int valid; //boolean
    char *package_type_name; // string
    int package_count; //numeric
    double cubic_feet; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} order_package_t;

__attribute__((deprecated)) order_package_t *order_package_create(
    int valid,
    char *package_type_name,
    int package_count,
    double cubic_feet
);

void order_package_free(order_package_t *order_package);

order_package_t *order_package_parseFromJSON(cJSON *order_packageJSON);

cJSON *order_package_convertToJSON(order_package_t *order_package);

#endif /* _order_package_H_ */

