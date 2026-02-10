/*
 * wordz_word_response.h
 *
 * 
 */

#ifndef _wordz_word_response_H_
#define _wordz_word_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct wordz_word_response_t wordz_word_response_t;

#include "asset_short_response.h"
#include "score_list_response.h"



typedef struct wordz_word_response_t {
    long id; //numeric
    char *word; // string
    char *definition; // string
    struct score_list_response_t *scores; //model
    struct asset_short_response_t *icon; //model
    struct asset_short_response_t *image; //model
    char *author_override; // string
    long updated_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    long created_date; //numeric
    int active; //boolean
    int allocate_tickets; //boolean
    char *ticket_type; // string
    long ticket_count; //numeric
    long points; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} wordz_word_response_t;

__attribute__((deprecated)) wordz_word_response_t *wordz_word_response_create(
    long id,
    char *word,
    char *definition,
    score_list_response_t *scores,
    asset_short_response_t *icon,
    asset_short_response_t *image,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    long created_date,
    int active,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
);

void wordz_word_response_free(wordz_word_response_t *wordz_word_response);

wordz_word_response_t *wordz_word_response_parseFromJSON(cJSON *wordz_word_responseJSON);

cJSON *wordz_word_response_convertToJSON(wordz_word_response_t *wordz_word_response);

#endif /* _wordz_word_response_H_ */

