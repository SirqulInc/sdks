/*
 * game_list_response.h
 *
 * 
 */

#ifndef _game_list_response_H_
#define _game_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct game_list_response_t game_list_response_t;

#include "game_response.h"



typedef struct game_list_response_t {
    int start; //numeric
    int limit; //numeric
    long count_total; //numeric
    list_t *items; //nonprimitive container
    int has_more_results; //boolean
    int count; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} game_list_response_t;

__attribute__((deprecated)) game_list_response_t *game_list_response_create(
    int start,
    int limit,
    long count_total,
    list_t *items,
    int has_more_results,
    int count
);

void game_list_response_free(game_list_response_t *game_list_response);

game_list_response_t *game_list_response_parseFromJSON(cJSON *game_list_responseJSON);

cJSON *game_list_response_convertToJSON(game_list_response_t *game_list_response);

#endif /* _game_list_response_H_ */

