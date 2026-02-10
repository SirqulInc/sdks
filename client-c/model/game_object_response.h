/*
 * game_object_response.h
 *
 * 
 */

#ifndef _game_object_response_H_
#define _game_object_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct game_object_response_t game_object_response_t;

#include "name_string_value_response.h"
#include "score_list_response.h"
#include "ticket_list_response.h"

// Enum ACTION for game_object_response

typedef enum  { sirqul_iot_platform_game_object_response_ACTION_NULL = 0, sirqul_iot_platform_game_object_response_ACTION_DATA, sirqul_iot_platform_game_object_response_ACTION_SAVE, sirqul_iot_platform_game_object_response_ACTION__DELETE, sirqul_iot_platform_game_object_response_ACTION_GET } sirqul_iot_platform_game_object_response_ACTION_e;

char* game_object_response_action_ToString(sirqul_iot_platform_game_object_response_ACTION_e action);

sirqul_iot_platform_game_object_response_ACTION_e game_object_response_action_FromString(char* action);



typedef struct game_object_response_t {
    sirqul_iot_platform_game_object_response_ACTION_e action; //enum
    long game_object_id; //numeric
    char *game_type; // string
    long tickets_earned; //numeric
    struct score_list_response_t *scores; //model
    struct ticket_list_response_t *tickets; //model
    list_t *items; //nonprimitive container
    int allocate_tickets; //boolean

    int _library_owned; // Is the library responsible for freeing this object?
} game_object_response_t;

__attribute__((deprecated)) game_object_response_t *game_object_response_create(
    sirqul_iot_platform_game_object_response_ACTION_e action,
    long game_object_id,
    char *game_type,
    long tickets_earned,
    score_list_response_t *scores,
    ticket_list_response_t *tickets,
    list_t *items,
    int allocate_tickets
);

void game_object_response_free(game_object_response_t *game_object_response);

game_object_response_t *game_object_response_parseFromJSON(cJSON *game_object_responseJSON);

cJSON *game_object_response_convertToJSON(game_object_response_t *game_object_response);

#endif /* _game_object_response_H_ */

