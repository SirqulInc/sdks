/*
 * employee_response.h
 *
 * 
 */

#ifndef _employee_response_H_
#define _employee_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct employee_response_t employee_response_t;

#include "account_mini_response.h"
#include "contact_response.h"
#include "retailer_location_short_response.h"

// Enum GENDER for employee_response

typedef enum  { sirqul_iot_platform_employee_response_GENDER_NULL = 0, sirqul_iot_platform_employee_response_GENDER_MALE, sirqul_iot_platform_employee_response_GENDER_FEMALE, sirqul_iot_platform_employee_response_GENDER_ANY } sirqul_iot_platform_employee_response_GENDER_e;

char* employee_response_gender_ToString(sirqul_iot_platform_employee_response_GENDER_e gender);

sirqul_iot_platform_employee_response_GENDER_e employee_response_gender_FromString(char* gender);



typedef struct employee_response_t {
    long account_id; //numeric
    char *location_display; // string
    char *display; // string
    char *username; // string
    char *account_type; // string
    char *profile_image; // string
    sirqul_iot_platform_employee_response_GENDER_e gender; //enum
    char *contact_email; // string
    struct contact_response_t *contact; //model
    struct account_mini_response_t *manager; //model
    int active; //boolean
    list_t *locations; //nonprimitive container
    int has_delegate_access; //boolean
    double latitude; //numeric
    double longitude; //numeric
    long location_last_updated; //numeric
    int location_count; //numeric

    int _library_owned; // Is the library responsible for freeing this object?
} employee_response_t;

__attribute__((deprecated)) employee_response_t *employee_response_create(
    long account_id,
    char *location_display,
    char *display,
    char *username,
    char *account_type,
    char *profile_image,
    sirqul_iot_platform_employee_response_GENDER_e gender,
    char *contact_email,
    contact_response_t *contact,
    account_mini_response_t *manager,
    int active,
    list_t *locations,
    int has_delegate_access,
    double latitude,
    double longitude,
    long location_last_updated,
    int location_count
);

void employee_response_free(employee_response_t *employee_response);

employee_response_t *employee_response_parseFromJSON(cJSON *employee_responseJSON);

cJSON *employee_response_convertToJSON(employee_response_t *employee_response);

#endif /* _employee_response_H_ */

