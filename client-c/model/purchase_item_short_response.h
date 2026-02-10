/*
 * purchase_item_short_response.h
 *
 * 
 */

#ifndef _purchase_item_short_response_H_
#define _purchase_item_short_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct purchase_item_short_response_t purchase_item_short_response_t;

#include "asset_short_response.h"



typedef struct purchase_item_short_response_t {
    long id; //numeric
    char *name; // string
    char *description; // string
    int tickets; //numeric
    struct asset_short_response_t *cover_asset; //model
    struct asset_short_response_t *promo_asset; //model
    int giftable; //boolean
    int assetable; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} purchase_item_short_response_t;

__attribute__((deprecated)) purchase_item_short_response_t *purchase_item_short_response_create(
    long id,
    char *name,
    char *description,
    int tickets,
    asset_short_response_t *cover_asset,
    asset_short_response_t *promo_asset,
    int giftable,
    int assetable
);

void purchase_item_short_response_free(purchase_item_short_response_t *purchase_item_short_response);

purchase_item_short_response_t *purchase_item_short_response_parseFromJSON(cJSON *purchase_item_short_responseJSON);

cJSON *purchase_item_short_response_convertToJSON(purchase_item_short_response_t *purchase_item_short_response);

#endif /* _purchase_item_short_response_H_ */

