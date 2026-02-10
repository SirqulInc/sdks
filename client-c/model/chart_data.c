#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "chart_data.h"



static chart_data_t *chart_data_create_internal(
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
    ) {
    chart_data_t *chart_data_local_var = malloc(sizeof(chart_data_t));
    if (!chart_data_local_var) {
        return NULL;
    }
    chart_data_local_var->valid = valid;
    chart_data_local_var->message = message;
    chart_data_local_var->version = version;
    chart_data_local_var->serialize_nulls = serialize_nulls;
    chart_data_local_var->start_time_log = start_time_log;
    chart_data_local_var->error_code = error_code;
    chart_data_local_var->request = request;
    chart_data_local_var->identifier = identifier;
    chart_data_local_var->id_attribute = id_attribute;
    chart_data_local_var->label = label;
    chart_data_local_var->max_value = max_value;
    chart_data_local_var->total_count = total_count;
    chart_data_local_var->items = items;
    chart_data_local_var->aggregated_items = aggregated_items;
    chart_data_local_var->caption = caption;
    chart_data_local_var->show_anchor = show_anchor;
    chart_data_local_var->anchor_alpha = anchor_alpha;
    chart_data_local_var->getx_axis_name = getx_axis_name;
    chart_data_local_var->gety_axis_min_value = gety_axis_min_value;
    chart_data_local_var->gety_axis_name = gety_axis_name;
    chart_data_local_var->decimal_precision = decimal_precision;
    chart_data_local_var->format_number_scale = format_number_scale;
    chart_data_local_var->number_prefix = number_prefix;
    chart_data_local_var->show_names = show_names;
    chart_data_local_var->show_values = show_values;
    chart_data_local_var->show_alternate_h_grid_color = show_alternate_h_grid_color;
    chart_data_local_var->alternate_h_grid_color = alternate_h_grid_color;
    chart_data_local_var->div_line_color = div_line_color;
    chart_data_local_var->div_line_alpha = div_line_alpha;
    chart_data_local_var->alternate_h_grid_alpha = alternate_h_grid_alpha;
    chart_data_local_var->rotate_names = rotate_names;
    chart_data_local_var->returning = returning;

    chart_data_local_var->_library_owned = 1;
    return chart_data_local_var;
}

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
    ) {
    return chart_data_create_internal (
        valid,
        message,
        version,
        serialize_nulls,
        start_time_log,
        error_code,
        request,
        identifier,
        id_attribute,
        label,
        max_value,
        total_count,
        items,
        aggregated_items,
        caption,
        show_anchor,
        anchor_alpha,
        getx_axis_name,
        gety_axis_min_value,
        gety_axis_name,
        decimal_precision,
        format_number_scale,
        number_prefix,
        show_names,
        show_values,
        show_alternate_h_grid_color,
        alternate_h_grid_color,
        div_line_color,
        div_line_alpha,
        alternate_h_grid_alpha,
        rotate_names,
        returning
        );
}

