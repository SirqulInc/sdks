#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "SecureAppAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum BIOMETRICTYPE for SecureAppAPI_createSecureApplication

static char* createSecureApplication_BIOMETRICTYPE_ToString(sirqul_iot_platform_createSecureApplication_biometricType_e BIOMETRICTYPE){
    char *BIOMETRICTYPEArray[] =  { "NULL", "FINGERPRINT", "IRIS", "FACIAL" };
    return BIOMETRICTYPEArray[BIOMETRICTYPE];
}

static sirqul_iot_platform_createSecureApplication_biometricType_e createSecureApplication_BIOMETRICTYPE_FromString(char* BIOMETRICTYPE){
    int stringToReturn = 0;
    char *BIOMETRICTYPEArray[] =  { "NULL", "FINGERPRINT", "IRIS", "FACIAL" };
    size_t sizeofArray = sizeof(BIOMETRICTYPEArray) / sizeof(BIOMETRICTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BIOMETRICTYPE, BIOMETRICTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createSecureApplication_BIOMETRICTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createSecureApplication_BIOMETRICTYPE_convertToJSON(sirqul_iot_platform_createSecureApplication_biometricType_e BIOMETRICTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "biometricType", createSecureApplication_BIOMETRICTYPE_ToString(BIOMETRICTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createSecureApplication_BIOMETRICTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createSecureApplication_biometricType_e createSecureApplication_BIOMETRICTYPE_parseFromJSON(cJSON* BIOMETRICTYPEJSON) {
    sirqul_iot_platform_createSecureApplication_biometricType_e BIOMETRICTYPEVariable = 0;
    cJSON *BIOMETRICTYPEVar = cJSON_GetObjectItemCaseSensitive(BIOMETRICTYPEJSON, "biometricType");
    if(!cJSON_IsString(BIOMETRICTYPEVar) || (BIOMETRICTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    BIOMETRICTYPEVariable = createSecureApplication_BIOMETRICTYPE_FromString(BIOMETRICTYPEVar->valuestring);
    return BIOMETRICTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum BIOMETRICPOSITION for SecureAppAPI_createSecureApplication

static char* createSecureApplication_BIOMETRICPOSITION_ToString(sirqul_iot_platform_createSecureApplication_biometricPosition_e BIOMETRICPOSITION){
    char *BIOMETRICPOSITIONArray[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    return BIOMETRICPOSITIONArray[BIOMETRICPOSITION];
}

static sirqul_iot_platform_createSecureApplication_biometricPosition_e createSecureApplication_BIOMETRICPOSITION_FromString(char* BIOMETRICPOSITION){
    int stringToReturn = 0;
    char *BIOMETRICPOSITIONArray[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    size_t sizeofArray = sizeof(BIOMETRICPOSITIONArray) / sizeof(BIOMETRICPOSITIONArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BIOMETRICPOSITION, BIOMETRICPOSITIONArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createSecureApplication_BIOMETRICPOSITION_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createSecureApplication_BIOMETRICPOSITION_convertToJSON(sirqul_iot_platform_createSecureApplication_biometricPosition_e BIOMETRICPOSITION) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "biometricPosition", createSecureApplication_BIOMETRICPOSITION_ToString(BIOMETRICPOSITION)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createSecureApplication_BIOMETRICPOSITION_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createSecureApplication_biometricPosition_e createSecureApplication_BIOMETRICPOSITION_parseFromJSON(cJSON* BIOMETRICPOSITIONJSON) {
    sirqul_iot_platform_createSecureApplication_biometricPosition_e BIOMETRICPOSITIONVariable = 0;
    cJSON *BIOMETRICPOSITIONVar = cJSON_GetObjectItemCaseSensitive(BIOMETRICPOSITIONJSON, "biometricPosition");
    if(!cJSON_IsString(BIOMETRICPOSITIONVar) || (BIOMETRICPOSITIONVar->valuestring == NULL))
    {
        goto end;
    }
    BIOMETRICPOSITIONVariable = createSecureApplication_BIOMETRICPOSITION_FromString(BIOMETRICPOSITIONVar->valuestring);
    return BIOMETRICPOSITIONVariable;
end:
    return 0;
}
*/

// Functions for enum BIOMETRICPOSITION2 for SecureAppAPI_createSecureApplication

static char* createSecureApplication_BIOMETRICPOSITION2_ToString(sirqul_iot_platform_createSecureApplication_biometricPosition2_e BIOMETRICPOSITION2){
    char *BIOMETRICPOSITION2Array[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    return BIOMETRICPOSITION2Array[BIOMETRICPOSITION2];
}

static sirqul_iot_platform_createSecureApplication_biometricPosition2_e createSecureApplication_BIOMETRICPOSITION2_FromString(char* BIOMETRICPOSITION2){
    int stringToReturn = 0;
    char *BIOMETRICPOSITION2Array[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    size_t sizeofArray = sizeof(BIOMETRICPOSITION2Array) / sizeof(BIOMETRICPOSITION2Array[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BIOMETRICPOSITION2, BIOMETRICPOSITION2Array[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createSecureApplication_BIOMETRICPOSITION2_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createSecureApplication_BIOMETRICPOSITION2_convertToJSON(sirqul_iot_platform_createSecureApplication_biometricPosition2_e BIOMETRICPOSITION2) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "biometricPosition2", createSecureApplication_BIOMETRICPOSITION2_ToString(BIOMETRICPOSITION2)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createSecureApplication_BIOMETRICPOSITION2_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createSecureApplication_biometricPosition2_e createSecureApplication_BIOMETRICPOSITION2_parseFromJSON(cJSON* BIOMETRICPOSITION2JSON) {
    sirqul_iot_platform_createSecureApplication_biometricPosition2_e BIOMETRICPOSITION2Variable = 0;
    cJSON *BIOMETRICPOSITION2Var = cJSON_GetObjectItemCaseSensitive(BIOMETRICPOSITION2JSON, "biometricPosition2");
    if(!cJSON_IsString(BIOMETRICPOSITION2Var) || (BIOMETRICPOSITION2Var->valuestring == NULL))
    {
        goto end;
    }
    BIOMETRICPOSITION2Variable = createSecureApplication_BIOMETRICPOSITION2_FromString(BIOMETRICPOSITION2Var->valuestring);
    return BIOMETRICPOSITION2Variable;
end:
    return 0;
}
*/

// Functions for enum BIOMETRICTYPE for SecureAppAPI_updateSecureApplication

static char* updateSecureApplication_BIOMETRICTYPE_ToString(sirqul_iot_platform_updateSecureApplication_biometricType_e BIOMETRICTYPE){
    char *BIOMETRICTYPEArray[] =  { "NULL", "FINGERPRINT", "IRIS", "FACIAL" };
    return BIOMETRICTYPEArray[BIOMETRICTYPE];
}

static sirqul_iot_platform_updateSecureApplication_biometricType_e updateSecureApplication_BIOMETRICTYPE_FromString(char* BIOMETRICTYPE){
    int stringToReturn = 0;
    char *BIOMETRICTYPEArray[] =  { "NULL", "FINGERPRINT", "IRIS", "FACIAL" };
    size_t sizeofArray = sizeof(BIOMETRICTYPEArray) / sizeof(BIOMETRICTYPEArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BIOMETRICTYPE, BIOMETRICTYPEArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateSecureApplication_BIOMETRICTYPE_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateSecureApplication_BIOMETRICTYPE_convertToJSON(sirqul_iot_platform_updateSecureApplication_biometricType_e BIOMETRICTYPE) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "biometricType", updateSecureApplication_BIOMETRICTYPE_ToString(BIOMETRICTYPE)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateSecureApplication_BIOMETRICTYPE_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateSecureApplication_biometricType_e updateSecureApplication_BIOMETRICTYPE_parseFromJSON(cJSON* BIOMETRICTYPEJSON) {
    sirqul_iot_platform_updateSecureApplication_biometricType_e BIOMETRICTYPEVariable = 0;
    cJSON *BIOMETRICTYPEVar = cJSON_GetObjectItemCaseSensitive(BIOMETRICTYPEJSON, "biometricType");
    if(!cJSON_IsString(BIOMETRICTYPEVar) || (BIOMETRICTYPEVar->valuestring == NULL))
    {
        goto end;
    }
    BIOMETRICTYPEVariable = updateSecureApplication_BIOMETRICTYPE_FromString(BIOMETRICTYPEVar->valuestring);
    return BIOMETRICTYPEVariable;
end:
    return 0;
}
*/

// Functions for enum BIOMETRICPOSITION for SecureAppAPI_updateSecureApplication

static char* updateSecureApplication_BIOMETRICPOSITION_ToString(sirqul_iot_platform_updateSecureApplication_biometricPosition_e BIOMETRICPOSITION){
    char *BIOMETRICPOSITIONArray[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    return BIOMETRICPOSITIONArray[BIOMETRICPOSITION];
}

static sirqul_iot_platform_updateSecureApplication_biometricPosition_e updateSecureApplication_BIOMETRICPOSITION_FromString(char* BIOMETRICPOSITION){
    int stringToReturn = 0;
    char *BIOMETRICPOSITIONArray[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    size_t sizeofArray = sizeof(BIOMETRICPOSITIONArray) / sizeof(BIOMETRICPOSITIONArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BIOMETRICPOSITION, BIOMETRICPOSITIONArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateSecureApplication_BIOMETRICPOSITION_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateSecureApplication_BIOMETRICPOSITION_convertToJSON(sirqul_iot_platform_updateSecureApplication_biometricPosition_e BIOMETRICPOSITION) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "biometricPosition", updateSecureApplication_BIOMETRICPOSITION_ToString(BIOMETRICPOSITION)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateSecureApplication_BIOMETRICPOSITION_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateSecureApplication_biometricPosition_e updateSecureApplication_BIOMETRICPOSITION_parseFromJSON(cJSON* BIOMETRICPOSITIONJSON) {
    sirqul_iot_platform_updateSecureApplication_biometricPosition_e BIOMETRICPOSITIONVariable = 0;
    cJSON *BIOMETRICPOSITIONVar = cJSON_GetObjectItemCaseSensitive(BIOMETRICPOSITIONJSON, "biometricPosition");
    if(!cJSON_IsString(BIOMETRICPOSITIONVar) || (BIOMETRICPOSITIONVar->valuestring == NULL))
    {
        goto end;
    }
    BIOMETRICPOSITIONVariable = updateSecureApplication_BIOMETRICPOSITION_FromString(BIOMETRICPOSITIONVar->valuestring);
    return BIOMETRICPOSITIONVariable;
end:
    return 0;
}
*/

// Functions for enum BIOMETRICPOSITION2 for SecureAppAPI_updateSecureApplication

static char* updateSecureApplication_BIOMETRICPOSITION2_ToString(sirqul_iot_platform_updateSecureApplication_biometricPosition2_e BIOMETRICPOSITION2){
    char *BIOMETRICPOSITION2Array[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    return BIOMETRICPOSITION2Array[BIOMETRICPOSITION2];
}

static sirqul_iot_platform_updateSecureApplication_biometricPosition2_e updateSecureApplication_BIOMETRICPOSITION2_FromString(char* BIOMETRICPOSITION2){
    int stringToReturn = 0;
    char *BIOMETRICPOSITION2Array[] =  { "NULL", "UNKNOWN", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE", "LEFT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE", "RIGHT_THUMB", "LEFT", "RIGHT" };
    size_t sizeofArray = sizeof(BIOMETRICPOSITION2Array) / sizeof(BIOMETRICPOSITION2Array[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(BIOMETRICPOSITION2, BIOMETRICPOSITION2Array[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateSecureApplication_BIOMETRICPOSITION2_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateSecureApplication_BIOMETRICPOSITION2_convertToJSON(sirqul_iot_platform_updateSecureApplication_biometricPosition2_e BIOMETRICPOSITION2) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "biometricPosition2", updateSecureApplication_BIOMETRICPOSITION2_ToString(BIOMETRICPOSITION2)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateSecureApplication_BIOMETRICPOSITION2_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateSecureApplication_biometricPosition2_e updateSecureApplication_BIOMETRICPOSITION2_parseFromJSON(cJSON* BIOMETRICPOSITION2JSON) {
    sirqul_iot_platform_updateSecureApplication_biometricPosition2_e BIOMETRICPOSITION2Variable = 0;
    cJSON *BIOMETRICPOSITION2Var = cJSON_GetObjectItemCaseSensitive(BIOMETRICPOSITION2JSON, "biometricPosition2");
    if(!cJSON_IsString(BIOMETRICPOSITION2Var) || (BIOMETRICPOSITION2Var->valuestring == NULL))
    {
        goto end;
    }
    BIOMETRICPOSITION2Variable = updateSecureApplication_BIOMETRICPOSITION2_FromString(BIOMETRICPOSITION2Var->valuestring);
    return BIOMETRICPOSITION2Variable;
end:
    return 0;
}
*/


// Create Secure Application
//
// Create a secure application record.
//
sirqul_response_t*
SecureAppAPI_createSecureApplication(apiClient_t *apiClient, long accountId, char *appKey, binary_t* keyCert, binary_t* trustStore, char *username, char *password, int *active, sirqul_iot_platform_createSecureApplication_biometricType_e biometricType, sirqul_iot_platform_createSecureApplication_biometricPosition_e biometricPosition, sirqul_iot_platform_createSecureApplication_biometricPosition2_e biometricPosition2)
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
    char *localVarPath = strdup("/secure/application/create");





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
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_keyCert = NULL;
    binary_t* valueQuery_keyCert ;
    keyValuePair_t *keyPairQuery_keyCert = 0;
    if (keyCert)
    {
        keyQuery_keyCert = strdup("keyCert");
        valueQuery_keyCert = (keyCert);
        keyPairQuery_keyCert = keyValuePair_create(keyQuery_keyCert, &valueQuery_keyCert);
        list_addElement(localVarQueryParameters,keyPairQuery_keyCert);
    }

    // query parameters
    char *keyQuery_trustStore = NULL;
    binary_t* valueQuery_trustStore ;
    keyValuePair_t *keyPairQuery_trustStore = 0;
    if (trustStore)
    {
        keyQuery_trustStore = strdup("trustStore");
        valueQuery_trustStore = (trustStore);
        keyPairQuery_trustStore = keyValuePair_create(keyQuery_trustStore, &valueQuery_trustStore);
        list_addElement(localVarQueryParameters,keyPairQuery_trustStore);
    }

    // query parameters
    char *keyQuery_username = NULL;
    char * valueQuery_username = NULL;
    keyValuePair_t *keyPairQuery_username = 0;
    if (username)
    {
        keyQuery_username = strdup("username");
        valueQuery_username = strdup((username));
        keyPairQuery_username = keyValuePair_create(keyQuery_username, valueQuery_username);
        list_addElement(localVarQueryParameters,keyPairQuery_username);
    }

    // query parameters
    char *keyQuery_password = NULL;
    char * valueQuery_password = NULL;
    keyValuePair_t *keyPairQuery_password = 0;
    if (password)
    {
        keyQuery_password = strdup("password");
        valueQuery_password = strdup((password));
        keyPairQuery_password = keyValuePair_create(keyQuery_password, valueQuery_password);
        list_addElement(localVarQueryParameters,keyPairQuery_password);
    }

    // query parameters
    char *keyQuery_biometricType = NULL;
    sirqul_iot_platform_createSecureApplication_biometricType_e valueQuery_biometricType ;
    keyValuePair_t *keyPairQuery_biometricType = 0;
    if (biometricType)
    {
        keyQuery_biometricType = strdup("biometricType");
        valueQuery_biometricType = (biometricType);
        keyPairQuery_biometricType = keyValuePair_create(keyQuery_biometricType, strdup(createSecureApplication_BIOMETRICTYPE_ToString(
        valueQuery_biometricType)));
        list_addElement(localVarQueryParameters,keyPairQuery_biometricType);
    }

    // query parameters
    char *keyQuery_biometricPosition = NULL;
    sirqul_iot_platform_createSecureApplication_biometricPosition_e valueQuery_biometricPosition ;
    keyValuePair_t *keyPairQuery_biometricPosition = 0;
    if (biometricPosition)
    {
        keyQuery_biometricPosition = strdup("biometricPosition");
        valueQuery_biometricPosition = (biometricPosition);
        keyPairQuery_biometricPosition = keyValuePair_create(keyQuery_biometricPosition, strdup(createSecureApplication_BIOMETRICPOSITION_ToString(
        valueQuery_biometricPosition)));
        list_addElement(localVarQueryParameters,keyPairQuery_biometricPosition);
    }

    // query parameters
    char *keyQuery_biometricPosition2 = NULL;
    sirqul_iot_platform_createSecureApplication_biometricPosition2_e valueQuery_biometricPosition2 ;
    keyValuePair_t *keyPairQuery_biometricPosition2 = 0;
    if (biometricPosition2)
    {
        keyQuery_biometricPosition2 = strdup("biometricPosition2");
        valueQuery_biometricPosition2 = (biometricPosition2);
        keyPairQuery_biometricPosition2 = keyValuePair_create(keyQuery_biometricPosition2, strdup(createSecureApplication_BIOMETRICPOSITION2_ToString(
        valueQuery_biometricPosition2)));
        list_addElement(localVarQueryParameters,keyPairQuery_biometricPosition2);
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
        cJSON *SecureAppAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(SecureAppAPIlocalVarJSON);
        cJSON_Delete(SecureAppAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_keyCert){
        free(keyQuery_keyCert);
        keyQuery_keyCert = NULL;
    }
    if(keyPairQuery_keyCert){
        keyValuePair_free(keyPairQuery_keyCert);
        keyPairQuery_keyCert = NULL;
    }
    if(keyQuery_trustStore){
        free(keyQuery_trustStore);
        keyQuery_trustStore = NULL;
    }
    if(keyPairQuery_trustStore){
        keyValuePair_free(keyPairQuery_trustStore);
        keyPairQuery_trustStore = NULL;
    }
    if(keyQuery_username){
        free(keyQuery_username);
        keyQuery_username = NULL;
    }
    if(valueQuery_username){
        free(valueQuery_username);
        valueQuery_username = NULL;
    }
    if(keyPairQuery_username){
        keyValuePair_free(keyPairQuery_username);
        keyPairQuery_username = NULL;
    }
    if(keyQuery_password){
        free(keyQuery_password);
        keyQuery_password = NULL;
    }
    if(valueQuery_password){
        free(valueQuery_password);
        valueQuery_password = NULL;
    }
    if(keyPairQuery_password){
        keyValuePair_free(keyPairQuery_password);
        keyPairQuery_password = NULL;
    }
    if(keyQuery_biometricType){
        free(keyQuery_biometricType);
        keyQuery_biometricType = NULL;
    }
    if(keyPairQuery_biometricType){
        keyValuePair_free(keyPairQuery_biometricType);
        keyPairQuery_biometricType = NULL;
    }
    if(keyQuery_biometricPosition){
        free(keyQuery_biometricPosition);
        keyQuery_biometricPosition = NULL;
    }
    if(keyPairQuery_biometricPosition){
        keyValuePair_free(keyPairQuery_biometricPosition);
        keyPairQuery_biometricPosition = NULL;
    }
    if(keyQuery_biometricPosition2){
        free(keyQuery_biometricPosition2);
        keyQuery_biometricPosition2 = NULL;
    }
    if(keyPairQuery_biometricPosition2){
        keyValuePair_free(keyPairQuery_biometricPosition2);
        keyPairQuery_biometricPosition2 = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Secure Application
//
// Delete a secure application record.
//
sirqul_response_t*
SecureAppAPI_deleteSecureApplication(apiClient_t *apiClient, long accountId, char *appKey)
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
    char *localVarPath = strdup("/secure/application/delete");





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
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
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
        cJSON *SecureAppAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(SecureAppAPIlocalVarJSON);
        cJSON_Delete(SecureAppAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Login Clear
//
// Login via Clear.me. Creates a new account if logging in for the first time.
//
profile_response_t*
SecureAppAPI_loginSecure(apiClient_t *apiClient, char *appKey, binary_t* biometricFile, char *deviceId, binary_t* biometricFile2, int *ageRestriction, int *returnProfile, char *responseFilters, double latitude, double longitude)
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
    char *localVarPath = strdup("/secure/login");





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
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_biometricFile = NULL;
    binary_t* valueQuery_biometricFile ;
    keyValuePair_t *keyPairQuery_biometricFile = 0;
    if (biometricFile)
    {
        keyQuery_biometricFile = strdup("biometricFile");
        valueQuery_biometricFile = (biometricFile);
        keyPairQuery_biometricFile = keyValuePair_create(keyQuery_biometricFile, &valueQuery_biometricFile);
        list_addElement(localVarQueryParameters,keyPairQuery_biometricFile);
    }

    // query parameters
    char *keyQuery_biometricFile2 = NULL;
    binary_t* valueQuery_biometricFile2 ;
    keyValuePair_t *keyPairQuery_biometricFile2 = 0;
    if (biometricFile2)
    {
        keyQuery_biometricFile2 = strdup("biometricFile2");
        valueQuery_biometricFile2 = (biometricFile2);
        keyPairQuery_biometricFile2 = keyValuePair_create(keyQuery_biometricFile2, &valueQuery_biometricFile2);
        list_addElement(localVarQueryParameters,keyPairQuery_biometricFile2);
    }

    // query parameters
    char *keyQuery_ageRestriction = NULL;
    char * valueQuery_ageRestriction = NULL;
    keyValuePair_t *keyPairQuery_ageRestriction = 0;
    if (ageRestriction)
    {
        keyQuery_ageRestriction = strdup("ageRestriction");
        valueQuery_ageRestriction = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_ageRestriction, MAX_NUMBER_LENGTH, "%d", *ageRestriction);
        keyPairQuery_ageRestriction = keyValuePair_create(keyQuery_ageRestriction, valueQuery_ageRestriction);
        list_addElement(localVarQueryParameters,keyPairQuery_ageRestriction);
    }

    // query parameters
    char *keyQuery_returnProfile = NULL;
    char * valueQuery_returnProfile = NULL;
    keyValuePair_t *keyPairQuery_returnProfile = 0;
    if (returnProfile)
    {
        keyQuery_returnProfile = strdup("returnProfile");
        valueQuery_returnProfile = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_returnProfile, MAX_NUMBER_LENGTH, "%d", *returnProfile);
        keyPairQuery_returnProfile = keyValuePair_create(keyQuery_returnProfile, valueQuery_returnProfile);
        list_addElement(localVarQueryParameters,keyPairQuery_returnProfile);
    }

    // query parameters
    char *keyQuery_responseFilters = NULL;
    char * valueQuery_responseFilters = NULL;
    keyValuePair_t *keyPairQuery_responseFilters = 0;
    if (responseFilters)
    {
        keyQuery_responseFilters = strdup("responseFilters");
        valueQuery_responseFilters = strdup((responseFilters));
        keyPairQuery_responseFilters = keyValuePair_create(keyQuery_responseFilters, valueQuery_responseFilters);
        list_addElement(localVarQueryParameters,keyPairQuery_responseFilters);
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SecureAppAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(SecureAppAPIlocalVarJSON);
        cJSON_Delete(SecureAppAPIlocalVarJSON);
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
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_biometricFile){
        free(keyQuery_biometricFile);
        keyQuery_biometricFile = NULL;
    }
    if(keyPairQuery_biometricFile){
        keyValuePair_free(keyPairQuery_biometricFile);
        keyPairQuery_biometricFile = NULL;
    }
    if(keyQuery_biometricFile2){
        free(keyQuery_biometricFile2);
        keyQuery_biometricFile2 = NULL;
    }
    if(keyPairQuery_biometricFile2){
        keyValuePair_free(keyPairQuery_biometricFile2);
        keyPairQuery_biometricFile2 = NULL;
    }
    if(keyQuery_ageRestriction){
        free(keyQuery_ageRestriction);
        keyQuery_ageRestriction = NULL;
    }
    if(valueQuery_ageRestriction){
        free(valueQuery_ageRestriction);
        valueQuery_ageRestriction = NULL;
    }
    if(keyPairQuery_ageRestriction){
        keyValuePair_free(keyPairQuery_ageRestriction);
        keyPairQuery_ageRestriction = NULL;
    }
    if(keyQuery_returnProfile){
        free(keyQuery_returnProfile);
        keyQuery_returnProfile = NULL;
    }
    if(valueQuery_returnProfile){
        free(valueQuery_returnProfile);
        valueQuery_returnProfile = NULL;
    }
    if(keyPairQuery_returnProfile){
        keyValuePair_free(keyPairQuery_returnProfile);
        keyPairQuery_returnProfile = NULL;
    }
    if(keyQuery_responseFilters){
        free(keyQuery_responseFilters);
        keyQuery_responseFilters = NULL;
    }
    if(valueQuery_responseFilters){
        free(valueQuery_responseFilters);
        valueQuery_responseFilters = NULL;
    }
    if(keyPairQuery_responseFilters){
        keyValuePair_free(keyPairQuery_responseFilters);
        keyPairQuery_responseFilters = NULL;
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

// Purchase Clear
//
// Purchase via Clear.me. Creates a new account if purchasing for the first time.
//
profile_response_t*
SecureAppAPI_purchaseSecure(apiClient_t *apiClient, payment_request_t *body)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/secure/purchase");





    // Body Param
    cJSON *localVarSingleItemJSON_body = NULL;
    if (body != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_body = payment_request_convertToJSON(body);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_body);
        localVarBodyLength = strlen(localVarBodyParameters);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
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
    profile_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SecureAppAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = profile_response_parseFromJSON(SecureAppAPIlocalVarJSON);
        cJSON_Delete(SecureAppAPIlocalVarJSON);
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
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (localVarSingleItemJSON_body) {
        cJSON_Delete(localVarSingleItemJSON_body);
        localVarSingleItemJSON_body = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Rest Secure Application
//
// Reset a secure application client.
//
sirqul_response_t*
SecureAppAPI_resetSecure(apiClient_t *apiClient, long accountId, char *appKey)
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
    char *localVarPath = strdup("/secure/application/reset");





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
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
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
        cJSON *SecureAppAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(SecureAppAPIlocalVarJSON);
        cJSON_Delete(SecureAppAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Secure Application
//
// Update a secure application record.
//
sirqul_response_t*
SecureAppAPI_updateSecureApplication(apiClient_t *apiClient, long accountId, char *appKey, int *active, binary_t* keyCert, binary_t* trustStore, char *username, char *password, sirqul_iot_platform_updateSecureApplication_biometricType_e biometricType, sirqul_iot_platform_updateSecureApplication_biometricPosition_e biometricPosition, sirqul_iot_platform_updateSecureApplication_biometricPosition2_e biometricPosition2)
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
    char *localVarPath = strdup("/secure/application/update");





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
    char *keyQuery_appKey = NULL;
    char * valueQuery_appKey = NULL;
    keyValuePair_t *keyPairQuery_appKey = 0;
    if (appKey)
    {
        keyQuery_appKey = strdup("appKey");
        valueQuery_appKey = strdup((appKey));
        keyPairQuery_appKey = keyValuePair_create(keyQuery_appKey, valueQuery_appKey);
        list_addElement(localVarQueryParameters,keyPairQuery_appKey);
    }

    // query parameters
    char *keyQuery_active = NULL;
    char * valueQuery_active = NULL;
    keyValuePair_t *keyPairQuery_active = 0;
    if (active)
    {
        keyQuery_active = strdup("active");
        valueQuery_active = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_active, MAX_NUMBER_LENGTH, "%d", *active);
        keyPairQuery_active = keyValuePair_create(keyQuery_active, valueQuery_active);
        list_addElement(localVarQueryParameters,keyPairQuery_active);
    }

    // query parameters
    char *keyQuery_keyCert = NULL;
    binary_t* valueQuery_keyCert ;
    keyValuePair_t *keyPairQuery_keyCert = 0;
    if (keyCert)
    {
        keyQuery_keyCert = strdup("keyCert");
        valueQuery_keyCert = (keyCert);
        keyPairQuery_keyCert = keyValuePair_create(keyQuery_keyCert, &valueQuery_keyCert);
        list_addElement(localVarQueryParameters,keyPairQuery_keyCert);
    }

    // query parameters
    char *keyQuery_trustStore = NULL;
    binary_t* valueQuery_trustStore ;
    keyValuePair_t *keyPairQuery_trustStore = 0;
    if (trustStore)
    {
        keyQuery_trustStore = strdup("trustStore");
        valueQuery_trustStore = (trustStore);
        keyPairQuery_trustStore = keyValuePair_create(keyQuery_trustStore, &valueQuery_trustStore);
        list_addElement(localVarQueryParameters,keyPairQuery_trustStore);
    }

    // query parameters
    char *keyQuery_username = NULL;
    char * valueQuery_username = NULL;
    keyValuePair_t *keyPairQuery_username = 0;
    if (username)
    {
        keyQuery_username = strdup("username");
        valueQuery_username = strdup((username));
        keyPairQuery_username = keyValuePair_create(keyQuery_username, valueQuery_username);
        list_addElement(localVarQueryParameters,keyPairQuery_username);
    }

    // query parameters
    char *keyQuery_password = NULL;
    char * valueQuery_password = NULL;
    keyValuePair_t *keyPairQuery_password = 0;
    if (password)
    {
        keyQuery_password = strdup("password");
        valueQuery_password = strdup((password));
        keyPairQuery_password = keyValuePair_create(keyQuery_password, valueQuery_password);
        list_addElement(localVarQueryParameters,keyPairQuery_password);
    }

    // query parameters
    char *keyQuery_biometricType = NULL;
    sirqul_iot_platform_updateSecureApplication_biometricType_e valueQuery_biometricType ;
    keyValuePair_t *keyPairQuery_biometricType = 0;
    if (biometricType)
    {
        keyQuery_biometricType = strdup("biometricType");
        valueQuery_biometricType = (biometricType);
        keyPairQuery_biometricType = keyValuePair_create(keyQuery_biometricType, strdup(updateSecureApplication_BIOMETRICTYPE_ToString(
        valueQuery_biometricType)));
        list_addElement(localVarQueryParameters,keyPairQuery_biometricType);
    }

    // query parameters
    char *keyQuery_biometricPosition = NULL;
    sirqul_iot_platform_updateSecureApplication_biometricPosition_e valueQuery_biometricPosition ;
    keyValuePair_t *keyPairQuery_biometricPosition = 0;
    if (biometricPosition)
    {
        keyQuery_biometricPosition = strdup("biometricPosition");
        valueQuery_biometricPosition = (biometricPosition);
        keyPairQuery_biometricPosition = keyValuePair_create(keyQuery_biometricPosition, strdup(updateSecureApplication_BIOMETRICPOSITION_ToString(
        valueQuery_biometricPosition)));
        list_addElement(localVarQueryParameters,keyPairQuery_biometricPosition);
    }

    // query parameters
    char *keyQuery_biometricPosition2 = NULL;
    sirqul_iot_platform_updateSecureApplication_biometricPosition2_e valueQuery_biometricPosition2 ;
    keyValuePair_t *keyPairQuery_biometricPosition2 = 0;
    if (biometricPosition2)
    {
        keyQuery_biometricPosition2 = strdup("biometricPosition2");
        valueQuery_biometricPosition2 = (biometricPosition2);
        keyPairQuery_biometricPosition2 = keyValuePair_create(keyQuery_biometricPosition2, strdup(updateSecureApplication_BIOMETRICPOSITION2_ToString(
        valueQuery_biometricPosition2)));
        list_addElement(localVarQueryParameters,keyPairQuery_biometricPosition2);
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
        cJSON *SecureAppAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(SecureAppAPIlocalVarJSON);
        cJSON_Delete(SecureAppAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_appKey){
        free(keyQuery_appKey);
        keyQuery_appKey = NULL;
    }
    if(valueQuery_appKey){
        free(valueQuery_appKey);
        valueQuery_appKey = NULL;
    }
    if(keyPairQuery_appKey){
        keyValuePair_free(keyPairQuery_appKey);
        keyPairQuery_appKey = NULL;
    }
    if(keyQuery_active){
        free(keyQuery_active);
        keyQuery_active = NULL;
    }
    if(valueQuery_active){
        free(valueQuery_active);
        valueQuery_active = NULL;
    }
    if(keyPairQuery_active){
        keyValuePair_free(keyPairQuery_active);
        keyPairQuery_active = NULL;
    }
    if(keyQuery_keyCert){
        free(keyQuery_keyCert);
        keyQuery_keyCert = NULL;
    }
    if(keyPairQuery_keyCert){
        keyValuePair_free(keyPairQuery_keyCert);
        keyPairQuery_keyCert = NULL;
    }
    if(keyQuery_trustStore){
        free(keyQuery_trustStore);
        keyQuery_trustStore = NULL;
    }
    if(keyPairQuery_trustStore){
        keyValuePair_free(keyPairQuery_trustStore);
        keyPairQuery_trustStore = NULL;
    }
    if(keyQuery_username){
        free(keyQuery_username);
        keyQuery_username = NULL;
    }
    if(valueQuery_username){
        free(valueQuery_username);
        valueQuery_username = NULL;
    }
    if(keyPairQuery_username){
        keyValuePair_free(keyPairQuery_username);
        keyPairQuery_username = NULL;
    }
    if(keyQuery_password){
        free(keyQuery_password);
        keyQuery_password = NULL;
    }
    if(valueQuery_password){
        free(valueQuery_password);
        valueQuery_password = NULL;
    }
    if(keyPairQuery_password){
        keyValuePair_free(keyPairQuery_password);
        keyPairQuery_password = NULL;
    }
    if(keyQuery_biometricType){
        free(keyQuery_biometricType);
        keyQuery_biometricType = NULL;
    }
    if(keyPairQuery_biometricType){
        keyValuePair_free(keyPairQuery_biometricType);
        keyPairQuery_biometricType = NULL;
    }
    if(keyQuery_biometricPosition){
        free(keyQuery_biometricPosition);
        keyQuery_biometricPosition = NULL;
    }
    if(keyPairQuery_biometricPosition){
        keyValuePair_free(keyPairQuery_biometricPosition);
        keyPairQuery_biometricPosition = NULL;
    }
    if(keyQuery_biometricPosition2){
        free(keyQuery_biometricPosition2);
        keyQuery_biometricPosition2 = NULL;
    }
    if(keyPairQuery_biometricPosition2){
        keyValuePair_free(keyPairQuery_biometricPosition2);
        keyPairQuery_biometricPosition2 = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

