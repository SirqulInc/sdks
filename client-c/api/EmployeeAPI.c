#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "EmployeeAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21

// Functions for enum GENDER for EmployeeAPI_createEmployee

static char* createEmployee_GENDER_ToString(sirqul_iot_platform_createEmployee_gender_e GENDER){
    char *GENDERArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return GENDERArray[GENDER];
}

static sirqul_iot_platform_createEmployee_gender_e createEmployee_GENDER_FromString(char* GENDER){
    int stringToReturn = 0;
    char *GENDERArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    size_t sizeofArray = sizeof(GENDERArray) / sizeof(GENDERArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(GENDER, GENDERArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function createEmployee_GENDER_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *createEmployee_GENDER_convertToJSON(sirqul_iot_platform_createEmployee_gender_e GENDER) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "gender", createEmployee_GENDER_ToString(GENDER)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function createEmployee_GENDER_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_createEmployee_gender_e createEmployee_GENDER_parseFromJSON(cJSON* GENDERJSON) {
    sirqul_iot_platform_createEmployee_gender_e GENDERVariable = 0;
    cJSON *GENDERVar = cJSON_GetObjectItemCaseSensitive(GENDERJSON, "gender");
    if(!cJSON_IsString(GENDERVar) || (GENDERVar->valuestring == NULL))
    {
        goto end;
    }
    GENDERVariable = createEmployee_GENDER_FromString(GENDERVar->valuestring);
    return GENDERVariable;
end:
    return 0;
}
*/

// Functions for enum SORTFIELD for EmployeeAPI_searchEmployees

static char* searchEmployees_SORTFIELD_ToString(sirqul_iot_platform_searchEmployees_sortField_e SORTFIELD){
    char *SORTFIELDArray[] =  { "NULL", "ID", "DISPLAY", "CREATED", "UPDATED", "ACTIVE", "DELETED", "LAST_LOGGED_IN", "CONTACT_EMAIL", "ACCOUNT_TYPE", "RETAILER_LOCATION_NAME", "RETAILER_NAME" };
    return SORTFIELDArray[SORTFIELD];
}

static sirqul_iot_platform_searchEmployees_sortField_e searchEmployees_SORTFIELD_FromString(char* SORTFIELD){
    int stringToReturn = 0;
    char *SORTFIELDArray[] =  { "NULL", "ID", "DISPLAY", "CREATED", "UPDATED", "ACTIVE", "DELETED", "LAST_LOGGED_IN", "CONTACT_EMAIL", "ACCOUNT_TYPE", "RETAILER_LOCATION_NAME", "RETAILER_NAME" };
    size_t sizeofArray = sizeof(SORTFIELDArray) / sizeof(SORTFIELDArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(SORTFIELD, SORTFIELDArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function searchEmployees_SORTFIELD_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *searchEmployees_SORTFIELD_convertToJSON(sirqul_iot_platform_searchEmployees_sortField_e SORTFIELD) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "sortField", searchEmployees_SORTFIELD_ToString(SORTFIELD)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function searchEmployees_SORTFIELD_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_searchEmployees_sortField_e searchEmployees_SORTFIELD_parseFromJSON(cJSON* SORTFIELDJSON) {
    sirqul_iot_platform_searchEmployees_sortField_e SORTFIELDVariable = 0;
    cJSON *SORTFIELDVar = cJSON_GetObjectItemCaseSensitive(SORTFIELDJSON, "sortField");
    if(!cJSON_IsString(SORTFIELDVar) || (SORTFIELDVar->valuestring == NULL))
    {
        goto end;
    }
    SORTFIELDVariable = searchEmployees_SORTFIELD_FromString(SORTFIELDVar->valuestring);
    return SORTFIELDVariable;
end:
    return 0;
}
*/

// Functions for enum GENDER for EmployeeAPI_updateEmployee

static char* updateEmployee_GENDER_ToString(sirqul_iot_platform_updateEmployee_gender_e GENDER){
    char *GENDERArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    return GENDERArray[GENDER];
}

static sirqul_iot_platform_updateEmployee_gender_e updateEmployee_GENDER_FromString(char* GENDER){
    int stringToReturn = 0;
    char *GENDERArray[] =  { "NULL", "MALE", "FEMALE", "ANY" };
    size_t sizeofArray = sizeof(GENDERArray) / sizeof(GENDERArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(GENDER, GENDERArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

/*
// Function updateEmployee_GENDER_convertToJSON is not currently used,
// since conversion to JSON passes through the conversion of the model, and ToString. The function is kept for future reference.
//
static cJSON *updateEmployee_GENDER_convertToJSON(sirqul_iot_platform_updateEmployee_gender_e GENDER) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "gender", updateEmployee_GENDER_ToString(GENDER)) == NULL) {
        goto fail;
    }
    return item;
    fail:
    cJSON_Delete(item);
    return NULL;
}

// Function updateEmployee_GENDER_parseFromJSON is not currently used,
// since conversion from JSON passes through the conversion of the model, and FromString. The function is kept for future reference.
//
static sirqul_iot_platform_updateEmployee_gender_e updateEmployee_GENDER_parseFromJSON(cJSON* GENDERJSON) {
    sirqul_iot_platform_updateEmployee_gender_e GENDERVariable = 0;
    cJSON *GENDERVar = cJSON_GetObjectItemCaseSensitive(GENDERJSON, "gender");
    if(!cJSON_IsString(GENDERVar) || (GENDERVar->valuestring == NULL))
    {
        goto end;
    }
    GENDERVariable = updateEmployee_GENDER_FromString(GENDERVar->valuestring);
    return GENDERVariable;
end:
    return 0;
}
*/


// Assign Employee
//
// Assign An existing account to be an employee
//
employee_response_t*
EmployeeAPI_assignEmployee(apiClient_t *apiClient, double version, long accountId, long managerAccountId, long employeeAccountId, char *role)
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
    char *localVarPath = strdup("/api/{version}/employee/assign");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_managerAccountId = NULL;
    char * valueQuery_managerAccountId ;
    keyValuePair_t *keyPairQuery_managerAccountId = 0;
    {
        keyQuery_managerAccountId = strdup("managerAccountId");
        valueQuery_managerAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_managerAccountId, MAX_NUMBER_LENGTH_LONG, "%d", managerAccountId);
        keyPairQuery_managerAccountId = keyValuePair_create(keyQuery_managerAccountId, valueQuery_managerAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_managerAccountId);
    }

    // query parameters
    char *keyQuery_employeeAccountId = NULL;
    char * valueQuery_employeeAccountId ;
    keyValuePair_t *keyPairQuery_employeeAccountId = 0;
    {
        keyQuery_employeeAccountId = strdup("employeeAccountId");
        valueQuery_employeeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_employeeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", employeeAccountId);
        keyPairQuery_employeeAccountId = keyValuePair_create(keyQuery_employeeAccountId, valueQuery_employeeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_employeeAccountId);
    }

    // query parameters
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
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
    employee_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = employee_response_parseFromJSON(EmployeeAPIlocalVarJSON);
        cJSON_Delete(EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_managerAccountId){
        free(keyQuery_managerAccountId);
        keyQuery_managerAccountId = NULL;
    }
    if(keyPairQuery_managerAccountId){
        keyValuePair_free(keyPairQuery_managerAccountId);
        keyPairQuery_managerAccountId = NULL;
    }
    if(keyQuery_employeeAccountId){
        free(keyQuery_employeeAccountId);
        keyQuery_employeeAccountId = NULL;
    }
    if(keyPairQuery_employeeAccountId){
        keyValuePair_free(keyPairQuery_employeeAccountId);
        keyPairQuery_employeeAccountId = NULL;
    }
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Assign Employee to Location
//
// Assign or unassign the account to a retailer location.
//
sirqul_response_t*
EmployeeAPI_assignToLocationEmployee(apiClient_t *apiClient, double version, long accountId, long retailerLocationId, long employeeAccountId, int *assign)
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
    char *localVarPath = strdup("/api/{version}/employee/assignToLocation");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_employeeAccountId = NULL;
    char * valueQuery_employeeAccountId ;
    keyValuePair_t *keyPairQuery_employeeAccountId = 0;
    {
        keyQuery_employeeAccountId = strdup("employeeAccountId");
        valueQuery_employeeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_employeeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", employeeAccountId);
        keyPairQuery_employeeAccountId = keyValuePair_create(keyQuery_employeeAccountId, valueQuery_employeeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_employeeAccountId);
    }

    // query parameters
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_assign = NULL;
    char * valueQuery_assign = NULL;
    keyValuePair_t *keyPairQuery_assign = 0;
    if (assign)
    {
        keyQuery_assign = strdup("assign");
        valueQuery_assign = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_assign, MAX_NUMBER_LENGTH, "%d", *assign);
        keyPairQuery_assign = keyValuePair_create(keyQuery_assign, valueQuery_assign);
        list_addElement(localVarQueryParameters,keyPairQuery_assign);
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
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(EmployeeAPIlocalVarJSON);
        cJSON_Delete(EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_employeeAccountId){
        free(keyQuery_employeeAccountId);
        keyQuery_employeeAccountId = NULL;
    }
    if(keyPairQuery_employeeAccountId){
        keyValuePair_free(keyPairQuery_employeeAccountId);
        keyPairQuery_employeeAccountId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_assign){
        free(keyQuery_assign);
        keyQuery_assign = NULL;
    }
    if(valueQuery_assign){
        free(valueQuery_assign);
        valueQuery_assign = NULL;
    }
    if(keyPairQuery_assign){
        keyValuePair_free(keyPairQuery_assign);
        keyPairQuery_assign = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Create Employee
//
// Create a new account record with the provided information.
//
employee_response_t*
EmployeeAPI_createEmployee(apiClient_t *apiClient, double version, long accountId, long managerAccountId, char *username, char *password, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *aboutUs, long assetId, sirqul_iot_platform_createEmployee_gender_e gender, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *emailAddress, char *streetAddress, char *streetAddress2, char *city, char *state, char *zipcode, char *country, char *role, char *retailerLocationIds, char *settingsAppKey, char *appBlob, char *assignedDeviceId)
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
    char *localVarPath = strdup("/api/{version}/employee/create");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_managerAccountId = NULL;
    char * valueQuery_managerAccountId ;
    keyValuePair_t *keyPairQuery_managerAccountId = 0;
    {
        keyQuery_managerAccountId = strdup("managerAccountId");
        valueQuery_managerAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_managerAccountId, MAX_NUMBER_LENGTH_LONG, "%d", managerAccountId);
        keyPairQuery_managerAccountId = keyValuePair_create(keyQuery_managerAccountId, valueQuery_managerAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_managerAccountId);
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
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_prefixName = NULL;
    char * valueQuery_prefixName = NULL;
    keyValuePair_t *keyPairQuery_prefixName = 0;
    if (prefixName)
    {
        keyQuery_prefixName = strdup("prefixName");
        valueQuery_prefixName = strdup((prefixName));
        keyPairQuery_prefixName = keyValuePair_create(keyQuery_prefixName, valueQuery_prefixName);
        list_addElement(localVarQueryParameters,keyPairQuery_prefixName);
    }

    // query parameters
    char *keyQuery_firstName = NULL;
    char * valueQuery_firstName = NULL;
    keyValuePair_t *keyPairQuery_firstName = 0;
    if (firstName)
    {
        keyQuery_firstName = strdup("firstName");
        valueQuery_firstName = strdup((firstName));
        keyPairQuery_firstName = keyValuePair_create(keyQuery_firstName, valueQuery_firstName);
        list_addElement(localVarQueryParameters,keyPairQuery_firstName);
    }

    // query parameters
    char *keyQuery_middleName = NULL;
    char * valueQuery_middleName = NULL;
    keyValuePair_t *keyPairQuery_middleName = 0;
    if (middleName)
    {
        keyQuery_middleName = strdup("middleName");
        valueQuery_middleName = strdup((middleName));
        keyPairQuery_middleName = keyValuePair_create(keyQuery_middleName, valueQuery_middleName);
        list_addElement(localVarQueryParameters,keyPairQuery_middleName);
    }

    // query parameters
    char *keyQuery_lastName = NULL;
    char * valueQuery_lastName = NULL;
    keyValuePair_t *keyPairQuery_lastName = 0;
    if (lastName)
    {
        keyQuery_lastName = strdup("lastName");
        valueQuery_lastName = strdup((lastName));
        keyPairQuery_lastName = keyValuePair_create(keyQuery_lastName, valueQuery_lastName);
        list_addElement(localVarQueryParameters,keyPairQuery_lastName);
    }

    // query parameters
    char *keyQuery_suffixName = NULL;
    char * valueQuery_suffixName = NULL;
    keyValuePair_t *keyPairQuery_suffixName = 0;
    if (suffixName)
    {
        keyQuery_suffixName = strdup("suffixName");
        valueQuery_suffixName = strdup((suffixName));
        keyPairQuery_suffixName = keyValuePair_create(keyQuery_suffixName, valueQuery_suffixName);
        list_addElement(localVarQueryParameters,keyPairQuery_suffixName);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_aboutUs = NULL;
    char * valueQuery_aboutUs = NULL;
    keyValuePair_t *keyPairQuery_aboutUs = 0;
    if (aboutUs)
    {
        keyQuery_aboutUs = strdup("aboutUs");
        valueQuery_aboutUs = strdup((aboutUs));
        keyPairQuery_aboutUs = keyValuePair_create(keyQuery_aboutUs, valueQuery_aboutUs);
        list_addElement(localVarQueryParameters,keyPairQuery_aboutUs);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId ;
    keyValuePair_t *keyPairQuery_assetId = 0;
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetId, MAX_NUMBER_LENGTH_LONG, "%d", assetId);
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    sirqul_iot_platform_createEmployee_gender_e valueQuery_gender ;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = (gender);
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, strdup(createEmployee_GENDER_ToString(
        valueQuery_gender)));
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_homePhone = NULL;
    char * valueQuery_homePhone = NULL;
    keyValuePair_t *keyPairQuery_homePhone = 0;
    if (homePhone)
    {
        keyQuery_homePhone = strdup("homePhone");
        valueQuery_homePhone = strdup((homePhone));
        keyPairQuery_homePhone = keyValuePair_create(keyQuery_homePhone, valueQuery_homePhone);
        list_addElement(localVarQueryParameters,keyPairQuery_homePhone);
    }

    // query parameters
    char *keyQuery_cellPhone = NULL;
    char * valueQuery_cellPhone = NULL;
    keyValuePair_t *keyPairQuery_cellPhone = 0;
    if (cellPhone)
    {
        keyQuery_cellPhone = strdup("cellPhone");
        valueQuery_cellPhone = strdup((cellPhone));
        keyPairQuery_cellPhone = keyValuePair_create(keyQuery_cellPhone, valueQuery_cellPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhone);
    }

    // query parameters
    char *keyQuery_cellPhoneCarrier = NULL;
    char * valueQuery_cellPhoneCarrier = NULL;
    keyValuePair_t *keyPairQuery_cellPhoneCarrier = 0;
    if (cellPhoneCarrier)
    {
        keyQuery_cellPhoneCarrier = strdup("cellPhoneCarrier");
        valueQuery_cellPhoneCarrier = strdup((cellPhoneCarrier));
        keyPairQuery_cellPhoneCarrier = keyValuePair_create(keyQuery_cellPhoneCarrier, valueQuery_cellPhoneCarrier);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhoneCarrier);
    }

    // query parameters
    char *keyQuery_businessPhone = NULL;
    char * valueQuery_businessPhone = NULL;
    keyValuePair_t *keyPairQuery_businessPhone = 0;
    if (businessPhone)
    {
        keyQuery_businessPhone = strdup("businessPhone");
        valueQuery_businessPhone = strdup((businessPhone));
        keyPairQuery_businessPhone = keyValuePair_create(keyQuery_businessPhone, valueQuery_businessPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_businessPhone);
    }

    // query parameters
    char *keyQuery_emailAddress = NULL;
    char * valueQuery_emailAddress = NULL;
    keyValuePair_t *keyPairQuery_emailAddress = 0;
    if (emailAddress)
    {
        keyQuery_emailAddress = strdup("emailAddress");
        valueQuery_emailAddress = strdup((emailAddress));
        keyPairQuery_emailAddress = keyValuePair_create(keyQuery_emailAddress, valueQuery_emailAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_emailAddress);
    }

    // query parameters
    char *keyQuery_streetAddress = NULL;
    char * valueQuery_streetAddress = NULL;
    keyValuePair_t *keyPairQuery_streetAddress = 0;
    if (streetAddress)
    {
        keyQuery_streetAddress = strdup("streetAddress");
        valueQuery_streetAddress = strdup((streetAddress));
        keyPairQuery_streetAddress = keyValuePair_create(keyQuery_streetAddress, valueQuery_streetAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress);
    }

    // query parameters
    char *keyQuery_streetAddress2 = NULL;
    char * valueQuery_streetAddress2 = NULL;
    keyValuePair_t *keyPairQuery_streetAddress2 = 0;
    if (streetAddress2)
    {
        keyQuery_streetAddress2 = strdup("streetAddress2");
        valueQuery_streetAddress2 = strdup((streetAddress2));
        keyPairQuery_streetAddress2 = keyValuePair_create(keyQuery_streetAddress2, valueQuery_streetAddress2);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress2);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_zipcode = NULL;
    char * valueQuery_zipcode = NULL;
    keyValuePair_t *keyPairQuery_zipcode = 0;
    if (zipcode)
    {
        keyQuery_zipcode = strdup("zipcode");
        valueQuery_zipcode = strdup((zipcode));
        keyPairQuery_zipcode = keyValuePair_create(keyQuery_zipcode, valueQuery_zipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_zipcode);
    }

    // query parameters
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
    }

    // query parameters
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
    }

    // query parameters
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_settingsAppKey = NULL;
    char * valueQuery_settingsAppKey = NULL;
    keyValuePair_t *keyPairQuery_settingsAppKey = 0;
    if (settingsAppKey)
    {
        keyQuery_settingsAppKey = strdup("settingsAppKey");
        valueQuery_settingsAppKey = strdup((settingsAppKey));
        keyPairQuery_settingsAppKey = keyValuePair_create(keyQuery_settingsAppKey, valueQuery_settingsAppKey);
        list_addElement(localVarQueryParameters,keyPairQuery_settingsAppKey);
    }

    // query parameters
    char *keyQuery_appBlob = NULL;
    char * valueQuery_appBlob = NULL;
    keyValuePair_t *keyPairQuery_appBlob = 0;
    if (appBlob)
    {
        keyQuery_appBlob = strdup("appBlob");
        valueQuery_appBlob = strdup((appBlob));
        keyPairQuery_appBlob = keyValuePair_create(keyQuery_appBlob, valueQuery_appBlob);
        list_addElement(localVarQueryParameters,keyPairQuery_appBlob);
    }

    // query parameters
    char *keyQuery_assignedDeviceId = NULL;
    char * valueQuery_assignedDeviceId = NULL;
    keyValuePair_t *keyPairQuery_assignedDeviceId = 0;
    if (assignedDeviceId)
    {
        keyQuery_assignedDeviceId = strdup("assignedDeviceId");
        valueQuery_assignedDeviceId = strdup((assignedDeviceId));
        keyPairQuery_assignedDeviceId = keyValuePair_create(keyQuery_assignedDeviceId, valueQuery_assignedDeviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignedDeviceId);
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
    employee_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = employee_response_parseFromJSON(EmployeeAPIlocalVarJSON);
        cJSON_Delete(EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_managerAccountId){
        free(keyQuery_managerAccountId);
        keyQuery_managerAccountId = NULL;
    }
    if(keyPairQuery_managerAccountId){
        keyValuePair_free(keyPairQuery_managerAccountId);
        keyPairQuery_managerAccountId = NULL;
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
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_prefixName){
        free(keyQuery_prefixName);
        keyQuery_prefixName = NULL;
    }
    if(valueQuery_prefixName){
        free(valueQuery_prefixName);
        valueQuery_prefixName = NULL;
    }
    if(keyPairQuery_prefixName){
        keyValuePair_free(keyPairQuery_prefixName);
        keyPairQuery_prefixName = NULL;
    }
    if(keyQuery_firstName){
        free(keyQuery_firstName);
        keyQuery_firstName = NULL;
    }
    if(valueQuery_firstName){
        free(valueQuery_firstName);
        valueQuery_firstName = NULL;
    }
    if(keyPairQuery_firstName){
        keyValuePair_free(keyPairQuery_firstName);
        keyPairQuery_firstName = NULL;
    }
    if(keyQuery_middleName){
        free(keyQuery_middleName);
        keyQuery_middleName = NULL;
    }
    if(valueQuery_middleName){
        free(valueQuery_middleName);
        valueQuery_middleName = NULL;
    }
    if(keyPairQuery_middleName){
        keyValuePair_free(keyPairQuery_middleName);
        keyPairQuery_middleName = NULL;
    }
    if(keyQuery_lastName){
        free(keyQuery_lastName);
        keyQuery_lastName = NULL;
    }
    if(valueQuery_lastName){
        free(valueQuery_lastName);
        valueQuery_lastName = NULL;
    }
    if(keyPairQuery_lastName){
        keyValuePair_free(keyPairQuery_lastName);
        keyPairQuery_lastName = NULL;
    }
    if(keyQuery_suffixName){
        free(keyQuery_suffixName);
        keyQuery_suffixName = NULL;
    }
    if(valueQuery_suffixName){
        free(valueQuery_suffixName);
        valueQuery_suffixName = NULL;
    }
    if(keyPairQuery_suffixName){
        keyValuePair_free(keyPairQuery_suffixName);
        keyPairQuery_suffixName = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_aboutUs){
        free(keyQuery_aboutUs);
        keyQuery_aboutUs = NULL;
    }
    if(valueQuery_aboutUs){
        free(valueQuery_aboutUs);
        valueQuery_aboutUs = NULL;
    }
    if(keyPairQuery_aboutUs){
        keyValuePair_free(keyPairQuery_aboutUs);
        keyPairQuery_aboutUs = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_homePhone){
        free(keyQuery_homePhone);
        keyQuery_homePhone = NULL;
    }
    if(valueQuery_homePhone){
        free(valueQuery_homePhone);
        valueQuery_homePhone = NULL;
    }
    if(keyPairQuery_homePhone){
        keyValuePair_free(keyPairQuery_homePhone);
        keyPairQuery_homePhone = NULL;
    }
    if(keyQuery_cellPhone){
        free(keyQuery_cellPhone);
        keyQuery_cellPhone = NULL;
    }
    if(valueQuery_cellPhone){
        free(valueQuery_cellPhone);
        valueQuery_cellPhone = NULL;
    }
    if(keyPairQuery_cellPhone){
        keyValuePair_free(keyPairQuery_cellPhone);
        keyPairQuery_cellPhone = NULL;
    }
    if(keyQuery_cellPhoneCarrier){
        free(keyQuery_cellPhoneCarrier);
        keyQuery_cellPhoneCarrier = NULL;
    }
    if(valueQuery_cellPhoneCarrier){
        free(valueQuery_cellPhoneCarrier);
        valueQuery_cellPhoneCarrier = NULL;
    }
    if(keyPairQuery_cellPhoneCarrier){
        keyValuePair_free(keyPairQuery_cellPhoneCarrier);
        keyPairQuery_cellPhoneCarrier = NULL;
    }
    if(keyQuery_businessPhone){
        free(keyQuery_businessPhone);
        keyQuery_businessPhone = NULL;
    }
    if(valueQuery_businessPhone){
        free(valueQuery_businessPhone);
        valueQuery_businessPhone = NULL;
    }
    if(keyPairQuery_businessPhone){
        keyValuePair_free(keyPairQuery_businessPhone);
        keyPairQuery_businessPhone = NULL;
    }
    if(keyQuery_emailAddress){
        free(keyQuery_emailAddress);
        keyQuery_emailAddress = NULL;
    }
    if(valueQuery_emailAddress){
        free(valueQuery_emailAddress);
        valueQuery_emailAddress = NULL;
    }
    if(keyPairQuery_emailAddress){
        keyValuePair_free(keyPairQuery_emailAddress);
        keyPairQuery_emailAddress = NULL;
    }
    if(keyQuery_streetAddress){
        free(keyQuery_streetAddress);
        keyQuery_streetAddress = NULL;
    }
    if(valueQuery_streetAddress){
        free(valueQuery_streetAddress);
        valueQuery_streetAddress = NULL;
    }
    if(keyPairQuery_streetAddress){
        keyValuePair_free(keyPairQuery_streetAddress);
        keyPairQuery_streetAddress = NULL;
    }
    if(keyQuery_streetAddress2){
        free(keyQuery_streetAddress2);
        keyQuery_streetAddress2 = NULL;
    }
    if(valueQuery_streetAddress2){
        free(valueQuery_streetAddress2);
        valueQuery_streetAddress2 = NULL;
    }
    if(keyPairQuery_streetAddress2){
        keyValuePair_free(keyPairQuery_streetAddress2);
        keyPairQuery_streetAddress2 = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_zipcode){
        free(keyQuery_zipcode);
        keyQuery_zipcode = NULL;
    }
    if(valueQuery_zipcode){
        free(valueQuery_zipcode);
        valueQuery_zipcode = NULL;
    }
    if(keyPairQuery_zipcode){
        keyValuePair_free(keyPairQuery_zipcode);
        keyPairQuery_zipcode = NULL;
    }
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
    }
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
    }
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_settingsAppKey){
        free(keyQuery_settingsAppKey);
        keyQuery_settingsAppKey = NULL;
    }
    if(valueQuery_settingsAppKey){
        free(valueQuery_settingsAppKey);
        valueQuery_settingsAppKey = NULL;
    }
    if(keyPairQuery_settingsAppKey){
        keyValuePair_free(keyPairQuery_settingsAppKey);
        keyPairQuery_settingsAppKey = NULL;
    }
    if(keyQuery_appBlob){
        free(keyQuery_appBlob);
        keyQuery_appBlob = NULL;
    }
    if(valueQuery_appBlob){
        free(valueQuery_appBlob);
        valueQuery_appBlob = NULL;
    }
    if(keyPairQuery_appBlob){
        keyValuePair_free(keyPairQuery_appBlob);
        keyPairQuery_appBlob = NULL;
    }
    if(keyQuery_assignedDeviceId){
        free(keyQuery_assignedDeviceId);
        keyQuery_assignedDeviceId = NULL;
    }
    if(valueQuery_assignedDeviceId){
        free(valueQuery_assignedDeviceId);
        valueQuery_assignedDeviceId = NULL;
    }
    if(keyPairQuery_assignedDeviceId){
        keyValuePair_free(keyPairQuery_assignedDeviceId);
        keyPairQuery_assignedDeviceId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Delete Employee
//
// Set the deleted date field which marks the record as deleted.
//
sirqul_response_t*
EmployeeAPI_deleteEmployee(apiClient_t *apiClient, double version, long accountId, long employeeAccountId)
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
    char *localVarPath = strdup("/api/{version}/employee/delete");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_employeeAccountId = NULL;
    char * valueQuery_employeeAccountId ;
    keyValuePair_t *keyPairQuery_employeeAccountId = 0;
    {
        keyQuery_employeeAccountId = strdup("employeeAccountId");
        valueQuery_employeeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_employeeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", employeeAccountId);
        keyPairQuery_employeeAccountId = keyValuePair_create(keyQuery_employeeAccountId, valueQuery_employeeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_employeeAccountId);
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
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = sirqul_response_parseFromJSON(EmployeeAPIlocalVarJSON);
        cJSON_Delete(EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_employeeAccountId){
        free(keyQuery_employeeAccountId);
        keyQuery_employeeAccountId = NULL;
    }
    if(keyPairQuery_employeeAccountId){
        keyValuePair_free(keyPairQuery_employeeAccountId);
        keyPairQuery_employeeAccountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get Employee
//
// Get the account record for the account id provided.
//
employee_response_t*
EmployeeAPI_getEmployee(apiClient_t *apiClient, double version, long accountId, long employeeAccountId, char *settingsAppKey)
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
    char *localVarPath = strdup("/api/{version}/employee/get");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_employeeAccountId = NULL;
    char * valueQuery_employeeAccountId ;
    keyValuePair_t *keyPairQuery_employeeAccountId = 0;
    {
        keyQuery_employeeAccountId = strdup("employeeAccountId");
        valueQuery_employeeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_employeeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", employeeAccountId);
        keyPairQuery_employeeAccountId = keyValuePair_create(keyQuery_employeeAccountId, valueQuery_employeeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_employeeAccountId);
    }

    // query parameters
    char *keyQuery_settingsAppKey = NULL;
    char * valueQuery_settingsAppKey = NULL;
    keyValuePair_t *keyPairQuery_settingsAppKey = 0;
    if (settingsAppKey)
    {
        keyQuery_settingsAppKey = strdup("settingsAppKey");
        valueQuery_settingsAppKey = strdup((settingsAppKey));
        keyPairQuery_settingsAppKey = keyValuePair_create(keyQuery_settingsAppKey, valueQuery_settingsAppKey);
        list_addElement(localVarQueryParameters,keyPairQuery_settingsAppKey);
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
    employee_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = employee_response_parseFromJSON(EmployeeAPIlocalVarJSON);
        cJSON_Delete(EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_employeeAccountId){
        free(keyQuery_employeeAccountId);
        keyQuery_employeeAccountId = NULL;
    }
    if(keyPairQuery_employeeAccountId){
        keyValuePair_free(keyPairQuery_employeeAccountId);
        keyPairQuery_employeeAccountId = NULL;
    }
    if(keyQuery_settingsAppKey){
        free(keyQuery_settingsAppKey);
        keyQuery_settingsAppKey = NULL;
    }
    if(valueQuery_settingsAppKey){
        free(valueQuery_settingsAppKey);
        valueQuery_settingsAppKey = NULL;
    }
    if(keyPairQuery_settingsAppKey){
        keyValuePair_free(keyPairQuery_settingsAppKey);
        keyPairQuery_settingsAppKey = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Search Employees
//
// Use the accountId to determine the associated BillableEntity. From there get a list of all accounts associated as managers/employees.
//
list_t*
EmployeeAPI_searchEmployees(apiClient_t *apiClient, double version, long accountId, char *role, long retailerId, long retailerLocationId, char *q, char *keyword, sirqul_iot_platform_searchEmployees_sortField_e sortField, int *descending, int *_i, int *start, int *_l, int *limit, int *activeOnly, int *managedOnly, char *settingsAppKey, char *categoryIds, char *query)
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
    char *localVarPath = strdup("/api/{version}/employee/search");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
    }

    // query parameters
    char *keyQuery_retailerId = NULL;
    char * valueQuery_retailerId ;
    keyValuePair_t *keyPairQuery_retailerId = 0;
    {
        keyQuery_retailerId = strdup("retailerId");
        valueQuery_retailerId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerId, MAX_NUMBER_LENGTH_LONG, "%d", retailerId);
        keyPairQuery_retailerId = keyValuePair_create(keyQuery_retailerId, valueQuery_retailerId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerId);
    }

    // query parameters
    char *keyQuery_retailerLocationId = NULL;
    char * valueQuery_retailerLocationId ;
    keyValuePair_t *keyPairQuery_retailerLocationId = 0;
    {
        keyQuery_retailerLocationId = strdup("retailerLocationId");
        valueQuery_retailerLocationId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_retailerLocationId, MAX_NUMBER_LENGTH_LONG, "%d", retailerLocationId);
        keyPairQuery_retailerLocationId = keyValuePair_create(keyQuery_retailerLocationId, valueQuery_retailerLocationId);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationId);
    }

    // query parameters
    char *keyQuery_q = NULL;
    char * valueQuery_q = NULL;
    keyValuePair_t *keyPairQuery_q = 0;
    if (q)
    {
        keyQuery_q = strdup("q");
        valueQuery_q = strdup((q));
        keyPairQuery_q = keyValuePair_create(keyQuery_q, valueQuery_q);
        list_addElement(localVarQueryParameters,keyPairQuery_q);
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
    sirqul_iot_platform_searchEmployees_sortField_e valueQuery_sortField ;
    keyValuePair_t *keyPairQuery_sortField = 0;
    if (sortField)
    {
        keyQuery_sortField = strdup("sortField");
        valueQuery_sortField = (sortField);
        keyPairQuery_sortField = keyValuePair_create(keyQuery_sortField, strdup(searchEmployees_SORTFIELD_ToString(
        valueQuery_sortField)));
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
    char *keyQuery__i = NULL;
    char * valueQuery__i = NULL;
    keyValuePair_t *keyPairQuery__i = 0;
    if (_i)
    {
        keyQuery__i = strdup("_i");
        valueQuery__i = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__i, MAX_NUMBER_LENGTH, "%d", *_i);
        keyPairQuery__i = keyValuePair_create(keyQuery__i, valueQuery__i);
        list_addElement(localVarQueryParameters,keyPairQuery__i);
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
    char *keyQuery__l = NULL;
    char * valueQuery__l = NULL;
    keyValuePair_t *keyPairQuery__l = 0;
    if (_l)
    {
        keyQuery__l = strdup("_l");
        valueQuery__l = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery__l, MAX_NUMBER_LENGTH, "%d", *_l);
        keyPairQuery__l = keyValuePair_create(keyQuery__l, valueQuery__l);
        list_addElement(localVarQueryParameters,keyPairQuery__l);
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

    // query parameters
    char *keyQuery_activeOnly = NULL;
    char * valueQuery_activeOnly = NULL;
    keyValuePair_t *keyPairQuery_activeOnly = 0;
    if (activeOnly)
    {
        keyQuery_activeOnly = strdup("activeOnly");
        valueQuery_activeOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_activeOnly, MAX_NUMBER_LENGTH, "%d", *activeOnly);
        keyPairQuery_activeOnly = keyValuePair_create(keyQuery_activeOnly, valueQuery_activeOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_activeOnly);
    }

    // query parameters
    char *keyQuery_managedOnly = NULL;
    char * valueQuery_managedOnly = NULL;
    keyValuePair_t *keyPairQuery_managedOnly = 0;
    if (managedOnly)
    {
        keyQuery_managedOnly = strdup("managedOnly");
        valueQuery_managedOnly = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueQuery_managedOnly, MAX_NUMBER_LENGTH, "%d", *managedOnly);
        keyPairQuery_managedOnly = keyValuePair_create(keyQuery_managedOnly, valueQuery_managedOnly);
        list_addElement(localVarQueryParameters,keyPairQuery_managedOnly);
    }

    // query parameters
    char *keyQuery_settingsAppKey = NULL;
    char * valueQuery_settingsAppKey = NULL;
    keyValuePair_t *keyPairQuery_settingsAppKey = 0;
    if (settingsAppKey)
    {
        keyQuery_settingsAppKey = strdup("settingsAppKey");
        valueQuery_settingsAppKey = strdup((settingsAppKey));
        keyPairQuery_settingsAppKey = keyValuePair_create(keyQuery_settingsAppKey, valueQuery_settingsAppKey);
        list_addElement(localVarQueryParameters,keyPairQuery_settingsAppKey);
    }

    // query parameters
    char *keyQuery_categoryIds = NULL;
    char * valueQuery_categoryIds = NULL;
    keyValuePair_t *keyPairQuery_categoryIds = 0;
    if (categoryIds)
    {
        keyQuery_categoryIds = strdup("categoryIds");
        valueQuery_categoryIds = strdup((categoryIds));
        keyPairQuery_categoryIds = keyValuePair_create(keyQuery_categoryIds, valueQuery_categoryIds);
        list_addElement(localVarQueryParameters,keyPairQuery_categoryIds);
    }

    // query parameters
    char *keyQuery_query = NULL;
    char * valueQuery_query = NULL;
    keyValuePair_t *keyPairQuery_query = 0;
    if (query)
    {
        keyQuery_query = strdup("query");
        valueQuery_query = strdup((query));
        keyPairQuery_query = keyValuePair_create(keyQuery_query, valueQuery_query);
        list_addElement(localVarQueryParameters,keyPairQuery_query);
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
    list_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        if(!cJSON_IsArray(EmployeeAPIlocalVarJSON)) {
            return 0;//nonprimitive container
        }
        elementToReturn = list_createList();
        cJSON *VarJSON;
        cJSON_ArrayForEach(VarJSON, EmployeeAPIlocalVarJSON)
        {
            if(!cJSON_IsObject(VarJSON))
            {
               // return 0;
            }
            char *localVarJSONToChar = cJSON_Print(VarJSON);
            list_addElement(elementToReturn , localVarJSONToChar);
        }

        cJSON_Delete( EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
    }
    if(keyQuery_retailerId){
        free(keyQuery_retailerId);
        keyQuery_retailerId = NULL;
    }
    if(keyPairQuery_retailerId){
        keyValuePair_free(keyPairQuery_retailerId);
        keyPairQuery_retailerId = NULL;
    }
    if(keyQuery_retailerLocationId){
        free(keyQuery_retailerLocationId);
        keyQuery_retailerLocationId = NULL;
    }
    if(keyPairQuery_retailerLocationId){
        keyValuePair_free(keyPairQuery_retailerLocationId);
        keyPairQuery_retailerLocationId = NULL;
    }
    if(keyQuery_q){
        free(keyQuery_q);
        keyQuery_q = NULL;
    }
    if(valueQuery_q){
        free(valueQuery_q);
        valueQuery_q = NULL;
    }
    if(keyPairQuery_q){
        keyValuePair_free(keyPairQuery_q);
        keyPairQuery_q = NULL;
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
    if(keyQuery__i){
        free(keyQuery__i);
        keyQuery__i = NULL;
    }
    if(valueQuery__i){
        free(valueQuery__i);
        valueQuery__i = NULL;
    }
    if(keyPairQuery__i){
        keyValuePair_free(keyPairQuery__i);
        keyPairQuery__i = NULL;
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
    if(keyQuery__l){
        free(keyQuery__l);
        keyQuery__l = NULL;
    }
    if(valueQuery__l){
        free(valueQuery__l);
        valueQuery__l = NULL;
    }
    if(keyPairQuery__l){
        keyValuePair_free(keyPairQuery__l);
        keyPairQuery__l = NULL;
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
    if(keyQuery_activeOnly){
        free(keyQuery_activeOnly);
        keyQuery_activeOnly = NULL;
    }
    if(valueQuery_activeOnly){
        free(valueQuery_activeOnly);
        valueQuery_activeOnly = NULL;
    }
    if(keyPairQuery_activeOnly){
        keyValuePair_free(keyPairQuery_activeOnly);
        keyPairQuery_activeOnly = NULL;
    }
    if(keyQuery_managedOnly){
        free(keyQuery_managedOnly);
        keyQuery_managedOnly = NULL;
    }
    if(valueQuery_managedOnly){
        free(valueQuery_managedOnly);
        valueQuery_managedOnly = NULL;
    }
    if(keyPairQuery_managedOnly){
        keyValuePair_free(keyPairQuery_managedOnly);
        keyPairQuery_managedOnly = NULL;
    }
    if(keyQuery_settingsAppKey){
        free(keyQuery_settingsAppKey);
        keyQuery_settingsAppKey = NULL;
    }
    if(valueQuery_settingsAppKey){
        free(valueQuery_settingsAppKey);
        valueQuery_settingsAppKey = NULL;
    }
    if(keyPairQuery_settingsAppKey){
        keyValuePair_free(keyPairQuery_settingsAppKey);
        keyPairQuery_settingsAppKey = NULL;
    }
    if(keyQuery_categoryIds){
        free(keyQuery_categoryIds);
        keyQuery_categoryIds = NULL;
    }
    if(valueQuery_categoryIds){
        free(valueQuery_categoryIds);
        valueQuery_categoryIds = NULL;
    }
    if(keyPairQuery_categoryIds){
        keyValuePair_free(keyPairQuery_categoryIds);
        keyPairQuery_categoryIds = NULL;
    }
    if(keyQuery_query){
        free(keyQuery_query);
        keyQuery_query = NULL;
    }
    if(valueQuery_query){
        free(valueQuery_query);
        valueQuery_query = NULL;
    }
    if(keyPairQuery_query){
        keyValuePair_free(keyPairQuery_query);
        keyPairQuery_query = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Unassign Employee
//
// Unassign An existing account to be an employee
//
employee_response_t*
EmployeeAPI_unassignEmployee(apiClient_t *apiClient, double version, long accountId, long employeeAccountId)
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
    char *localVarPath = strdup("/api/{version}/employee/unassign");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_employeeAccountId = NULL;
    char * valueQuery_employeeAccountId ;
    keyValuePair_t *keyPairQuery_employeeAccountId = 0;
    {
        keyQuery_employeeAccountId = strdup("employeeAccountId");
        valueQuery_employeeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_employeeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", employeeAccountId);
        keyPairQuery_employeeAccountId = keyValuePair_create(keyQuery_employeeAccountId, valueQuery_employeeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_employeeAccountId);
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
    employee_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = employee_response_parseFromJSON(EmployeeAPIlocalVarJSON);
        cJSON_Delete(EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_employeeAccountId){
        free(keyQuery_employeeAccountId);
        keyQuery_employeeAccountId = NULL;
    }
    if(keyPairQuery_employeeAccountId){
        keyValuePair_free(keyPairQuery_employeeAccountId);
        keyPairQuery_employeeAccountId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update Employee
//
// Update the account record with the provided information.
//
employee_response_t*
EmployeeAPI_updateEmployee(apiClient_t *apiClient, double version, long accountId, long employeeAccountId, long managerAccountId, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, long assetId, sirqul_iot_platform_updateEmployee_gender_e gender, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *emailAddress, char *streetAddress, char *streetAddress2, char *city, char *state, char *zipcode, char *country, char *role, int *active, char *password, char *retailerLocationIds, char *settingsAppKey, char *appBlob, char *assignedDeviceId)
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
    char *localVarPath = strdup("/api/{version}/employee/update");



    // Path Params
    long sizeOfPathParams_version =  + sizeof("{ version }") - 1;



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
    char *keyQuery_employeeAccountId = NULL;
    char * valueQuery_employeeAccountId ;
    keyValuePair_t *keyPairQuery_employeeAccountId = 0;
    {
        keyQuery_employeeAccountId = strdup("employeeAccountId");
        valueQuery_employeeAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_employeeAccountId, MAX_NUMBER_LENGTH_LONG, "%d", employeeAccountId);
        keyPairQuery_employeeAccountId = keyValuePair_create(keyQuery_employeeAccountId, valueQuery_employeeAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_employeeAccountId);
    }

    // query parameters
    char *keyQuery_managerAccountId = NULL;
    char * valueQuery_managerAccountId ;
    keyValuePair_t *keyPairQuery_managerAccountId = 0;
    {
        keyQuery_managerAccountId = strdup("managerAccountId");
        valueQuery_managerAccountId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_managerAccountId, MAX_NUMBER_LENGTH_LONG, "%d", managerAccountId);
        keyPairQuery_managerAccountId = keyValuePair_create(keyQuery_managerAccountId, valueQuery_managerAccountId);
        list_addElement(localVarQueryParameters,keyPairQuery_managerAccountId);
    }

    // query parameters
    char *keyQuery_name = NULL;
    char * valueQuery_name = NULL;
    keyValuePair_t *keyPairQuery_name = 0;
    if (name)
    {
        keyQuery_name = strdup("name");
        valueQuery_name = strdup((name));
        keyPairQuery_name = keyValuePair_create(keyQuery_name, valueQuery_name);
        list_addElement(localVarQueryParameters,keyPairQuery_name);
    }

    // query parameters
    char *keyQuery_prefixName = NULL;
    char * valueQuery_prefixName = NULL;
    keyValuePair_t *keyPairQuery_prefixName = 0;
    if (prefixName)
    {
        keyQuery_prefixName = strdup("prefixName");
        valueQuery_prefixName = strdup((prefixName));
        keyPairQuery_prefixName = keyValuePair_create(keyQuery_prefixName, valueQuery_prefixName);
        list_addElement(localVarQueryParameters,keyPairQuery_prefixName);
    }

    // query parameters
    char *keyQuery_firstName = NULL;
    char * valueQuery_firstName = NULL;
    keyValuePair_t *keyPairQuery_firstName = 0;
    if (firstName)
    {
        keyQuery_firstName = strdup("firstName");
        valueQuery_firstName = strdup((firstName));
        keyPairQuery_firstName = keyValuePair_create(keyQuery_firstName, valueQuery_firstName);
        list_addElement(localVarQueryParameters,keyPairQuery_firstName);
    }

    // query parameters
    char *keyQuery_middleName = NULL;
    char * valueQuery_middleName = NULL;
    keyValuePair_t *keyPairQuery_middleName = 0;
    if (middleName)
    {
        keyQuery_middleName = strdup("middleName");
        valueQuery_middleName = strdup((middleName));
        keyPairQuery_middleName = keyValuePair_create(keyQuery_middleName, valueQuery_middleName);
        list_addElement(localVarQueryParameters,keyPairQuery_middleName);
    }

    // query parameters
    char *keyQuery_lastName = NULL;
    char * valueQuery_lastName = NULL;
    keyValuePair_t *keyPairQuery_lastName = 0;
    if (lastName)
    {
        keyQuery_lastName = strdup("lastName");
        valueQuery_lastName = strdup((lastName));
        keyPairQuery_lastName = keyValuePair_create(keyQuery_lastName, valueQuery_lastName);
        list_addElement(localVarQueryParameters,keyPairQuery_lastName);
    }

    // query parameters
    char *keyQuery_suffixName = NULL;
    char * valueQuery_suffixName = NULL;
    keyValuePair_t *keyPairQuery_suffixName = 0;
    if (suffixName)
    {
        keyQuery_suffixName = strdup("suffixName");
        valueQuery_suffixName = strdup((suffixName));
        keyPairQuery_suffixName = keyValuePair_create(keyQuery_suffixName, valueQuery_suffixName);
        list_addElement(localVarQueryParameters,keyPairQuery_suffixName);
    }

    // query parameters
    char *keyQuery_title = NULL;
    char * valueQuery_title = NULL;
    keyValuePair_t *keyPairQuery_title = 0;
    if (title)
    {
        keyQuery_title = strdup("title");
        valueQuery_title = strdup((title));
        keyPairQuery_title = keyValuePair_create(keyQuery_title, valueQuery_title);
        list_addElement(localVarQueryParameters,keyPairQuery_title);
    }

    // query parameters
    char *keyQuery_assetId = NULL;
    char * valueQuery_assetId ;
    keyValuePair_t *keyPairQuery_assetId = 0;
    {
        keyQuery_assetId = strdup("assetId");
        valueQuery_assetId = calloc(1,MAX_NUMBER_LENGTH_LONG);
        snprintf(valueQuery_assetId, MAX_NUMBER_LENGTH_LONG, "%d", assetId);
        keyPairQuery_assetId = keyValuePair_create(keyQuery_assetId, valueQuery_assetId);
        list_addElement(localVarQueryParameters,keyPairQuery_assetId);
    }

    // query parameters
    char *keyQuery_gender = NULL;
    sirqul_iot_platform_updateEmployee_gender_e valueQuery_gender ;
    keyValuePair_t *keyPairQuery_gender = 0;
    if (gender)
    {
        keyQuery_gender = strdup("gender");
        valueQuery_gender = (gender);
        keyPairQuery_gender = keyValuePair_create(keyQuery_gender, strdup(updateEmployee_GENDER_ToString(
        valueQuery_gender)));
        list_addElement(localVarQueryParameters,keyPairQuery_gender);
    }

    // query parameters
    char *keyQuery_homePhone = NULL;
    char * valueQuery_homePhone = NULL;
    keyValuePair_t *keyPairQuery_homePhone = 0;
    if (homePhone)
    {
        keyQuery_homePhone = strdup("homePhone");
        valueQuery_homePhone = strdup((homePhone));
        keyPairQuery_homePhone = keyValuePair_create(keyQuery_homePhone, valueQuery_homePhone);
        list_addElement(localVarQueryParameters,keyPairQuery_homePhone);
    }

    // query parameters
    char *keyQuery_cellPhone = NULL;
    char * valueQuery_cellPhone = NULL;
    keyValuePair_t *keyPairQuery_cellPhone = 0;
    if (cellPhone)
    {
        keyQuery_cellPhone = strdup("cellPhone");
        valueQuery_cellPhone = strdup((cellPhone));
        keyPairQuery_cellPhone = keyValuePair_create(keyQuery_cellPhone, valueQuery_cellPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhone);
    }

    // query parameters
    char *keyQuery_cellPhoneCarrier = NULL;
    char * valueQuery_cellPhoneCarrier = NULL;
    keyValuePair_t *keyPairQuery_cellPhoneCarrier = 0;
    if (cellPhoneCarrier)
    {
        keyQuery_cellPhoneCarrier = strdup("cellPhoneCarrier");
        valueQuery_cellPhoneCarrier = strdup((cellPhoneCarrier));
        keyPairQuery_cellPhoneCarrier = keyValuePair_create(keyQuery_cellPhoneCarrier, valueQuery_cellPhoneCarrier);
        list_addElement(localVarQueryParameters,keyPairQuery_cellPhoneCarrier);
    }

    // query parameters
    char *keyQuery_businessPhone = NULL;
    char * valueQuery_businessPhone = NULL;
    keyValuePair_t *keyPairQuery_businessPhone = 0;
    if (businessPhone)
    {
        keyQuery_businessPhone = strdup("businessPhone");
        valueQuery_businessPhone = strdup((businessPhone));
        keyPairQuery_businessPhone = keyValuePair_create(keyQuery_businessPhone, valueQuery_businessPhone);
        list_addElement(localVarQueryParameters,keyPairQuery_businessPhone);
    }

    // query parameters
    char *keyQuery_emailAddress = NULL;
    char * valueQuery_emailAddress = NULL;
    keyValuePair_t *keyPairQuery_emailAddress = 0;
    if (emailAddress)
    {
        keyQuery_emailAddress = strdup("emailAddress");
        valueQuery_emailAddress = strdup((emailAddress));
        keyPairQuery_emailAddress = keyValuePair_create(keyQuery_emailAddress, valueQuery_emailAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_emailAddress);
    }

    // query parameters
    char *keyQuery_streetAddress = NULL;
    char * valueQuery_streetAddress = NULL;
    keyValuePair_t *keyPairQuery_streetAddress = 0;
    if (streetAddress)
    {
        keyQuery_streetAddress = strdup("streetAddress");
        valueQuery_streetAddress = strdup((streetAddress));
        keyPairQuery_streetAddress = keyValuePair_create(keyQuery_streetAddress, valueQuery_streetAddress);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress);
    }

    // query parameters
    char *keyQuery_streetAddress2 = NULL;
    char * valueQuery_streetAddress2 = NULL;
    keyValuePair_t *keyPairQuery_streetAddress2 = 0;
    if (streetAddress2)
    {
        keyQuery_streetAddress2 = strdup("streetAddress2");
        valueQuery_streetAddress2 = strdup((streetAddress2));
        keyPairQuery_streetAddress2 = keyValuePair_create(keyQuery_streetAddress2, valueQuery_streetAddress2);
        list_addElement(localVarQueryParameters,keyPairQuery_streetAddress2);
    }

    // query parameters
    char *keyQuery_city = NULL;
    char * valueQuery_city = NULL;
    keyValuePair_t *keyPairQuery_city = 0;
    if (city)
    {
        keyQuery_city = strdup("city");
        valueQuery_city = strdup((city));
        keyPairQuery_city = keyValuePair_create(keyQuery_city, valueQuery_city);
        list_addElement(localVarQueryParameters,keyPairQuery_city);
    }

    // query parameters
    char *keyQuery_state = NULL;
    char * valueQuery_state = NULL;
    keyValuePair_t *keyPairQuery_state = 0;
    if (state)
    {
        keyQuery_state = strdup("state");
        valueQuery_state = strdup((state));
        keyPairQuery_state = keyValuePair_create(keyQuery_state, valueQuery_state);
        list_addElement(localVarQueryParameters,keyPairQuery_state);
    }

    // query parameters
    char *keyQuery_zipcode = NULL;
    char * valueQuery_zipcode = NULL;
    keyValuePair_t *keyPairQuery_zipcode = 0;
    if (zipcode)
    {
        keyQuery_zipcode = strdup("zipcode");
        valueQuery_zipcode = strdup((zipcode));
        keyPairQuery_zipcode = keyValuePair_create(keyQuery_zipcode, valueQuery_zipcode);
        list_addElement(localVarQueryParameters,keyPairQuery_zipcode);
    }

    // query parameters
    char *keyQuery_country = NULL;
    char * valueQuery_country = NULL;
    keyValuePair_t *keyPairQuery_country = 0;
    if (country)
    {
        keyQuery_country = strdup("country");
        valueQuery_country = strdup((country));
        keyPairQuery_country = keyValuePair_create(keyQuery_country, valueQuery_country);
        list_addElement(localVarQueryParameters,keyPairQuery_country);
    }

    // query parameters
    char *keyQuery_role = NULL;
    char * valueQuery_role = NULL;
    keyValuePair_t *keyPairQuery_role = 0;
    if (role)
    {
        keyQuery_role = strdup("role");
        valueQuery_role = strdup((role));
        keyPairQuery_role = keyValuePair_create(keyQuery_role, valueQuery_role);
        list_addElement(localVarQueryParameters,keyPairQuery_role);
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
    char *keyQuery_retailerLocationIds = NULL;
    char * valueQuery_retailerLocationIds = NULL;
    keyValuePair_t *keyPairQuery_retailerLocationIds = 0;
    if (retailerLocationIds)
    {
        keyQuery_retailerLocationIds = strdup("retailerLocationIds");
        valueQuery_retailerLocationIds = strdup((retailerLocationIds));
        keyPairQuery_retailerLocationIds = keyValuePair_create(keyQuery_retailerLocationIds, valueQuery_retailerLocationIds);
        list_addElement(localVarQueryParameters,keyPairQuery_retailerLocationIds);
    }

    // query parameters
    char *keyQuery_settingsAppKey = NULL;
    char * valueQuery_settingsAppKey = NULL;
    keyValuePair_t *keyPairQuery_settingsAppKey = 0;
    if (settingsAppKey)
    {
        keyQuery_settingsAppKey = strdup("settingsAppKey");
        valueQuery_settingsAppKey = strdup((settingsAppKey));
        keyPairQuery_settingsAppKey = keyValuePair_create(keyQuery_settingsAppKey, valueQuery_settingsAppKey);
        list_addElement(localVarQueryParameters,keyPairQuery_settingsAppKey);
    }

    // query parameters
    char *keyQuery_appBlob = NULL;
    char * valueQuery_appBlob = NULL;
    keyValuePair_t *keyPairQuery_appBlob = 0;
    if (appBlob)
    {
        keyQuery_appBlob = strdup("appBlob");
        valueQuery_appBlob = strdup((appBlob));
        keyPairQuery_appBlob = keyValuePair_create(keyQuery_appBlob, valueQuery_appBlob);
        list_addElement(localVarQueryParameters,keyPairQuery_appBlob);
    }

    // query parameters
    char *keyQuery_assignedDeviceId = NULL;
    char * valueQuery_assignedDeviceId = NULL;
    keyValuePair_t *keyPairQuery_assignedDeviceId = 0;
    if (assignedDeviceId)
    {
        keyQuery_assignedDeviceId = strdup("assignedDeviceId");
        valueQuery_assignedDeviceId = strdup((assignedDeviceId));
        keyPairQuery_assignedDeviceId = keyValuePair_create(keyQuery_assignedDeviceId, valueQuery_assignedDeviceId);
        list_addElement(localVarQueryParameters,keyPairQuery_assignedDeviceId);
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
    employee_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *EmployeeAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = employee_response_parseFromJSON(EmployeeAPIlocalVarJSON);
        cJSON_Delete(EmployeeAPIlocalVarJSON);
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
    if(keyQuery_accountId){
        free(keyQuery_accountId);
        keyQuery_accountId = NULL;
    }
    if(keyPairQuery_accountId){
        keyValuePair_free(keyPairQuery_accountId);
        keyPairQuery_accountId = NULL;
    }
    if(keyQuery_employeeAccountId){
        free(keyQuery_employeeAccountId);
        keyQuery_employeeAccountId = NULL;
    }
    if(keyPairQuery_employeeAccountId){
        keyValuePair_free(keyPairQuery_employeeAccountId);
        keyPairQuery_employeeAccountId = NULL;
    }
    if(keyQuery_managerAccountId){
        free(keyQuery_managerAccountId);
        keyQuery_managerAccountId = NULL;
    }
    if(keyPairQuery_managerAccountId){
        keyValuePair_free(keyPairQuery_managerAccountId);
        keyPairQuery_managerAccountId = NULL;
    }
    if(keyQuery_name){
        free(keyQuery_name);
        keyQuery_name = NULL;
    }
    if(valueQuery_name){
        free(valueQuery_name);
        valueQuery_name = NULL;
    }
    if(keyPairQuery_name){
        keyValuePair_free(keyPairQuery_name);
        keyPairQuery_name = NULL;
    }
    if(keyQuery_prefixName){
        free(keyQuery_prefixName);
        keyQuery_prefixName = NULL;
    }
    if(valueQuery_prefixName){
        free(valueQuery_prefixName);
        valueQuery_prefixName = NULL;
    }
    if(keyPairQuery_prefixName){
        keyValuePair_free(keyPairQuery_prefixName);
        keyPairQuery_prefixName = NULL;
    }
    if(keyQuery_firstName){
        free(keyQuery_firstName);
        keyQuery_firstName = NULL;
    }
    if(valueQuery_firstName){
        free(valueQuery_firstName);
        valueQuery_firstName = NULL;
    }
    if(keyPairQuery_firstName){
        keyValuePair_free(keyPairQuery_firstName);
        keyPairQuery_firstName = NULL;
    }
    if(keyQuery_middleName){
        free(keyQuery_middleName);
        keyQuery_middleName = NULL;
    }
    if(valueQuery_middleName){
        free(valueQuery_middleName);
        valueQuery_middleName = NULL;
    }
    if(keyPairQuery_middleName){
        keyValuePair_free(keyPairQuery_middleName);
        keyPairQuery_middleName = NULL;
    }
    if(keyQuery_lastName){
        free(keyQuery_lastName);
        keyQuery_lastName = NULL;
    }
    if(valueQuery_lastName){
        free(valueQuery_lastName);
        valueQuery_lastName = NULL;
    }
    if(keyPairQuery_lastName){
        keyValuePair_free(keyPairQuery_lastName);
        keyPairQuery_lastName = NULL;
    }
    if(keyQuery_suffixName){
        free(keyQuery_suffixName);
        keyQuery_suffixName = NULL;
    }
    if(valueQuery_suffixName){
        free(valueQuery_suffixName);
        valueQuery_suffixName = NULL;
    }
    if(keyPairQuery_suffixName){
        keyValuePair_free(keyPairQuery_suffixName);
        keyPairQuery_suffixName = NULL;
    }
    if(keyQuery_title){
        free(keyQuery_title);
        keyQuery_title = NULL;
    }
    if(valueQuery_title){
        free(valueQuery_title);
        valueQuery_title = NULL;
    }
    if(keyPairQuery_title){
        keyValuePair_free(keyPairQuery_title);
        keyPairQuery_title = NULL;
    }
    if(keyQuery_assetId){
        free(keyQuery_assetId);
        keyQuery_assetId = NULL;
    }
    if(keyPairQuery_assetId){
        keyValuePair_free(keyPairQuery_assetId);
        keyPairQuery_assetId = NULL;
    }
    if(keyQuery_gender){
        free(keyQuery_gender);
        keyQuery_gender = NULL;
    }
    if(keyPairQuery_gender){
        keyValuePair_free(keyPairQuery_gender);
        keyPairQuery_gender = NULL;
    }
    if(keyQuery_homePhone){
        free(keyQuery_homePhone);
        keyQuery_homePhone = NULL;
    }
    if(valueQuery_homePhone){
        free(valueQuery_homePhone);
        valueQuery_homePhone = NULL;
    }
    if(keyPairQuery_homePhone){
        keyValuePair_free(keyPairQuery_homePhone);
        keyPairQuery_homePhone = NULL;
    }
    if(keyQuery_cellPhone){
        free(keyQuery_cellPhone);
        keyQuery_cellPhone = NULL;
    }
    if(valueQuery_cellPhone){
        free(valueQuery_cellPhone);
        valueQuery_cellPhone = NULL;
    }
    if(keyPairQuery_cellPhone){
        keyValuePair_free(keyPairQuery_cellPhone);
        keyPairQuery_cellPhone = NULL;
    }
    if(keyQuery_cellPhoneCarrier){
        free(keyQuery_cellPhoneCarrier);
        keyQuery_cellPhoneCarrier = NULL;
    }
    if(valueQuery_cellPhoneCarrier){
        free(valueQuery_cellPhoneCarrier);
        valueQuery_cellPhoneCarrier = NULL;
    }
    if(keyPairQuery_cellPhoneCarrier){
        keyValuePair_free(keyPairQuery_cellPhoneCarrier);
        keyPairQuery_cellPhoneCarrier = NULL;
    }
    if(keyQuery_businessPhone){
        free(keyQuery_businessPhone);
        keyQuery_businessPhone = NULL;
    }
    if(valueQuery_businessPhone){
        free(valueQuery_businessPhone);
        valueQuery_businessPhone = NULL;
    }
    if(keyPairQuery_businessPhone){
        keyValuePair_free(keyPairQuery_businessPhone);
        keyPairQuery_businessPhone = NULL;
    }
    if(keyQuery_emailAddress){
        free(keyQuery_emailAddress);
        keyQuery_emailAddress = NULL;
    }
    if(valueQuery_emailAddress){
        free(valueQuery_emailAddress);
        valueQuery_emailAddress = NULL;
    }
    if(keyPairQuery_emailAddress){
        keyValuePair_free(keyPairQuery_emailAddress);
        keyPairQuery_emailAddress = NULL;
    }
    if(keyQuery_streetAddress){
        free(keyQuery_streetAddress);
        keyQuery_streetAddress = NULL;
    }
    if(valueQuery_streetAddress){
        free(valueQuery_streetAddress);
        valueQuery_streetAddress = NULL;
    }
    if(keyPairQuery_streetAddress){
        keyValuePair_free(keyPairQuery_streetAddress);
        keyPairQuery_streetAddress = NULL;
    }
    if(keyQuery_streetAddress2){
        free(keyQuery_streetAddress2);
        keyQuery_streetAddress2 = NULL;
    }
    if(valueQuery_streetAddress2){
        free(valueQuery_streetAddress2);
        valueQuery_streetAddress2 = NULL;
    }
    if(keyPairQuery_streetAddress2){
        keyValuePair_free(keyPairQuery_streetAddress2);
        keyPairQuery_streetAddress2 = NULL;
    }
    if(keyQuery_city){
        free(keyQuery_city);
        keyQuery_city = NULL;
    }
    if(valueQuery_city){
        free(valueQuery_city);
        valueQuery_city = NULL;
    }
    if(keyPairQuery_city){
        keyValuePair_free(keyPairQuery_city);
        keyPairQuery_city = NULL;
    }
    if(keyQuery_state){
        free(keyQuery_state);
        keyQuery_state = NULL;
    }
    if(valueQuery_state){
        free(valueQuery_state);
        valueQuery_state = NULL;
    }
    if(keyPairQuery_state){
        keyValuePair_free(keyPairQuery_state);
        keyPairQuery_state = NULL;
    }
    if(keyQuery_zipcode){
        free(keyQuery_zipcode);
        keyQuery_zipcode = NULL;
    }
    if(valueQuery_zipcode){
        free(valueQuery_zipcode);
        valueQuery_zipcode = NULL;
    }
    if(keyPairQuery_zipcode){
        keyValuePair_free(keyPairQuery_zipcode);
        keyPairQuery_zipcode = NULL;
    }
    if(keyQuery_country){
        free(keyQuery_country);
        keyQuery_country = NULL;
    }
    if(valueQuery_country){
        free(valueQuery_country);
        valueQuery_country = NULL;
    }
    if(keyPairQuery_country){
        keyValuePair_free(keyPairQuery_country);
        keyPairQuery_country = NULL;
    }
    if(keyQuery_role){
        free(keyQuery_role);
        keyQuery_role = NULL;
    }
    if(valueQuery_role){
        free(valueQuery_role);
        valueQuery_role = NULL;
    }
    if(keyPairQuery_role){
        keyValuePair_free(keyPairQuery_role);
        keyPairQuery_role = NULL;
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
    if(keyQuery_retailerLocationIds){
        free(keyQuery_retailerLocationIds);
        keyQuery_retailerLocationIds = NULL;
    }
    if(valueQuery_retailerLocationIds){
        free(valueQuery_retailerLocationIds);
        valueQuery_retailerLocationIds = NULL;
    }
    if(keyPairQuery_retailerLocationIds){
        keyValuePair_free(keyPairQuery_retailerLocationIds);
        keyPairQuery_retailerLocationIds = NULL;
    }
    if(keyQuery_settingsAppKey){
        free(keyQuery_settingsAppKey);
        keyQuery_settingsAppKey = NULL;
    }
    if(valueQuery_settingsAppKey){
        free(valueQuery_settingsAppKey);
        valueQuery_settingsAppKey = NULL;
    }
    if(keyPairQuery_settingsAppKey){
        keyValuePair_free(keyPairQuery_settingsAppKey);
        keyPairQuery_settingsAppKey = NULL;
    }
    if(keyQuery_appBlob){
        free(keyQuery_appBlob);
        keyQuery_appBlob = NULL;
    }
    if(valueQuery_appBlob){
        free(valueQuery_appBlob);
        valueQuery_appBlob = NULL;
    }
    if(keyPairQuery_appBlob){
        keyValuePair_free(keyPairQuery_appBlob);
        keyPairQuery_appBlob = NULL;
    }
    if(keyQuery_assignedDeviceId){
        free(keyQuery_assignedDeviceId);
        keyQuery_assignedDeviceId = NULL;
    }
    if(valueQuery_assignedDeviceId){
        free(valueQuery_assignedDeviceId);
        valueQuery_assignedDeviceId = NULL;
    }
    if(keyPairQuery_assignedDeviceId){
        keyValuePair_free(keyPairQuery_assignedDeviceId);
        keyPairQuery_assignedDeviceId = NULL;
    }
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

