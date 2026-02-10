/*
 * category_response.h
 *
 * 
 */

#ifndef _category_response_H_
#define _category_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct category_response_t category_response_t;

#include "asset_short_response.h"



typedef struct category_response_t {
    long category_id; //numeric
    char *name; // string
    char *display; // string
    long sub_category_count; //numeric
    long parent_id; //numeric
    char *parent_name; // string
    char *description; // string
    int active; //boolean
    struct asset_short_response_t *asset; //model
    long favorite_id; //numeric
    int favorite; //boolean
    long application_id; //numeric
    char *type; // string
    char *external_id; // string
    char *external_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} category_response_t;

__attribute__((deprecated)) category_response_t *category_response_create(
    long category_id,
    char *name,
    char *display,
    long sub_category_count,
    long parent_id,
    char *parent_name,
    char *description,
    int active,
    asset_short_response_t *asset,
    long favorite_id,
    int favorite,
    long application_id,
    char *type,
    char *external_id,
    char *external_type
);

void category_response_free(category_response_t *category_response);

category_response_t *category_response_parseFromJSON(cJSON *category_responseJSON);

cJSON *category_response_convertToJSON(category_response_t *category_response);

#endif /* _category_response_H_ */

