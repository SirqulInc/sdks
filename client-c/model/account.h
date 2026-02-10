/*
 * account.h
 *
 * 
 */

#ifndef _account_H_
#define _account_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct account_t account_t;

#include "account_profile_info.h"
#include "address.h"
#include "asset.h"
#include "cell_carrier.h"
#include "region.h"
#include "retailer_location.h"
#include "third_party_credentials.h"

// Enum AUDIENCEINFOGENDER for account

typedef enum  { sirqul_iot_platform_account_AUDIENCEINFOGENDER_NULL = 0, sirqul_iot_platform_account_AUDIENCEINFOGENDER_MALE, sirqul_iot_platform_account_AUDIENCEINFOGENDER_FEMALE, sirqul_iot_platform_account_AUDIENCEINFOGENDER_ANY } sirqul_iot_platform_account_AUDIENCEINFOGENDER_e;

char* account_audience_info_gender_ToString(sirqul_iot_platform_account_AUDIENCEINFOGENDER_e audience_info_gender);

sirqul_iot_platform_account_AUDIENCEINFOGENDER_e account_audience_info_gender_FromString(char* audience_info_gender);



typedef struct account_t {
    long id; //numeric
    char *created; //date time
    char *updated; //date time
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    struct region_t *current_region; //model
    char *location_last_updated; //date time
    char *current_postal_code; // string
    double current_postal_code_latitude; //numeric
    double current_postal_code_longitude; //numeric
    int location_updated; //boolean
    long premigration_id; //numeric
    char *username; // string
    char *locale; // string
    char *invite_code; // string
    char *retailer_invite_code; // string
    char *about_us; // string
    char *business_name; // string
    long like_count; //numeric
    long dislike_count; //numeric
    list_t *third_party_credentials; //nonprimitive container
    int partner_active; //boolean
    char *reset_token; // string
    char *profile_image; // string
    char *account_type; // string
    list_t *media; //nonprimitive container
    struct asset_t *picture; //model
    char *first_name; // string
    char *middle_name; // string
    char *last_name; // string
    char *prefix; // string
    char *suffix; // string
    char *title; // string
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
    char *display; // string
    char *website; // string
    char *consumers_notes; // string
    char *consumers_about_us; // string
    struct account_profile_info_t *account_profile; //model
    list_t *retailer_locations; //nonprimitive container
    int executive; //boolean
    char *content_name; // string
    long default_threshold; //numeric
    sirqul_iot_platform_account_AUDIENCEINFOGENDER_e audience_info_gender; //enum
    long flag_threshold_id; //numeric
    char *content_type; // string

    int _library_owned; // Is the library responsible for freeing this object?
} account_t;

__attribute__((deprecated)) account_t *account_create(
    long id,
    char *created,
    char *updated,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    region_t *current_region,
    char *location_last_updated,
    char *current_postal_code,
    double current_postal_code_latitude,
    double current_postal_code_longitude,
    int location_updated,
    long premigration_id,
    char *username,
    char *locale,
    char *invite_code,
    char *retailer_invite_code,
    char *about_us,
    char *business_name,
    long like_count,
    long dislike_count,
    list_t *third_party_credentials,
    int partner_active,
    char *reset_token,
    char *profile_image,
    char *account_type,
    list_t *media,
    asset_t *picture,
    char *first_name,
    char *middle_name,
    char *last_name,
    char *prefix,
    char *suffix,
    char *title,
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
    char *display,
    char *website,
    char *consumers_notes,
    char *consumers_about_us,
    account_profile_info_t *account_profile,
    list_t *retailer_locations,
    int executive,
    char *content_name,
    long default_threshold,
    sirqul_iot_platform_account_AUDIENCEINFOGENDER_e audience_info_gender,
    long flag_threshold_id,
    char *content_type
);

void account_free(account_t *account);

account_t *account_parseFromJSON(cJSON *accountJSON);

cJSON *account_convertToJSON(account_t *account);

#endif /* _account_H_ */

