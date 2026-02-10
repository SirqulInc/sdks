/*
 * disbursement_response.h
 *
 * 
 */

#ifndef _disbursement_response_H_
#define _disbursement_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct disbursement_response_t disbursement_response_t;

#include "billable_entity_short_response.h"

// Enum STATUS for disbursement_response

typedef enum  { sirqul_iot_platform_disbursement_response_STATUS_NULL = 0, sirqul_iot_platform_disbursement_response_STATUS__NEW, sirqul_iot_platform_disbursement_response_STATUS_APPROVED, sirqul_iot_platform_disbursement_response_STATUS_VALIDATING, sirqul_iot_platform_disbursement_response_STATUS_ERROR, sirqul_iot_platform_disbursement_response_STATUS_AUTHORIZED, sirqul_iot_platform_disbursement_response_STATUS_CAPTURED, sirqul_iot_platform_disbursement_response_STATUS_SETTLED } sirqul_iot_platform_disbursement_response_STATUS_e;

char* disbursement_response_status_ToString(sirqul_iot_platform_disbursement_response_STATUS_e status);

sirqul_iot_platform_disbursement_response_STATUS_e disbursement_response_status_FromString(char* status);

// Enum PROVIDER for disbursement_response

typedef enum  { sirqul_iot_platform_disbursement_response_PROVIDER_NULL = 0, sirqul_iot_platform_disbursement_response_PROVIDER_AUTHORIZE_NET, sirqul_iot_platform_disbursement_response_PROVIDER_AMAZON_FPS, sirqul_iot_platform_disbursement_response_PROVIDER_BILL_COM } sirqul_iot_platform_disbursement_response_PROVIDER_e;

char* disbursement_response_provider_ToString(sirqul_iot_platform_disbursement_response_PROVIDER_e provider);

sirqul_iot_platform_disbursement_response_PROVIDER_e disbursement_response_provider_FromString(char* provider);



typedef struct disbursement_response_t {
    long disbursement_id; //numeric
    char *title; // string
    char *comment; // string
    char *external_id; // string
    char *introspection_params; // string
    double amount; //numeric
    long scheduled_date; //numeric
    long capture_date; //numeric
    long estimated_date; //numeric
    long settled_date; //numeric
    sirqul_iot_platform_disbursement_response_STATUS_e status; //enum
    sirqul_iot_platform_disbursement_response_PROVIDER_e provider; //enum
    struct billable_entity_short_response_t *sender_billable; //model
    struct billable_entity_short_response_t *receiver_billable; //model
    char *error_code; // string
    char *error_message; // string

    int _library_owned; // Is the library responsible for freeing this object?
} disbursement_response_t;

__attribute__((deprecated)) disbursement_response_t *disbursement_response_create(
    long disbursement_id,
    char *title,
    char *comment,
    char *external_id,
    char *introspection_params,
    double amount,
    long scheduled_date,
    long capture_date,
    long estimated_date,
    long settled_date,
    sirqul_iot_platform_disbursement_response_STATUS_e status,
    sirqul_iot_platform_disbursement_response_PROVIDER_e provider,
    billable_entity_short_response_t *sender_billable,
    billable_entity_short_response_t *receiver_billable,
    char *error_code,
    char *error_message
);

void disbursement_response_free(disbursement_response_t *disbursement_response);

disbursement_response_t *disbursement_response_parseFromJSON(cJSON *disbursement_responseJSON);

cJSON *disbursement_response_convertToJSON(disbursement_response_t *disbursement_response);

#endif /* _disbursement_response_H_ */

