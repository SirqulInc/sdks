/*
 * csv_import_response.h
 *
 * 
 */

#ifndef _csv_import_response_H_
#define _csv_import_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct csv_import_response_t csv_import_response_t;

#include "name_string_value_response.h"

// Enum CSVIMPORTBATCHSTATUS for csv_import_response

typedef enum  { sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_NULL = 0, sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS__NEW, sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_ERROR, sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_COMPLETE, sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_PARSE_ERROR, sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_PROCESSING, sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_DUPLICATE } sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e;

char* csv_import_response_csv_import_batch_status_ToString(sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_batch_status);

sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_response_csv_import_batch_status_FromString(char* csv_import_batch_status);

// Enum OBJECTTYPE for csv_import_response

typedef enum  { sirqul_iot_platform_csv_import_response_OBJECTTYPE_NULL = 0, sirqul_iot_platform_csv_import_response_OBJECTTYPE_OFFERS, sirqul_iot_platform_csv_import_response_OBJECTTYPE_RETAILERS, sirqul_iot_platform_csv_import_response_OBJECTTYPE_RETAILERLOCATIONS, sirqul_iot_platform_csv_import_response_OBJECTTYPE_CATEGORIES, sirqul_iot_platform_csv_import_response_OBJECTTYPE_FILTERS } sirqul_iot_platform_csv_import_response_OBJECTTYPE_e;

char* csv_import_response_object_type_ToString(sirqul_iot_platform_csv_import_response_OBJECTTYPE_e object_type);

sirqul_iot_platform_csv_import_response_OBJECTTYPE_e csv_import_response_object_type_FromString(char* object_type);



typedef struct csv_import_response_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    long batch_id; //numeric
    sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_batch_status; //enum
    char *error_message; // string
    sirqul_iot_platform_csv_import_response_OBJECTTYPE_e object_type; //enum
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} csv_import_response_t;

__attribute__((deprecated)) csv_import_response_t *csv_import_response_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    long batch_id,
    sirqul_iot_platform_csv_import_response_CSVIMPORTBATCHSTATUS_e csv_import_batch_status,
    char *error_message,
    sirqul_iot_platform_csv_import_response_OBJECTTYPE_e object_type,
    char *returning
);

void csv_import_response_free(csv_import_response_t *csv_import_response);

csv_import_response_t *csv_import_response_parseFromJSON(cJSON *csv_import_responseJSON);

cJSON *csv_import_response_convertToJSON(csv_import_response_t *csv_import_response);

#endif /* _csv_import_response_H_ */