void chart_data_free(chart_data_t *chart_data) {
    if(NULL == chart_data){
        return ;
    }
    if(chart_data->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "chart_data_free");
        return ;
    }
    listEntry_t *listEntry;
    if (chart_data->message) {
        free(chart_data->message);
        chart_data->message = NULL;
    }
    if (chart_data->error_code) {
        free(chart_data->error_code);
        chart_data->error_code = NULL;
    }
    if (chart_data->request) {
        list_ForEach(listEntry, chart_data->request) {
            name_string_value_response_free(listEntry->data);
        }
        list_freeList(chart_data->request);
        chart_data->request = NULL;
    }
    if (chart_data->identifier) {
        free(chart_data->identifier);
        chart_data->identifier = NULL;
    }
    if (chart_data->id_attribute) {
        free(chart_data->id_attribute);
        chart_data->id_attribute = NULL;
    }
    if (chart_data->label) {
        free(chart_data->label);
        chart_data->label = NULL;
    }
    if (chart_data->items) {
        list_ForEach(listEntry, chart_data->items) {
            object_free(listEntry->data);
        }
        list_freeList(chart_data->items);
        chart_data->items = NULL;
    }
    if (chart_data->aggregated_items) {
        list_ForEach(listEntry, chart_data->aggregated_items) {
            object_free(listEntry->data);
        }
        list_freeList(chart_data->aggregated_items);
        chart_data->aggregated_items = NULL;
    }
    if (chart_data->caption) {
        free(chart_data->caption);
        chart_data->caption = NULL;
    }
    if (chart_data->show_anchor) {
        free(chart_data->show_anchor);
        chart_data->show_anchor = NULL;
    }
    if (chart_data->anchor_alpha) {
        free(chart_data->anchor_alpha);
        chart_data->anchor_alpha = NULL;
    }
    if (chart_data->getx_axis_name) {
        free(chart_data->getx_axis_name);
        chart_data->getx_axis_name = NULL;
    }
    if (chart_data->gety_axis_min_value) {
        free(chart_data->gety_axis_min_value);
        chart_data->gety_axis_min_value = NULL;
    }
    if (chart_data->gety_axis_name) {
        free(chart_data->gety_axis_name);
        chart_data->gety_axis_name = NULL;
    }
    if (chart_data->decimal_precision) {
        free(chart_data->decimal_precision);
        chart_data->decimal_precision = NULL;
    }
    if (chart_data->format_number_scale) {
        free(chart_data->format_number_scale);
        chart_data->format_number_scale = NULL;
    }
    if (chart_data->number_prefix) {
        free(chart_data->number_prefix);
        chart_data->number_prefix = NULL;
    }
    if (chart_data->show_names) {
        free(chart_data->show_names);
        chart_data->show_names = NULL;
    }
    if (chart_data->show_values) {
        free(chart_data->show_values);
        chart_data->show_values = NULL;
    }
    if (chart_data->show_alternate_h_grid_color) {
        free(chart_data->show_alternate_h_grid_color);
        chart_data->show_alternate_h_grid_color = NULL;
    }
    if (chart_data->alternate_h_grid_color) {
        free(chart_data->alternate_h_grid_color);
        chart_data->alternate_h_grid_color = NULL;
    }
    if (chart_data->div_line_color) {
        free(chart_data->div_line_color);
        chart_data->div_line_color = NULL;
    }
    if (chart_data->div_line_alpha) {
        free(chart_data->div_line_alpha);
        chart_data->div_line_alpha = NULL;
    }
    if (chart_data->alternate_h_grid_alpha) {
        free(chart_data->alternate_h_grid_alpha);
        chart_data->alternate_h_grid_alpha = NULL;
    }
    if (chart_data->rotate_names) {
        free(chart_data->rotate_names);
        chart_data->rotate_names = NULL;
    }
    if (chart_data->returning) {
        free(chart_data->returning);
        chart_data->returning = NULL;
    }
    free(chart_data);
}

