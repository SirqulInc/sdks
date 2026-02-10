/*
 * location.h
 *
 * 
 */

#ifndef _location_H_
#define _location_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct location_t location_t;

#include "address.h"
#include "asset.h"
#include "cell_carrier.h"
#include "note.h"
#include "program.h"
#include "service_hub.h"
#include "territory.h"
#include "yay_or_nay.h"

// Enum VISIBILITY for location

typedef enum  { sirqul_iot_platform_location_VISIBILITY_NULL = 0, sirqul_iot_platform_location_VISIBILITY__PUBLIC, sirqul_iot_platform_location_VISIBILITY__PRIVATE, sirqul_iot_platform_location_VISIBILITY_FRIENDS } sirqul_iot_platform_location_VISIBILITY_e;

char* location_visibility_ToString(sirqul_iot_platform_location_VISIBILITY_e visibility);

sirqul_iot_platform_location_VISIBILITY_e location_visibility_FromString(char* visibility);



typedef struct location_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    double latitude; //numeric
    double longitude; //numeric
    char *location_description; // string
    char *name; // string
    struct territory_t *territory; //model
    struct service_hub_t *hub; //model
    struct asset_t *picture; //model
    list_t *notes; //nonprimitive container
    long note_count; //numeric
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
    struct program_t *program; //model
    sirqul_iot_platform_location_VISIBILITY_e visibility; //enum
    char *grouping_id; // string
    int destination; //boolean
    long docking_time; //numeric
    long usage_count; //numeric
    char *time_frames_allowed; // string
    list_t *likes; //nonprimitive container
    long like_count; //numeric
    long dislike_count; //numeric
    char *owner_display; // string
    char *content_name; // string

    int _library_owned; // Is the library responsible for freeing this object?
} location_t;

__attribute__((deprecated)) location_t *location_create(
    long id,
    int active,
    int valid,
    double latitude,
    double longitude,
    char *location_description,
    char *name,
    territory_t *territory,
    service_hub_t *hub,
    asset_t *picture,
    list_t *notes,
    long note_count,
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
    program_t *program,
    sirqul_iot_platform_location_VISIBILITY_e visibility,
    char *grouping_id,
    int destination,
    long docking_time,
    long usage_count,
    char *time_frames_allowed,
    list_t *likes,
    long like_count,
    long dislike_count,
    char *owner_display,
    char *content_name
);

void location_free(location_t *location);

location_t *location_parseFromJSON(cJSON *locationJSON);

cJSON *location_convertToJSON(location_t *location);

#endif /* _location_H_ */

