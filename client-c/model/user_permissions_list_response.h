/*
 * user_permissions_list_response.h
 *
 * 
 */

#ifndef _user_permissions_list_response_H_
#define _user_permissions_list_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct user_permissions_list_response_t user_permissions_list_response_t;

#include "permission_response.h"
#include "user_permissions_response.h"

// Enum ACTION for user_permissions_list_response

typedef enum  { sirqul_iot_platform_user_permissions_list_response_ACTION_NULL = 0, sirqul_iot_platform_user_permissions_list_response_ACTION_DATA, sirqul_iot_platform_user_permissions_list_response_ACTION_SAVE, sirqul_iot_platform_user_permissions_list_response_ACTION__DELETE, sirqul_iot_platform_user_permissions_list_response_ACTION_GET } sirqul_iot_platform_user_permissions_list_response_ACTION_e;

char* user_permissions_list_response_action_ToString(sirqul_iot_platform_user_permissions_list_response_ACTION_e action);

sirqul_iot_platform_user_permissions_list_response_ACTION_e user_permissions_list_response_action_FromString(char* action);

// Enum VISIBILITY for user_permissions_list_response

typedef enum  { sirqul_iot_platform_user_permissions_list_response_VISIBILITY_NULL = 0, sirqul_iot_platform_user_permissions_list_response_VISIBILITY__PUBLIC, sirqul_iot_platform_user_permissions_list_response_VISIBILITY__PRIVATE, sirqul_iot_platform_user_permissions_list_response_VISIBILITY_FRIENDS } sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e;

char* user_permissions_list_response_visibility_ToString(sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e visibility);

sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e user_permissions_list_response_visibility_FromString(char* visibility);



typedef struct user_permissions_list_response_t {
    sirqul_iot_platform_user_permissions_list_response_ACTION_e action; //enum
    sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e visibility; //enum
    struct permission_response_t *public_permissions; //model
    list_t *user_permissions; //nonprimitive container

    int _library_owned; // Is the library responsible for freeing this object?
} user_permissions_list_response_t;

__attribute__((deprecated)) user_permissions_list_response_t *user_permissions_list_response_create(
    sirqul_iot_platform_user_permissions_list_response_ACTION_e action,
    sirqul_iot_platform_user_permissions_list_response_VISIBILITY_e visibility,
    permission_response_t *public_permissions,
    list_t *user_permissions
);

void user_permissions_list_response_free(user_permissions_list_response_t *user_permissions_list_response);

user_permissions_list_response_t *user_permissions_list_response_parseFromJSON(cJSON *user_permissions_list_responseJSON);

cJSON *user_permissions_list_response_convertToJSON(user_permissions_list_response_t *user_permissions_list_response);

#endif /* _user_permissions_list_response_H_ */

