/*
 * rule_response.h
 *
 * 
 */

#ifndef _rule_response_H_
#define _rule_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct rule_response_t rule_response_t;




typedef struct rule_response_t {
    long rule_id; //numeric
    char *title; // string
    char *description; // string
    long rule_type_id; //numeric
    char *rule_type_title; // string
    char *rule_type_description; // string
    char *rule_value_type; // string
    char *rule_value; // string

    int _library_owned; // Is the library responsible for freeing this object?
} rule_response_t;

__attribute__((deprecated)) rule_response_t *rule_response_create(
    long rule_id,
    char *title,
    char *description,
    long rule_type_id,
    char *rule_type_title,
    char *rule_type_description,
    char *rule_value_type,
    char *rule_value
);

void rule_response_free(rule_response_t *rule_response);

rule_response_t *rule_response_parseFromJSON(cJSON *rule_responseJSON);

cJSON *rule_response_convertToJSON(rule_response_t *rule_response);

#endif /* _rule_response_H_ */