cJSON *chart_data_convertToJSON(chart_data_t *chart_data) {
    cJSON *item = cJSON_CreateObject();

    // chart_data->valid
    if(chart_data->valid) {
    if(cJSON_AddBoolToObject(item, "valid", chart_data->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // chart_data->message
    if(chart_data->message) {
    if(cJSON_AddStringToObject(item, "message", chart_data->message) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->version
    if(chart_data->version) {
    if(cJSON_AddNumberToObject(item, "version", chart_data->version) == NULL) {
    goto fail; //Numeric
    }
    }


    // chart_data->serialize_nulls
    if(chart_data->serialize_nulls) {
    if(cJSON_AddBoolToObject(item, "serializeNulls", chart_data->serialize_nulls) == NULL) {
    goto fail; //Bool
    }
    }


    // chart_data->start_time_log
    if(chart_data->start_time_log) {
    if(cJSON_AddNumberToObject(item, "startTimeLog", chart_data->start_time_log) == NULL) {
    goto fail; //Numeric
    }
    }


    // chart_data->error_code
    if(chart_data->error_code) {
    if(cJSON_AddStringToObject(item, "errorCode", chart_data->error_code) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->request
    if(chart_data->request) {
    cJSON *request = cJSON_AddArrayToObject(item, "request");
    if(request == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *requestListEntry;
    if (chart_data->request) {
    list_ForEach(requestListEntry, chart_data->request) {
    cJSON *itemLocal = name_string_value_response_convertToJSON(requestListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(request, itemLocal);
    }
    }
    }


    // chart_data->identifier
    if(chart_data->identifier) {
    if(cJSON_AddStringToObject(item, "identifier", chart_data->identifier) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->id_attribute
    if(chart_data->id_attribute) {
    if(cJSON_AddStringToObject(item, "idAttribute", chart_data->id_attribute) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->label
    if(chart_data->label) {
    if(cJSON_AddStringToObject(item, "label", chart_data->label) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->max_value
    if(chart_data->max_value) {
    if(cJSON_AddNumberToObject(item, "maxValue", chart_data->max_value) == NULL) {
    goto fail; //Numeric
    }
    }


    // chart_data->total_count
    if(chart_data->total_count) {
    if(cJSON_AddNumberToObject(item, "totalCount", chart_data->total_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // chart_data->items
    if(chart_data->items) {
    cJSON *items = cJSON_AddArrayToObject(item, "items");
    if(items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *itemsListEntry;
    if (chart_data->items) {
    list_ForEach(itemsListEntry, chart_data->items) {
    cJSON *itemLocal = object_convertToJSON(itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(items, itemLocal);
    }
    }
    }


    // chart_data->aggregated_items
    if(chart_data->aggregated_items) {
    cJSON *aggregated_items = cJSON_AddArrayToObject(item, "aggregatedItems");
    if(aggregated_items == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *aggregated_itemsListEntry;
    if (chart_data->aggregated_items) {
    list_ForEach(aggregated_itemsListEntry, chart_data->aggregated_items) {
    cJSON *itemLocal = object_convertToJSON(aggregated_itemsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(aggregated_items, itemLocal);
    }
    }
    }


    // chart_data->caption
    if(chart_data->caption) {
    if(cJSON_AddStringToObject(item, "caption", chart_data->caption) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->show_anchor
    if(chart_data->show_anchor) {
    if(cJSON_AddStringToObject(item, "showAnchor", chart_data->show_anchor) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->anchor_alpha
    if(chart_data->anchor_alpha) {
    if(cJSON_AddStringToObject(item, "anchorAlpha", chart_data->anchor_alpha) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->getx_axis_name
    if(chart_data->getx_axis_name) {
    if(cJSON_AddStringToObject(item, "getxAxisName", chart_data->getx_axis_name) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->gety_axis_min_value
    if(chart_data->gety_axis_min_value) {
    if(cJSON_AddStringToObject(item, "getyAxisMinValue", chart_data->gety_axis_min_value) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->gety_axis_name
    if(chart_data->gety_axis_name) {
    if(cJSON_AddStringToObject(item, "getyAxisName", chart_data->gety_axis_name) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->decimal_precision
    if(chart_data->decimal_precision) {
    if(cJSON_AddStringToObject(item, "decimalPrecision", chart_data->decimal_precision) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->format_number_scale
    if(chart_data->format_number_scale) {
    if(cJSON_AddStringToObject(item, "formatNumberScale", chart_data->format_number_scale) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->number_prefix
    if(chart_data->number_prefix) {
    if(cJSON_AddStringToObject(item, "numberPrefix", chart_data->number_prefix) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->show_names
    if(chart_data->show_names) {
    if(cJSON_AddStringToObject(item, "showNames", chart_data->show_names) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->show_values
    if(chart_data->show_values) {
    if(cJSON_AddStringToObject(item, "showValues", chart_data->show_values) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->show_alternate_h_grid_color
    if(chart_data->show_alternate_h_grid_color) {
    if(cJSON_AddStringToObject(item, "showAlternateHGridColor", chart_data->show_alternate_h_grid_color) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->alternate_h_grid_color
    if(chart_data->alternate_h_grid_color) {
    if(cJSON_AddStringToObject(item, "alternateHGridColor", chart_data->alternate_h_grid_color) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->div_line_color
    if(chart_data->div_line_color) {
    if(cJSON_AddStringToObject(item, "divLineColor", chart_data->div_line_color) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->div_line_alpha
    if(chart_data->div_line_alpha) {
    if(cJSON_AddStringToObject(item, "divLineAlpha", chart_data->div_line_alpha) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->alternate_h_grid_alpha
    if(chart_data->alternate_h_grid_alpha) {
    if(cJSON_AddStringToObject(item, "alternateHGridAlpha", chart_data->alternate_h_grid_alpha) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->rotate_names
    if(chart_data->rotate_names) {
    if(cJSON_AddStringToObject(item, "rotateNames", chart_data->rotate_names) == NULL) {
    goto fail; //String
    }
    }


    // chart_data->returning
    if(chart_data->returning) {
    if(cJSON_AddStringToObject(item, "returning", chart_data->returning) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

chart_data_t *chart_data_parseFromJSON(cJSON *chart_dataJSON){

    chart_data_t *chart_data_local_var = NULL;

    // define the local list for chart_data->request
    list_t *requestList = NULL;

    // define the local list for chart_data->items
    list_t *itemsList = NULL;

    // define the local list for chart_data->aggregated_items
    list_t *aggregated_itemsList = NULL;

    // chart_data->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // chart_data->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "message");
    if (cJSON_IsNull(message)) {
        message = NULL;
    }
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // chart_data->version
    cJSON *version = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "version");
    if (cJSON_IsNull(version)) {
        version = NULL;
    }
    if (version) { 
    if(!cJSON_IsNumber(version))
    {
    goto end; //Numeric
    }
    }

    // chart_data->serialize_nulls
    cJSON *serialize_nulls = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "serializeNulls");
    if (cJSON_IsNull(serialize_nulls)) {
        serialize_nulls = NULL;
    }
    if (serialize_nulls) { 
    if(!cJSON_IsBool(serialize_nulls))
    {
    goto end; //Bool
    }
    }

    // chart_data->start_time_log
    cJSON *start_time_log = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "startTimeLog");
    if (cJSON_IsNull(start_time_log)) {
        start_time_log = NULL;
    }
    if (start_time_log) { 
    if(!cJSON_IsNumber(start_time_log))
    {
    goto end; //Numeric
    }
    }

    // chart_data->error_code
    cJSON *error_code = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "errorCode");
    if (cJSON_IsNull(error_code)) {
        error_code = NULL;
    }
    if (error_code) { 
    if(!cJSON_IsString(error_code) && !cJSON_IsNull(error_code))
    {
    goto end; //String
    }
    }

    // chart_data->request
    cJSON *request = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "request");
    if (cJSON_IsNull(request)) {
        request = NULL;
    }
    if (request) { 
    cJSON *request_local_nonprimitive = NULL;
    if(!cJSON_IsArray(request)){
        goto end; //nonprimitive container
    }

    requestList = list_createList();

    cJSON_ArrayForEach(request_local_nonprimitive,request )
    {
        if(!cJSON_IsObject(request_local_nonprimitive)){
            goto end;
        }
        name_string_value_response_t *requestItem = name_string_value_response_parseFromJSON(request_local_nonprimitive);

        list_addElement(requestList, requestItem);
    }
    }

    // chart_data->identifier
    cJSON *identifier = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "identifier");
    if (cJSON_IsNull(identifier)) {
        identifier = NULL;
    }
    if (identifier) { 
    if(!cJSON_IsString(identifier) && !cJSON_IsNull(identifier))
    {
    goto end; //String
    }
    }

    // chart_data->id_attribute
    cJSON *id_attribute = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "idAttribute");
    if (cJSON_IsNull(id_attribute)) {
        id_attribute = NULL;
    }
    if (id_attribute) { 
    if(!cJSON_IsString(id_attribute) && !cJSON_IsNull(id_attribute))
    {
    goto end; //String
    }
    }

    // chart_data->label
    cJSON *label = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "label");
    if (cJSON_IsNull(label)) {
        label = NULL;
    }
    if (label) { 
    if(!cJSON_IsString(label) && !cJSON_IsNull(label))
    {
    goto end; //String
    }
    }

    // chart_data->max_value
    cJSON *max_value = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "maxValue");
    if (cJSON_IsNull(max_value)) {
        max_value = NULL;
    }
    if (max_value) { 
    if(!cJSON_IsNumber(max_value))
    {
    goto end; //Numeric
    }
    }

    // chart_data->total_count
    cJSON *total_count = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "totalCount");
    if (cJSON_IsNull(total_count)) {
        total_count = NULL;
    }
    if (total_count) { 
    if(!cJSON_IsNumber(total_count))
    {
    goto end; //Numeric
    }
    }

    // chart_data->items
    cJSON *items = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "items");
    if (cJSON_IsNull(items)) {
        items = NULL;
    }
    if (items) { 
    cJSON *items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(items)){
        goto end; //nonprimitive container
    }

    itemsList = list_createList();

    cJSON_ArrayForEach(items_local_nonprimitive,items )
    {
        if(!cJSON_IsObject(items_local_nonprimitive)){
            goto end;
        }
        object_t *itemsItem = object_parseFromJSON(items_local_nonprimitive);

        list_addElement(itemsList, itemsItem);
    }
    }

    // chart_data->aggregated_items
    cJSON *aggregated_items = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "aggregatedItems");
    if (cJSON_IsNull(aggregated_items)) {
        aggregated_items = NULL;
    }
    if (aggregated_items) { 
    cJSON *aggregated_items_local_nonprimitive = NULL;
    if(!cJSON_IsArray(aggregated_items)){
        goto end; //nonprimitive container
    }

    aggregated_itemsList = list_createList();

    cJSON_ArrayForEach(aggregated_items_local_nonprimitive,aggregated_items )
    {
        if(!cJSON_IsObject(aggregated_items_local_nonprimitive)){
            goto end;
        }
        object_t *aggregated_itemsItem = object_parseFromJSON(aggregated_items_local_nonprimitive);

        list_addElement(aggregated_itemsList, aggregated_itemsItem);
    }
    }

    // chart_data->caption
    cJSON *caption = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "caption");
    if (cJSON_IsNull(caption)) {
        caption = NULL;
    }
    if (caption) { 
    if(!cJSON_IsString(caption) && !cJSON_IsNull(caption))
    {
    goto end; //String
    }
    }

    // chart_data->show_anchor
    cJSON *show_anchor = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "showAnchor");
    if (cJSON_IsNull(show_anchor)) {
        show_anchor = NULL;
    }
    if (show_anchor) { 
    if(!cJSON_IsString(show_anchor) && !cJSON_IsNull(show_anchor))
    {
    goto end; //String
    }
    }

    // chart_data->anchor_alpha
    cJSON *anchor_alpha = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "anchorAlpha");
    if (cJSON_IsNull(anchor_alpha)) {
        anchor_alpha = NULL;
    }
    if (anchor_alpha) { 
    if(!cJSON_IsString(anchor_alpha) && !cJSON_IsNull(anchor_alpha))
    {
    goto end; //String
    }
    }

    // chart_data->getx_axis_name
    cJSON *getx_axis_name = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "getxAxisName");
    if (cJSON_IsNull(getx_axis_name)) {
        getx_axis_name = NULL;
    }
    if (getx_axis_name) { 
    if(!cJSON_IsString(getx_axis_name) && !cJSON_IsNull(getx_axis_name))
    {
    goto end; //String
    }
    }

    // chart_data->gety_axis_min_value
    cJSON *gety_axis_min_value = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "getyAxisMinValue");
    if (cJSON_IsNull(gety_axis_min_value)) {
        gety_axis_min_value = NULL;
    }
    if (gety_axis_min_value) { 
    if(!cJSON_IsString(gety_axis_min_value) && !cJSON_IsNull(gety_axis_min_value))
    {
    goto end; //String
    }
    }

    // chart_data->gety_axis_name
    cJSON *gety_axis_name = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "getyAxisName");
    if (cJSON_IsNull(gety_axis_name)) {
        gety_axis_name = NULL;
    }
    if (gety_axis_name) { 
    if(!cJSON_IsString(gety_axis_name) && !cJSON_IsNull(gety_axis_name))
    {
    goto end; //String
    }
    }

    // chart_data->decimal_precision
    cJSON *decimal_precision = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "decimalPrecision");
    if (cJSON_IsNull(decimal_precision)) {
        decimal_precision = NULL;
    }
    if (decimal_precision) { 
    if(!cJSON_IsString(decimal_precision) && !cJSON_IsNull(decimal_precision))
    {
    goto end; //String
    }
    }

    // chart_data->format_number_scale
    cJSON *format_number_scale = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "formatNumberScale");
    if (cJSON_IsNull(format_number_scale)) {
        format_number_scale = NULL;
    }
    if (format_number_scale) { 
    if(!cJSON_IsString(format_number_scale) && !cJSON_IsNull(format_number_scale))
    {
    goto end; //String
    }
    }

    // chart_data->number_prefix
    cJSON *number_prefix = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "numberPrefix");
    if (cJSON_IsNull(number_prefix)) {
        number_prefix = NULL;
    }
    if (number_prefix) { 
    if(!cJSON_IsString(number_prefix) && !cJSON_IsNull(number_prefix))
    {
    goto end; //String
    }
    }

    // chart_data->show_names
    cJSON *show_names = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "showNames");
    if (cJSON_IsNull(show_names)) {
        show_names = NULL;
    }
    if (show_names) { 
    if(!cJSON_IsString(show_names) && !cJSON_IsNull(show_names))
    {
    goto end; //String
    }
    }

    // chart_data->show_values
    cJSON *show_values = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "showValues");
    if (cJSON_IsNull(show_values)) {
        show_values = NULL;
    }
    if (show_values) { 
    if(!cJSON_IsString(show_values) && !cJSON_IsNull(show_values))
    {
    goto end; //String
    }
    }

    // chart_data->show_alternate_h_grid_color
    cJSON *show_alternate_h_grid_color = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "showAlternateHGridColor");
    if (cJSON_IsNull(show_alternate_h_grid_color)) {
        show_alternate_h_grid_color = NULL;
    }
    if (show_alternate_h_grid_color) { 
    if(!cJSON_IsString(show_alternate_h_grid_color) && !cJSON_IsNull(show_alternate_h_grid_color))
    {
    goto end; //String
    }
    }

    // chart_data->alternate_h_grid_color
    cJSON *alternate_h_grid_color = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "alternateHGridColor");
    if (cJSON_IsNull(alternate_h_grid_color)) {
        alternate_h_grid_color = NULL;
    }
    if (alternate_h_grid_color) { 
    if(!cJSON_IsString(alternate_h_grid_color) && !cJSON_IsNull(alternate_h_grid_color))
    {
    goto end; //String
    }
    }

    // chart_data->div_line_color
    cJSON *div_line_color = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "divLineColor");
    if (cJSON_IsNull(div_line_color)) {
        div_line_color = NULL;
    }
    if (div_line_color) { 
    if(!cJSON_IsString(div_line_color) && !cJSON_IsNull(div_line_color))
    {
    goto end; //String
    }
    }

    // chart_data->div_line_alpha
    cJSON *div_line_alpha = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "divLineAlpha");
    if (cJSON_IsNull(div_line_alpha)) {
        div_line_alpha = NULL;
    }
    if (div_line_alpha) { 
    if(!cJSON_IsString(div_line_alpha) && !cJSON_IsNull(div_line_alpha))
    {
    goto end; //String
    }
    }

    // chart_data->alternate_h_grid_alpha
    cJSON *alternate_h_grid_alpha = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "alternateHGridAlpha");
    if (cJSON_IsNull(alternate_h_grid_alpha)) {
        alternate_h_grid_alpha = NULL;
    }
    if (alternate_h_grid_alpha) { 
    if(!cJSON_IsString(alternate_h_grid_alpha) && !cJSON_IsNull(alternate_h_grid_alpha))
    {
    goto end; //String
    }
    }

    // chart_data->rotate_names
    cJSON *rotate_names = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "rotateNames");
    if (cJSON_IsNull(rotate_names)) {
        rotate_names = NULL;
    }
    if (rotate_names) { 
    if(!cJSON_IsString(rotate_names) && !cJSON_IsNull(rotate_names))
    {
    goto end; //String
    }
    }

    // chart_data->returning
    cJSON *returning = cJSON_GetObjectItemCaseSensitive(chart_dataJSON, "returning");
    if (cJSON_IsNull(returning)) {
        returning = NULL;
    }
    if (returning) { 
    if(!cJSON_IsString(returning) && !cJSON_IsNull(returning))
    {
    goto end; //String
    }
    }


    chart_data_local_var = chart_data_create_internal (
        valid ? valid->valueint : 0,
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        version ? version->valuedouble : 0,
        serialize_nulls ? serialize_nulls->valueint : 0,
        start_time_log ? start_time_log->valuedouble : 0,
        error_code && !cJSON_IsNull(error_code) ? strdup(error_code->valuestring) : NULL,
        request ? requestList : NULL,
        identifier && !cJSON_IsNull(identifier) ? strdup(identifier->valuestring) : NULL,
        id_attribute && !cJSON_IsNull(id_attribute) ? strdup(id_attribute->valuestring) : NULL,
        label && !cJSON_IsNull(label) ? strdup(label->valuestring) : NULL,
        max_value ? max_value->valuedouble : 0,
        total_count ? total_count->valuedouble : 0,
        items ? itemsList : NULL,
        aggregated_items ? aggregated_itemsList : NULL,
        caption && !cJSON_IsNull(caption) ? strdup(caption->valuestring) : NULL,
        show_anchor && !cJSON_IsNull(show_anchor) ? strdup(show_anchor->valuestring) : NULL,
        anchor_alpha && !cJSON_IsNull(anchor_alpha) ? strdup(anchor_alpha->valuestring) : NULL,
        getx_axis_name && !cJSON_IsNull(getx_axis_name) ? strdup(getx_axis_name->valuestring) : NULL,
        gety_axis_min_value && !cJSON_IsNull(gety_axis_min_value) ? strdup(gety_axis_min_value->valuestring) : NULL,
        gety_axis_name && !cJSON_IsNull(gety_axis_name) ? strdup(gety_axis_name->valuestring) : NULL,
        decimal_precision && !cJSON_IsNull(decimal_precision) ? strdup(decimal_precision->valuestring) : NULL,
        format_number_scale && !cJSON_IsNull(format_number_scale) ? strdup(format_number_scale->valuestring) : NULL,
        number_prefix && !cJSON_IsNull(number_prefix) ? strdup(number_prefix->valuestring) : NULL,
        show_names && !cJSON_IsNull(show_names) ? strdup(show_names->valuestring) : NULL,
        show_values && !cJSON_IsNull(show_values) ? strdup(show_values->valuestring) : NULL,
        show_alternate_h_grid_color && !cJSON_IsNull(show_alternate_h_grid_color) ? strdup(show_alternate_h_grid_color->valuestring) : NULL,
        alternate_h_grid_color && !cJSON_IsNull(alternate_h_grid_color) ? strdup(alternate_h_grid_color->valuestring) : NULL,
        div_line_color && !cJSON_IsNull(div_line_color) ? strdup(div_line_color->valuestring) : NULL,
        div_line_alpha && !cJSON_IsNull(div_line_alpha) ? strdup(div_line_alpha->valuestring) : NULL,
        alternate_h_grid_alpha && !cJSON_IsNull(alternate_h_grid_alpha) ? strdup(alternate_h_grid_alpha->valuestring) : NULL,
        rotate_names && !cJSON_IsNull(rotate_names) ? strdup(rotate_names->valuestring) : NULL,
        returning && !cJSON_IsNull(returning) ? strdup(returning->valuestring) : NULL
        );

    return chart_data_local_var;
end:
    if (requestList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, requestList) {
            name_string_value_response_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(requestList);
        requestList = NULL;
    }
    if (itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, itemsList) {
            object_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(itemsList);
        itemsList = NULL;
    }
    if (aggregated_itemsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, aggregated_itemsList) {
            object_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(aggregated_itemsList);
        aggregated_itemsList = NULL;
    }
    return NULL;

}
