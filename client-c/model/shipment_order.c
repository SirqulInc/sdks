#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "shipment_order.h"



static shipment_order_t *shipment_order_create_internal(
    int valid,
    int batch_id,
    int batch_size,
    double order_tracking_id,
    char *client_ref_no,
    char *client_ref_no2,
    char *hub_code,
    char *account_no,
    char *company_name,
    char *vehicle_type_name,
    char *service_type_name,
    char *service_code,
    int pieces,
    double weight,
    double cubic_feet,
    char *pickup_company,
    char *pickup_contact,
    char *pickup_phone,
    char *pickup_street,
    char *pickup_street2,
    char *pickup_city,
    char *pickup_state,
    char *pickup_zip,
    char *pickup_target_from,
    char *pickup_target_to,
    char *delivery_company,
    char *delivery_contact,
    char *delivery_phone,
    char *delivery_street,
    char *delivery_street2,
    char *delivery_city,
    char *delivery_state,
    char *delivery_zip,
    char *delivery_target_from,
    char *delivery_target_to,
    list_t *order_packages,
    int route_id,
    int driver_id,
    int pickup_sequence_no,
    int delivery_sequence_no,
    char *pickup_eta,
    char *delivery_eta
    ) {
    shipment_order_t *shipment_order_local_var = malloc(sizeof(shipment_order_t));
    if (!shipment_order_local_var) {
        return NULL;
    }
    shipment_order_local_var->valid = valid;
    shipment_order_local_var->batch_id = batch_id;
    shipment_order_local_var->batch_size = batch_size;
    shipment_order_local_var->order_tracking_id = order_tracking_id;
    shipment_order_local_var->client_ref_no = client_ref_no;
    shipment_order_local_var->client_ref_no2 = client_ref_no2;
    shipment_order_local_var->hub_code = hub_code;
    shipment_order_local_var->account_no = account_no;
    shipment_order_local_var->company_name = company_name;
    shipment_order_local_var->vehicle_type_name = vehicle_type_name;
    shipment_order_local_var->service_type_name = service_type_name;
    shipment_order_local_var->service_code = service_code;
    shipment_order_local_var->pieces = pieces;
    shipment_order_local_var->weight = weight;
    shipment_order_local_var->cubic_feet = cubic_feet;
    shipment_order_local_var->pickup_company = pickup_company;
    shipment_order_local_var->pickup_contact = pickup_contact;
    shipment_order_local_var->pickup_phone = pickup_phone;
    shipment_order_local_var->pickup_street = pickup_street;
    shipment_order_local_var->pickup_street2 = pickup_street2;
    shipment_order_local_var->pickup_city = pickup_city;
    shipment_order_local_var->pickup_state = pickup_state;
    shipment_order_local_var->pickup_zip = pickup_zip;
    shipment_order_local_var->pickup_target_from = pickup_target_from;
    shipment_order_local_var->pickup_target_to = pickup_target_to;
    shipment_order_local_var->delivery_company = delivery_company;
    shipment_order_local_var->delivery_contact = delivery_contact;
    shipment_order_local_var->delivery_phone = delivery_phone;
    shipment_order_local_var->delivery_street = delivery_street;
    shipment_order_local_var->delivery_street2 = delivery_street2;
    shipment_order_local_var->delivery_city = delivery_city;
    shipment_order_local_var->delivery_state = delivery_state;
    shipment_order_local_var->delivery_zip = delivery_zip;
    shipment_order_local_var->delivery_target_from = delivery_target_from;
    shipment_order_local_var->delivery_target_to = delivery_target_to;
    shipment_order_local_var->order_packages = order_packages;
    shipment_order_local_var->route_id = route_id;
    shipment_order_local_var->driver_id = driver_id;
    shipment_order_local_var->pickup_sequence_no = pickup_sequence_no;
    shipment_order_local_var->delivery_sequence_no = delivery_sequence_no;
    shipment_order_local_var->pickup_eta = pickup_eta;
    shipment_order_local_var->delivery_eta = delivery_eta;

    shipment_order_local_var->_library_owned = 1;
    return shipment_order_local_var;
}

