/*
 * product_response.h
 *
 * 
 */

#ifndef _product_response_H_
#define _product_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct product_response_t product_response_t;

#include "size_group_response.h"



typedef struct product_response_t {
    char *brand; // string
    char *product_type; // string
    char *condition; // string
    char *isbn; // string
    char *asin; // string
    list_t *catalog_numbers; //primitive container
    char *department; // string
    list_t *features; //primitive container
    double minimum_price; //numeric
    double width; //numeric
    double height; //numeric
    double depth; //numeric
    double weight; //numeric
    char *unit; // string
    char *studio; // string
    char *parental_rating; // string
    long publish_date; //numeric
    long availability_date; //numeric
    struct size_group_response_t *size; //model

    int _library_owned; // Is the library responsible for freeing this object?
} product_response_t;

__attribute__((deprecated)) product_response_t *product_response_create(
    char *brand,
    char *product_type,
    char *condition,
    char *isbn,
    char *asin,
    list_t *catalog_numbers,
    char *department,
    list_t *features,
    double minimum_price,
    double width,
    double height,
    double depth,
    double weight,
    char *unit,
    char *studio,
    char *parental_rating,
    long publish_date,
    long availability_date,
    size_group_response_t *size
);

void product_response_free(product_response_t *product_response);

product_response_t *product_response_parseFromJSON(cJSON *product_responseJSON);

cJSON *product_response_convertToJSON(product_response_t *product_response);

#endif /* _product_response_H_ */

