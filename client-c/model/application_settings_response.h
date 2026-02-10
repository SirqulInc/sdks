/*
 * application_settings_response.h
 *
 * 
 */

#ifndef _application_settings_response_H_
#define _application_settings_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct application_settings_response_t application_settings_response_t;

#include "application_mini_response.h"



typedef struct application_settings_response_t {
    struct application_mini_response_t *application; //model
    long terms_accepted_date; //numeric
    long updated; //numeric
    long created; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} application_settings_response_t;

__attribute__((deprecated)) application_settings_response_t *application_settings_response_create(
    application_mini_response_t *application,
    long terms_accepted_date,
    long updated,
    long created
);

void application_settings_response_free(application_settings_response_t *application_settings_response);

application_settings_response_t *application_settings_response_parseFromJSON(cJSON *application_settings_responseJSON);

cJSON *application_settings_response_convertToJSON(application_settings_response_t *application_settings_response);

#endif /* _application_settings_response_H_ */

