/*
 * rule_list_response.h
 *
 * 
 */

#ifndef _rule_list_response_H_
#define _rule_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rule_list_response_t rule_list_response_t;

#include "rule_response.h"



typedef struct rule_list_response_t {
    int start; //numeric
    int limit; //numeric
    long count_total; //numeric
    list_t *items; //nonprimitive container
    int count; //numeric
    int has_more_results; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} rule_list_response_t;

__attribute__((deprecated)) rule_list_response_t *rule_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int count,
    int has_more_results
);

void rule_list_response_free(rule_list_response_t *rule_list_response);

rule_list_response_t *rule_list_response_parseFromJSON(cJSON *rule_list_responseJSON);

cJSON *rule_list_response_convertToJSON(rule_list_response_t *rule_list_response);

#endif /* _rule_list_response_H_ */

