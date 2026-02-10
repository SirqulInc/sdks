/*
 * report_definition.h
 *
 * 
 */

#ifndef _report_definition_H_
#define _report_definition_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct report_definition_t report_definition_t;


// Enum DATASOURCE for report_definition

typedef enum  { sirqul_iot_platform_report_definition_DATASOURCE_NULL = 0, sirqul_iot_platform_report_definition_DATASOURCE_WRITE, sirqul_iot_platform_report_definition_DATASOURCE_ANALYTIC, sirqul_iot_platform_report_definition_DATASOURCE_READ1 } sirqul_iot_platform_report_definition_DATASOURCE_e;

char* report_definition_data_source_ToString(sirqul_iot_platform_report_definition_DATASOURCE_e data_source);

sirqul_iot_platform_report_definition_DATASOURCE_e report_definition_data_source_FromString(char* data_source);



typedef struct report_definition_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *query; // string
    char *query_name; // string
    char *display_name; // string
    list_t *column_names; //primitive container
    int native_sql; //boolean
    int display; //boolean
    sirqul_iot_platform_report_definition_DATASOURCE_e data_source; //enum
    long max_limit; //numeric
    int max_date_range; //numeric
    char *display_params; // string
    char *meta_data; // string
    char *column_names_raw; // string

    int _library_owned; // Is the library responsible for freeing this object?
} report_definition_t;

__attribute__((deprecated)) report_definition_t *report_definition_create(
    long id,
    int active,
    int valid,
    char *query,
    char *query_name,
    char *display_name,
    list_t *column_names,
    int native_sql,
    int display,
    sirqul_iot_platform_report_definition_DATASOURCE_e data_source,
    long max_limit,
    int max_date_range,
    char *display_params,
    char *meta_data,
    char *column_names_raw
);

void report_definition_free(report_definition_t *report_definition);

report_definition_t *report_definition_parseFromJSON(cJSON *report_definitionJSON);

cJSON *report_definition_convertToJSON(report_definition_t *report_definition);

#endif /* _report_definition_H_ */

