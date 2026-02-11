#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/employee_response.h"
#include "../model/sirqul_response.h"

// Enum GENDER for EmployeeAPI_createEmployee
typedef enum  { sirqul_iot_platform_createEmployee_GENDER_NULL = 0, sirqul_iot_platform_createEmployee_GENDER_MALE, sirqul_iot_platform_createEmployee_GENDER_FEMALE, sirqul_iot_platform_createEmployee_GENDER_ANY } sirqul_iot_platform_createEmployee_gender_e;

// Enum SORTFIELD for EmployeeAPI_searchEmployees
typedef enum  { sirqul_iot_platform_searchEmployees_SORTFIELD_NULL = 0, sirqul_iot_platform_searchEmployees_SORTFIELD_ID, sirqul_iot_platform_searchEmployees_SORTFIELD_DISPLAY, sirqul_iot_platform_searchEmployees_SORTFIELD_CREATED, sirqul_iot_platform_searchEmployees_SORTFIELD_UPDATED, sirqul_iot_platform_searchEmployees_SORTFIELD_ACTIVE, sirqul_iot_platform_searchEmployees_SORTFIELD_DELETED, sirqul_iot_platform_searchEmployees_SORTFIELD_LAST_LOGGED_IN, sirqul_iot_platform_searchEmployees_SORTFIELD_CONTACT_EMAIL, sirqul_iot_platform_searchEmployees_SORTFIELD_ACCOUNT_TYPE, sirqul_iot_platform_searchEmployees_SORTFIELD_RETAILER_LOCATION_NAME, sirqul_iot_platform_searchEmployees_SORTFIELD_RETAILER_NAME } sirqul_iot_platform_searchEmployees_sortField_e;

// Enum GENDER for EmployeeAPI_updateEmployee
typedef enum  { sirqul_iot_platform_updateEmployee_GENDER_NULL = 0, sirqul_iot_platform_updateEmployee_GENDER_MALE, sirqul_iot_platform_updateEmployee_GENDER_FEMALE, sirqul_iot_platform_updateEmployee_GENDER_ANY } sirqul_iot_platform_updateEmployee_gender_e;


// Assign Employee
//
// Assign An existing account to be an employee
//
employee_response_t*
EmployeeAPI_assignEmployee(apiClient_t *apiClient, long accountId, long managerAccountId, long employeeAccountId, char *role);


// Assign Employee to Location
//
// Assign or unassign the account to a retailer location.
//
sirqul_response_t*
EmployeeAPI_assignToLocationEmployee(apiClient_t *apiClient, long accountId, long retailerLocationId, long employeeAccountId, int *assign);


// Create Employee
//
// Create a new account record with the provided information.
//
employee_response_t*
EmployeeAPI_createEmployee(apiClient_t *apiClient, long accountId, long managerAccountId, char *username, char *password, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, char *aboutUs, long assetId, sirqul_iot_platform_createEmployee_gender_e gender, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *emailAddress, char *streetAddress, char *streetAddress2, char *city, char *state, char *zipcode, char *country, char *role, char *retailerLocationIds, char *settingsAppKey, char *appBlob, char *assignedDeviceId);


// Delete Employee
//
// Set the deleted date field which marks the record as deleted.
//
sirqul_response_t*
EmployeeAPI_deleteEmployee(apiClient_t *apiClient, long accountId, long employeeAccountId);


// Get Employee
//
// Get the account record for the account id provided.
//
employee_response_t*
EmployeeAPI_getEmployee(apiClient_t *apiClient, long accountId, long employeeAccountId, char *settingsAppKey);


// Search Employees
//
// Use the accountId to determine the associated BillableEntity. From there get a list of all accounts associated as managers/employees.
//
list_t*
EmployeeAPI_searchEmployees(apiClient_t *apiClient, long accountId, char *role, long retailerId, long retailerLocationId, char *q, char *keyword, sirqul_iot_platform_searchEmployees_sortField_e sortField, int *descending, int *_i, int *start, int *_l, int *limit, int *activeOnly, int *managedOnly, char *settingsAppKey, char *categoryIds, char *query);


// Unassign Employee
//
// Unassign An existing account to be an employee
//
employee_response_t*
EmployeeAPI_unassignEmployee(apiClient_t *apiClient, long accountId, long employeeAccountId);


// Update Employee
//
// Update the account record with the provided information.
//
employee_response_t*
EmployeeAPI_updateEmployee(apiClient_t *apiClient, long accountId, long employeeAccountId, long managerAccountId, char *name, char *prefixName, char *firstName, char *middleName, char *lastName, char *suffixName, char *title, long assetId, sirqul_iot_platform_updateEmployee_gender_e gender, char *homePhone, char *cellPhone, char *cellPhoneCarrier, char *businessPhone, char *emailAddress, char *streetAddress, char *streetAddress2, char *city, char *state, char *zipcode, char *country, char *role, int *active, char *password, char *retailerLocationIds, char *settingsAppKey, char *appBlob, char *assignedDeviceId);


