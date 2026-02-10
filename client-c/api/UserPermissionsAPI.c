#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "UserPermissionsAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum PERMISSIONABLETYPE for UserPermissionsAPI_addUsersToPermissionable

static char* addUsersToPermissionable_PERMISSIONABLETYPE_ToString(sirqul_iot_platform_addUsersToPermissionable_permissionableType_e PERMISSIONABLETYPE){
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    return PERMISSIONABLETYPEArray[PERMISSIONABLETYPE];
}

static sirqul_iot_platform_addUsersToPermissionable_permissionableType_e addUsersToPermissionable_PERMISSIONABLETYPE_FromString(char* PERMISSIONABLETYPE){
    int stringToReturn = 0;
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    size_t sizeofArray = sizeof(PERMISSIONABLETYPEArray) / sizeof(PERMISSIONABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PERMISSIONABLETYPE, PERMISSIONABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function addUsersToPermissionable_PERMISSIONABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *addUsersToPermissionable_PERMISSIONABLETYPE_convertToJSON(sirqul_iot_platform_addUsersToPermissionable_permissionableType_e PERMISSIONABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "permissionableType", addUsersToPermissionable_PERMISSIONABLETYPE_ToString(PERMISSIONABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function addUsersToPermissionable_PERMISSIONABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_addUsersToPermissionable_permissionableType_e addUsersToPermissionable_PERMISSIONABLETYPE_parseFromJSON(cJSON* PERMISSIONABLETYPEJSON) {
    sirqul_iot_platform_addUsersToPermissionable_permissionableType_e PERMISSIONABLETYPEVariable = 0;
    cJSON *PERMISSIONABLETYPEVar = cJSON_GetObjectItemCaseSensitive(PERMISSIONABLETYPEJSON, "permissionableType");
    if(!cJSON_IsString(PERMISSIONABLETYPEVar) || (PERMISSIONABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PERMISSIONABLETYPEVariable = addUsersToPermissionable_PERMISSIONABLETYPE_FromString(PERMISSIONABLETYPEVar->valuestring);
    return PERMISSIONABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum PERMISSIONABLETYPE for UserPermissionsAPI_approvePermissionable

static char* approvePermissionable_PERMISSIONABLETYPE_ToString(sirqul_iot_platform_approvePermissionable_permissionableType_e PERMISSIONABLETYPE){
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    return PERMISSIONABLETYPEArray[PERMISSIONABLETYPE];
}

static sirqul_iot_platform_approvePermissionable_permissionableType_e approvePermissionable_PERMISSIONABLETYPE_FromString(char* PERMISSIONABLETYPE){
    int stringToReturn = 0;
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    size_t sizeofArray = sizeof(PERMISSIONABLETYPEArray) / sizeof(PERMISSIONABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PERMISSIONABLETYPE, PERMISSIONABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function approvePermissionable_PERMISSIONABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *approvePermissionable_PERMISSIONABLETYPE_convertToJSON(sirqul_iot_platform_approvePermissionable_permissionableType_e PERMISSIONABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "permissionableType", approvePermissionable_PERMISSIONABLETYPE_ToString(PERMISSIONABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function approvePermissionable_PERMISSIONABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_approvePermissionable_permissionableType_e approvePermissionable_PERMISSIONABLETYPE_parseFromJSON(cJSON* PERMISSIONABLETYPEJSON) {
    sirqul_iot_platform_approvePermissionable_permissionableType_e PERMISSIONABLETYPEVariable = 0;
    cJSON *PERMISSIONABLETYPEVar = cJSON_GetObjectItemCaseSensitive(PERMISSIONABLETYPEJSON, "permissionableType");
    if(!cJSON_IsString(PERMISSIONABLETYPEVar) || (PERMISSIONABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PERMISSIONABLETYPEVariable = approvePermissionable_PERMISSIONABLETYPE_FromString(PERMISSIONABLETYPEVar->valuestring);
    return PERMISSIONABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum APPROVALSTATUS for UserPermissionsAPI_approvePermissionable

static char* approvePermissionable_APPROVALSTATUS_ToString(sirqul_iot_platform_approvePermissionable_approvalStatus_e APPROVALSTATUS){
    char *APPROVALSTATUSArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    return APPROVALSTATUSArray[APPROVALSTATUS];
}

static sirqul_iot_platform_approvePermissionable_approvalStatus_e approvePermissionable_APPROVALSTATUS_FromString(char* APPROVALSTATUS){
    int stringToReturn = 0;
    char *APPROVALSTATUSArray[] =  { "NULL", "PENDING", "REJECTED", "APPROVED", "FEATURED" };
    size_t sizeofArray = sizeof(APPROVALSTATUSArray) / sizeof(APPROVALSTATUSArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(APPROVALSTATUS, APPROVALSTATUSArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function approvePermissionable_APPROVALSTATUS_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *approvePermissionable_APPROVALSTATUS_convertToJSON(sirqul_iot_platform_approvePermissionable_approvalStatus_e APPROVALSTATUS) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "approvalStatus", approvePermissionable_APPROVALSTATUS_ToString(APPROVALSTATUS)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function approvePermissionable_APPROVALSTATUS_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_approvePermissionable_approvalStatus_e approvePermissionable_APPROVALSTATUS_parseFromJSON(cJSON* APPROVALSTATUSJSON) {
    sirqul_iot_platform_approvePermissionable_approvalStatus_e APPROVALSTATUSVariable = 0;
    cJSON *APPROVALSTATUSVar = cJSON_GetObjectItemCaseSensitive(APPROVALSTATUSJSON, "approvalStatus");
    if(!cJSON_IsString(APPROVALSTATUSVar) || (APPROVALSTATUSVar->valuestring == NULL))
    {
        goto end;
    }
    APPROVALSTATUSVariable = approvePermissionable_APPROVALSTATUS_FromString(APPROVALSTATUSVar->valuestring);
    return APPROVALSTATUSVariable;
end:
    return 0;
}
*/

// Functions for enum PERMISSIONABLETYPE for UserPermissionsAPI_removeUsersFromPermissionable

static char* removeUsersFromPermissionable_PERMISSIONABLETYPE_ToString(sirqul_iot_platform_removeUsersFromPermissionable_permissionableType_e PERMISSIONABLETYPE){
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    return PERMISSIONABLETYPEArray[PERMISSIONABLETYPE];
}

static sirqul_iot_platform_removeUsersFromPermissionable_permissionableType_e removeUsersFromPermissionable_PERMISSIONABLETYPE_FromString(char* PERMISSIONABLETYPE){
    int stringToReturn = 0;
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    size_t sizeofArray = sizeof(PERMISSIONABLETYPEArray) / sizeof(PERMISSIONABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PERMISSIONABLETYPE, PERMISSIONABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function removeUsersFromPermissionable_PERMISSIONABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *removeUsersFromPermissionable_PERMISSIONABLETYPE_convertToJSON(sirqul_iot_platform_removeUsersFromPermissionable_permissionableType_e PERMISSIONABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "permissionableType", removeUsersFromPermissionable_PERMISSIONABLETYPE_ToString(PERMISSIONABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function removeUsersFromPermissionable_PERMISSIONABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_removeUsersFromPermissionable_permissionableType_e removeUsersFromPermissionable_PERMISSIONABLETYPE_parseFromJSON(cJSON* PERMISSIONABLETYPEJSON) {
    sirqul_iot_platform_removeUsersFromPermissionable_permissionableType_e PERMISSIONABLETYPEVariable = 0;
    cJSON *PERMISSIONABLETYPEVar = cJSON_GetObjectItemCaseSensitive(PERMISSIONABLETYPEJSON, "permissionableType");
    if(!cJSON_IsString(PERMISSIONABLETYPEVar) || (PERMISSIONABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PERMISSIONABLETYPEVariable = removeUsersFromPermissionable_PERMISSIONABLETYPE_FromString(PERMISSIONABLETYPEVar->valuestring);
    return PERMISSIONABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum PERMISSIONABLETYPE for UserPermissionsAPI_searchPermissionables

static char* searchPermissionables_PERMISSIONABLETYPE_ToString(sirqul_iot_platform_searchPermissionables_permissionableType_e PERMISSIONABLETYPE){
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    return PERMISSIONABLETYPEArray[PERMISSIONABLETYPE];
}

static sirqul_iot_platform_searchPermissionables_permissionableType_e searchPermissionables_PERMISSIONABLETYPE_FromString(char* PERMISSIONABLETYPE){
    int stringToReturn = 0;
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    size_t sizeofArray = sizeof(PERMISSIONABLETYPEArray) / sizeof(PERMISSIONABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PERMISSIONABLETYPE, PERMISSIONABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchPermissionables_PERMISSIONABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchPermissionables_PERMISSIONABLETYPE_convertToJSON(sirqul_iot_platform_searchPermissionables_permissionableType_e PERMISSIONABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "permissionableType", searchPermissionables_PERMISSIONABLETYPE_ToString(PERMISSIONABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchPermissionables_PERMISSIONABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchPermissionables_permissionableType_e searchPermissionables_PERMISSIONABLETYPE_parseFromJSON(cJSON* PERMISSIONABLETYPEJSON) {
    sirqul_iot_platform_searchPermissionables_permissionableType_e PERMISSIONABLETYPEVariable = 0;
    cJSON *PERMISSIONABLETYPEVar = cJSON_GetObjectItemCaseSensitive(PERMISSIONABLETYPEJSON, "permissionableType");
    if(!cJSON_IsString(PERMISSIONABLETYPEVar) || (PERMISSIONABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PERMISSIONABLETYPEVariable = searchPermissionables_PERMISSIONABLETYPE_FromString(PERMISSIONABLETYPEVar->valuestring);
    return PERMISSIONABLETYPEVariable;
end:
    return 0;
}
*/

// Functions for enum PERMISSIONABLETYPE for UserPermissionsAPI_searchPermissionablesFollowingDistance

static char* searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_ToString(sirqul_iot_platform_searchPermissionablesFollowingDistance_permissionableType_e PERMISSIONABLETYPE){
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    return PERMISSIONABLETYPEArray[PERMISSIONABLETYPE];
}

static sirqul_iot_platform_searchPermissionablesFollowingDistance_permissionableType_e searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_FromString(char* PERMISSIONABLETYPE){
    int stringToReturn = 0;
    char *PERMISSIONABLETYPEArray[] =  { "NULL", "ACCOUNT", "GAMELEVEL", "ALBUM_CONTEST", "THEME_DESCRIPTOR", "SCHEDULED_NOTIFICATION", "TASK", "TRIGGER" };
    size_t sizeofArray = sizeof(PERMISSIONABLETYPEArray) / sizeof(PERMISSIONABLETYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(PERMISSIONABLETYPE, PERMISSIONABLETYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_convertToJSON(sirqul_iot_platform_searchPermissionablesFollowingDistance_permissionableType_e PERMISSIONABLETYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "permissionableType", searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_ToString(PERMISSIONABLETYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchPermissionablesFollowingDistance_permissionableType_e searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_parseFromJSON(cJSON* PERMISSIONABLETYPEJSON) {
    sirqul_iot_platform_searchPermissionablesFollowingDistance_permissionableType_e PERMISSIONABLETYPEVariable = 0;
    cJSON *PERMISSIONABLETYPEVar = cJSON_GetObjectItemCaseSensitive(PERMISSIONABLETYPEJSON, "permissionableType");
    if(!cJSON_IsString(PERMISSIONABLETYPEVar) || (PERMISSIONABLETYPEVar->valuestring == NULL))
    {
        goto end;
    }
    PERMISSIONABLETYPEVariable = searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_FromString(PERMISSIONABLETYPEVar->valuestring);
    return PERMISSIONABLETYPEVariable;
end:
    return 0;
}
*/


// Add User
//
// Adds a user to a permissionable object.
//
sirqul_response_t*
UserPermissionsAPI_addUsersToPermissionable(apiClient_t *apiClient, double version, sirqul_iot_platform_addUsersToPermissionable_permissionableType_e permissionableType, long permissionableId, char *deviceId, long accountId, int *read, int *write, int *_delete, int *add, char *connectionIds, char *connectionAccountIds, char *connectionGroupIds, int *pending, int *admin, int *includeFriendGroup, double latitude, double longitude, char *audienceIds)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/consumer/permissions/add");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_permissionableType = NULL;
    sirqul_iot_platform_addUsersToPermissionable_permissionableType_e valueQuery_permissionableType ;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = (permissionableType);
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, strdup(addUsersToPermissionable_PERMISSIONABLETYPE_ToString(
        valueQuery_permissionableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
    }

    // query parameters
    char *keyQuery_read = NULL;
    char * valueQuery_read = NULL;
    keyValuePair_t *keyPairQuery_read = 0;
    if (read)
    {
        keyQuery_read = strdup("read");
        valueQuery_read = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_read, MAX_NUMBER_LENGTH, "%d", *read);
        keyPairQuery_read = keyValuePair_create(keyQuery_read, valueQuery_read);
        list_addElement(localVarQueryParameters,keyPairQuery_read);
    }

    // query parameters
    char *keyQuery_write = NULL;
    char * valueQuery_write = NULL;
    keyValuePair_t *keyPairQuery_write = 0;
    if (write)
    {
        keyQuery_write = strdup("write");
        valueQuery_write = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_write, MAX_NUMBER_LENGTH, "%d", *write);
        keyPairQuery_write = keyValuePair_create(keyQuery_write, valueQuery_write);
        list_addElement(localVarQueryParameters,keyPairQuery_write);
    }

    // query parameters
    char *keyQuery__delete = NULL;
    char * valueQuery__delete = NULL;
    keyValuePair_t *keyPairQuery__delete = 0;
    if (_delete)
    {
        keyQuery__delete = strdup("delete");
        valueQuery__delete = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__delete, MAX_NUMBER_LENGTH, "%d", *_delete);
        keyPairQuery__delete = keyValuePair_create(keyQuery__delete, valueQuery__delete);
        list_addElement(localVarQueryParameters,keyPairQuery__delete);
    }

    // query parameters
    char *keyQuery_add = NULL;
    char * valueQuery_add = NULL;
    keyValuePair_t *keyPairQuery_add = 0;
    if (add)
    {
        keyQuery_add = strdup("add");
        valueQuery_add = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_add, MAX_NUMBER_LENGTH, "%d", *add);
        keyPairQuery_add = keyValuePair_create(keyQuery_add, valueQuery_add);
        list_addElement(localVarQueryParameters,keyPairQuery_add);
    }

    // query parameters
    char *keyQuery_connectionIds = NULL;
    char * valueQuery_connectionIds = NULL;
    keyValuePair_t *keyPairQuery_connectionIds = 0;
    if (connectionIds)
    {
        keyQuery_connectionIds = strdup("connectionIds");
        valueQuery_connectionIds = strdup((connectionIds));
        keyPairQuery_connectionIds = keyValuePair_create(keyQuery_connectionIds, valueQuery_connectionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionIds);
    }

    // query parameters
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
    }

    // query parameters
    char *keyQuery_connectionGroupIds = NULL;
    char * valueQuery_connectionGroupIds = NULL;
    keyValuePair_t *keyPairQuery_connectionGroupIds = 0;
    if (connectionGroupIds)
    {
        keyQuery_connectionGroupIds = strdup("connectionGroupIds");
        valueQuery_connectionGroupIds = strdup((connectionGroupIds));
        keyPairQuery_connectionGroupIds = keyValuePair_create(keyQuery_connectionGroupIds, valueQuery_connectionGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupIds);
    }

    // query parameters
    char *keyQuery_pending = NULL;
    char * valueQuery_pending = NULL;
    keyValuePair_t *keyPairQuery_pending = 0;
    if (pending)
    {
        keyQuery_pending = strdup("pending");
        valueQuery_pending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_pending, MAX_NUMBER_LENGTH, "%d", *pending);
        keyPairQuery_pending = keyValuePair_create(keyQuery_pending, valueQuery_pending);
        list_addElement(localVarQueryParameters,keyPairQuery_pending);
    }

    // query parameters
    char *keyQuery_admin = NULL;
    char * valueQuery_admin = NULL;
    keyValuePair_t *keyPairQuery_admin = 0;
    if (admin)
    {
        keyQuery_admin = strdup("admin");
        valueQuery_admin = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_admin, MAX_NUMBER_LENGTH, "%d", *admin);
        keyPairQuery_admin = keyValuePair_create(keyQuery_admin, valueQuery_admin);
        list_addElement(localVarQueryParameters,keyPairQuery_admin);
    }

    // query parameters
    char *keyQuery_includeFriendGroup = NULL;
    char * valueQuery_includeFriendGroup = NULL;
    keyValuePair_t *keyPairQuery_includeFriendGroup = 0;
    if (includeFriendGroup)
    {
        keyQuery_includeFriendGroup = strdup("includeFriendGroup");
        valueQuery_includeFriendGroup = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_includeFriendGroup, MAX_NUMBER_LENGTH, "%d", *includeFriendGroup);
        keyPairQuery_includeFriendGroup = keyValuePair_create(keyQuery_includeFriendGroup, valueQuery_includeFriendGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_includeFriendGroup);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *UserPermissionsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(UserPermissionsAPIlocalVarJSON);
        cJSON_Delete(UserPermissionsAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
    }
    if(keyQuery_read){
        free(keyQuery_read);
        keyQuery_read = NULL;
    }
    if(valueQuery_read){
        free(valueQuery_read);
        valueQuery_read = NULL;
    }
    if(keyPairQuery_read){
        keyValuePair_free(keyPairQuery_read);
        keyPairQuery_read = NULL;
    }
    if(keyQuery_write){
        free(keyQuery_write);
        keyQuery_write = NULL;
    }
    if(valueQuery_write){
        free(valueQuery_write);
        valueQuery_write = NULL;
    }
    if(keyPairQuery_write){
        keyValuePair_free(keyPairQuery_write);
        keyPairQuery_write = NULL;
    }
    if(keyQuery__delete){
        free(keyQuery__delete);
        keyQuery__delete = NULL;
    }
    if(valueQuery__delete){
        free(valueQuery__delete);
        valueQuery__delete = NULL;
    }
    if(keyPairQuery__delete){
        keyValuePair_free(keyPairQuery__delete);
        keyPairQuery__delete = NULL;
    }
    if(keyQuery_add){
        free(keyQuery_add);
        keyQuery_add = NULL;
    }
    if(valueQuery_add){
        free(valueQuery_add);
        valueQuery_add = NULL;
    }
    if(keyPairQuery_add){
        keyValuePair_free(keyPairQuery_add);
        keyPairQuery_add = NULL;
    }
    if(keyQuery_connectionIds){
        free(keyQuery_connectionIds);
        keyQuery_connectionIds = NULL;
    }
    if(valueQuery_connectionIds){
        free(valueQuery_connectionIds);
        valueQuery_connectionIds = NULL;
    }
    if(keyPairQuery_connectionIds){
        keyValuePair_free(keyPairQuery_connectionIds);
        keyPairQuery_connectionIds = NULL;
    }
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
    }
    if(keyQuery_connectionGroupIds){
        free(keyQuery_connectionGroupIds);
        keyQuery_connectionGroupIds = NULL;
    }
    if(valueQuery_connectionGroupIds){
        free(valueQuery_connectionGroupIds);
        valueQuery_connectionGroupIds = NULL;
    }
    if(keyPairQuery_connectionGroupIds){
        keyValuePair_free(keyPairQuery_connectionGroupIds);
        keyPairQuery_connectionGroupIds = NULL;
    }
    if(keyQuery_pending){
        free(keyQuery_pending);
        keyQuery_pending = NULL;
    }
    if(valueQuery_pending){
        free(valueQuery_pending);
        valueQuery_pending = NULL;
    }
    if(keyPairQuery_pending){
        keyValuePair_free(keyPairQuery_pending);
        keyPairQuery_pending = NULL;
    }
    if(keyQuery_admin){
        free(keyQuery_admin);
        keyQuery_admin = NULL;
    }
    if(valueQuery_admin){
        free(valueQuery_admin);
        valueQuery_admin = NULL;
    }
    if(keyPairQuery_admin){
        keyValuePair_free(keyPairQuery_admin);
        keyPairQuery_admin = NULL;
    }
    if(keyQuery_includeFriendGroup){
        free(keyQuery_includeFriendGroup);
        keyQuery_includeFriendGroup = NULL;
    }
    if(valueQuery_includeFriendGroup){
        free(valueQuery_includeFriendGroup);
        valueQuery_includeFriendGroup = NULL;
    }
    if(keyPairQuery_includeFriendGroup){
        keyValuePair_free(keyPairQuery_includeFriendGroup);
        keyPairQuery_includeFriendGroup = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Approve Permissionable
//
// Sets the approval status of a permissionable object.
//
sirqul_response_t*
UserPermissionsAPI_approvePermissionable(apiClient_t *apiClient, double version, sirqul_iot_platform_approvePermissionable_permissionableType_e permissionableType, long permissionableId, char *deviceId, long accountId, sirqul_iot_platform_approvePermissionable_approvalStatus_e approvalStatus)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/permissionable/approve");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_permissionableType = NULL;
    sirqul_iot_platform_approvePermissionable_permissionableType_e valueQuery_permissionableType ;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = (permissionableType);
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, strdup(approvePermissionable_PERMISSIONABLETYPE_ToString(
        valueQuery_permissionableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
    }

    // query parameters
    char *keyQuery_approvalStatus = NULL;
    sirqul_iot_platform_approvePermissionable_approvalStatus_e valueQuery_approvalStatus ;
    keyValuePair_t *keyPairQuery_approvalStatus = 0;
    if (approvalStatus)
    {
        keyQuery_approvalStatus = strdup("approvalStatus");
        valueQuery_approvalStatus = (approvalStatus);
        keyPairQuery_approvalStatus = keyValuePair_create(keyQuery_approvalStatus, strdup(approvePermissionable_APPROVALSTATUS_ToString(
        valueQuery_approvalStatus)));
        list_addElement(localVarQueryParameters,keyPairQuery_approvalStatus);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *UserPermissionsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(UserPermissionsAPIlocalVarJSON);
        cJSON_Delete(UserPermissionsAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
    }
    if(keyQuery_approvalStatus){
        free(keyQuery_approvalStatus);
        keyQuery_approvalStatus = NULL;
    }
    if(keyPairQuery_approvalStatus){
        keyValuePair_free(keyPairQuery_approvalStatus);
        keyPairQuery_approvalStatus = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Leave
//
// Used when the user wants to leave from someone else's permissionable object
//
sirqul_response_t*
UserPermissionsAPI_leaveFromPermissionable(apiClient_t *apiClient, double version, char *permissionableType, long permissionableId, char *deviceId, long accountId, double latitude, double longitude)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/consumer/permissions/leave");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_permissionableType = NULL;
    char * valueQuery_permissionableType = NULL;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = strdup((permissionableType));
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, valueQuery_permissionableType);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *UserPermissionsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(UserPermissionsAPIlocalVarJSON);
        cJSON_Delete(UserPermissionsAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(valueQuery_permissionableType){
        free(valueQuery_permissionableType);
        valueQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Remove User
//
// Used to remove someone (assuming they have permission) from a permissionable object
//
sirqul_response_t*
UserPermissionsAPI_removeUsersFromPermissionable(apiClient_t *apiClient, double version, sirqul_iot_platform_removeUsersFromPermissionable_permissionableType_e permissionableType, long permissionableId, char *deviceId, long accountId, char *connectionIds, char *connectionAccountIds, char *connectionGroupIds, int *removeFriendGroup, double latitude, double longitude, char *audienceIds)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/consumer/permissions/remove");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_permissionableType = NULL;
    sirqul_iot_platform_removeUsersFromPermissionable_permissionableType_e valueQuery_permissionableType ;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = (permissionableType);
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, strdup(removeUsersFromPermissionable_PERMISSIONABLETYPE_ToString(
        valueQuery_permissionableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
    }

    // query parameters
    char *keyQuery_connectionIds = NULL;
    char * valueQuery_connectionIds = NULL;
    keyValuePair_t *keyPairQuery_connectionIds = 0;
    if (connectionIds)
    {
        keyQuery_connectionIds = strdup("connectionIds");
        valueQuery_connectionIds = strdup((connectionIds));
        keyPairQuery_connectionIds = keyValuePair_create(keyQuery_connectionIds, valueQuery_connectionIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionIds);
    }

    // query parameters
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
    }

    // query parameters
    char *keyQuery_connectionGroupIds = NULL;
    char * valueQuery_connectionGroupIds = NULL;
    keyValuePair_t *keyPairQuery_connectionGroupIds = 0;
    if (connectionGroupIds)
    {
        keyQuery_connectionGroupIds = strdup("connectionGroupIds");
        valueQuery_connectionGroupIds = strdup((connectionGroupIds));
        keyPairQuery_connectionGroupIds = keyValuePair_create(keyQuery_connectionGroupIds, valueQuery_connectionGroupIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionGroupIds);
    }

    // query parameters
    char *keyQuery_removeFriendGroup = NULL;
    char * valueQuery_removeFriendGroup = NULL;
    keyValuePair_t *keyPairQuery_removeFriendGroup = 0;
    if (removeFriendGroup)
    {
        keyQuery_removeFriendGroup = strdup("removeFriendGroup");
        valueQuery_removeFriendGroup = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_removeFriendGroup, MAX_NUMBER_LENGTH, "%d", *removeFriendGroup);
        keyPairQuery_removeFriendGroup = keyValuePair_create(keyQuery_removeFriendGroup, valueQuery_removeFriendGroup);
        list_addElement(localVarQueryParameters,keyPairQuery_removeFriendGroup);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }

    // query parameters
    char *keyQuery_audienceIds = NULL;
    char * valueQuery_audienceIds = NULL;
    keyValuePair_t *keyPairQuery_audienceIds = 0;
    if (audienceIds)
    {
        keyQuery_audienceIds = strdup("audienceIds");
        valueQuery_audienceIds = strdup((audienceIds));
        keyPairQuery_audienceIds = keyValuePair_create(keyQuery_audienceIds, valueQuery_audienceIds);
        list_addElement(localVarQueryParameters,keyPairQuery_audienceIds);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    //nonprimitive not container
    sirqul_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *UserPermissionsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(UserPermissionsAPIlocalVarJSON);
        cJSON_Delete(UserPermissionsAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
    }
    if(keyQuery_connectionIds){
        free(keyQuery_connectionIds);
        keyQuery_connectionIds = NULL;
    }
    if(valueQuery_connectionIds){
        free(valueQuery_connectionIds);
        valueQuery_connectionIds = NULL;
    }
    if(keyPairQuery_connectionIds){
        keyValuePair_free(keyPairQuery_connectionIds);
        keyPairQuery_connectionIds = NULL;
    }
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
    }
    if(keyQuery_connectionGroupIds){
        free(keyQuery_connectionGroupIds);
        keyQuery_connectionGroupIds = NULL;
    }
    if(valueQuery_connectionGroupIds){
        free(valueQuery_connectionGroupIds);
        valueQuery_connectionGroupIds = NULL;
    }
    if(keyPairQuery_connectionGroupIds){
        keyValuePair_free(keyPairQuery_connectionGroupIds);
        keyPairQuery_connectionGroupIds = NULL;
    }
    if(keyQuery_removeFriendGroup){
        free(keyQuery_removeFriendGroup);
        keyQuery_removeFriendGroup = NULL;
    }
    if(valueQuery_removeFriendGroup){
        free(valueQuery_removeFriendGroup);
        valueQuery_removeFriendGroup = NULL;
    }
    if(keyPairQuery_removeFriendGroup){
        keyValuePair_free(keyPairQuery_removeFriendGroup);
        keyPairQuery_removeFriendGroup = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    if(keyQuery_audienceIds){
        free(keyQuery_audienceIds);
        keyQuery_audienceIds = NULL;
    }
    if(valueQuery_audienceIds){
        free(valueQuery_audienceIds);
        valueQuery_audienceIds = NULL;
    }
    if(keyPairQuery_audienceIds){
        keyValuePair_free(keyPairQuery_audienceIds);
        keyPairQuery_audienceIds = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Permissionables
//
// Search on UserPermissions
//
list_t*
UserPermissionsAPI_searchPermissionables(apiClient_t *apiClient, double version, char *deviceId, long accountId, long connectionAccountId, char *connectionAccountIds, sirqul_iot_platform_searchPermissionables_permissionableType_e permissionableType, long permissionableId, char *keyword, char *sortField, int *descending, int *pending, int *admin, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/permissions/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
    }

    // query parameters
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
    }

    // query parameters
    char *keyQuery_permissionableType = NULL;
    sirqul_iot_platform_searchPermissionables_permissionableType_e valueQuery_permissionableType ;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = (permissionableType);
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, strdup(searchPermissionables_PERMISSIONABLETYPE_ToString(
        valueQuery_permissionableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_sortField = NULL;
    char * valueQuery_sortField = NULL;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = strdup((sortField));
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, valueQuery_sortField);
        list_addElement(localVarQueryParameters,keyPairQuery_sortField);
    }

    // query parameters
    char *keyQuery_descending = NULL;
    char * valueQuery_descending = NULL;
    keyValuePair_t *keyPairQuery_descending = 0;
    if (descending)
    {
        keyQuery_descending = strdup("descending");
        valueQuery_descending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_descending, MAX_NUMBER_LENGTH, "%d", *descending);
        keyPairQuery_descending = keyValuePair_create(keyQuery_descending, valueQuery_descending);
        list_addElement(localVarQueryParameters,keyPairQuery_descending);
    }

    // query parameters
    char *keyQuery_pending = NULL;
    char * valueQuery_pending = NULL;
    keyValuePair_t *keyPairQuery_pending = 0;
    if (pending)
    {
        keyQuery_pending = strdup("pending");
        valueQuery_pending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_pending, MAX_NUMBER_LENGTH, "%d", *pending);
        keyPairQuery_pending = keyValuePair_create(keyQuery_pending, valueQuery_pending);
        list_addElement(localVarQueryParameters,keyPairQuery_pending);
    }

    // query parameters
    char *keyQuery_admin = NULL;
    char * valueQuery_admin = NULL;
    keyValuePair_t *keyPairQuery_admin = 0;
    if (admin)
    {
        keyQuery_admin = strdup("admin");
        valueQuery_admin = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_admin, MAX_NUMBER_LENGTH, "%d", *admin);
        keyPairQuery_admin = keyValuePair_create(keyQuery_admin, valueQuery_admin);
        list_addElement(localVarQueryParameters,keyPairQuery_admin);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *UserPermissionsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(UserPermissionsAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, UserPermissionsAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( UserPermissionsAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
    }
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_sortField){
        free(keyQuery_sortField);
        keyQuery_sortField = NULL;
    }
    if(valueQuery_sortField){
        free(valueQuery_sortField);
        valueQuery_sortField = NULL;
    }
    if(keyPairQuery_sortField){
        keyValuePair_free(keyPairQuery_sortField);
        keyPairQuery_sortField = NULL;
    }
    if(keyQuery_descending){
        free(keyQuery_descending);
        keyQuery_descending = NULL;
    }
    if(valueQuery_descending){
        free(valueQuery_descending);
        valueQuery_descending = NULL;
    }
    if(keyPairQuery_descending){
        keyValuePair_free(keyPairQuery_descending);
        keyPairQuery_descending = NULL;
    }
    if(keyQuery_pending){
        free(keyQuery_pending);
        keyQuery_pending = NULL;
    }
    if(valueQuery_pending){
        free(valueQuery_pending);
        valueQuery_pending = NULL;
    }
    if(keyPairQuery_pending){
        keyValuePair_free(keyPairQuery_pending);
        keyPairQuery_pending = NULL;
    }
    if(keyQuery_admin){
        free(keyQuery_admin);
        keyQuery_admin = NULL;
    }
    if(valueQuery_admin){
        free(valueQuery_admin);
        valueQuery_admin = NULL;
    }
    if(keyPairQuery_admin){
        keyValuePair_free(keyPairQuery_admin);
        keyPairQuery_admin = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Permissionables by Distnace
//
// Search on UserPermissions by distance
//
list_t*
UserPermissionsAPI_searchPermissionablesFollowingDistance(apiClient_t *apiClient, double version, double latitude, double longitude, char *deviceId, long accountId, long connectionAccountId, char *connectionAccountIds, sirqul_iot_platform_searchPermissionablesFollowingDistance_permissionableType_e permissionableType, long permissionableId, double searchRange, char *keyword, int *pending, int *admin, int *start, int *limit)
{
    list_t    *localVarQueryParameters = list_createList();
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/api/{version}/permissions/distancesearch");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



    // query parameters
    char *keyQuery_deviceId = NULL;
    char * valueQuery_deviceId = NULL;
    keyValuePair_t *keyPairQuery_deviceId = 0;
    if (deviceId)
    {
        keyQuery_deviceId = strdup("deviceId");
        valueQuery_deviceId = strdup((deviceId));
        keyPairQuery_deviceId = keyValuePair_create(keyQuery_deviceId, valueQuery_deviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_deviceId);
    }

    // query parameters
    char *keyQuery_accountId = NULL;
    char * valueQuery_accountId ;
    keyValuePair_t *keyPairQuery_accountId = 0;
    {
        keyQuery_accountId = strdup("accountId");
        valueQuery_accountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_accountId, MAX_NUMBER_LENGTH_LONG, "%d", accountId);
        keyPairQuery_accountId = keyValuePair_create(keyQuery_accountId, valueQuery_accountId);
        list_addElement(localVarQueryParameters,keyPairQuery_accountId);
    }

    // query parameters
    char *keyQuery_connectionAccountId = NULL;
    char * valueQuery_connectionAccountId ;
    keyValuePair_t *keyPairQuery_connectionAccountId = 0;
    {
        keyQuery_connectionAccountId = strdup("connectionAccountId");
        valueQuery_connectionAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_connectionAccountId, MAX_NUMBER_LENGTH_LONG, "%d", connectionAccountId);
        keyPairQuery_connectionAccountId = keyValuePair_create(keyQuery_connectionAccountId, valueQuery_connectionAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountId);
    }

    // query parameters
    char *keyQuery_connectionAccountIds = NULL;
    char * valueQuery_connectionAccountIds = NULL;
    keyValuePair_t *keyPairQuery_connectionAccountIds = 0;
    if (connectionAccountIds)
    {
        keyQuery_connectionAccountIds = strdup("connectionAccountIds");
        valueQuery_connectionAccountIds = strdup((connectionAccountIds));
        keyPairQuery_connectionAccountIds = keyValuePair_create(keyQuery_connectionAccountIds, valueQuery_connectionAccountIds);
        list_addElement(localVarQueryParameters,keyPairQuery_connectionAccountIds);
    }

    // query parameters
    char *keyQuery_permissionableType = NULL;
    sirqul_iot_platform_searchPermissionablesFollowingDistance_permissionableType_e valueQuery_permissionableType ;
    keyValuePair_t *keyPairQuery_permissionableType = 0;
    if (permissionableType)
    {
        keyQuery_permissionableType = strdup("permissionableType");
        valueQuery_permissionableType = (permissionableType);
        keyPairQuery_permissionableType = keyValuePair_create(keyQuery_permissionableType, strdup(searchPermissionablesFollowingDistance_PERMISSIONABLETYPE_ToString(
        valueQuery_permissionableType)));
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableType);
    }

    // query parameters
    char *keyQuery_permissionableId = NULL;
    char * valueQuery_permissionableId ;
    keyValuePair_t *keyPairQuery_permissionableId = 0;
    {
        keyQuery_permissionableId = strdup("permissionableId");
        valueQuery_permissionableId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_permissionableId, MAX_NUMBER_LENGTH_LONG, "%d", permissionableId);
        keyPairQuery_permissionableId = keyValuePair_create(keyQuery_permissionableId, valueQuery_permissionableId);
        list_addElement(localVarQueryParameters,keyPairQuery_permissionableId);
    }

    // query parameters
    char *keyQuery_latitude = NULL;
    char * valueQuery_latitude = NULL;
    keyValuePair_t *keyPairQuery_latitude = 0;
    {
        keyQuery_latitude = strdup("latitude");
        int s = snprintf(NULL, 0, "%.16e", latitude);
        if (s >= 0)
        {
            valueQuery_latitude = calloc(1,s+1);
            snprintf(valueQuery_latitude, s+1, "%.16e", latitude);
        }
        keyPairQuery_latitude = keyValuePair_create(keyQuery_latitude, valueQuery_latitude);
        list_addElement(localVarQueryParameters,keyPairQuery_latitude);
    }

    // query parameters
    char *keyQuery_longitude = NULL;
    char * valueQuery_longitude = NULL;
    keyValuePair_t *keyPairQuery_longitude = 0;
    {
        keyQuery_longitude = strdup("longitude");
        int s = snprintf(NULL, 0, "%.16e", longitude);
        if (s >= 0)
        {
            valueQuery_longitude = calloc(1,s+1);
            snprintf(valueQuery_longitude, s+1, "%.16e", longitude);
        }
        keyPairQuery_longitude = keyValuePair_create(keyQuery_longitude, valueQuery_longitude);
        list_addElement(localVarQueryParameters,keyPairQuery_longitude);
    }

    // query parameters
    char *keyQuery_searchRange = NULL;
    char * valueQuery_searchRange = NULL;
    keyValuePair_t *keyPairQuery_searchRange = 0;
    {
        keyQuery_searchRange = strdup("searchRange");
        int s = snprintf(NULL, 0, "%.16e", searchRange);
        if (s >= 0)
        {
            valueQuery_searchRange = calloc(1,s+1);
            snprintf(valueQuery_searchRange, s+1, "%.16e", searchRange);
        }
        keyPairQuery_searchRange = keyValuePair_create(keyQuery_searchRange, valueQuery_searchRange);
        list_addElement(localVarQueryParameters,keyPairQuery_searchRange);
    }

    // query parameters
    char *keyQuery_keyword = NULL;
    char * valueQuery_keyword = NULL;
    keyValuePair_t *keyPairQuery_keyword = 0;
    if (keyword)
    {
        keyQuery_keyword = strdup("keyword");
        valueQuery_keyword = strdup((keyword));
        keyPairQuery_keyword = keyValuePair_create(keyQuery_keyword, valueQuery_keyword);
        list_addElement(localVarQueryParameters,keyPairQuery_keyword);
    }

    // query parameters
    char *keyQuery_pending = NULL;
    char * valueQuery_pending = NULL;
    keyValuePair_t *keyPairQuery_pending = 0;
    if (pending)
    {
        keyQuery_pending = strdup("pending");
        valueQuery_pending = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_pending, MAX_NUMBER_LENGTH, "%d", *pending);
        keyPairQuery_pending = keyValuePair_create(keyQuery_pending, valueQuery_pending);
        list_addElement(localVarQueryParameters,keyPairQuery_pending);
    }

    // query parameters
    char *keyQuery_admin = NULL;
    char * valueQuery_admin = NULL;
    keyValuePair_t *keyPairQuery_admin = 0;
    if (admin)
    {
        keyQuery_admin = strdup("admin");
        valueQuery_admin = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_admin, MAX_NUMBER_LENGTH, "%d", *admin);
        keyPairQuery_admin = keyValuePair_create(keyQuery_admin, valueQuery_admin);
        list_addElement(localVarQueryParameters,keyPairQuery_admin);
    }

    // query parameters
    char *keyQuery_start = NULL;
    char * valueQuery_start = NULL;
    keyValuePair_t *keyPairQuery_start = 0;
    if (start)
    {
        keyQuery_start = strdup("start");
        valueQuery_start = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_start, MAX_NUMBER_LENGTH, "%d", *start);
        keyPairQuery_start = keyValuePair_create(keyQuery_start, valueQuery_start);
        list_addElement(localVarQueryParameters,keyPairQuery_start);
    }

    // query parameters
    char *keyQuery_limit = NULL;
    char * valueQuery_limit = NULL;
    keyValuePair_t *keyPairQuery_limit = 0;
    if (limit)
    {
        keyQuery_limit = strdup("limit");
        valueQuery_limit = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_limit, MAX_NUMBER_LENGTH, "%d", *limit);
        keyPairQuery_limit = keyValuePair_create(keyQuery_limit, valueQuery_limit);
        list_addElement(localVarQueryParameters,keyPairQuery_limit);
    }
    list_addElement(localVarHeaderType,"*/*"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","successful operation");
    //}
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *UserPermissionsAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(UserPermissionsAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, UserPermissionsAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( UserPermissionsAPIlocalVarJSON);
        cJSON_Delete( VarJSON);
    }
    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    list_freeList(localVarQueryParameters);
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_version);
    if(keyQuery_deviceId){
        free(keyQuery_deviceId);
        keyQuery_deviceId = NULL;
    }
    if(valueQuery_deviceId){
        free(valueQuery_deviceId);
        valueQuery_deviceId = NULL;
    }
    if(keyPairQuery_deviceId){
        keyValuePair_free(keyPairQuery_deviceId);
        keyPairQuery_deviceId = NULL;
    }
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_connectionAccountId){
        free(keyQuery_connectionAccountId);
        keyQuery_connectionAccountId = NULL;
    }
    if(keyPairQuery_connectionAccountId){
        keyValuePair_free(keyPairQuery_connectionAccountId);
        keyPairQuery_connectionAccountId = NULL;
    }
    if(keyQuery_connectionAccountIds){
        free(keyQuery_connectionAccountIds);
        keyQuery_connectionAccountIds = NULL;
    }
    if(valueQuery_connectionAccountIds){
        free(valueQuery_connectionAccountIds);
        valueQuery_connectionAccountIds = NULL;
    }
    if(keyPairQuery_connectionAccountIds){
        keyValuePair_free(keyPairQuery_connectionAccountIds);
        keyPairQuery_connectionAccountIds = NULL;
    }
    if(keyQuery_permissionableType){
        free(keyQuery_permissionableType);
        keyQuery_permissionableType = NULL;
    }
    if(keyPairQuery_permissionableType){
        keyValuePair_free(keyPairQuery_permissionableType);
        keyPairQuery_permissionableType = NULL;
    }
    if(keyQuery_permissionableId){
        free(keyQuery_permissionableId);
        keyQuery_permissionableId = NULL;
    }
    if(keyPairQuery_permissionableId){
        keyValuePair_free(keyPairQuery_permissionableId);
        keyPairQuery_permissionableId = NULL;
    }
    if(keyQuery_latitude){
        free(keyQuery_latitude);
        keyQuery_latitude = NULL;
    }
    if(keyPairQuery_latitude){
        keyValuePair_free(keyPairQuery_latitude);
        keyPairQuery_latitude = NULL;
    }
    if(keyQuery_longitude){
        free(keyQuery_longitude);
        keyQuery_longitude = NULL;
    }
    if(keyPairQuery_longitude){
        keyValuePair_free(keyPairQuery_longitude);
        keyPairQuery_longitude = NULL;
    }
    if(keyQuery_searchRange){
        free(keyQuery_searchRange);
        keyQuery_searchRange = NULL;
    }
    if(keyPairQuery_searchRange){
        keyValuePair_free(keyPairQuery_searchRange);
        keyPairQuery_searchRange = NULL;
    }
    if(keyQuery_keyword){
        free(keyQuery_keyword);
        keyQuery_keyword = NULL;
    }
    if(valueQuery_keyword){
        free(valueQuery_keyword);
        valueQuery_keyword = NULL;
    }
    if(keyPairQuery_keyword){
        keyValuePair_free(keyPairQuery_keyword);
        keyPairQuery_keyword = NULL;
    }
    if(keyQuery_pending){
        free(keyQuery_pending);
        keyQuery_pending = NULL;
    }
    if(valueQuery_pending){
        free(valueQuery_pending);
        valueQuery_pending = NULL;
    }
    if(keyPairQuery_pending){
        keyValuePair_free(keyPairQuery_pending);
        keyPairQuery_pending = NULL;
    }
    if(keyQuery_admin){
        free(keyQuery_admin);
        keyQuery_admin = NULL;
    }
    if(valueQuery_admin){
        free(valueQuery_admin);
        valueQuery_admin = NULL;
    }
    if(keyPairQuery_admin){
        keyValuePair_free(keyPairQuery_admin);
        keyPairQuery_admin = NULL;
    }
    if(keyQuery_start){
        free(keyQuery_start);
        keyQuery_start = NULL;
    }
    if(valueQuery_start){
        free(valueQuery_start);
        valueQuery_start = NULL;
    }
    if(keyPairQuery_start){
        keyValuePair_free(keyPairQuery_start);
        keyPairQuery_start = NULL;
    }
    if(keyQuery_limit){
        free(keyQuery_limit);
        keyQuery_limit = NULL;
    }
    if(valueQuery_limit){
        free(valueQuery_limit);
        valueQuery_limit = NULL;
    }
    if(keyPairQuery_limit){
        keyValuePair_free(keyPairQuery_limit);
        keyPairQuery_limit = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

