/*
 * assignment.h
 *
 * 
 */

#ifndef _assignment_H_
#define _assignment_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct assignment_t assignment_t;

#include "account.h"
#include "application.h"
#include "asset.h"
#include "assignment_status.h"
#include "note.h"
#include "permissions.h"
#include "retailer_location.h"
#include "user_permissions.h"

// Enum CURRENTSTATUSTYPE for assignment

typedef enum  { sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_NULL = 0, sirqul_iot_platform_assignment_CURRENTSTATUSTYPE__NEW, sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_IN_PROGRESS, sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_SUBSCRIBED, sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_ARCHIVED } sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e;

char* assignment_current_status_type_ToString(sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e current_status_type);

sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e assignment_current_status_type_FromString(char* current_status_type);

// Enum VISIBILITY for assignment

typedef enum  { sirqul_iot_platform_assignment_VISIBILITY_NULL = 0, sirqul_iot_platform_assignment_VISIBILITY__PUBLIC, sirqul_iot_platform_assignment_VISIBILITY__PRIVATE, sirqul_iot_platform_assignment_VISIBILITY_FRIENDS } sirqul_iot_platform_assignment_VISIBILITY_e;

char* assignment_visibility_ToString(sirqul_iot_platform_assignment_VISIBILITY_e visibility);

sirqul_iot_platform_assignment_VISIBILITY_e assignment_visibility_FromString(char* visibility);

// Enum APPROVALSTATUS for assignment

typedef enum  { sirqul_iot_platform_assignment_APPROVALSTATUS_NULL = 0, sirqul_iot_platform_assignment_APPROVALSTATUS_PENDING, sirqul_iot_platform_assignment_APPROVALSTATUS_REJECTED, sirqul_iot_platform_assignment_APPROVALSTATUS_APPROVED, sirqul_iot_platform_assignment_APPROVALSTATUS_FEATURED } sirqul_iot_platform_assignment_APPROVALSTATUS_e;

char* assignment_approval_status_ToString(sirqul_iot_platform_assignment_APPROVALSTATUS_e approval_status);

sirqul_iot_platform_assignment_APPROVALSTATUS_e assignment_approval_status_FromString(char* approval_status);



typedef struct assignment_t {
    long id; //numeric
    int active; //boolean
    int valid; //boolean
    char *name; // string
    char *description; // string
    struct account_t *assignee; //model
    struct retailer_location_t *retailer_location; //model
    struct account_t *creator; //model
    struct account_t *last_updated_by; //model
    struct assignment_status_t *current_status; //model
    sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e current_status_type; //enum
    list_t *assets; //nonprimitive container
    list_t *notes; //nonprimitive container
    struct permissions_t *public_permissions; //model
    list_t *user_permissions; //nonprimitive container
    sirqul_iot_platform_assignment_VISIBILITY_e visibility; //enum
    list_t *statuses; //nonprimitive container
    struct application_t *application; //model
    sirqul_iot_platform_assignment_APPROVALSTATUS_e approval_status; //enum
    char *content_name; // string
    struct asset_t *content_asset; //model
    struct account_t *owner; //model
    long note_count; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} assignment_t;

__attribute__((deprecated)) assignment_t *assignment_create(
    long id,
    int active,
    int valid,
    char *name,
    char *description,
    account_t *assignee,
    retailer_location_t *retailer_location,
    account_t *creator,
    account_t *last_updated_by,
    assignment_status_t *current_status,
    sirqul_iot_platform_assignment_CURRENTSTATUSTYPE_e current_status_type,
    list_t *assets,
    list_t *notes,
    permissions_t *public_permissions,
    list_t *user_permissions,
    sirqul_iot_platform_assignment_VISIBILITY_e visibility,
    list_t *statuses,
    application_t *application,
    sirqul_iot_platform_assignment_APPROVALSTATUS_e approval_status,
    char *content_name,
    asset_t *content_asset,
    account_t *owner,
    long note_count
);

void assignment_free(assignment_t *assignment);

assignment_t *assignment_parseFromJSON(cJSON *assignmentJSON);

cJSON *assignment_convertToJSON(assignment_t *assignment);

#endif /* _assignment_H_ */

