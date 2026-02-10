/*
 * chart_data.h
 *
 * 
 */

#ifndef _chart_data_H_
#define _chart_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct chart_data_t chart_data_t;

#include "name_string_value_response.h"
#include "object.h"



typedef struct chart_data_t {
    int valid; //boolean
    char *message; // string
    double version; //numeric
    int serialize_nulls; //boolean
    long start_time_log; //numeric
    char *error_code; // string
    list_t *request; //nonprimitive container
    char *identifier; // string
    char *id_attribute; // string
    char *label; // string
    long max_value; //numeric
    long total_count; //numeric
    list_t *items; //nonprimitive container
    list_t *aggregated_items; //nonprimitive container
    char *caption; // string
    char *show_anchor; // string
    char *anchor_alpha; // string
    char *getx_axis_name; // string
    char *gety_axis_min_value; // string
    char *gety_axis_name; // string
    char *decimal_precision; // string
    char *format_number_scale; // string
    char *number_prefix; // string
    char *show_names; // string
    char *show_values; // string
    char *show_alternate_h_grid_color; // string
    char *alternate_h_grid_color; // string
    char *div_line_color; // string
    char *div_line_alpha; // string
    char *alternate_h_grid_alpha; // string
    char *rotate_names; // string
    char *returning; // string

    int _library_owned; // Is the library responsible for freeing this object?
} chart_data_t;

__attribute__((deprecated)) chart_data_t *chart_data_create(
    int valid,
    char *message,
    double version,
    int serialize_nulls,
    long start_time_log,
    char *error_code,
    list_t *request,
    char *identifier,
    char *id_attribute,
    char *label,
    long max_value,
    long total_count,
    list_t *items,
    list_t *aggregated_items,
    char *caption,
    char *show_anchor,
    char *anchor_alpha,
    char *getx_axis_name,
    char *gety_axis_min_value,
    char *gety_axis_name,
    char *decimal_precision,
    char *format_number_scale,
    char *number_prefix,
    char *show_names,
    char *show_values,
    char *show_alternate_h_grid_color,
    char *alternate_h_grid_color,
    char *div_line_color,
    char *div_line_alpha,
    char *alternate_h_grid_alpha,
    char *rotate_names,
    char *returning
);

void chart_data_free(chart_data_t *chart_data);

chart_data_t *chart_data_parseFromJSON(cJSON *chart_dataJSON);

cJSON *chart_data_convertToJSON(chart_data_t *chart_data);

#endif /* _chart_data_H_ */

