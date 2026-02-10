/*
 * application_usage_response.h
 *
 * 
 */

#ifndef _application_usage_response_H_
#define _application_usage_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct application_usage_response_t application_usage_response_t;

#include "billable_entity_response.h"



typedef struct application_usage_response_t {
    struct billable_entity_response_t *billable_entity; //model
    long application_id; //numeric
    char *invoice_date; //date time
    double balance; //numeric
    long total_requests; //numeric
    long total_data_storage; //numeric
    long total_media_storage; //numeric
    long total_notifications; //numeric
    long max_missions; //numeric
    long max_vouchers; //numeric
    long max_coupons; //numeric
    long max_products; //numeric
    long max_events; //numeric
    long max_media; //numeric
    long max_locations; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} application_usage_response_t;

__attribute__((deprecated)) application_usage_response_t *application_usage_response_create(
    billable_entity_response_t *billable_entity,
    long application_id,
    char *invoice_date,
    double balance,
    long total_requests,
    long total_data_storage,
    long total_media_storage,
    long total_notifications,
    long max_missions,
    long max_vouchers,
    long max_coupons,
    long max_products,
    long max_events,
    long max_media,
    long max_locations
);

void application_usage_response_free(application_usage_response_t *application_usage_response);

application_usage_response_t *application_usage_response_parseFromJSON(cJSON *application_usage_responseJSON);

cJSON *application_usage_response_convertToJSON(application_usage_response_t *application_usage_response);

#endif /* _application_usage_response_H_ */

