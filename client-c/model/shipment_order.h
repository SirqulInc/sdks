/*
 * shipment_order.h
 *
 * 
 */

#ifndef _shipment_order_H_
#define _shipment_order_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct shipment_order_t shipment_order_t;

#include "order_package.h"



typedef struct shipment_order_t {
    int valid; //boolean
    int batch_id; //numeric
    int batch_size; //numeric
    double order_tracking_id; //numeric
    char *client_ref_no; // string
    char *client_ref_no2; // string
    char *hub_code; // string
    char *account_no; // string
    char *company_name; // string
    char *vehicle_type_name; // string
    char *service_type_name; // string
    char *service_code; // string
    int pieces; //numeric
    double weight; //numeric
    double cubic_feet; //numeric
    char *pickup_company; // string
    char *pickup_contact; // string
    char *pickup_phone; // string
    char *pickup_street; // string
    char *pickup_street2; // string
    char *pickup_city; // string
    char *pickup_state; // string
    char *pickup_zip; // string
    char *pickup_target_from; //date time
    char *pickup_target_to; //date time
    char *delivery_company; // string
    char *delivery_contact; // string
    char *delivery_phone; // string
    char *delivery_street; // string
    char *delivery_street2; // string
    char *delivery_city; // string
    char *delivery_state; // string
    char *delivery_zip; // string
    char *delivery_target_from; //date time
    char *delivery_target_to; //date time
    list_t *order_packages; //nonprimitive container
    int route_id; //numeric
    int driver_id; //numeric
    int pickup_sequence_no; //numeric
    int delivery_sequence_no; //numeric
    char *pickup_eta; // string
    char *delivery_eta; // string

    int _library_owned; // Is the library responsible for freeing this object?
} shipment_order_t;

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
);

void shipment_order_free(shipment_order_t *shipment_order);

shipment_order_t *shipment_order_parseFromJSON(cJSON *shipment_orderJSON);

cJSON *shipment_order_convertToJSON(shipment_order_t *shipment_order);

#endif /* _shipment_order_H_ */

