#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "account.h"


char* account_audience_info_gender_ToString(sirqul_iot_platform_account_AUDIENCEINFOGENDER_e audience_info_gender) {
    char* audience_info_genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return audience_info_genderArray[audience_info_gender];
}

sirqul_iot_platform_account_AUDIENCEINFOGENDER_e account_audience_info_gender_FromString(char* audience_info_gender){
    int stringToReturn = 0;
    char *audience_info_genderArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    size_t sizeofArray = sizeof(audience_info_genderArray) / sizeof(audience_info_genderArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(audience_info_gender, audience_info_genderArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static account_t *account_create_internal(
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
    ) {
    account_t *account_local_var = malloc(sizeof(account_t));
    if (!account_local_var) {
        return NULL;
    }
    account_local_var->id = id;
    account_local_var->created = created;
    account_local_var->updated = updated;
    account_local_var->active = active;
    account_local_var->valid = valid;
    account_local_var->latitude = latitude;
    account_local_var->longitude = longitude;
    account_local_var->location_description = location_description;
    account_local_var->current_region = current_region;
    account_local_var->location_last_updated = location_last_updated;
    account_local_var->current_postal_code = current_postal_code;
    account_local_var->current_postal_code_latitude = current_postal_code_latitude;
    account_local_var->current_postal_code_longitude = current_postal_code_longitude;
    account_local_var->location_updated = location_updated;
    account_local_var->premigration_id = premigration_id;
    account_local_var->username = username;
    account_local_var->locale = locale;
    account_local_var->invite_code = invite_code;
    account_local_var->retailer_invite_code = retailer_invite_code;
    account_local_var->about_us = about_us;
    account_local_var->business_name = business_name;
    account_local_var->like_count = like_count;
    account_local_var->dislike_count = dislike_count;
    account_local_var->third_party_credentials = third_party_credentials;
    account_local_var->partner_active = partner_active;
    account_local_var->reset_token = reset_token;
    account_local_var->profile_image = profile_image;
    account_local_var->account_type = account_type;
    account_local_var->media = media;
    account_local_var->picture = picture;
    account_local_var->first_name = first_name;
    account_local_var->middle_name = middle_name;
    account_local_var->last_name = last_name;
    account_local_var->prefix = prefix;
    account_local_var->suffix = suffix;
    account_local_var->title = title;
    account_local_var->home_phone = home_phone;
    account_local_var->cell_phone = cell_phone;
    account_local_var->cell_carrier = cell_carrier;
    account_local_var->business_phone = business_phone;
    account_local_var->business_phone_ext = business_phone_ext;
    account_local_var->fax_number = fax_number;
    account_local_var->time_zone = time_zone;
    account_local_var->utc_offset = utc_offset;
    account_local_var->code501c3 = code501c3;
    account_local_var->email_address = email_address;
    account_local_var->address = address;
    account_local_var->web = web;
    account_local_var->display = display;
    account_local_var->website = website;
    account_local_var->consumers_notes = consumers_notes;
    account_local_var->consumers_about_us = consumers_about_us;
    account_local_var->account_profile = account_profile;
    account_local_var->retailer_locations = retailer_locations;
    account_local_var->executive = executive;
    account_local_var->content_name = content_name;
    account_local_var->default_threshold = default_threshold;
    account_local_var->audience_info_gender = audience_info_gender;
    account_local_var->flag_threshold_id = flag_threshold_id;
    account_local_var->content_type = content_type;

    account_local_var->_library_owned = 1;
    return account_local_var;
}

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
    ) {
    return account_create_internal (
        id,
        created,
        updated,
        active,
        valid,
        latitude,
        longitude,
        location_description,
        current_region,
        location_last_updated,
        current_postal_code,
        current_postal_code_latitude,
        current_postal_code_longitude,
        location_updated,
        premigration_id,
        username,
        locale,
        invite_code,
        retailer_invite_code,
        about_us,
        business_name,
        like_count,
        dislike_count,
        third_party_credentials,
        partner_active,
        reset_token,
        profile_image,
        account_type,
        media,
        picture,
        first_name,
        middle_name,
        last_name,
        prefix,
        suffix,
        title,
        home_phone,
        cell_phone,
        cell_carrier,
        business_phone,
        business_phone_ext,
        fax_number,
        time_zone,
        utc_offset,
        code501c3,
        email_address,
        address,
        web,
        display,
        website,
        consumers_notes,
        consumers_about_us,
        account_profile,
        retailer_locations,
        executive,
        content_name,
        default_threshold,
        audience_info_gender,
        flag_threshold_id,
        content_type
        );
}

void account_free(account_t *account) {
    if(NULL == account){
        return ;
    }
    if(account->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "account_free");
        return ;
    }
    listEntry_t *listEntry;
    if (account->created) {
        free(account->created);
        account->created = NULL;
    }
    if (account->updated) {
        free(account->updated);
        account->updated = NULL;
    }
    if (account->location_description) {
        free(account->location_description);
        account->location_description = NULL;
    }
    if (account->current_region) {
        region_free(account->current_region);
        account->current_region = NULL;
    }
    if (account->location_last_updated) {
        free(account->location_last_updated);
        account->location_last_updated = NULL;
    }
    if (account->current_postal_code) {
        free(account->current_postal_code);
        account->current_postal_code = NULL;
    }
    if (account->username) {
        free(account->username);
        account->username = NULL;
    }
    if (account->locale) {
        free(account->locale);
        account->locale = NULL;
    }
    if (account->invite_code) {
        free(account->invite_code);
        account->invite_code = NULL;
    }
    if (account->retailer_invite_code) {
        free(account->retailer_invite_code);
        account->retailer_invite_code = NULL;
    }
    if (account->about_us) {
        free(account->about_us);
        account->about_us = NULL;
    }
    if (account->business_name) {
        free(account->business_name);
        account->business_name = NULL;
    }
    if (account->third_party_credentials) {
        list_ForEach(listEntry, account->third_party_credentials) {
            third_party_credentials_free(listEntry->data);
        }
        list_freeList(account->third_party_credentials);
        account->third_party_credentials = NULL;
    }
    if (account->reset_token) {
        free(account->reset_token);
        account->reset_token = NULL;
    }
    if (account->profile_image) {
        free(account->profile_image);
        account->profile_image = NULL;
    }
    if (account->account_type) {
        free(account->account_type);
        account->account_type = NULL;
    }
    if (account->media) {
        list_ForEach(listEntry, account->media) {
            asset_free(listEntry->data);
        }
        list_freeList(account->media);
        account->media = NULL;
    }
    if (account->picture) {
        asset_free(account->picture);
        account->picture = NULL;
    }
    if (account->first_name) {
        free(account->first_name);
        account->first_name = NULL;
    }
    if (account->middle_name) {
        free(account->middle_name);
        account->middle_name = NULL;
    }
    if (account->last_name) {
        free(account->last_name);
        account->last_name = NULL;
    }
    if (account->prefix) {
        free(account->prefix);
        account->prefix = NULL;
    }
    if (account->suffix) {
        free(account->suffix);
        account->suffix = NULL;
    }
    if (account->title) {
        free(account->title);
        account->title = NULL;
    }
    if (account->home_phone) {
        free(account->home_phone);
        account->home_phone = NULL;
    }
    if (account->cell_phone) {
        free(account->cell_phone);
        account->cell_phone = NULL;
    }
    if (account->cell_carrier) {
        cell_carrier_free(account->cell_carrier);
        account->cell_carrier = NULL;
    }
    if (account->business_phone) {
        free(account->business_phone);
        account->business_phone = NULL;
    }
    if (account->business_phone_ext) {
        free(account->business_phone_ext);
        account->business_phone_ext = NULL;
    }
    if (account->fax_number) {
        free(account->fax_number);
        account->fax_number = NULL;
    }
    if (account->time_zone) {
        free(account->time_zone);
        account->time_zone = NULL;
    }
    if (account->utc_offset) {
        free(account->utc_offset);
        account->utc_offset = NULL;
    }
    if (account->code501c3) {
        free(account->code501c3);
        account->code501c3 = NULL;
    }
    if (account->email_address) {
        free(account->email_address);
        account->email_address = NULL;
    }
    if (account->address) {
        address_free(account->address);
        account->address = NULL;
    }
    if (account->web) {
        free(account->web);
        account->web = NULL;
    }
    if (account->display) {
        free(account->display);
        account->display = NULL;
    }
    if (account->website) {
        free(account->website);
        account->website = NULL;
    }
    if (account->consumers_notes) {
        free(account->consumers_notes);
        account->consumers_notes = NULL;
    }
    if (account->consumers_about_us) {
        free(account->consumers_about_us);
        account->consumers_about_us = NULL;
    }
    if (account->account_profile) {
        account_profile_info_free(account->account_profile);
        account->account_profile = NULL;
    }
    if (account->retailer_locations) {
        list_ForEach(listEntry, account->retailer_locations) {
            retailer_location_free(listEntry->data);
        }
        list_freeList(account->retailer_locations);
        account->retailer_locations = NULL;
    }
    if (account->content_name) {
        free(account->content_name);
        account->content_name = NULL;
    }
    if (account->content_type) {
        free(account->content_type);
        account->content_type = NULL;
    }
    free(account);
}

cJSON *account_convertToJSON(account_t *account) {
    cJSON *item = cJSON_CreateObject();

    // account->id
    if(account->id) {
    if(cJSON_AddNumberToObject(item, "id", account->id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->created
    if(account->created) {
    if(cJSON_AddStringToObject(item, "created", account->created) == NULL) {
    goto fail; //Date-Time
    }
    }


    // account->updated
    if(account->updated) {
    if(cJSON_AddStringToObject(item, "updated", account->updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // account->active
    if(account->active) {
    if(cJSON_AddBoolToObject(item, "active", account->active) == NULL) {
    goto fail; //Bool
    }
    }


    // account->valid
    if(account->valid) {
    if(cJSON_AddBoolToObject(item, "valid", account->valid) == NULL) {
    goto fail; //Bool
    }
    }


    // account->latitude
    if(account->latitude) {
    if(cJSON_AddNumberToObject(item, "latitude", account->latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->longitude
    if(account->longitude) {
    if(cJSON_AddNumberToObject(item, "longitude", account->longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->location_description
    if(account->location_description) {
    if(cJSON_AddStringToObject(item, "locationDescription", account->location_description) == NULL) {
    goto fail; //String
    }
    }


    // account->current_region
    if(account->current_region) {
    cJSON *current_region_local_JSON = region_convertToJSON(account->current_region);
    if(current_region_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "currentRegion", current_region_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account->location_last_updated
    if(account->location_last_updated) {
    if(cJSON_AddStringToObject(item, "locationLastUpdated", account->location_last_updated) == NULL) {
    goto fail; //Date-Time
    }
    }


    // account->current_postal_code
    if(account->current_postal_code) {
    if(cJSON_AddStringToObject(item, "currentPostalCode", account->current_postal_code) == NULL) {
    goto fail; //String
    }
    }


    // account->current_postal_code_latitude
    if(account->current_postal_code_latitude) {
    if(cJSON_AddNumberToObject(item, "currentPostalCodeLatitude", account->current_postal_code_latitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->current_postal_code_longitude
    if(account->current_postal_code_longitude) {
    if(cJSON_AddNumberToObject(item, "currentPostalCodeLongitude", account->current_postal_code_longitude) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->location_updated
    if(account->location_updated) {
    if(cJSON_AddBoolToObject(item, "locationUpdated", account->location_updated) == NULL) {
    goto fail; //Bool
    }
    }


    // account->premigration_id
    if(account->premigration_id) {
    if(cJSON_AddNumberToObject(item, "premigrationId", account->premigration_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->username
    if(account->username) {
    if(cJSON_AddStringToObject(item, "username", account->username) == NULL) {
    goto fail; //String
    }
    }


    // account->locale
    if(account->locale) {
    if(cJSON_AddStringToObject(item, "locale", account->locale) == NULL) {
    goto fail; //String
    }
    }


    // account->invite_code
    if(account->invite_code) {
    if(cJSON_AddStringToObject(item, "inviteCode", account->invite_code) == NULL) {
    goto fail; //String
    }
    }


    // account->retailer_invite_code
    if(account->retailer_invite_code) {
    if(cJSON_AddStringToObject(item, "retailerInviteCode", account->retailer_invite_code) == NULL) {
    goto fail; //String
    }
    }


    // account->about_us
    if(account->about_us) {
    if(cJSON_AddStringToObject(item, "aboutUs", account->about_us) == NULL) {
    goto fail; //String
    }
    }


    // account->business_name
    if(account->business_name) {
    if(cJSON_AddStringToObject(item, "businessName", account->business_name) == NULL) {
    goto fail; //String
    }
    }


    // account->like_count
    if(account->like_count) {
    if(cJSON_AddNumberToObject(item, "likeCount", account->like_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->dislike_count
    if(account->dislike_count) {
    if(cJSON_AddNumberToObject(item, "dislikeCount", account->dislike_count) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->third_party_credentials
    if(account->third_party_credentials) {
    cJSON *third_party_credentials = cJSON_AddArrayToObject(item, "thirdPartyCredentials");
    if(third_party_credentials == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *third_party_credentialsListEntry;
    if (account->third_party_credentials) {
    list_ForEach(third_party_credentialsListEntry, account->third_party_credentials) {
    cJSON *itemLocal = third_party_credentials_convertToJSON(third_party_credentialsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(third_party_credentials, itemLocal);
    }
    }
    }


    // account->partner_active
    if(account->partner_active) {
    if(cJSON_AddBoolToObject(item, "partnerActive", account->partner_active) == NULL) {
    goto fail; //Bool
    }
    }


    // account->reset_token
    if(account->reset_token) {
    if(cJSON_AddStringToObject(item, "resetToken", account->reset_token) == NULL) {
    goto fail; //String
    }
    }


    // account->profile_image
    if(account->profile_image) {
    if(cJSON_AddStringToObject(item, "profileImage", account->profile_image) == NULL) {
    goto fail; //String
    }
    }


    // account->account_type
    if(account->account_type) {
    if(cJSON_AddStringToObject(item, "accountType", account->account_type) == NULL) {
    goto fail; //String
    }
    }


    // account->media
    if(account->media) {
    cJSON *media = cJSON_AddArrayToObject(item, "media");
    if(media == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *mediaListEntry;
    if (account->media) {
    list_ForEach(mediaListEntry, account->media) {
    cJSON *itemLocal = asset_convertToJSON(mediaListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(media, itemLocal);
    }
    }
    }


    // account->picture
    if(account->picture) {
    cJSON *picture_local_JSON = asset_convertToJSON(account->picture);
    if(picture_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "picture", picture_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account->first_name
    if(account->first_name) {
    if(cJSON_AddStringToObject(item, "firstName", account->first_name) == NULL) {
    goto fail; //String
    }
    }


    // account->middle_name
    if(account->middle_name) {
    if(cJSON_AddStringToObject(item, "middleName", account->middle_name) == NULL) {
    goto fail; //String
    }
    }


    // account->last_name
    if(account->last_name) {
    if(cJSON_AddStringToObject(item, "lastName", account->last_name) == NULL) {
    goto fail; //String
    }
    }


    // account->prefix
    if(account->prefix) {
    if(cJSON_AddStringToObject(item, "prefix", account->prefix) == NULL) {
    goto fail; //String
    }
    }


    // account->suffix
    if(account->suffix) {
    if(cJSON_AddStringToObject(item, "suffix", account->suffix) == NULL) {
    goto fail; //String
    }
    }


    // account->title
    if(account->title) {
    if(cJSON_AddStringToObject(item, "title", account->title) == NULL) {
    goto fail; //String
    }
    }


    // account->home_phone
    if(account->home_phone) {
    if(cJSON_AddStringToObject(item, "homePhone", account->home_phone) == NULL) {
    goto fail; //String
    }
    }


    // account->cell_phone
    if(account->cell_phone) {
    if(cJSON_AddStringToObject(item, "cellPhone", account->cell_phone) == NULL) {
    goto fail; //String
    }
    }


    // account->cell_carrier
    if(account->cell_carrier) {
    cJSON *cell_carrier_local_JSON = cell_carrier_convertToJSON(account->cell_carrier);
    if(cell_carrier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "cellCarrier", cell_carrier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account->business_phone
    if(account->business_phone) {
    if(cJSON_AddStringToObject(item, "businessPhone", account->business_phone) == NULL) {
    goto fail; //String
    }
    }


    // account->business_phone_ext
    if(account->business_phone_ext) {
    if(cJSON_AddStringToObject(item, "businessPhoneExt", account->business_phone_ext) == NULL) {
    goto fail; //String
    }
    }


    // account->fax_number
    if(account->fax_number) {
    if(cJSON_AddStringToObject(item, "faxNumber", account->fax_number) == NULL) {
    goto fail; //String
    }
    }


    // account->time_zone
    if(account->time_zone) {
    if(cJSON_AddStringToObject(item, "timeZone", account->time_zone) == NULL) {
    goto fail; //String
    }
    }


    // account->utc_offset
    if(account->utc_offset) {
    if(cJSON_AddStringToObject(item, "utcOffset", account->utc_offset) == NULL) {
    goto fail; //String
    }
    }


    // account->code501c3
    if(account->code501c3) {
    if(cJSON_AddStringToObject(item, "code501c3", account->code501c3) == NULL) {
    goto fail; //String
    }
    }


    // account->email_address
    if(account->email_address) {
    if(cJSON_AddStringToObject(item, "emailAddress", account->email_address) == NULL) {
    goto fail; //String
    }
    }


    // account->address
    if(account->address) {
    cJSON *address_local_JSON = address_convertToJSON(account->address);
    if(address_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "address", address_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account->web
    if(account->web) {
    if(cJSON_AddStringToObject(item, "web", account->web) == NULL) {
    goto fail; //String
    }
    }


    // account->display
    if(account->display) {
    if(cJSON_AddStringToObject(item, "display", account->display) == NULL) {
    goto fail; //String
    }
    }


    // account->website
    if(account->website) {
    if(cJSON_AddStringToObject(item, "website", account->website) == NULL) {
    goto fail; //String
    }
    }


    // account->consumers_notes
    if(account->consumers_notes) {
    if(cJSON_AddStringToObject(item, "consumersNotes", account->consumers_notes) == NULL) {
    goto fail; //String
    }
    }


    // account->consumers_about_us
    if(account->consumers_about_us) {
    if(cJSON_AddStringToObject(item, "consumersAboutUs", account->consumers_about_us) == NULL) {
    goto fail; //String
    }
    }


    // account->account_profile
    if(account->account_profile) {
    cJSON *account_profile_local_JSON = account_profile_info_convertToJSON(account->account_profile);
    if(account_profile_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "accountProfile", account_profile_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // account->retailer_locations
    if(account->retailer_locations) {
    cJSON *retailer_locations = cJSON_AddArrayToObject(item, "retailerLocations");
    if(retailer_locations == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *retailer_locationsListEntry;
    if (account->retailer_locations) {
    list_ForEach(retailer_locationsListEntry, account->retailer_locations) {
    cJSON *itemLocal = retailer_location_convertToJSON(retailer_locationsListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(retailer_locations, itemLocal);
    }
    }
    }


    // account->executive
    if(account->executive) {
    if(cJSON_AddBoolToObject(item, "executive", account->executive) == NULL) {
    goto fail; //Bool
    }
    }


    // account->content_name
    if(account->content_name) {
    if(cJSON_AddStringToObject(item, "contentName", account->content_name) == NULL) {
    goto fail; //String
    }
    }


    // account->default_threshold
    if(account->default_threshold) {
    if(cJSON_AddNumberToObject(item, "defaultThreshold", account->default_threshold) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->audience_info_gender
    if(account->audience_info_gender != sirqul_iot_platform_account_AUDIENCEINFOGENDER_NULL) {
    if(cJSON_AddStringToObject(item, "audienceInfo_gender", account_audience_info_gender_ToString(account->audience_info_gender)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // account->flag_threshold_id
    if(account->flag_threshold_id) {
    if(cJSON_AddNumberToObject(item, "flagThreshold_id", account->flag_threshold_id) == NULL) {
    goto fail; //Numeric
    }
    }


    // account->content_type
    if(account->content_type) {
    if(cJSON_AddStringToObject(item, "contentType", account->content_type) == NULL) {
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

account_t *account_parseFromJSON(cJSON *accountJSON){

    account_t *account_local_var = NULL;

    // define the local variable for account->current_region
    region_t *current_region_local_nonprim = NULL;

    // define the local list for account->third_party_credentials
    list_t *third_party_credentialsList = NULL;

    // define the local list for account->media
    list_t *mediaList = NULL;

    // define the local variable for account->picture
    asset_t *picture_local_nonprim = NULL;

    // define the local variable for account->cell_carrier
    cell_carrier_t *cell_carrier_local_nonprim = NULL;

    // define the local variable for account->address
    address_t *address_local_nonprim = NULL;

    // define the local variable for account->account_profile
    account_profile_info_t *account_profile_local_nonprim = NULL;

    // define the local list for account->retailer_locations
    list_t *retailer_locationsList = NULL;

    // account->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(accountJSON, "id");
    if (cJSON_IsNull(id)) {
        id = NULL;
    }
    if (id) { 
    if(!cJSON_IsNumber(id))
    {
    goto end; //Numeric
    }
    }

    // account->created
    cJSON *created = cJSON_GetObjectItemCaseSensitive(accountJSON, "created");
    if (cJSON_IsNull(created)) {
        created = NULL;
    }
    if (created) { 
    if(!cJSON_IsString(created) && !cJSON_IsNull(created))
    {
    goto end; //DateTime
    }
    }

    // account->updated
    cJSON *updated = cJSON_GetObjectItemCaseSensitive(accountJSON, "updated");
    if (cJSON_IsNull(updated)) {
        updated = NULL;
    }
    if (updated) { 
    if(!cJSON_IsString(updated) && !cJSON_IsNull(updated))
    {
    goto end; //DateTime
    }
    }

    // account->active
    cJSON *active = cJSON_GetObjectItemCaseSensitive(accountJSON, "active");
    if (cJSON_IsNull(active)) {
        active = NULL;
    }
    if (active) { 
    if(!cJSON_IsBool(active))
    {
    goto end; //Bool
    }
    }

    // account->valid
    cJSON *valid = cJSON_GetObjectItemCaseSensitive(accountJSON, "valid");
    if (cJSON_IsNull(valid)) {
        valid = NULL;
    }
    if (valid) { 
    if(!cJSON_IsBool(valid))
    {
    goto end; //Bool
    }
    }

    // account->latitude
    cJSON *latitude = cJSON_GetObjectItemCaseSensitive(accountJSON, "latitude");
    if (cJSON_IsNull(latitude)) {
        latitude = NULL;
    }
    if (latitude) { 
    if(!cJSON_IsNumber(latitude))
    {
    goto end; //Numeric
    }
    }

    // account->longitude
    cJSON *longitude = cJSON_GetObjectItemCaseSensitive(accountJSON, "longitude");
    if (cJSON_IsNull(longitude)) {
        longitude = NULL;
    }
    if (longitude) { 
    if(!cJSON_IsNumber(longitude))
    {
    goto end; //Numeric
    }
    }

    // account->location_description
    cJSON *location_description = cJSON_GetObjectItemCaseSensitive(accountJSON, "locationDescription");
    if (cJSON_IsNull(location_description)) {
        location_description = NULL;
    }
    if (location_description) { 
    if(!cJSON_IsString(location_description) && !cJSON_IsNull(location_description))
    {
    goto end; //String
    }
    }

    // account->current_region
    cJSON *current_region = cJSON_GetObjectItemCaseSensitive(accountJSON, "currentRegion");
    if (cJSON_IsNull(current_region)) {
        current_region = NULL;
    }
    if (current_region) { 
    current_region_local_nonprim = region_parseFromJSON(current_region); //nonprimitive
    }

    // account->location_last_updated
    cJSON *location_last_updated = cJSON_GetObjectItemCaseSensitive(accountJSON, "locationLastUpdated");
    if (cJSON_IsNull(location_last_updated)) {
        location_last_updated = NULL;
    }
    if (location_last_updated) { 
    if(!cJSON_IsString(location_last_updated) && !cJSON_IsNull(location_last_updated))
    {
    goto end; //DateTime
    }
    }

    // account->current_postal_code
    cJSON *current_postal_code = cJSON_GetObjectItemCaseSensitive(accountJSON, "currentPostalCode");
    if (cJSON_IsNull(current_postal_code)) {
        current_postal_code = NULL;
    }
    if (current_postal_code) { 
    if(!cJSON_IsString(current_postal_code) && !cJSON_IsNull(current_postal_code))
    {
    goto end; //String
    }
    }

    // account->current_postal_code_latitude
    cJSON *current_postal_code_latitude = cJSON_GetObjectItemCaseSensitive(accountJSON, "currentPostalCodeLatitude");
    if (cJSON_IsNull(current_postal_code_latitude)) {
        current_postal_code_latitude = NULL;
    }
    if (current_postal_code_latitude) { 
    if(!cJSON_IsNumber(current_postal_code_latitude))
    {
    goto end; //Numeric
    }
    }

    // account->current_postal_code_longitude
    cJSON *current_postal_code_longitude = cJSON_GetObjectItemCaseSensitive(accountJSON, "currentPostalCodeLongitude");
    if (cJSON_IsNull(current_postal_code_longitude)) {
        current_postal_code_longitude = NULL;
    }
    if (current_postal_code_longitude) { 
    if(!cJSON_IsNumber(current_postal_code_longitude))
    {
    goto end; //Numeric
    }
    }

    // account->location_updated
    cJSON *location_updated = cJSON_GetObjectItemCaseSensitive(accountJSON, "locationUpdated");
    if (cJSON_IsNull(location_updated)) {
        location_updated = NULL;
    }
    if (location_updated) { 
    if(!cJSON_IsBool(location_updated))
    {
    goto end; //Bool
    }
    }

    // account->premigration_id
    cJSON *premigration_id = cJSON_GetObjectItemCaseSensitive(accountJSON, "premigrationId");
    if (cJSON_IsNull(premigration_id)) {
        premigration_id = NULL;
    }
    if (premigration_id) { 
    if(!cJSON_IsNumber(premigration_id))
    {
    goto end; //Numeric
    }
    }

    // account->username
    cJSON *username = cJSON_GetObjectItemCaseSensitive(accountJSON, "username");
    if (cJSON_IsNull(username)) {
        username = NULL;
    }
    if (username) { 
    if(!cJSON_IsString(username) && !cJSON_IsNull(username))
    {
    goto end; //String
    }
    }

    // account->locale
    cJSON *locale = cJSON_GetObjectItemCaseSensitive(accountJSON, "locale");
    if (cJSON_IsNull(locale)) {
        locale = NULL;
    }
    if (locale) { 
    if(!cJSON_IsString(locale) && !cJSON_IsNull(locale))
    {
    goto end; //String
    }
    }

    // account->invite_code
    cJSON *invite_code = cJSON_GetObjectItemCaseSensitive(accountJSON, "inviteCode");
    if (cJSON_IsNull(invite_code)) {
        invite_code = NULL;
    }
    if (invite_code) { 
    if(!cJSON_IsString(invite_code) && !cJSON_IsNull(invite_code))
    {
    goto end; //String
    }
    }

    // account->retailer_invite_code
    cJSON *retailer_invite_code = cJSON_GetObjectItemCaseSensitive(accountJSON, "retailerInviteCode");
    if (cJSON_IsNull(retailer_invite_code)) {
        retailer_invite_code = NULL;
    }
    if (retailer_invite_code) { 
    if(!cJSON_IsString(retailer_invite_code) && !cJSON_IsNull(retailer_invite_code))
    {
    goto end; //String
    }
    }

    // account->about_us
    cJSON *about_us = cJSON_GetObjectItemCaseSensitive(accountJSON, "aboutUs");
    if (cJSON_IsNull(about_us)) {
        about_us = NULL;
    }
    if (about_us) { 
    if(!cJSON_IsString(about_us) && !cJSON_IsNull(about_us))
    {
    goto end; //String
    }
    }

    // account->business_name
    cJSON *business_name = cJSON_GetObjectItemCaseSensitive(accountJSON, "businessName");
    if (cJSON_IsNull(business_name)) {
        business_name = NULL;
    }
    if (business_name) { 
    if(!cJSON_IsString(business_name) && !cJSON_IsNull(business_name))
    {
    goto end; //String
    }
    }

    // account->like_count
    cJSON *like_count = cJSON_GetObjectItemCaseSensitive(accountJSON, "likeCount");
    if (cJSON_IsNull(like_count)) {
        like_count = NULL;
    }
    if (like_count) { 
    if(!cJSON_IsNumber(like_count))
    {
    goto end; //Numeric
    }
    }

    // account->dislike_count
    cJSON *dislike_count = cJSON_GetObjectItemCaseSensitive(accountJSON, "dislikeCount");
    if (cJSON_IsNull(dislike_count)) {
        dislike_count = NULL;
    }
    if (dislike_count) { 
    if(!cJSON_IsNumber(dislike_count))
    {
    goto end; //Numeric
    }
    }

    // account->third_party_credentials
    cJSON *third_party_credentials = cJSON_GetObjectItemCaseSensitive(accountJSON, "thirdPartyCredentials");
    if (cJSON_IsNull(third_party_credentials)) {
        third_party_credentials = NULL;
    }
    if (third_party_credentials) { 
    cJSON *third_party_credentials_local_nonprimitive = NULL;
    if(!cJSON_IsArray(third_party_credentials)){
        goto end; //nonprimitive container
    }

    third_party_credentialsList = list_createList();

    cJSON_ArrayForEach(third_party_credentials_local_nonprimitive,third_party_credentials )
    {
        if(!cJSON_IsObject(third_party_credentials_local_nonprimitive)){
            goto end;
        }
        third_party_credentials_t *third_party_credentialsItem = third_party_credentials_parseFromJSON(third_party_credentials_local_nonprimitive);

        list_addElement(third_party_credentialsList, third_party_credentialsItem);
    }
    }

    // account->partner_active
    cJSON *partner_active = cJSON_GetObjectItemCaseSensitive(accountJSON, "partnerActive");
    if (cJSON_IsNull(partner_active)) {
        partner_active = NULL;
    }
    if (partner_active) { 
    if(!cJSON_IsBool(partner_active))
    {
    goto end; //Bool
    }
    }

    // account->reset_token
    cJSON *reset_token = cJSON_GetObjectItemCaseSensitive(accountJSON, "resetToken");
    if (cJSON_IsNull(reset_token)) {
        reset_token = NULL;
    }
    if (reset_token) { 
    if(!cJSON_IsString(reset_token) && !cJSON_IsNull(reset_token))
    {
    goto end; //String
    }
    }

    // account->profile_image
    cJSON *profile_image = cJSON_GetObjectItemCaseSensitive(accountJSON, "profileImage");
    if (cJSON_IsNull(profile_image)) {
        profile_image = NULL;
    }
    if (profile_image) { 
    if(!cJSON_IsString(profile_image) && !cJSON_IsNull(profile_image))
    {
    goto end; //String
    }
    }

    // account->account_type
    cJSON *account_type = cJSON_GetObjectItemCaseSensitive(accountJSON, "accountType");
    if (cJSON_IsNull(account_type)) {
        account_type = NULL;
    }
    if (account_type) { 
    if(!cJSON_IsString(account_type) && !cJSON_IsNull(account_type))
    {
    goto end; //String
    }
    }

    // account->media
    cJSON *media = cJSON_GetObjectItemCaseSensitive(accountJSON, "media");
    if (cJSON_IsNull(media)) {
        media = NULL;
    }
    if (media) { 
    cJSON *media_local_nonprimitive = NULL;
    if(!cJSON_IsArray(media)){
        goto end; //nonprimitive container
    }

    mediaList = list_createList();

    cJSON_ArrayForEach(media_local_nonprimitive,media )
    {
        if(!cJSON_IsObject(media_local_nonprimitive)){
            goto end;
        }
        asset_t *mediaItem = asset_parseFromJSON(media_local_nonprimitive);

        list_addElement(mediaList, mediaItem);
    }
    }

    // account->picture
    cJSON *picture = cJSON_GetObjectItemCaseSensitive(accountJSON, "picture");
    if (cJSON_IsNull(picture)) {
        picture = NULL;
    }
    if (picture) { 
    picture_local_nonprim = asset_parseFromJSON(picture); //nonprimitive
    }

    // account->first_name
    cJSON *first_name = cJSON_GetObjectItemCaseSensitive(accountJSON, "firstName");
    if (cJSON_IsNull(first_name)) {
        first_name = NULL;
    }
    if (first_name) { 
    if(!cJSON_IsString(first_name) && !cJSON_IsNull(first_name))
    {
    goto end; //String
    }
    }

    // account->middle_name
    cJSON *middle_name = cJSON_GetObjectItemCaseSensitive(accountJSON, "middleName");
    if (cJSON_IsNull(middle_name)) {
        middle_name = NULL;
    }
    if (middle_name) { 
    if(!cJSON_IsString(middle_name) && !cJSON_IsNull(middle_name))
    {
    goto end; //String
    }
    }

    // account->last_name
    cJSON *last_name = cJSON_GetObjectItemCaseSensitive(accountJSON, "lastName");
    if (cJSON_IsNull(last_name)) {
        last_name = NULL;
    }
    if (last_name) { 
    if(!cJSON_IsString(last_name) && !cJSON_IsNull(last_name))
    {
    goto end; //String
    }
    }

    // account->prefix
    cJSON *prefix = cJSON_GetObjectItemCaseSensitive(accountJSON, "prefix");
    if (cJSON_IsNull(prefix)) {
        prefix = NULL;
    }
    if (prefix) { 
    if(!cJSON_IsString(prefix) && !cJSON_IsNull(prefix))
    {
    goto end; //String
    }
    }

    // account->suffix
    cJSON *suffix = cJSON_GetObjectItemCaseSensitive(accountJSON, "suffix");
    if (cJSON_IsNull(suffix)) {
        suffix = NULL;
    }
    if (suffix) { 
    if(!cJSON_IsString(suffix) && !cJSON_IsNull(suffix))
    {
    goto end; //String
    }
    }

    // account->title
    cJSON *title = cJSON_GetObjectItemCaseSensitive(accountJSON, "title");
    if (cJSON_IsNull(title)) {
        title = NULL;
    }
    if (title) { 
    if(!cJSON_IsString(title) && !cJSON_IsNull(title))
    {
    goto end; //String
    }
    }

    // account->home_phone
    cJSON *home_phone = cJSON_GetObjectItemCaseSensitive(accountJSON, "homePhone");
    if (cJSON_IsNull(home_phone)) {
        home_phone = NULL;
    }
    if (home_phone) { 
    if(!cJSON_IsString(home_phone) && !cJSON_IsNull(home_phone))
    {
    goto end; //String
    }
    }

    // account->cell_phone
    cJSON *cell_phone = cJSON_GetObjectItemCaseSensitive(accountJSON, "cellPhone");
    if (cJSON_IsNull(cell_phone)) {
        cell_phone = NULL;
    }
    if (cell_phone) { 
    if(!cJSON_IsString(cell_phone) && !cJSON_IsNull(cell_phone))
    {
    goto end; //String
    }
    }

    // account->cell_carrier
    cJSON *cell_carrier = cJSON_GetObjectItemCaseSensitive(accountJSON, "cellCarrier");
    if (cJSON_IsNull(cell_carrier)) {
        cell_carrier = NULL;
    }
    if (cell_carrier) { 
    cell_carrier_local_nonprim = cell_carrier_parseFromJSON(cell_carrier); //nonprimitive
    }

    // account->business_phone
    cJSON *business_phone = cJSON_GetObjectItemCaseSensitive(accountJSON, "businessPhone");
    if (cJSON_IsNull(business_phone)) {
        business_phone = NULL;
    }
    if (business_phone) { 
    if(!cJSON_IsString(business_phone) && !cJSON_IsNull(business_phone))
    {
    goto end; //String
    }
    }

    // account->business_phone_ext
    cJSON *business_phone_ext = cJSON_GetObjectItemCaseSensitive(accountJSON, "businessPhoneExt");
    if (cJSON_IsNull(business_phone_ext)) {
        business_phone_ext = NULL;
    }
    if (business_phone_ext) { 
    if(!cJSON_IsString(business_phone_ext) && !cJSON_IsNull(business_phone_ext))
    {
    goto end; //String
    }
    }

    // account->fax_number
    cJSON *fax_number = cJSON_GetObjectItemCaseSensitive(accountJSON, "faxNumber");
    if (cJSON_IsNull(fax_number)) {
        fax_number = NULL;
    }
    if (fax_number) { 
    if(!cJSON_IsString(fax_number) && !cJSON_IsNull(fax_number))
    {
    goto end; //String
    }
    }

    // account->time_zone
    cJSON *time_zone = cJSON_GetObjectItemCaseSensitive(accountJSON, "timeZone");
    if (cJSON_IsNull(time_zone)) {
        time_zone = NULL;
    }
    if (time_zone) { 
    if(!cJSON_IsString(time_zone) && !cJSON_IsNull(time_zone))
    {
    goto end; //String
    }
    }

    // account->utc_offset
    cJSON *utc_offset = cJSON_GetObjectItemCaseSensitive(accountJSON, "utcOffset");
    if (cJSON_IsNull(utc_offset)) {
        utc_offset = NULL;
    }
    if (utc_offset) { 
    if(!cJSON_IsString(utc_offset) && !cJSON_IsNull(utc_offset))
    {
    goto end; //String
    }
    }

    // account->code501c3
    cJSON *code501c3 = cJSON_GetObjectItemCaseSensitive(accountJSON, "code501c3");
    if (cJSON_IsNull(code501c3)) {
        code501c3 = NULL;
    }
    if (code501c3) { 
    if(!cJSON_IsString(code501c3) && !cJSON_IsNull(code501c3))
    {
    goto end; //String
    }
    }

    // account->email_address
    cJSON *email_address = cJSON_GetObjectItemCaseSensitive(accountJSON, "emailAddress");
    if (cJSON_IsNull(email_address)) {
        email_address = NULL;
    }
    if (email_address) { 
    if(!cJSON_IsString(email_address) && !cJSON_IsNull(email_address))
    {
    goto end; //String
    }
    }

    // account->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(accountJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    address_local_nonprim = address_parseFromJSON(address); //nonprimitive
    }

    // account->web
    cJSON *web = cJSON_GetObjectItemCaseSensitive(accountJSON, "web");
    if (cJSON_IsNull(web)) {
        web = NULL;
    }
    if (web) { 
    if(!cJSON_IsString(web) && !cJSON_IsNull(web))
    {
    goto end; //String
    }
    }

    // account->display
    cJSON *display = cJSON_GetObjectItemCaseSensitive(accountJSON, "display");
    if (cJSON_IsNull(display)) {
        display = NULL;
    }
    if (display) { 
    if(!cJSON_IsString(display) && !cJSON_IsNull(display))
    {
    goto end; //String
    }
    }

    // account->website
    cJSON *website = cJSON_GetObjectItemCaseSensitive(accountJSON, "website");
    if (cJSON_IsNull(website)) {
        website = NULL;
    }
    if (website) { 
    if(!cJSON_IsString(website) && !cJSON_IsNull(website))
    {
    goto end; //String
    }
    }

    // account->consumers_notes
    cJSON *consumers_notes = cJSON_GetObjectItemCaseSensitive(accountJSON, "consumersNotes");
    if (cJSON_IsNull(consumers_notes)) {
        consumers_notes = NULL;
    }
    if (consumers_notes) { 
    if(!cJSON_IsString(consumers_notes) && !cJSON_IsNull(consumers_notes))
    {
    goto end; //String
    }
    }

    // account->consumers_about_us
    cJSON *consumers_about_us = cJSON_GetObjectItemCaseSensitive(accountJSON, "consumersAboutUs");
    if (cJSON_IsNull(consumers_about_us)) {
        consumers_about_us = NULL;
    }
    if (consumers_about_us) { 
    if(!cJSON_IsString(consumers_about_us) && !cJSON_IsNull(consumers_about_us))
    {
    goto end; //String
    }
    }

    // account->account_profile
    cJSON *account_profile = cJSON_GetObjectItemCaseSensitive(accountJSON, "accountProfile");
    if (cJSON_IsNull(account_profile)) {
        account_profile = NULL;
    }
    if (account_profile) { 
    account_profile_local_nonprim = account_profile_info_parseFromJSON(account_profile); //nonprimitive
    }

    // account->retailer_locations
    cJSON *retailer_locations = cJSON_GetObjectItemCaseSensitive(accountJSON, "retailerLocations");
    if (cJSON_IsNull(retailer_locations)) {
        retailer_locations = NULL;
    }
    if (retailer_locations) { 
    cJSON *retailer_locations_local_nonprimitive = NULL;
    if(!cJSON_IsArray(retailer_locations)){
        goto end; //nonprimitive container
    }

    retailer_locationsList = list_createList();

    cJSON_ArrayForEach(retailer_locations_local_nonprimitive,retailer_locations )
    {
        if(!cJSON_IsObject(retailer_locations_local_nonprimitive)){
            goto end;
        }
        retailer_location_t *retailer_locationsItem = retailer_location_parseFromJSON(retailer_locations_local_nonprimitive);

        list_addElement(retailer_locationsList, retailer_locationsItem);
    }
    }

    // account->executive
    cJSON *executive = cJSON_GetObjectItemCaseSensitive(accountJSON, "executive");
    if (cJSON_IsNull(executive)) {
        executive = NULL;
    }
    if (executive) { 
    if(!cJSON_IsBool(executive))
    {
    goto end; //Bool
    }
    }

    // account->content_name
    cJSON *content_name = cJSON_GetObjectItemCaseSensitive(accountJSON, "contentName");
    if (cJSON_IsNull(content_name)) {
        content_name = NULL;
    }
    if (content_name) { 
    if(!cJSON_IsString(content_name) && !cJSON_IsNull(content_name))
    {
    goto end; //String
    }
    }

    // account->default_threshold
    cJSON *default_threshold = cJSON_GetObjectItemCaseSensitive(accountJSON, "defaultThreshold");
    if (cJSON_IsNull(default_threshold)) {
        default_threshold = NULL;
    }
    if (default_threshold) { 
    if(!cJSON_IsNumber(default_threshold))
    {
    goto end; //Numeric
    }
    }

    // account->audience_info_gender
    cJSON *audience_info_gender = cJSON_GetObjectItemCaseSensitive(accountJSON, "audienceInfo_gender");
    if (cJSON_IsNull(audience_info_gender)) {
        audience_info_gender = NULL;
    }
    sirqul_iot_platform_account_AUDIENCEINFOGENDER_e audience_info_genderVariable;
    if (audience_info_gender) { 
    if(!cJSON_IsString(audience_info_gender))
    {
    goto end; //Enum
    }
    audience_info_genderVariable = account_audience_info_gender_FromString(audience_info_gender->valuestring);
    }

    // account->flag_threshold_id
    cJSON *flag_threshold_id = cJSON_GetObjectItemCaseSensitive(accountJSON, "flagThreshold_id");
    if (cJSON_IsNull(flag_threshold_id)) {
        flag_threshold_id = NULL;
    }
    if (flag_threshold_id) { 
    if(!cJSON_IsNumber(flag_threshold_id))
    {
    goto end; //Numeric
    }
    }

    // account->content_type
    cJSON *content_type = cJSON_GetObjectItemCaseSensitive(accountJSON, "contentType");
    if (cJSON_IsNull(content_type)) {
        content_type = NULL;
    }
    if (content_type) { 
    if(!cJSON_IsString(content_type) && !cJSON_IsNull(content_type))
    {
    goto end; //String
    }
    }


    account_local_var = account_create_internal (
        id ? id->valuedouble : 0,
        created && !cJSON_IsNull(created) ? strdup(created->valuestring) : NULL,
        updated && !cJSON_IsNull(updated) ? strdup(updated->valuestring) : NULL,
        active ? active->valueint : 0,
        valid ? valid->valueint : 0,
        latitude ? latitude->valuedouble : 0,
        longitude ? longitude->valuedouble : 0,
        location_description && !cJSON_IsNull(location_description) ? strdup(location_description->valuestring) : NULL,
        current_region ? current_region_local_nonprim : NULL,
        location_last_updated && !cJSON_IsNull(location_last_updated) ? strdup(location_last_updated->valuestring) : NULL,
        current_postal_code && !cJSON_IsNull(current_postal_code) ? strdup(current_postal_code->valuestring) : NULL,
        current_postal_code_latitude ? current_postal_code_latitude->valuedouble : 0,
        current_postal_code_longitude ? current_postal_code_longitude->valuedouble : 0,
        location_updated ? location_updated->valueint : 0,
        premigration_id ? premigration_id->valuedouble : 0,
        username && !cJSON_IsNull(username) ? strdup(username->valuestring) : NULL,
        locale && !cJSON_IsNull(locale) ? strdup(locale->valuestring) : NULL,
        invite_code && !cJSON_IsNull(invite_code) ? strdup(invite_code->valuestring) : NULL,
        retailer_invite_code && !cJSON_IsNull(retailer_invite_code) ? strdup(retailer_invite_code->valuestring) : NULL,
        about_us && !cJSON_IsNull(about_us) ? strdup(about_us->valuestring) : NULL,
        business_name && !cJSON_IsNull(business_name) ? strdup(business_name->valuestring) : NULL,
        like_count ? like_count->valuedouble : 0,
        dislike_count ? dislike_count->valuedouble : 0,
        third_party_credentials ? third_party_credentialsList : NULL,
        partner_active ? partner_active->valueint : 0,
        reset_token && !cJSON_IsNull(reset_token) ? strdup(reset_token->valuestring) : NULL,
        profile_image && !cJSON_IsNull(profile_image) ? strdup(profile_image->valuestring) : NULL,
        account_type && !cJSON_IsNull(account_type) ? strdup(account_type->valuestring) : NULL,
        media ? mediaList : NULL,
        picture ? picture_local_nonprim : NULL,
        first_name && !cJSON_IsNull(first_name) ? strdup(first_name->valuestring) : NULL,
        middle_name && !cJSON_IsNull(middle_name) ? strdup(middle_name->valuestring) : NULL,
        last_name && !cJSON_IsNull(last_name) ? strdup(last_name->valuestring) : NULL,
        prefix && !cJSON_IsNull(prefix) ? strdup(prefix->valuestring) : NULL,
        suffix && !cJSON_IsNull(suffix) ? strdup(suffix->valuestring) : NULL,
        title && !cJSON_IsNull(title) ? strdup(title->valuestring) : NULL,
        home_phone && !cJSON_IsNull(home_phone) ? strdup(home_phone->valuestring) : NULL,
        cell_phone && !cJSON_IsNull(cell_phone) ? strdup(cell_phone->valuestring) : NULL,
        cell_carrier ? cell_carrier_local_nonprim : NULL,
        business_phone && !cJSON_IsNull(business_phone) ? strdup(business_phone->valuestring) : NULL,
        business_phone_ext && !cJSON_IsNull(business_phone_ext) ? strdup(business_phone_ext->valuestring) : NULL,
        fax_number && !cJSON_IsNull(fax_number) ? strdup(fax_number->valuestring) : NULL,
        time_zone && !cJSON_IsNull(time_zone) ? strdup(time_zone->valuestring) : NULL,
        utc_offset && !cJSON_IsNull(utc_offset) ? strdup(utc_offset->valuestring) : NULL,
        code501c3 && !cJSON_IsNull(code501c3) ? strdup(code501c3->valuestring) : NULL,
        email_address && !cJSON_IsNull(email_address) ? strdup(email_address->valuestring) : NULL,
        address ? address_local_nonprim : NULL,
        web && !cJSON_IsNull(web) ? strdup(web->valuestring) : NULL,
        display && !cJSON_IsNull(display) ? strdup(display->valuestring) : NULL,
        website && !cJSON_IsNull(website) ? strdup(website->valuestring) : NULL,
        consumers_notes && !cJSON_IsNull(consumers_notes) ? strdup(consumers_notes->valuestring) : NULL,
        consumers_about_us && !cJSON_IsNull(consumers_about_us) ? strdup(consumers_about_us->valuestring) : NULL,
        account_profile ? account_profile_local_nonprim : NULL,
        retailer_locations ? retailer_locationsList : NULL,
        executive ? executive->valueint : 0,
        content_name && !cJSON_IsNull(content_name) ? strdup(content_name->valuestring) : NULL,
        default_threshold ? default_threshold->valuedouble : 0,
        audience_info_gender ? audience_info_genderVariable : sirqul_iot_platform_account_AUDIENCEINFOGENDER_NULL,
        flag_threshold_id ? flag_threshold_id->valuedouble : 0,
        content_type && !cJSON_IsNull(content_type) ? strdup(content_type->valuestring) : NULL
        );

    return account_local_var;
end:
    if (current_region_local_nonprim) {
        region_free(current_region_local_nonprim);
        current_region_local_nonprim = NULL;
    }
    if (third_party_credentialsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, third_party_credentialsList) {
            third_party_credentials_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(third_party_credentialsList);
        third_party_credentialsList = NULL;
    }
    if (mediaList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, mediaList) {
            asset_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(mediaList);
        mediaList = NULL;
    }
    if (picture_local_nonprim) {
        asset_free(picture_local_nonprim);
        picture_local_nonprim = NULL;
    }
    if (cell_carrier_local_nonprim) {
        cell_carrier_free(cell_carrier_local_nonprim);
        cell_carrier_local_nonprim = NULL;
    }
    if (address_local_nonprim) {
        address_free(address_local_nonprim);
        address_local_nonprim = NULL;
    }
    if (account_profile_local_nonprim) {
        account_profile_info_free(account_profile_local_nonprim);
        account_profile_local_nonprim = NULL;
    }
    if (retailer_locationsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, retailer_locationsList) {
            retailer_location_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(retailer_locationsList);
        retailer_locationsList = NULL;
    }
    return NULL;

}
