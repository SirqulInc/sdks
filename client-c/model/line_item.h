/*
 * line_item.h
 *
 * 
 */

#ifndef _line_item_H_
#define _line_item_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct line_item_t line_item_t;




typedef struct line_item_t {
    char *description; // string
    char *item; // string
    int price_per_item; //numeric
    int total; //numeric
    int tax; //numeric
    int quantity; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} line_item_t;

__attribute__((deprecated)) line_item_t *line_item_create(
    char *description,
    char *item,
    int price_per_item,
    int total,
    int tax,
    int quantity
);

void line_item_free(line_item_t *line_item);

line_item_t *line_item_parseFromJSON(cJSON *line_itemJSON);

cJSON *line_item_convertToJSON(line_item_t *line_item);

#endif /* _line_item_H_ */

