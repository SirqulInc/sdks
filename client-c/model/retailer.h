/*
 * retailer.h
 *
 * 
 */

#ifndef _retailer_H_
#define _retailer_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct retailer_t retailer_t;

#include "account.h"
#include "address.h"
#include "category.h"
#include "cell_carrier.h"
#include "note.h"
#include "retailer_location.h"
#include "territory.h"

// Enum VISIBILITY for retailer

typedef enum  { sirqul_iot_platform_retailer_VISIBILITY_NULL = 0, sirqul_iot_platform_retailer_VISIBILITY__PUBLIC, sirqul_iot_platform_retailer_VISIBILITY__PRIVATE, sirqul_iot_platform_retailer_VISIBILITY_FRIENDS } sirqul_iot_platform_retailer_VISIBILITY_e;

char* retailer_visibility_ToString(sirqul_iot_platform_retailer_VISIBILITY_e visibility);

sirqul_iot_platform_retailer_VISIBILITY_e retailer_visibility_FromString(char* visibility);



typedef struct retailer_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    char *name; // string
    struct account_t *responsible; //model
    struct account_t *manager; //model
    char *details_header; // string
    char *details_body; // string
    char *details_line_left1; // string
    char *details_line_left2; // string
    char *details_line_right1; // string
    char *meta_description; // string
    char *directions; // string
    char *hours; // string
    char *home_phone; // string
    char *cell_phone; // string
    struct cell_carrier_t *cell_carrier; //model
    char *business_phone; // string
    char *business_phone_ext; // string
    char *fax_number; // string
    char *time_zone; // string
    char *utc_offset; // string
    char *code501c3; // string
    char *email_address; // string
    struct address_t *address; //model
    char *web; // string
    int featured; //boolean
    int listed; //boolean
    list_t *categories; //nonprimitive container
    struct territory_t *territory; //model
    list_t *locations; //nonprimitive container
    long yipit_id; //numeric
    char *facebook_url; // string
    char *twitter_url; // string
    sirqul_iot_platform_retailer_VISIBILITY_e visibility; //enum
    list_t *notes; //nonprimitive container
    long note_count; //numeric
    char *app_key; // string
    char *category_tree; // string
    char *filter_tree; // string
    long billable_id; //numeric
    char *sub_type; // string
    char *content_name; // string
    struct account_t *owner; //model

    int _library_owned; // Is the library responsible for freeing this object?
} retailer_t;

__attribute__((deprecated)) retailer_t *retailer_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    account_t *responsible,
    account_t *manager,
    char *details_header,
    char *details_body,
    char *details_line_left1,
    char *details_line_left2,
    char *details_line_right1,
    char *meta_description,
    char *directions,
    char *hours,
    char *home_phone,
    char *cell_phone,
    cell_carrier_t *cell_carrier,
    char *business_phone,
    char *business_phone_ext,
    char *fax_number,
    char *time_zone,
    char *utc_offset,
    char *code501c3,
    char *email_address,
    address_t *address,
    char *web,
    int featured,
    int listed,
    list_t *categories,
    territory_t *territory,
    list_t *locations,
    long yipit_id,
    char *facebook_url,
    char *twitter_url,
    sirqul_iot_platform_retailer_VISIBILITY_e visibility,
    list_t *notes,
    long note_count,
    char *app_key,
    char *category_tree,
    char *filter_tree,
    long billable_id,
    char *sub_type,
    char *content_name,
    account_t *owner
);

void retailer_free(retailer_t *retailer);

retailer_t *retailer_parseFromJSON(cJSON *retailerJSON);

cJSON *retailer_convertToJSON(retailer_t *retailer);

#endif /* _retailer_H_ */