__attribute__((deprecated)) shipment_order_t *shipment_order_create(
    int valid,
    int batch_id,
    int batch_size,
    double order_tracking_id,
    char *client_ref_no,
    char *client_ref_no2,
    char *hub_code,
    char *account_no,
    char *company_name,
    char *vehicle_type_name,
    char *service_type_name,
    char *service_code,
    int pieces,
    double weight,
    double cubic_feet,
    char *pickup_company,
    char *pickup_contact,
    char *pickup_phone,
    char *pickup_street,
    char *pickup_street2,
    char *pickup_city,
    char *pickup_state,
    char *pickup_zip,
    char *pickup_target_from,
    char *pickup_target_to,
    char *delivery_company,
    char *delivery_contact,
    char *delivery_phone,
    char *delivery_street,
    char *delivery_street2,
    char *delivery_city,
    char *delivery_state,
    char *delivery_zip,
    char *delivery_target_from,
    char *delivery_target_to,
    list_t *order_packages,
    int route_id,
    int driver_id,
    int pickup_sequence_no,
    int delivery_sequence_no,
    char *pickup_eta,
    char *delivery_eta
    ) {
    return shipment_order_create_internal (
        valid,
        batch_id,
        batch_size,
        order_tracking_id,
        client_ref_no,
        client_ref_no2,
        hub_code,
        account_no,
        company_name,
        vehicle_type_name,
        service_type_name,
        service_code,
        pieces,
        weight,
        cubic_feet,
        pickup_company,
        pickup_contact,
        pickup_phone,
        pickup_street,
        pickup_street2,
        pickup_city,
        pickup_state,
        pickup_zip,
        pickup_target_from,
        pickup_target_to,
        delivery_company,
        delivery_contact,
        delivery_phone,
        delivery_street,
        delivery_street2,
        delivery_city,
        delivery_state,
        delivery_zip,
        delivery_target_from,
        delivery_target_to,
        order_packages,
        route_id,
        driver_id,
        pickup_sequence_no,
        delivery_sequence_no,
        pickup_eta,
        delivery_eta
        );
}

void shipment_order_free(shipment_order_t *shipment_order) {
    if(NULL == shipment_order){
        return ;
    }
    if(shipment_order->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "shipment_order_free");
        return ;
    }
    listEntry_t *listEntry;
    if (shipment_order->client_ref_no) {
        free(shipment_order->client_ref_no);
        shipment_order->client_ref_no = NULL;
    }
    if (shipment_order->client_ref_no2) {
        free(shipment_order->client_ref_no2);
        shipment_order->client_ref_no2 = NULL;
    }
    if (shipment_order->hub_code) {
        free(shipment_order->hub_code);
        shipment_order->hub_code = NULL;
    }
    if (shipment_order->account_no) {
        free(shipment_order->account_no);
        shipment_order->account_no = NULL;
    }
    if (shipment_order->company_name) {
        free(shipment_order->company_name);
        shipment_order->company_name = NULL;
    }
    if (shipment_order->vehicle_type_name) {
        free(shipment_order->vehicle_type_name);
        shipment_order->vehicle_type_name = NULL;
    }
    if (shipment_order->service_type_name) {
        free(shipment_order->service_type_name);
        shipment_order->service_type_name = NULL;
    }
    if (shipment_order->service_code) {
        free(shipment_order->service_code);
        shipment_order->service_code = NULL;
    }
    if (shipment_order->pickup_company) {
        free(shipment_order->pickup_company);
        shipment_order->pickup_company = NULL;
    }
    if (shipment_order->pickup_contact) {
        free(shipment_order->pickup_contact);
        shipment_order->pickup_contact = NULL;
    }
    if (shipment_order->pickup_phone) {
        free(shipment_order->pickup_phone);
        shipment_order->pickup_phone = NULL;
    }
    if (shipment_order->pickup_street) {
        free(shipment_order->pickup_street);
        shipment_order->pickup_street = NULL;
    }
    if (shipment_order->pickup_street2) {
        free(shipment_order->pickup_street2);
        shipment_order->pickup_street2 = NULL;
    }
    if (shipment_order->pickup_city) {
        free(shipment_order->pickup_city);
        shipment_order->pickup_city = NULL;
    }
    if (shipment_order->pickup_state) {
        free(shipment_order->pickup_state);
        shipment_order->pickup_state = NULL;
    }
    if (shipment_order->pickup_zip) {
        free(shipment_order->pickup_zip);
        shipment_order->pickup_zip = NULL;
    }
    if (shipment_order->pickup_target_from) {
        free(shipment_order->pickup_target_from);
        shipment_order->pickup_target_from = NULL;
    }
    if (shipment_order->pickup_target_to) {
        free(shipment_order->pickup_target_to);
        shipment_order->pickup_target_to = NULL;
    }
    if (shipment_order->delivery_company) {
        free(shipment_order->delivery_company);
        shipment_order->delivery_company = NULL;
    }
    if (shipment_order->delivery_contact) {
        free(shipment_order->delivery_contact);
        shipment_order->delivery_contact = NULL;
    }
    if (shipment_order->delivery_phone) {
        free(shipment_order->delivery_phone);
        shipment_order->delivery_phone = NULL;
    }
    if (shipment_order->delivery_street) {
        free(shipment_order->delivery_street);
        shipment_order->delivery_street = NULL;
    }
    if (shipment_order->delivery_street2) {
        free(shipment_order->delivery_street2);
        shipment_order->delivery_street2 = NULL;
    }
    if (shipment_order->delivery_city) {
        free(shipment_order->delivery_city);
        shipment_order->delivery_city = NULL;
    }
    if (shipment_order->delivery_state) {
        free(shipment_order->delivery_state);
        shipment_order->delivery_state = NULL;
    }
    if (shipment_order->delivery_zip) {
        free(shipment_order->delivery_zip);
        shipment_order->delivery_zip = NULL;
    }
    if (shipment_order->delivery_target_from) {
        free(shipment_order->delivery_target_from);
        shipment_order->delivery_target_from = NULL;
    }
    if (shipment_order->delivery_target_to) {
        free(shipment_order->delivery_target_to);
        shipment_order->delivery_target_to = NULL;
    }
    if (shipment_order->order_packages) {
        list_ForEach(listEntry, shipment_order->order_packages) {
            order_package_free(listEntry->data);
        }
        list_freeList(shipment_order->order_packages);
        shipment_order->order_packages = NULL;
    }
    if (shipment_order->pickup_eta) {
        free(shipment_order->pickup_eta);
        shipment_order->pickup_eta = NULL;
    }
    if (shipment_order->delivery_eta) {
        free(shipment_order->delivery_eta);
        shipment_order->delivery_eta = NULL;
    }
    free(shipment_order);
}

