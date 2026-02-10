/*
 * promo_code.h
 *
 * 
 */

#ifndef _promo_code_H_
#define _promo_code_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct promo_code_t promo_code_t;




typedef struct promo_code_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *code; // string
    char *name; // string
    int days; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} promo_code_t;

__attribute__((deprecated)) promo_code_t *promo_code_create(
    long id,
    int active,
    int valid,
    char *code,
    char *name,
    int days
);

void promo_code_free(promo_code_t *promo_code);

promo_code_t *promo_code_parseFromJSON(cJSON *promo_codeJSON);

cJSON *promo_code_convertToJSON(promo_code_t *promo_code);

#endif /* _promo_code_H_ */

