/*
 * preview_persona_response.h
 *
 * 
 */

#ifndef _preview_persona_response_H_
#define _preview_persona_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct preview_persona_response_t preview_persona_response_t;

#include "account_mini_response.h"



typedef struct preview_persona_response_t {
    long persona_id; //numeric
    char *title; // string
    list_t *preview_accounts; //nonprimitive container
    int active; //boolean
    long date; //numeric
    int age; //numeric
    char *gender; // string
    char *game_experience_level; // string
    double latitude; //numeric
    double longitude; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} preview_persona_response_t;

__attribute__((deprecated)) preview_persona_response_t *preview_persona_response_create(
    long persona_id,
    char *title,
    list_t *preview_accounts,
    int active,
    long date,
    int age,
    char *gender,
    char *game_experience_level,
    double latitude,
    double longitude
);

void preview_persona_response_free(preview_persona_response_t *preview_persona_response);

preview_persona_response_t *preview_persona_response_parseFromJSON(cJSON *preview_persona_responseJSON);

cJSON *preview_persona_response_convertToJSON(preview_persona_response_t *preview_persona_response);

#endif /* _preview_persona_response_H_ */