cJSON *shipment_order_convertToJSON(shipment_order_t *shipment_order) {
    cJSON *item = cJSON_CreateObject();

    // shipment_order->valid
    if(shipment_order->valid) {
    if(cJSON_AddBoolToObject(item, "valid", shipment_order->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // shipment_order->batch_id
    if(shipment_order->batch_id) {
    if(cJSON_AddNumberToObject(item, "BatchID", shipment_order->batch_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->batch_size
    if(shipment_order->batch_size) {
    if(cJSON_AddNumberToObject(item, "BatchSize", shipment_order->batch_size) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->order_tracking_id
    if(shipment_order->order_tracking_id) {
    if(cJSON_AddNumberToObject(item, "OrderTrackingID", shipment_order->order_tracking_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->client_ref_no
    if(shipment_order->client_ref_no) {
    if(cJSON_AddStringToObject(item, "ClientRefNo", shipment_order->client_ref_no) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->client_ref_no2
    if(shipment_order->client_ref_no2) {
    if(cJSON_AddStringToObject(item, "ClientRefNo2", shipment_order->client_ref_no2) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->hub_code
    if(shipment_order->hub_code) {
    if(cJSON_AddStringToObject(item, "HubCode", shipment_order->hub_code) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->account_no
    if(shipment_order->account_no) {
    if(cJSON_AddStringToObject(item, "AccountNo", shipment_order->account_no) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->company_name
    if(shipment_order->company_name) {
    if(cJSON_AddStringToObject(item, "CompanyName", shipment_order->company_name) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->vehicle_type_name
    if(shipment_order->vehicle_type_name) {
    if(cJSON_AddStringToObject(item, "VehicleTypeName", shipment_order->vehicle_type_name) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->service_type_name
    if(shipment_order->service_type_name) {
    if(cJSON_AddStringToObject(item, "ServiceTypeName", shipment_order->service_type_name) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->service_code
    if(shipment_order->service_code) {
    if(cJSON_AddStringToObject(item, "ServiceCode", shipment_order->service_code) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pieces
    if(shipment_order->pieces) {
    if(cJSON_AddNumberToObject(item, "Pieces", shipment_order->pieces) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->weight
    if(shipment_order->weight) {
    if(cJSON_AddNumberToObject(item, "Weight", shipment_order->weight) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->cubic_feet
    if(shipment_order->cubic_feet) {
    if(cJSON_AddNumberToObject(item, "CubicFeet", shipment_order->cubic_feet) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->pickup_company
    if(shipment_order->pickup_company) {
    if(cJSON_AddStringToObject(item, "PickupCompany", shipment_order->pickup_company) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_contact
    if(shipment_order->pickup_contact) {
    if(cJSON_AddStringToObject(item, "PickupContact", shipment_order->pickup_contact) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_phone
    if(shipment_order->pickup_phone) {
    if(cJSON_AddStringToObject(item, "PickupPhone", shipment_order->pickup_phone) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_street
    if(shipment_order->pickup_street) {
    if(cJSON_AddStringToObject(item, "PickupStreet", shipment_order->pickup_street) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_street2
    if(shipment_order->pickup_street2) {
    if(cJSON_AddStringToObject(item, "PickupStreet2", shipment_order->pickup_street2) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_city
    if(shipment_order->pickup_city) {
    if(cJSON_AddStringToObject(item, "PickupCity", shipment_order->pickup_city) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_state
    if(shipment_order->pickup_state) {
    if(cJSON_AddStringToObject(item, "PickupState", shipment_order->pickup_state) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_zip
    if(shipment_order->pickup_zip) {
    if(cJSON_AddStringToObject(item, "PickupZip", shipment_order->pickup_zip) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->pickup_target_from
    if(shipment_order->pickup_target_from) {
    if(cJSON_AddStringToObject(item, "PickupTargetFrom", shipment_order->pickup_target_from) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_order->pickup_target_to
    if(shipment_order->pickup_target_to) {
    if(cJSON_AddStringToObject(item, "PickupTargetTo", shipment_order->pickup_target_to) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_order->delivery_company
    if(shipment_order->delivery_company) {
    if(cJSON_AddStringToObject(item, "DeliveryCompany", shipment_order->delivery_company) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_contact
    if(shipment_order->delivery_contact) {
    if(cJSON_AddStringToObject(item, "DeliveryContact", shipment_order->delivery_contact) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_phone
    if(shipment_order->delivery_phone) {
    if(cJSON_AddStringToObject(item, "DeliveryPhone", shipment_order->delivery_phone) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_street
    if(shipment_order->delivery_street) {
    if(cJSON_AddStringToObject(item, "DeliveryStreet", shipment_order->delivery_street) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_street2
    if(shipment_order->delivery_street2) {
    if(cJSON_AddStringToObject(item, "DeliveryStreet2", shipment_order->delivery_street2) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_city
    if(shipment_order->delivery_city) {
    if(cJSON_AddStringToObject(item, "DeliveryCity", shipment_order->delivery_city) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_state
    if(shipment_order->delivery_state) {
    if(cJSON_AddStringToObject(item, "DeliveryState", shipment_order->delivery_state) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_zip
    if(shipment_order->delivery_zip) {
    if(cJSON_AddStringToObject(item, "DeliveryZip", shipment_order->delivery_zip) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_target_from
    if(shipment_order->delivery_target_from) {
    if(cJSON_AddStringToObject(item, "DeliveryTargetFrom", shipment_order->delivery_target_from) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_order->delivery_target_to
    if(shipment_order->delivery_target_to) {
    if(cJSON_AddStringToObject(item, "DeliveryTargetTo", shipment_order->delivery_target_to) == NULL) {
    goto fail; //Date-Time
    }
    }


    // shipment_order->order_packages
    if(shipment_order->order_packages) {
    cJSON *order_packages = cJSON_AddArrayToObject(item, "OrderPackages");
    if(order_packages == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *order_packagesListEntry;
    if (shipment_order->order_packages) {
    list_ForEach(order_packagesListEntry, shipment_order->order_packages) {
    cJSON *itemLocal = order_package_convertToJSON(order_packagesListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(order_packages, itemLocal);
    }
    }
    }


    // shipment_order->route_id
    if(shipment_order->route_id) {
    if(cJSON_AddNumberToObject(item, "RouteID", shipment_order->route_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->driver_id
    if(shipment_order->driver_id) {
    if(cJSON_AddNumberToObject(item, "DriverID", shipment_order->driver_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->pickup_sequence_no
    if(shipment_order->pickup_sequence_no) {
    if(cJSON_AddNumberToObject(item, "PickupSequenceNo", shipment_order->pickup_sequence_no) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->delivery_sequence_no
    if(shipment_order->delivery_sequence_no) {
    if(cJSON_AddNumberToObject(item, "DeliverySequenceNo", shipment_order->delivery_sequence_no) == NULL) {
    goto fail; //Numeric
    }
    }


    // shipment_order->pickup_eta
    if(shipment_order->pickup_eta) {
    if(cJSON_AddStringToObject(item, "PickupETA", shipment_order->pickup_eta) == NULL) {
    goto fail; //String
    }
    }


    // shipment_order->delivery_eta
    if(shipment_order->delivery_eta) {
    if(cJSON_AddStringToObject(item, "DeliveryETA", shipment_order->delivery_eta) == NULL) {
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

shipment_order_t *shipment_order_parseFromJSON(cJSON *shipment_orderJSON){

    shipment_order_t *shipment_order_local_var = NULL;

    // define the local list for shipment_order->order_packages
    list_t *order_packagesList = NULL;

    // shipment_order->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // shipment_order->batch_id
    cJSON *batch_id = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "BatchID");
    if (cJSON_IsNull(batch_id)) {
        batch_id = NULL;
    }
    if (batch_id) { 
    if(!cJSON_IsNumber(batch_id))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->batch_size
    cJSON *batch_size = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "BatchSize");
    if (cJSON_IsNull(batch_size)) {
        batch_size = NULL;
    }
    if (batch_size) { 
    if(!cJSON_IsNumber(batch_size))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->order_tracking_id
    cJSON *order_tracking_id = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "OrderTrackingID");
    if (cJSON_IsNull(order_tracking_id)) {
        order_tracking_id = NULL;
    }
    if (order_tracking_id) { 
    if(!cJSON_IsNumber(order_tracking_id))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->client_ref_no
    cJSON *client_ref_no = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "ClientRefNo");
    if (cJSON_IsNull(client_ref_no)) {
        client_ref_no = NULL;
    }
    if (client_ref_no) { 
    if(!cJSON_IsString(client_ref_no) && !cJSON_IsNull(client_ref_no))
    {
    goto end; //String
    }
    }

    // shipment_order->client_ref_no2
    cJSON *client_ref_no2 = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "ClientRefNo2");
    if (cJSON_IsNull(client_ref_no2)) {
        client_ref_no2 = NULL;
    }
    if (client_ref_no2) { 
    if(!cJSON_IsString(client_ref_no2) && !cJSON_IsNull(client_ref_no2))
    {
    goto end; //String
    }
    }

    // shipment_order->hub_code
    cJSON *hub_code = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "HubCode");
    if (cJSON_IsNull(hub_code)) {
        hub_code = NULL;
    }
    if (hub_code) { 
    if(!cJSON_IsString(hub_code) && !cJSON_IsNull(hub_code))
    {
    goto end; //String
    }
    }

    // shipment_order->account_no
    cJSON *account_no = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "AccountNo");
    if (cJSON_IsNull(account_no)) {
        account_no = NULL;
    }
    if (account_no) { 
    if(!cJSON_IsString(account_no) && !cJSON_IsNull(account_no))
    {
    goto end; //String
    }
    }

    // shipment_order->company_name
    cJSON *company_name = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "CompanyName");
    if (cJSON_IsNull(company_name)) {
        company_name = NULL;
    }
    if (company_name) { 
    if(!cJSON_IsString(company_name) && !cJSON_IsNull(company_name))
    {
    goto end; //String
    }
    }

    // shipment_order->vehicle_type_name
    cJSON *vehicle_type_name = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "VehicleTypeName");
    if (cJSON_IsNull(vehicle_type_name)) {
        vehicle_type_name = NULL;
    }
    if (vehicle_type_name) { 
    if(!cJSON_IsString(vehicle_type_name) && !cJSON_IsNull(vehicle_type_name))
    {
    goto end; //String
    }
    }

    // shipment_order->service_type_name
    cJSON *service_type_name = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "ServiceTypeName");
    if (cJSON_IsNull(service_type_name)) {
        service_type_name = NULL;
    }
    if (service_type_name) { 
    if(!cJSON_IsString(service_type_name) && !cJSON_IsNull(service_type_name))
    {
    goto end; //String
    }
    }

    // shipment_order->service_code
    cJSON *service_code = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "ServiceCode");
    if (cJSON_IsNull(service_code)) {
        service_code = NULL;
    }
    if (service_code) { 
    if(!cJSON_IsString(service_code) && !cJSON_IsNull(service_code))
    {
    goto end; //String
    }
    }

    // shipment_order->pieces
    cJSON *pieces = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "Pieces");
    if (cJSON_IsNull(pieces)) {
        pieces = NULL;
    }
    if (pieces) { 
    if(!cJSON_IsNumber(pieces))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->weight
    cJSON *weight = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "Weight");
    if (cJSON_IsNull(weight)) {
        weight = NULL;
    }
    if (weight) { 
    if(!cJSON_IsNumber(weight))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->cubic_feet
    cJSON *cubic_feet = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "CubicFeet");
    if (cJSON_IsNull(cubic_feet)) {
        cubic_feet = NULL;
    }
    if (cubic_feet) { 
    if(!cJSON_IsNumber(cubic_feet))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->pickup_company
    cJSON *pickup_company = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupCompany");
    if (cJSON_IsNull(pickup_company)) {
        pickup_company = NULL;
    }
    if (pickup_company) { 
    if(!cJSON_IsString(pickup_company) && !cJSON_IsNull(pickup_company))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_contact
    cJSON *pickup_contact = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupContact");
    if (cJSON_IsNull(pickup_contact)) {
        pickup_contact = NULL;
    }
    if (pickup_contact) { 
    if(!cJSON_IsString(pickup_contact) && !cJSON_IsNull(pickup_contact))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_phone
    cJSON *pickup_phone = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupPhone");
    if (cJSON_IsNull(pickup_phone)) {
        pickup_phone = NULL;
    }
    if (pickup_phone) { 
    if(!cJSON_IsString(pickup_phone) && !cJSON_IsNull(pickup_phone))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_street
    cJSON *pickup_street = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupStreet");
    if (cJSON_IsNull(pickup_street)) {
        pickup_street = NULL;
    }
    if (pickup_street) { 
    if(!cJSON_IsString(pickup_street) && !cJSON_IsNull(pickup_street))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_street2
    cJSON *pickup_street2 = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupStreet2");
    if (cJSON_IsNull(pickup_street2)) {
        pickup_street2 = NULL;
    }
    if (pickup_street2) { 
    if(!cJSON_IsString(pickup_street2) && !cJSON_IsNull(pickup_street2))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_city
    cJSON *pickup_city = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupCity");
    if (cJSON_IsNull(pickup_city)) {
        pickup_city = NULL;
    }
    if (pickup_city) { 
    if(!cJSON_IsString(pickup_city) && !cJSON_IsNull(pickup_city))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_state
    cJSON *pickup_state = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupState");
    if (cJSON_IsNull(pickup_state)) {
        pickup_state = NULL;
    }
    if (pickup_state) { 
    if(!cJSON_IsString(pickup_state) && !cJSON_IsNull(pickup_state))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_zip
    cJSON *pickup_zip = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupZip");
    if (cJSON_IsNull(pickup_zip)) {
        pickup_zip = NULL;
    }
    if (pickup_zip) { 
    if(!cJSON_IsString(pickup_zip) && !cJSON_IsNull(pickup_zip))
    {
    goto end; //String
    }
    }

    // shipment_order->pickup_target_from
    cJSON *pickup_target_from = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupTargetFrom");
    if (cJSON_IsNull(pickup_target_from)) {
        pickup_target_from = NULL;
    }
    if (pickup_target_from) { 
    if(!cJSON_IsString(pickup_target_from) && !cJSON_IsNull(pickup_target_from))
    {
    goto end; //DateTime
    }
    }

    // shipment_order->pickup_target_to
    cJSON *pickup_target_to = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupTargetTo");
    if (cJSON_IsNull(pickup_target_to)) {
        pickup_target_to = NULL;
    }
    if (pickup_target_to) { 
    if(!cJSON_IsString(pickup_target_to) && !cJSON_IsNull(pickup_target_to))
    {
    goto end; //DateTime
    }
    }

    // shipment_order->delivery_company
    cJSON *delivery_company = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryCompany");
    if (cJSON_IsNull(delivery_company)) {
        delivery_company = NULL;
    }
    if (delivery_company) { 
    if(!cJSON_IsString(delivery_company) && !cJSON_IsNull(delivery_company))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_contact
    cJSON *delivery_contact = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryContact");
    if (cJSON_IsNull(delivery_contact)) {
        delivery_contact = NULL;
    }
    if (delivery_contact) { 
    if(!cJSON_IsString(delivery_contact) && !cJSON_IsNull(delivery_contact))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_phone
    cJSON *delivery_phone = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryPhone");
    if (cJSON_IsNull(delivery_phone)) {
        delivery_phone = NULL;
    }
    if (delivery_phone) { 
    if(!cJSON_IsString(delivery_phone) && !cJSON_IsNull(delivery_phone))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_street
    cJSON *delivery_street = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryStreet");
    if (cJSON_IsNull(delivery_street)) {
        delivery_street = NULL;
    }
    if (delivery_street) { 
    if(!cJSON_IsString(delivery_street) && !cJSON_IsNull(delivery_street))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_street2
    cJSON *delivery_street2 = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryStreet2");
    if (cJSON_IsNull(delivery_street2)) {
        delivery_street2 = NULL;
    }
    if (delivery_street2) { 
    if(!cJSON_IsString(delivery_street2) && !cJSON_IsNull(delivery_street2))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_city
    cJSON *delivery_city = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryCity");
    if (cJSON_IsNull(delivery_city)) {
        delivery_city = NULL;
    }
    if (delivery_city) { 
    if(!cJSON_IsString(delivery_city) && !cJSON_IsNull(delivery_city))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_state
    cJSON *delivery_state = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryState");
    if (cJSON_IsNull(delivery_state)) {
        delivery_state = NULL;
    }
    if (delivery_state) { 
    if(!cJSON_IsString(delivery_state) && !cJSON_IsNull(delivery_state))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_zip
    cJSON *delivery_zip = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryZip");
    if (cJSON_IsNull(delivery_zip)) {
        delivery_zip = NULL;
    }
    if (delivery_zip) { 
    if(!cJSON_IsString(delivery_zip) && !cJSON_IsNull(delivery_zip))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_target_from
    cJSON *delivery_target_from = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryTargetFrom");
    if (cJSON_IsNull(delivery_target_from)) {
        delivery_target_from = NULL;
    }
    if (delivery_target_from) { 
    if(!cJSON_IsString(delivery_target_from) && !cJSON_IsNull(delivery_target_from))
    {
    goto end; //DateTime
    }
    }

    // shipment_order->delivery_target_to
    cJSON *delivery_target_to = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryTargetTo");
    if (cJSON_IsNull(delivery_target_to)) {
        delivery_target_to = NULL;
    }
    if (delivery_target_to) { 
    if(!cJSON_IsString(delivery_target_to) && !cJSON_IsNull(delivery_target_to))
    {
    goto end; //DateTime
    }
    }

    // shipment_order->order_packages
    cJSON *order_packages = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "OrderPackages");
    if (cJSON_IsNull(order_packages)) {
        order_packages = NULL;
    }
    if (order_packages) { 
    cJSON *order_packages_local_nonprimitive = NULL;
    if(!cJSON_IsArray(order_packages)){
        goto end; //nonprimitive container
    }

    order_packagesList = list_createList();

    cJSON_ArrayForEach(order_packages_local_nonprimitive,order_packages )
    {
        if(!cJSON_IsObject(order_packages_local_nonprimitive)){
            goto end;
        }
        order_package_t *order_packagesItem = order_package_parseFromJSON(order_packages_local_nonprimitive);

        list_addElement(order_packagesList, order_packagesItem);
    }
    }

    // shipment_order->route_id
    cJSON *route_id = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "RouteID");
    if (cJSON_IsNull(route_id)) {
        route_id = NULL;
    }
    if (route_id) { 
    if(!cJSON_IsNumber(route_id))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->driver_id
    cJSON *driver_id = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DriverID");
    if (cJSON_IsNull(driver_id)) {
        driver_id = NULL;
    }
    if (driver_id) { 
    if(!cJSON_IsNumber(driver_id))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->pickup_sequence_no
    cJSON *pickup_sequence_no = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupSequenceNo");
    if (cJSON_IsNull(pickup_sequence_no)) {
        pickup_sequence_no = NULL;
    }
    if (pickup_sequence_no) { 
    if(!cJSON_IsNumber(pickup_sequence_no))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->delivery_sequence_no
    cJSON *delivery_sequence_no = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliverySequenceNo");
    if (cJSON_IsNull(delivery_sequence_no)) {
        delivery_sequence_no = NULL;
    }
    if (delivery_sequence_no) { 
    if(!cJSON_IsNumber(delivery_sequence_no))
    {
    goto end; //Numeric
    }
    }

    // shipment_order->pickup_eta
    cJSON *pickup_eta = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "PickupETA");
    if (cJSON_IsNull(pickup_eta)) {
        pickup_eta = NULL;
    }
    if (pickup_eta) { 
    if(!cJSON_IsString(pickup_eta) && !cJSON_IsNull(pickup_eta))
    {
    goto end; //String
    }
    }

    // shipment_order->delivery_eta
    cJSON *delivery_eta = cJSON_GetObjectItemCaseSensitive(shipment_orderJSON, "DeliveryETA");
    if (cJSON_IsNull(delivery_eta)) {
        delivery_eta = NULL;
    }
    if (delivery_eta) { 
    if(!cJSON_IsString(delivery_eta) && !cJSON_IsNull(delivery_eta))
    {
    goto end; //String
    }
    }


    shipment_order_local_var = shipment_order_create_internal (
        valid ? valid->valueint : 0,
        batch_id ? batch_id->valuedouble : 0,
        batch_size ? batch_size->valuedouble : 0,
        order_tracking_id ? order_tracking_id->valuedouble : 0,
        client_ref_no && !cJSON_IsNull(client_ref_no) ? strdup(client_ref_no->valuestring) : NULL,
        client_ref_no2 && !cJSON_IsNull(client_ref_no2) ? strdup(client_ref_no2->valuestring) : NULL,
        hub_code && !cJSON_IsNull(hub_code) ? strdup(hub_code->valuestring) : NULL,
        account_no && !cJSON_IsNull(account_no) ? strdup(account_no->valuestring) : NULL,
        company_name && !cJSON_IsNull(company_name) ? strdup(company_name->valuestring) : NULL,
        vehicle_type_name && !cJSON_IsNull(vehicle_type_name) ? strdup(vehicle_type_name->valuestring) : NULL,
        service_type_name && !cJSON_IsNull(service_type_name) ? strdup(service_type_name->valuestring) : NULL,
        service_code && !cJSON_IsNull(service_code) ? strdup(service_code->valuestring) : NULL,
        pieces ? pieces->valuedouble : 0,
        weight ? weight->valuedouble : 0,
        cubic_feet ? cubic_feet->valuedouble : 0,
        pickup_company && !cJSON_IsNull(pickup_company) ? strdup(pickup_company->valuestring) : NULL,
        pickup_contact && !cJSON_IsNull(pickup_contact) ? strdup(pickup_contact->valuestring) : NULL,
        pickup_phone && !cJSON_IsNull(pickup_phone) ? strdup(pickup_phone->valuestring) : NULL,
        pickup_street && !cJSON_IsNull(pickup_street) ? strdup(pickup_street->valuestring) : NULL,
        pickup_street2 && !cJSON_IsNull(pickup_street2) ? strdup(pickup_street2->valuestring) : NULL,
        pickup_city && !cJSON_IsNull(pickup_city) ? strdup(pickup_city->valuestring) : NULL,
        pickup_state && !cJSON_IsNull(pickup_state) ? strdup(pickup_state->valuestring) : NULL,
        pickup_zip && !cJSON_IsNull(pickup_zip) ? strdup(pickup_zip->valuestring) : NULL,
        pickup_target_from && !cJSON_IsNull(pickup_target_from) ? strdup(pickup_target_from->valuestring) : NULL,
        pickup_target_to && !cJSON_IsNull(pickup_target_to) ? strdup(pickup_target_to->valuestring) : NULL,
        delivery_company && !cJSON_IsNull(delivery_company) ? strdup(delivery_company->valuestring) : NULL,
        delivery_contact && !cJSON_IsNull(delivery_contact) ? strdup(delivery_contact->valuestring) : NULL,
        delivery_phone && !cJSON_IsNull(delivery_phone) ? strdup(delivery_phone->valuestring) : NULL,
        delivery_street && !cJSON_IsNull(delivery_street) ? strdup(delivery_street->valuestring) : NULL,
        delivery_street2 && !cJSON_IsNull(delivery_street2) ? strdup(delivery_street2->valuestring) : NULL,
        delivery_city && !cJSON_IsNull(delivery_city) ? strdup(delivery_city->valuestring) : NULL,
        delivery_state && !cJSON_IsNull(delivery_state) ? strdup(delivery_state->valuestring) : NULL,
        delivery_zip && !cJSON_IsNull(delivery_zip) ? strdup(delivery_zip->valuestring) : NULL,
        delivery_target_from && !cJSON_IsNull(delivery_target_from) ? strdup(delivery_target_from->valuestring) : NULL,
        delivery_target_to && !cJSON_IsNull(delivery_target_to) ? strdup(delivery_target_to->valuestring) : NULL,
        order_packages ? order_packagesList : NULL,
        route_id ? route_id->valuedouble : 0,
        driver_id ? driver_id->valuedouble : 0,
        pickup_sequence_no ? pickup_sequence_no->valuedouble : 0,
        delivery_sequence_no ? delivery_sequence_no->valuedouble : 0,
        pickup_eta && !cJSON_IsNull(pickup_eta) ? strdup(pickup_eta->valuestring) : NULL,
        delivery_eta && !cJSON_IsNull(delivery_eta) ? strdup(delivery_eta->valuestring) : NULL
        );

    return shipment_order_local_var;
end:
    if (order_packagesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, order_packagesList) {
            order_package_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(order_packagesList);
        order_packagesList = NULL;
    }
    return NULL;

}
