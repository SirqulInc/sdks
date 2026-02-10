/*
 * consumer_invite_response.h
 *
 * 
 */

#ifndef _consumer_invite_response_H_
#define _consumer_invite_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct consumer_invite_response_t consumer_invite_response_t;

#include "account_short_response.h"
#include "album_response.h"
#include "application_short_response.h"
#include "connection_response.h"
#include "name_string_value_response.h"
#include "offer_short_response.h"
#include "retailer_location_response.h"



typedef struct consumer_invite_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long inviter_id; //numeric
    struct account_short_response_t *inviter; //model
    struct connection_response_t *connection; //model
    char *invite_text; // string
    char *token; // string
    char *album_cover_url; // string
    char *album_title; // string
    char *app_name; // string
    char *welcome_text; // string
    struct application_short_response_t *application; //model
    struct retailer_location_response_t *retailer_location; //model
    struct offer_short_response_t *offer; //model
    struct album_response_t *album; //model
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} consumer_invite_response_t;

__attribute__((deprecated)) consumer_invite_response_t *consumer_invite_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long inviter_id,
    account_short_response_t *inviter,
    connection_response_t *connection,
    char *invite_text,
    char *token,
    char *album_cover_url,
    char *album_title,
    char *app_name,
    char *welcome_text,
    application_short_response_t *application,
    retailer_location_response_t *retailer_location,
    offer_short_response_t *offer,
    album_response_t *album,
    char *returning
);

void consumer_invite_response_free(consumer_invite_response_t *consumer_invite_response);

consumer_invite_response_t *consumer_invite_response_parseFromJSON(cJSON *consumer_invite_responseJSON);

cJSON *consumer_invite_response_convertToJSON(consumer_invite_response_t *consumer_invite_response);

#endif /* _consumer_invite_response_H_ */

