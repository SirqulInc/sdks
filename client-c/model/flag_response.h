/*
 * flag_response.h
 *
 * 
 */

#ifndef _flag_response_H_
#define _flag_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct flag_response_t flag_response_t;




typedef struct flag_response_t {
    long flag_id; //numeric
    long flagable_id; //numeric
    char *flagable_type; // string
    char *flag_description; // string
    long created_date; //numeric
    long updated_date; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} flag_response_t;

__attribute__((deprecated)) flag_response_t *flag_response_create(
    long flag_id,
    long flagable_id,
    char *flagable_type,
    char *flag_description,
    long created_date,
    long updated_date
);

void flag_response_free(flag_response_t *flag_response);

flag_response_t *flag_response_parseFromJSON(cJSON *flag_responseJSON);

cJSON *flag_response_convertToJSON(flag_response_t *flag_response);

#endif /* _flag_response_H_ */

