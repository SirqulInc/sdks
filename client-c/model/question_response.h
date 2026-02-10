/*
 * question_response.h
 *
 * 
 */

#ifndef _question_response_H_
#define _question_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct question_response_t question_response_t;

#include "account_short_response.h"
#include "answer_response.h"
#include "asset_short_response.h"
#include "score_list_response.h"
#include "ticket_list_response.h"



typedef struct question_response_t {
    long id; //numeric
    char *question; // string
    struct asset_short_response_t *image; //model
    char *video_url; // string
    int active; //boolean
    list_t *answers; //nonprimitive container
    struct score_list_response_t *scores; //model
    struct ticket_list_response_t *tickets; //model
    struct account_short_response_t *owner; //model
    struct asset_short_response_t *icon; //model
    char *author_override; // string
    long updated_date; //numeric
    long start_date; //numeric
    long end_date; //numeric
    long created_date; //numeric
    char *tags; // string
    int allocate_tickets; //boolean
    char *ticket_type; // string
    long ticket_count; //numeric
    long points; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} question_response_t;

__attribute__((deprecated)) question_response_t *question_response_create(
    long id,
    char *question,
    asset_short_response_t *image,
    char *video_url,
    int active,
    list_t *answers,
    score_list_response_t *scores,
    ticket_list_response_t *tickets,
    account_short_response_t *owner,
    asset_short_response_t *icon,
    char *author_override,
    long updated_date,
    long start_date,
    long end_date,
    long created_date,
    char *tags,
    int allocate_tickets,
    char *ticket_type,
    long ticket_count,
    long points
);

void question_response_free(question_response_t *question_response);

question_response_t *question_response_parseFromJSON(cJSON *question_responseJSON);

cJSON *question_response_convertToJSON(question_response_t *question_response);

#endif /* _question_response_H_ */

