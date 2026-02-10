/*
 * orson_ai_proto_response.h
 *
 * 
 */

#ifndef _orson_ai_proto_response_H_
#define _orson_ai_proto_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct orson_ai_proto_response_t orson_ai_proto_response_t;

#include "asset_short_response.h"



typedef struct orson_ai_proto_response_t {
    char *raw_response; // string
    struct asset_short_response_t *asset_response; //model

    int _library_owned; // Is the library responsible for freeing this object?
} orson_ai_proto_response_t;

__attribute__((deprecated)) orson_ai_proto_response_t *orson_ai_proto_response_create(
    char *raw_response,
    asset_short_response_t *asset_response
);

void orson_ai_proto_response_free(orson_ai_proto_response_t *orson_ai_proto_response);

orson_ai_proto_response_t *orson_ai_proto_response_parseFromJSON(cJSON *orson_ai_proto_responseJSON);

cJSON *orson_ai_proto_response_convertToJSON(orson_ai_proto_response_t *orson_ai_proto_response);

#endif /* _orson_ai_proto_response_H_ */

