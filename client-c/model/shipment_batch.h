/*
 * shipment_batch.h
 *
 * 
 */

#ifndef _shipment_batch_H_
#define _shipment_batch_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct shipment_batch_t shipment_batch_t;

#include "program.h"
#include "retailer.h"
#include "service_hub.h"
#include "shipment.h"
#include "shipment_import_status.h"

// Enum IMPORTSTATUS for shipment_batch

typedef enum  { sirqul_iot_platform_shipment_batch_IMPORTSTATUS_NULL = 0, sirqul_iot_platform_shipment_batch_IMPORTSTATUS__NEW, sirqul_iot_platform_shipment_batch_IMPORTSTATUS_STARTED, sirqul_iot_platform_shipment_batch_IMPORTSTATUS_FETCHING_DISTANCE_DATA, sirqul_iot_platform_shipment_batch_IMPORTSTATUS_OPTIMIZING, sirqul_iot_platform_shipment_batch_IMPORTSTATUS_CREATING_ROUTES, sirqul_iot_platform_shipment_batch_IMPORTSTATUS_COMPLETED, sirqul_iot_platform_shipment_batch_IMPORTSTATUS_INCOMPLETE } sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e;

char* shipment_batch_import_status_ToString(sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e import_status);

sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e shipment_batch_import_status_FromString(char* import_status);



typedef struct shipment_batch_t {
    long id; //numeric
    char *created; //date time
    char *updated; //date time
    int active; //boolean
    int valid; //boolean
    struct retailer_t *retailer; //model
    struct service_hub_t *hub; //model
    struct program_t *program; //model
    list_t *shipment_import_statuses; //nonprimitive container
    list_t *shipments; //nonprimitive container
    char *uploaded; //date time
    char *started; //date time
    char *optimization_started; //date time
    char *completed; //date time
    char *optimization_completed; //date time
    char *source; // string
    char *external_id; // string
    int total; //numeric
    int processed_count; //numeric
    int success_count; //numeric
    int failed_count; //numeric
    int valid_count; //numeric
    int invalid_count; //numeric
    double average_travel_speed; //numeric
    long max_seconds; //numeric
    sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e import_status; //enum
    int total_routes; //numeric
    int routes_created; //numeric
    int total_legs_requests; //numeric
    int legs_requested; //numeric
    int init_score; //numeric
    long hard_score; //numeric
    long medium_score; //numeric
    long soft_score; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} shipment_batch_t;

__attribute__((deprecated)) shipment_batch_t *shipment_batch_create(
    long id,
    char *created,
    char *updated,
    int active,
    int valid,
    retailer_t *retailer,
    service_hub_t *hub,
    program_t *program,
    list_t *shipment_import_statuses,
    list_t *shipments,
    char *uploaded,
    char *started,
    char *optimization_started,
    char *completed,
    char *optimization_completed,
    char *source,
    char *external_id,
    int total,
    int processed_count,
    int success_count,
    int failed_count,
    int valid_count,
    int invalid_count,
    double average_travel_speed,
    long max_seconds,
    sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e import_status,
    int total_routes,
    int routes_created,
    int total_legs_requests,
    int legs_requested,
    int init_score,
    long hard_score,
    long medium_score,
    long soft_score
);

void shipment_batch_free(shipment_batch_t *shipment_batch);

shipment_batch_t *shipment_batch_parseFromJSON(cJSON *shipment_batchJSON);

cJSON *shipment_batch_convertToJSON(shipment_batch_t *shipment_batch);

#endif /* _shipment_batch_H_ */

