#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "shipment_batch.h"


char* shipment_batch_import_status_ToString(sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e import_status) {
    char* import_statusArray[] =  { "NULL", "NEW", "STARTED", "FETCHING_DISTANCE_DATA", "OPTIMIZING", "CREATING_ROUTES", "COMPLETED", "INCOMPLETE" };
    return import_statusArray[import_status];
}

sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e shipment_batch_import_status_FromString(char* import_status){
    int stringToReturn = 0;
    char *import_statusArray[] =  { "NULL", "NEW", "STARTED", "FETCHING_DISTANCE_DATA", "OPTIMIZING", "CREATING_ROUTES", "COMPLETED", "INCOMPLETE" };
    size_t sizeofArray = sizeof(import_statusArray) / sizeof(import_statusArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(import_status, import_statusArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static shipment_batch_t *shipment_batch_create_internal(
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
    ) {
    shipment_batch_t *shipment_batch_local_var = malloc(sizeof(shipment_batch_t));
    if (!shipment_batch_local_var) {
        return NULL;
    }
    shipment_batch_local_var->id = id;
    shipment_batch_local_var->created = created;
    shipment_batch_local_var->updated = updated;
    shipment_batch_local_var->active = active;
    shipment_batch_local_var->valid = valid;
    shipment_batch_local_var->retailer = retailer;
    shipment_batch_local_var->hub = hub;
    shipment_batch_local_var->program = program;
    shipment_batch_local_var->shipment_import_statuses = shipment_import_statuses;
    shipment_batch_local_var->shipments = shipments;
    shipment_batch_local_var->uploaded = uploaded;
    shipment_batch_local_var->started = started;
    shipment_batch_local_var->optimization_started = optimization_started;
    shipment_batch_local_var->completed = completed;
    shipment_batch_local_var->optimization_completed = optimization_completed;
    shipment_batch_local_var->source = source;
    shipment_batch_local_var->external_id = external_id;
    shipment_batch_local_var->total = total;
    shipment_batch_local_var->processed_count = processed_count;
    shipment_batch_local_var->success_count = success_count;
    shipment_batch_local_var->failed_count = failed_count;
    shipment_batch_local_var->valid_count = valid_count;
    shipment_batch_local_var->invalid_count = invalid_count;
    shipment_batch_local_var->average_travel_speed = average_travel_speed;
    shipment_batch_local_var->max_seconds = max_seconds;
    shipment_batch_local_var->import_status = import_status;
    shipment_batch_local_var->total_routes = total_routes;
    shipment_batch_local_var->routes_created = routes_created;
    shipment_batch_local_var->total_legs_requests = total_legs_requests;
    shipment_batch_local_var->legs_requested = legs_requested;
    shipment_batch_local_var->init_score = init_score;
    shipment_batch_local_var->hard_score = hard_score;
    shipment_batch_local_var->medium_score = medium_score;
    shipment_batch_local_var->soft_score = soft_score;

    shipment_batch_local_var->_library_owned = 1;
    return shipment_batch_local_var;
}

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
    ) {
    return shipment_batch_create_internal (
        id,
        created,
        updated,
        active,
        valid,
        retailer,
        hub,
        program,
        shipment_import_statuses,
        shipments,
        uploaded,
        started,
        optimization_started,
        completed,
        optimization_completed,
        source,
        external_id,
        total,
        processed_count,
        success_count,
        failed_count,
        valid_count,
        invalid_count,
        average_travel_speed,
        max_seconds,
        import_status,
        total_routes,
        routes_created,
        total_legs_requests,
        legs_requested,
        init_score,
        hard_score,
        medium_score,
        soft_score
        );
}

void shipment_batch_free(shipment_batch_t *shipment_batch) {
    if(NULL == shipment_batch){
        return ;
    }
    if(shipment_batch->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "shipment_batch_free");
        return ;
    }
    listEntry_t *listEntry;
    if (shipment_batch->created) {
        free(shipment_batch->created);
        shipment_batch->created = NULL;
    }
    if (shipment_batch->updated) {
        free(shipment_batch->updated);
        shipment_batch->updated = NULL;
    }
    if (shipment_batch->retailer) {
        retailer_free(shipment_batch->retailer);
        shipment_batch->retailer = NULL;
    }
    if (shipment_batch->hub) {
        service_hub_free(shipment_batch->hub);
        shipment_batch->hub = NULL;
    }
    if (shipment_batch->program) {
        program_free(shipment_batch->program);
        shipment_batch->program = NULL;
    }
    if (shipment_batch->shipment_import_statuses) {
        list_ForEach(listEntry, shipment_batch->shipment_import_statuses) {
            shipment_import_status_free(listEntry->data);
        }
        list_freeList(shipment_batch->shipment_import_statuses);
        shipment_batch->shipment_import_statuses = NULL;
    }
    if (shipment_batch->shipments) {
        list_ForEach(listEntry, shipment_batch->shipments) {
            shipment_free(listEntry->data);
        }
        list_freeList(shipment_batch->shipments);
        shipment_batch->shipments = NULL;
    }
    if (shipment_batch->uploaded) {
        free(shipment_batch->uploaded);
        shipment_batch->uploaded = NULL;
    }
    if (shipment_batch->started) {
        free(shipment_batch->started);
        shipment_batch->started = NULL;
    }
    if (shipment_batch->optimization_started) {
        free(shipment_batch->optimization_started);
        shipment_batch->optimization_started = NULL;
    }
    if (shipment_batch->completed) {
        free(shipment_batch->completed);
        shipment_batch->completed = NULL;
    }
    if (shipment_batch->optimization_completed) {
        free(shipment_batch->optimization_completed);
        shipment_batch->optimization_completed = NULL;
    }
    if (shipment_batch->source) {
        free(shipment_batch->source);
        shipment_batch->source = NULL;
    }
    if (shipment_batch->external_id) {
        free(shipment_batch->external_id);
        shipment_batch->external_id = NULL;
    }
    free(shipment_batch);
}

cJSON *shipment_batch_convertToJSON(shipment_batch_t *shipment_batch) {
    cJSON *item = cJSON_CreateObject();

    // shipment_batch->id
    if(shipment_batch->id) {
    if(cJSON_AddNumberToObject(item, "id", shipment_batch->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->created
    if(shipment_batch->created) {
    if(cJSON_AddStringToObject(item, "created", shipment_batch->created) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_batch->updated
    if(shipment_batch->updated) {
    if(cJSON_AddStringToObject(item, "updated", shipment_batch->updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_batch->active
    if(shipment_batch->active) {
    if(cJSON_AddBoolToObject(item, "active", shipment_batch->active) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment_batch->valid
    if(shipment_batch->valid) {
    if(cJSON_AddBoolToObject(item, "valid", shipment_batch->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment_batch->retailer
    if(shipment_batch->retailer) {
    cJSON *retailer_local_JSON = retailer_convertToJSON(shipment_batch->retailer);
    if(retailer_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "retailer", retailer_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment_batch->hub
    if(shipment_batch->hub) {
    cJSON *hub_local_JSON = service_hub_convertToJSON(shipment_batch->hub);
    if(hub_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "hub", hub_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment_batch->program
    if(shipment_batch->program) {
    cJSON *program_local_JSON = program_convertToJSON(shipment_batch->program);
    if(program_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "program", program_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // shipment_batch->shipment_import_statuses
    if(shipment_batch->shipment_import_statuses) {
    cJSON *shipment_import_statuses = cJSON_AddArrayToObject(item, "shipmentImportStatuses");
    if(shipment_import_statuses == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *shipment_import_statusesListEntry;
    if (shipment_batch->shipment_import_statuses) {
    list_ForEach(shipment_import_statusesListEntry, shipment_batch->shipment_import_statuses) {
    cJSON *itemLocal = shipment_import_status_convertToJSON(shipment_import_statusesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(shipment_import_statuses, itemLocal);
    }
    }
    }


    // shipment_batch->shipments
    if(shipment_batch->shipments) {
    cJSON *shipments = cJSON_AddArrayToObject(item, "shipments");
    if(shipments == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *shipmentsListEntry;
    if (shipment_batch->shipments) {
    list_ForEach(shipmentsListEntry, shipment_batch->shipments) {
    cJSON *itemLocal = shipment_convertToJSON(shipmentsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(shipments, itemLocal);
    }
    }
    }


    // shipment_batch->uploaded
    if(shipment_batch->uploaded) {
    if(cJSON_AddStringToObject(item, "uploaded", shipment_batch->uploaded) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_batch->started
    if(shipment_batch->started) {
    if(cJSON_AddStringToObject(item, "started", shipment_batch->started) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_batch->optimization_started
    if(shipment_batch->optimization_started) {
    if(cJSON_AddStringToObject(item, "optimizationStarted", shipment_batch->optimization_started) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_batch->completed
    if(shipment_batch->completed) {
    if(cJSON_AddStringToObject(item, "completed", shipment_batch->completed) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_batch->optimization_completed
    if(shipment_batch->optimization_completed) {
    if(cJSON_AddStringToObject(item, "optimizationCompleted", shipment_batch->optimization_completed) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_batch->source
    if(shipment_batch->source) {
    if(cJSON_AddStringToObject(item, "source", shipment_batch->source) == NULL) {
    goto fail; //String
    }
    }


    // shipment_batch->external_id
    if(shipment_batch->external_id) {
    if(cJSON_AddStringToObject(item, "externalId", shipment_batch->external_id) == NULL) {
    goto fail; //String
    }
    }


    // shipment_batch->total
    if(shipment_batch->total) {
    if(cJSON_AddNumberToObject(item, "total", shipment_batch->total) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->processed_count
    if(shipment_batch->processed_count) {
    if(cJSON_AddNumberToObject(item, "processedCount", shipment_batch->processed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->success_count
    if(shipment_batch->success_count) {
    if(cJSON_AddNumberToObject(item, "successCount", shipment_batch->success_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->failed_count
    if(shipment_batch->failed_count) {
    if(cJSON_AddNumberToObject(item, "failedCount", shipment_batch->failed_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->valid_count
    if(shipment_batch->valid_count) {
    if(cJSON_AddNumberToObject(item, "validCount", shipment_batch->valid_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->invalid_count
    if(shipment_batch->invalid_count) {
    if(cJSON_AddNumberToObject(item, "invalidCount", shipment_batch->invalid_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->average_travel_speed
    if(shipment_batch->average_travel_speed) {
    if(cJSON_AddNumberToObject(item, "averageTravelSpeed", shipment_batch->average_travel_speed) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->max_seconds
    if(shipment_batch->max_seconds) {
    if(cJSON_AddNumberToObject(item, "maxSeconds", shipment_batch->max_seconds) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->import_status
    if(shipment_batch->import_status != sirqul_iot_platform_shipment_batch_IMPORTSTATUS_NULL) {
    if(cJSON_AddStringToObject(item, "importStatus", shipment_batch_import_status_ToString(shipment_batch->import_status)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // shipment_batch->total_routes
    if(shipment_batch->total_routes) {
    if(cJSON_AddNumberToObject(item, "totalRoutes", shipment_batch->total_routes) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->routes_created
    if(shipment_batch->routes_created) {
    if(cJSON_AddNumberToObject(item, "routesCreated", shipment_batch->routes_created) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->total_legs_requests
    if(shipment_batch->total_legs_requests) {
    if(cJSON_AddNumberToObject(item, "totalLegsRequests", shipment_batch->total_legs_requests) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->legs_requested
    if(shipment_batch->legs_requested) {
    if(cJSON_AddNumberToObject(item, "legsRequested", shipment_batch->legs_requested) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->init_score
    if(shipment_batch->init_score) {
    if(cJSON_AddNumberToObject(item, "initScore", shipment_batch->init_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->hard_score
    if(shipment_batch->hard_score) {
    if(cJSON_AddNumberToObject(item, "hardScore", shipment_batch->hard_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->medium_score
    if(shipment_batch->medium_score) {
    if(cJSON_AddNumberToObject(item, "mediumScore", shipment_batch->medium_score) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_batch->soft_score
    if(shipment_batch->soft_score) {
    if(cJSON_AddNumberToObject(item, "softScore", shipment_batch->soft_score) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

shipment_batch_t *shipment_batch_parseFromJSON(cJSON *shipment_batchJSON){

    shipment_batch_t *shipment_batch_local_var = NULL;

    // define the local variable for shipment_batch->retailer
    retailer_t *retailer_local_nonprim = NULL;

    // define the local variable for shipment_batch->hub
    service_hub_t *hub_local_nonprim = NULL;

    // define the local variable for shipment_batch->program
    program_t *program_local_nonprim = NULL;

    // define the local list for shipment_batch->shipment_import_statuses
    list_t *shipment_import_statusesList = NULL;

    // define the local list for shipment_batch->shipments
    list_t *shipmentsList = NULL;

    // shipment_batch->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //DateTime
    }
    }

    // shipment_batch->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsString(updated) && !cJSON_IsNull(updated))
    {
    goto end; //DateTime
    }
    }

    // shipment_batch->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // shipment_batch->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // shipment_batch->retailer
    cJSON *retailer = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "retailer");
    if (cJSON_IsNull(retailer)) {
        retailer = NULL;
    }
    if (retailer) { 
    retailer_local_nonprim = retailer_parseFromJSON(retailer); //nonprimitive
    }

    // shipment_batch->hub
    cJSON *hub = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "hub");
    if (cJSON_IsNull(hub)) {
        hub = NULL;
    }
    if (hub) { 
    hub_local_nonprim = service_hub_parseFromJSON(hub); //nonprimitive
    }

    // shipment_batch->program
    cJSON *program = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "program");
    if (cJSON_IsNull(program)) {
        program = NULL;
    }
    if (program) { 
    program_local_nonprim = program_parseFromJSON(program); //nonprimitive
    }

    // shipment_batch->shipment_import_statuses
    cJSON *shipment_import_statuses = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "shipmentImportStatuses");
    if (cJSON_IsNull(shipment_import_statuses)) {
        shipment_import_statuses = NULL;
    }
    if (shipment_import_statuses) { 
    cJSON *shipment_import_statuses_local_nonprimitive = NULL;
    if(!cJSON_IsArray(shipment_import_statuses)){
        goto end; //nonprimitive container
    }

    shipment_import_statusesList = list_createList();

    cJSON_ArrayForEach(shipment_import_statuses_local_nonprimitive,shipment_import_statuses )
    {
        if(!cJSON_IsObject(shipment_import_statuses_local_nonprimitive)){
            goto end;
        }
        shipment_import_status_t *shipment_import_statusesItem = shipment_import_status_parseFromJSON(shipment_import_statuses_local_nonprimitive);

        list_addElement(shipment_import_statusesList, shipment_import_statusesItem);
    }
    }

    // shipment_batch->shipments
    cJSON *shipments = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "shipments");
    if (cJSON_IsNull(shipments)) {
        shipments = NULL;
    }
    if (shipments) { 
    cJSON *shipments_local_nonprimitive = NULL;
    if(!cJSON_IsArray(shipments)){
        goto end; //nonprimitive container
    }

    shipmentsList = list_createList();

    cJSON_ArrayForEach(shipments_local_nonprimitive,shipments )
    {
        if(!cJSON_IsObject(shipments_local_nonprimitive)){
            goto end;
        }
        shipment_t *shipmentsItem = shipment_parseFromJSON(shipments_local_nonprimitive);

        list_addElement(shipmentsList, shipmentsItem);
    }
    }

    // shipment_batch->uploaded
    cJSON *uploaded = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "uploaded");
    if (cJSON_IsNull(uploaded)) {
        uploaded = NULL;
    }
    if (uploaded) { 
    if(!cJSON_IsString(uploaded) && !cJSON_IsNull(uploaded))
    {
    goto end; //DateTime
    }
    }

    // shipment_batch->started
    cJSON *started = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "started");
    if (cJSON_IsNull(started)) {
        started = NULL;
    }
    if (started) { 
    if(!cJSON_IsString(started) && !cJSON_IsNull(started))
    {
    goto end; //DateTime
    }
    }

    // shipment_batch->optimization_started
    cJSON *optimization_started = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "optimizationStarted");
    if (cJSON_IsNull(optimization_started)) {
        optimization_started = NULL;
    }
    if (optimization_started) { 
    if(!cJSON_IsString(optimization_started) && !cJSON_IsNull(optimization_started))
    {
    goto end; //DateTime
    }
    }

    // shipment_batch->completed
    cJSON *completed = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "completed");
    if (cJSON_IsNull(completed)) {
        completed = NULL;
    }
    if (completed) { 
    if(!cJSON_IsString(completed) && !cJSON_IsNull(completed))
    {
    goto end; //DateTime
    }
    }

    // shipment_batch->optimization_completed
    cJSON *optimization_completed = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "optimizationCompleted");
    if (cJSON_IsNull(optimization_completed)) {
        optimization_completed = NULL;
    }
    if (optimization_completed) { 
    if(!cJSON_IsString(optimization_completed) && !cJSON_IsNull(optimization_completed))
    {
    goto end; //DateTime
    }
    }

    // shipment_batch->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "source");
    if (cJSON_IsNull(source)) {
        source = NULL;
    }
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // shipment_batch->external_id
    cJSON *external_id = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "externalId");
    if (cJSON_IsNull(external_id)) {
        external_id = NULL;
    }
    if (external_id) { 
    if(!cJSON_IsString(external_id) && !cJSON_IsNull(external_id))
    {
    goto end; //String
    }
    }

    // shipment_batch->total
    cJSON *total = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "total");
    if (cJSON_IsNull(total)) {
        total = NULL;
    }
    if (total) { 
    if(!cJSON_IsNumber(total))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->processed_count
    cJSON *processed_count = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "processedCount");
    if (cJSON_IsNull(processed_count)) {
        processed_count = NULL;
    }
    if (processed_count) { 
    if(!cJSON_IsNumber(processed_count))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->success_count
    cJSON *success_count = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "successCount");
    if (cJSON_IsNull(success_count)) {
        success_count = NULL;
    }
    if (success_count) { 
    if(!cJSON_IsNumber(success_count))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->failed_count
    cJSON *failed_count = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "failedCount");
    if (cJSON_IsNull(failed_count)) {
        failed_count = NULL;
    }
    if (failed_count) { 
    if(!cJSON_IsNumber(failed_count))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->valid_count
    cJSON *valid_count = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "validCount");
    if (cJSON_IsNull(valid_count)) {
        valid_count = NULL;
    }
    if (valid_count) { 
    if(!cJSON_IsNumber(valid_count))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->invalid_count
    cJSON *invalid_count = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "invalidCount");
    if (cJSON_IsNull(invalid_count)) {
        invalid_count = NULL;
    }
    if (invalid_count) { 
    if(!cJSON_IsNumber(invalid_count))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->average_travel_speed
    cJSON *average_travel_speed = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "averageTravelSpeed");
    if (cJSON_IsNull(average_travel_speed)) {
        average_travel_speed = NULL;
    }
    if (average_travel_speed) { 
    if(!cJSON_IsNumber(average_travel_speed))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->max_seconds
    cJSON *max_seconds = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "maxSeconds");
    if (cJSON_IsNull(max_seconds)) {
        max_seconds = NULL;
    }
    if (max_seconds) { 
    if(!cJSON_IsNumber(max_seconds))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->import_status
    cJSON *import_status = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "importStatus");
    if (cJSON_IsNull(import_status)) {
        import_status = NULL;
    }
    sirqul_iot_platform_shipment_batch_IMPORTSTATUS_e import_statusVariable;
    if (import_status) { 
    if(!cJSON_IsString(import_status))
    {
    goto end; //Enum
    }
    import_statusVariable = shipment_batch_import_status_FromString(import_status->valuestring);
    }

    // shipment_batch->total_routes
    cJSON *total_routes = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "totalRoutes");
    if (cJSON_IsNull(total_routes)) {
        total_routes = NULL;
    }
    if (total_routes) { 
    if(!cJSON_IsNumber(total_routes))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->routes_created
    cJSON *routes_created = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "routesCreated");
    if (cJSON_IsNull(routes_created)) {
        routes_created = NULL;
    }
    if (routes_created) { 
    if(!cJSON_IsNumber(routes_created))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->total_legs_requests
    cJSON *total_legs_requests = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "totalLegsRequests");
    if (cJSON_IsNull(total_legs_requests)) {
        total_legs_requests = NULL;
    }
    if (total_legs_requests) { 
    if(!cJSON_IsNumber(total_legs_requests))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->legs_requested
    cJSON *legs_requested = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "legsRequested");
    if (cJSON_IsNull(legs_requested)) {
        legs_requested = NULL;
    }
    if (legs_requested) { 
    if(!cJSON_IsNumber(legs_requested))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->init_score
    cJSON *init_score = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "initScore");
    if (cJSON_IsNull(init_score)) {
        init_score = NULL;
    }
    if (init_score) { 
    if(!cJSON_IsNumber(init_score))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->hard_score
    cJSON *hard_score = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "hardScore");
    if (cJSON_IsNull(hard_score)) {
        hard_score = NULL;
    }
    if (hard_score) { 
    if(!cJSON_IsNumber(hard_score))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->medium_score
    cJSON *medium_score = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "mediumScore");
    if (cJSON_IsNull(medium_score)) {
        medium_score = NULL;
    }
    if (medium_score) { 
    if(!cJSON_IsNumber(medium_score))
    {
    goto end; //Numeric
    }
    }

    // shipment_batch->soft_score
    cJSON *soft_score = cJSON_GetObjectItemCaseSensitive(shipment_batchJSON, "softScore");
    if (cJSON_IsNull(soft_score)) {
        soft_score = NULL;
    }
    if (soft_score) { 
    if(!cJSON_IsNumber(soft_score))
    {
    goto end; //Numeric
    }
    }


    shipment_batch_local_var = shipment_batch_create_internal (
        id ? id->valuedouble : 0,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        updated && !cJSON_IsNull(updated) ? strdup(updated->valuestring) : NULL,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        retailer ? retailer_local_nonprim : NULL,
        hub ? hub_local_nonprim : NULL,
        program ? program_local_nonprim : NULL,
        shipment_import_statuses ? shipment_import_statusesList : NULL,
        shipments ? shipmentsList : NULL,
        uploaded && !cJSON_IsNull(uploaded) ? strdup(uploaded->valuestring) : NULL,
        started && !cJSON_IsNull(started) ? strdup(started->valuestring) : NULL,
        optimization_started && !cJSON_IsNull(optimization_started) ? strdup(optimization_started->valuestring) : NULL,
        completed && !cJSON_IsNull(completed) ? strdup(completed->valuestring) : NULL,
        optimization_completed && !cJSON_IsNull(optimization_completed) ? strdup(optimization_completed->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        external_id && !cJSON_IsNull(external_id) ? strdup(external_id->valuestring) : NULL,
        total ? total->valuedouble : 0,
        processed_count ? processed_count->valuedouble : 0,
        success_count ? success_count->valuedouble : 0,
        failed_count ? failed_count->valuedouble : 0,
        valid_count ? valid_count->valuedouble : 0,
        invalid_count ? invalid_count->valuedouble : 0,
        average_travel_speed ? average_travel_speed->valuedouble : 0,
        max_seconds ? max_seconds->valuedouble : 0,
        import_status ? import_statusVariable : sirqul_iot_platform_shipment_batch_IMPORTSTATUS_NULL,
        total_routes ? total_routes->valuedouble : 0,
        routes_created ? routes_created->valuedouble : 0,
        total_legs_requests ? total_legs_requests->valuedouble : 0,
        legs_requested ? legs_requested->valuedouble : 0,
        init_score ? init_score->valuedouble : 0,
        hard_score ? hard_score->valuedouble : 0,
        medium_score ? medium_score->valuedouble : 0,
        soft_score ? soft_score->valuedouble : 0
        );

    return shipment_batch_local_var;
end:
    if (retailer_local_nonprim) {
        retailer_free(retailer_local_nonprim);
        retailer_local_nonprim = NULL;
    }
    if (hub_local_nonprim) {
        service_hub_free(hub_local_nonprim);
        hub_local_nonprim = NULL;
    }
    if (program_local_nonprim) {
        program_free(program_local_nonprim);
        program_local_nonprim = NULL;
    }
    if (shipment_import_statusesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, shipment_import_statusesList) {
            shipment_import_status_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(shipment_import_statusesList);
        shipment_import_statusesList = NULL;
    }
    if (shipmentsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, shipmentsList) {
            shipment_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(shipmentsList);
        shipmentsList = NULL;
    }
    return NULL;

}
